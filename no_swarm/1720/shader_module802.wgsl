struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_4(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-1000f + -287f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.x)))), -1585f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1388f, arg_0.x, 1000f))))), ~_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, 21491i), vec3<i32>(1i, -34473i, -82033i)), -firstTrailingBit(vec3<i32>(-1i, -22532i, 1i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(267f - _wgslsmith_f_op_f32(round(var_0.b))) - _wgslsmith_div_f32(var_0.b, -1000f)), 1f), u_input.a.x, 1i);
    var var_2 = Struct_3(vec4<i32>(var_1.e & (firstLeadingBit(var_1.e) >> (1u % 32u)), abs(-var_1.e), _wgslsmith_add_i32(reverseBits(var_1.b | var_1.b), _wgslsmith_sub_i32(i32(-1i) * -19668i, _wgslsmith_mod_i32(4621i, 2147483647i))), _wgslsmith_mod_i32(var_1.b, var_1.b)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(sign(var_1.a))), i32(-1i) * -2753i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -434f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, var_1.a.x))), var_1.d, _wgslsmith_clamp_i32(1i, ~(-2147483647i), ~var_1.e)), Struct_1(var_1.a, select(var_1.b, -10858i, any(vec4<bool>(var_0.a.x, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a.wx, arg_0.yy, var_0.a.x)) * _wgslsmith_f_op_vec2_f32(abs(arg_0.xx))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(32987u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_1.d, var_1.d), vec4<u32>(14099u, 125098u, u_input.a.x, 1u))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.b, var_1.e), _wgslsmith_dot_vec4_i32(vec4<i32>(-27286i, 9111i, var_1.b, var_1.e), vec4<i32>(var_1.e, var_1.e, var_1.b, -20796i)), select(2147483647i, 5106i, true))), select(var_0.a, select(var_0.a, var_0.a, vec2<bool>(var_0.a.x, true)), !var_0.a), Struct_1(var_1.a, -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0.b))), u_input.a.x, -26339i), !select(select(var_0.a, vec2<bool>(var_0.a.x, true), vec2<bool>(true, false)), var_0.a, !var_0.a)), Struct_1(var_1.a, 0i, _wgslsmith_f_op_vec2_f32(-arg_0.xy), _wgslsmith_mult_u32(u_input.a.x, ~var_1.d), var_1.b), _wgslsmith_f_op_f32(select(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1132f)) + -211f), any(vec3<bool>(all(vec4<bool>(var_0.a.x, var_0.a.x, false, false)), var_0.a.x || var_0.a.x, var_0.a.x)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_2.b.a.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-564f)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c.x)), arg_0.x, -1598f), !(!select(vec4<bool>(var_0.a.x, false, true, false), vec4<bool>(true, var_2.b.e.x, false, var_2.b.c.x), var_2.b.c.x)))), countOneBits(var_1.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_f_op_vec2_f32(arg_0.xx + _wgslsmith_f_op_vec2_f32(arg_0.zx - var_2.b.d.c)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.b.a.x, -1870f)))) * _wgslsmith_f_op_vec2_f32(min(arg_0.xz, _wgslsmith_f_op_vec2_f32(-var_1.c))))), u_input.a.x, _wgslsmith_mod_i32(firstTrailingBit(var_2.c.b), 62610i));
    var var_3 = _wgslsmith_div_f32(-2453f, 2222f);
    return !(!vec4<bool>((true && var_0.a.x) || all(vec3<bool>(var_2.b.c.x, var_0.a.x, var_2.b.c.x)), true, true, !(var_2.c.d > var_2.c.d)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_4) -> Struct_3 {
    let var_0 = false;
    let var_1 = 0u;
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.b, -597f, -1981f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1339f, arg_2.b, arg_2.b) + vec3<f32>(-323f, 651f, -320f)))))));
    var var_3 = vec3<bool>(!(var_0 & all(var_2)), true, !(!(var_0 || true)));
    return Struct_3(-(((vec4<i32>(1i, arg_0.x, -1997i, arg_0.x) & vec4<i32>(1i, arg_0.x, 2147483647i, -1i)) | max(vec4<i32>(5850i, arg_0.x, arg_0.x, arg_1), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_1))) & vec4<i32>(~(-2147483647i), 46205i, min(0i, arg_0.x), arg_1)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_2.b, -645f, 1000f) * vec4<f32>(arg_2.b, 548f, -739f, arg_2.b))), _wgslsmith_mod_i32(~0i, ~arg_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1194f, arg_2.b) * vec2<f32>(arg_2.b, arg_2.b)), vec2<f32>(1575f, -1179f), vec2<bool>(true, var_0))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1, 34073u, 32952u), vec4<u32>(54684u, 4280u, var_1, var_1) << (vec4<u32>(var_1, 16199u, 4294967295u, 122756u) % vec4<u32>(32u))), 76354i), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1174f, -263f, -985f, arg_2.b)))), ~(-2549i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-414f, arg_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, 626f) - vec2<f32>(arg_2.b, -1436f)))), _wgslsmith_clamp_u32(reverseBits(6109u), 28109u, ~var_1), select(-7657i, arg_1, true) | -5783i), select(vec2<bool>(arg_2.b == -379f, func_3(vec3<f32>(arg_2.b, 1013f, arg_2.b)).x), vec2<bool>(arg_0.x <= 32089i, !arg_2.a.x), var_2.ww), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-185f, 579f, arg_2.b, arg_2.b), vec4<f32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), true)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, 518f, arg_2.b, -566f), vec4<f32>(1572f, 603f, 245f, 210f))), ~(i32(-1i) * -28401i), vec2<f32>(_wgslsmith_f_op_f32(floor(682f)), _wgslsmith_f_op_f32(round(-313f))), u_input.a.x << (4294967295u % 32u), min(2147483647i, 32344i)), !(!select(var_3.zz, vec2<bool>(true, var_2.x), var_2.x))), Struct_1(vec4<f32>(464f, _wgslsmith_f_op_f32(arg_2.b * arg_2.b), arg_2.b, arg_2.b), select(~_wgslsmith_add_i32(2590i, arg_1), arg_1, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, -126f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_2.b) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b, -931f), vec2<f32>(736f, arg_2.b)))), var_1, 3109i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = arg_1.a.x;
    var_0 = 20292i;
    let var_1 = Struct_2(arg_1.c, Struct_1(vec4<f32>(arg_3.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(455f, arg_2.x)))), arg_1.c.c.x, -1530f), ~(~_wgslsmith_add_i32(7823i, -2147483647i)), vec2<f32>(654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))), ~(~arg_1.b.b.d), arg_1.a.x), func_3(_wgslsmith_f_op_vec3_f32(arg_1.b.b.a.zyz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b.d.a.xyy) + _wgslsmith_f_op_vec3_f32(max(arg_1.b.a.a.wwz, vec3<f32>(299f, arg_3.d, 620f)))))).yx, func_2(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.a.zx, arg_3.a.yw), vec2<i32>(27550i, arg_3.a.x)), firstLeadingBit(-arg_1.c.e), Struct_4(select(vec2<bool>(arg_3.b.e.x, true), vec2<bool>(arg_0, true), !arg_3.b.e), 1f)).c, arg_1.b.e);
    var var_2 = func_2(_wgslsmith_mod_vec2_i32(-(arg_1.a.yz | arg_3.a.wx) | vec2<i32>(arg_1.a.x, _wgslsmith_div_i32(arg_1.a.x, 3175i)), -vec2<i32>(0i, 0i)), ~(~_wgslsmith_add_i32(arg_3.a.x, var_1.a.e)) ^ -1i, Struct_4(vec2<bool>(!var_1.e.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.a.x, _wgslsmith_f_op_f32(-arg_1.b.b.a.x), true)) + _wgslsmith_f_op_f32(f32(-1f) * -1043f))));
    let var_3 = ~max(vec2<u32>(var_2.b.a.d ^ max(1u, var_1.b.d), var_1.b.d), ~u_input.a.yx);
    return (-(func_2(vec2<i32>(var_1.d.e, var_1.b.e), 1i, Struct_4(var_1.e, 1155f)).a.zzw ^ firstTrailingBit(var_2.a.zzy)) << ((vec3<u32>(~arg_3.b.a.d, countOneBits(1u), 1u) & firstLeadingBit(~u_input.a)) % vec3<u32>(32u))) & func_2(max(abs(arg_3.a.wz), arg_1.a.yw), -31779i, Struct_4(vec2<bool>(all(vec4<bool>(true, arg_3.b.c.x, true, false)), true), _wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(round(arg_1.b.d.c.x))))).a.xzz;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<u32>(0u, _wgslsmith_sub_u32(min(0u, arg_0.x) >> (arg_1.a.d % 32u), u_input.a.x));
    var var_1 = select(func_4(arg_2, func_2(vec2<i32>(35414i, arg_1.b.e), arg_1.b.b, Struct_4(vec2<bool>(arg_2, arg_2), arg_1.a.c.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.d.c.x, -338f, -371f), vec3<f32>(444f, 1585f, arg_1.a.a.x))), func_2(vec2<i32>(-53125i, arg_1.d.e) >> (var_0 % vec2<u32>(32u)), _wgslsmith_clamp_i32(-33395i, arg_1.b.b, 1i), Struct_4(vec2<bool>(false, false), 1776f))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(0i, -60616i)), -arg_1.b.b), 0i >> (_wgslsmith_mod_u32(arg_1.a.d, 34207u) % 32u), arg_1.a.e), _wgslsmith_add_u32(~26016u, 1u) == ~min(arg_0.x, arg_1.d.d)) ^ _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.d.b, arg_1.a.e, -2147483647i), -vec3<i32>(arg_1.b.e, arg_1.a.e, arg_1.a.b), firstLeadingBit(vec3<i32>(2029i, arg_1.d.b, -51549i))), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.d.e, -78477i, _wgslsmith_mod_i32(2147483647i, -2147483647i)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-70502i, 2147483647i, arg_1.a.b), vec3<i32>(arg_1.a.e, -30987i, -57398i), vec3<i32>(arg_1.b.e, -1i, -20772i)))), ~func_4(false, func_2(vec2<i32>(arg_1.b.e, arg_1.d.e), arg_1.a.b, Struct_4(arg_1.e, -1073f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.b.a.x, arg_1.a.c.x)), func_2(vec2<i32>(23664i, 2147483647i), 1i, Struct_4(vec2<bool>(false, false), 166f))));
    var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-22421i, _wgslsmith_mult_i32(reverseBits(arg_1.d.b >> (1u % 32u)), -abs(arg_1.d.b)), 1i), (vec3<i32>(~var_1.x, 1i, firstTrailingBit(arg_1.a.b)) | vec3<i32>(~(-1i), -arg_1.b.e, -15452i)) << (~u_input.a % vec3<u32>(32u)));
    var_1 = abs(-vec3<i32>(abs(arg_1.b.b), -48430i, -1i << (arg_1.b.d % 32u))) << (vec3<u32>(reverseBits(u_input.a.x), arg_1.d.d << (arg_1.d.d % 32u), 0u) % vec3<u32>(32u));
    let var_2 = firstTrailingBit(vec3<i32>(countOneBits(arg_1.b.b), _wgslsmith_div_i32(2147483647i, arg_1.b.b), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_1.b.b), ~vec3<i32>(-44756i, var_1.x, arg_1.b.e))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(var_2.yy, -1604i, Struct_4(vec2<bool>(arg_1.e.x, false), -1093f)).b.a.c.x, _wgslsmith_f_op_f32(max(-757f, -895f))))), arg_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_2(var_1.zz, -2147483647i, Struct_4(arg_1.c, 1463f)).c.a.x, -124f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.a.x))), arg_1.d.c.x)), arg_1.d.b, vec2<f32>(-359f, 2155f), u_input.a.x, var_2.x | ~(~1i));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = vec2<bool>(!(!all(func_2(vec2<i32>(4118i, arg_1.e), arg_1.e, Struct_4(vec2<bool>(true, false), -1575f)).b.e)), all(func_3(vec3<f32>(_wgslsmith_f_op_f32(floor(355f)), _wgslsmith_f_op_f32(abs(-834f)), _wgslsmith_f_op_f32(-arg_1.c.x))).wy));
    let var_1 = vec3<u32>(firstLeadingBit(arg_1.d), _wgslsmith_add_u32(func_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d, arg_2, 1u, arg_2), vec4<u32>(arg_1.d, 72245u, 1u, u_input.a.x)), Struct_2(func_2(vec2<i32>(6370i, 24937i), arg_1.b, Struct_4(vec2<bool>(var_0.x, var_0.x), arg_1.a.x)).c, func_1(vec4<u32>(arg_0.x, u_input.a.x, 74454u, 52465u), Struct_2(arg_1, arg_1, vec2<bool>(false, true), Struct_1(arg_1.a, arg_1.b, arg_1.c, 7359u, arg_1.b), vec2<bool>(var_0.x, var_0.x)), var_0.x), select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.x), Struct_1(arg_1.a, arg_1.e, arg_1.a.wy, 45481u, arg_1.b), !vec2<bool>(true, var_0.x)), false).d, 1u), ~func_1(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_1.d, 21813u, arg_1.d), vec4<u32>(u_input.a.x, 4294967295u, arg_2, 0u)), select(vec4<u32>(arg_2, 1u, 0u, 18773u), vec4<u32>(arg_1.d, 26691u, u_input.a.x, arg_1.d), vec4<bool>(false, true, false, true))), Struct_2(func_1(vec4<u32>(arg_1.d, 82177u, 0u, 4294967295u), Struct_2(Struct_1(arg_1.a, 0i, arg_1.a.yw, 36786u, 37367i), arg_1, vec2<bool>(true, true), Struct_1(vec4<f32>(arg_1.c.x, arg_1.a.x, arg_1.c.x, arg_1.a.x), 25729i, vec2<f32>(-839f, -2308f), 2415u, 2919i), vec2<bool>(var_0.x, true)), false), Struct_1(arg_1.a, arg_1.e, arg_1.a.zy, 1u, arg_1.b), func_3(vec3<f32>(417f, -1188f, -2149f)).zz, Struct_1(vec4<f32>(472f, -117f, arg_1.c.x, 1359f), 0i, arg_1.c, u_input.a.x, arg_1.e), !vec2<bool>(true, var_0.x)), !(arg_1.c.x != arg_1.a.x)).d);
    let var_2 = Struct_3(abs(-(~firstLeadingBit(vec4<i32>(-1i, arg_1.b, 30946i, -37575i)))), func_2(abs(~vec2<i32>(-9907i, -2147483647i) & func_4(var_0.x, Struct_3(vec4<i32>(arg_1.b, 0i, arg_1.e, 1i), Struct_2(arg_1, arg_1, vec2<bool>(var_0.x, var_0.x), Struct_1(arg_1.a, arg_1.e, vec2<f32>(-629f, -229f), 4294967295u, 1i), vec2<bool>(var_0.x, false)), arg_1, arg_1.a.x), vec3<f32>(arg_1.a.x, arg_1.c.x, -1610f), Struct_3(vec4<i32>(arg_1.e, arg_1.e, 0i, arg_1.e), Struct_2(Struct_1(vec4<f32>(1167f, arg_1.a.x, arg_1.c.x, 575f), -2147483647i, vec2<f32>(arg_1.c.x, arg_1.c.x), 26817u, 2147483647i), arg_1, vec2<bool>(var_0.x, true), Struct_1(arg_1.a, -1i, arg_1.a.xw, u_input.a.x, 57438i), vec2<bool>(var_0.x, true)), arg_1, arg_1.c.x)).zx), select(min(~1i, arg_1.e), _wgslsmith_mod_i32(~arg_1.e, ~arg_1.b), true), Struct_4(vec2<bool>(func_3(arg_1.a.zwz).x, var_0.x), -783f)).b, func_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, 0u, 22824u), vec4<u32>(0u, arg_2, u_input.a.x, arg_0.x))), Struct_2(func_1(select(vec4<u32>(919u, arg_0.x, u_input.a.x, arg_2), vec4<u32>(arg_1.d, 0u, 4294967295u, arg_0.x), vec4<bool>(false, var_0.x, true, var_0.x)), Struct_2(Struct_1(arg_1.a, arg_1.b, vec2<f32>(806f, arg_1.a.x), 0u, 1i), arg_1, vec2<bool>(var_0.x, false), arg_1, vec2<bool>(var_0.x, false)), var_0.x), func_2(vec2<i32>(0i, 38631i) >> (arg_0.zz % vec2<u32>(32u)), -39175i, Struct_4(vec2<bool>(var_0.x, var_0.x), arg_1.a.x)).b.a, !func_3(arg_1.a.wyy).yz, Struct_1(vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.a.x, arg_1.c.x), func_1(vec4<u32>(21438u, arg_1.d, 2158u, 36291u), Struct_2(arg_1, Struct_1(vec4<f32>(arg_1.c.x, arg_1.c.x, -761f, -814f), -2519i, vec2<f32>(arg_1.c.x, arg_1.a.x), 50087u, 38322i), vec2<bool>(var_0.x, true), arg_1, vec2<bool>(var_0.x, false)), false).e, func_2(vec2<i32>(arg_1.b, -1i), arg_1.e, Struct_4(vec2<bool>(true, false), -711f)).b.a.a.zx, max(arg_1.d, 34603u), -11428i), func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.e, arg_1.b), vec2<i32>(1i, -5015i)), ~arg_1.b, Struct_4(vec2<bool>(var_0.x, var_0.x), -1196f)).b.c), (true | all(vec4<bool>(var_0.x, false, false, var_0.x))) && (true | !var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.c.x)))));
    let var_3 = !vec3<bool>(any(var_2.b.c), all(select(!var_2.b.c, !var_2.b.e, select(vec2<bool>(var_2.b.c.x, true), vec2<bool>(var_0.x, var_0.x), true))), false);
    var var_4 = vec2<u32>(~46304u, func_2(var_2.a.zw, var_2.c.b, Struct_4(var_2.b.e, 714f)).b.a.d);
    return Struct_3(abs(var_2.a) >> (vec4<u32>(u_input.a.x, 27952u, abs(16985u) >> (abs(arg_2) % 32u), ~(~var_4.x)) % vec4<u32>(32u)), var_2.b, arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -291f), -501f, func_3(arg_1.a.xxz).x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    let var_0 = arg_2;
    let var_1 = func_2(~vec2<i32>(max(6325i, arg_0), 0i), -func_4(true, Struct_3(arg_1.a, arg_1.b, Struct_1(arg_1.b.d.a, arg_1.b.d.e, arg_1.c.c, u_input.a.x, arg_1.a.x), 1554f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.d.a.x, -432f, arg_1.b.d.c.x)))), func_5(u_input.a, func_2(arg_1.a.zx, 1i, Struct_4(var_0.a, 137f)).c, 1u)).x, var_0).b;
    let var_2 = ~(-min(vec3<i32>(-1i) * -vec3<i32>(34241i, var_1.a.b, arg_3), ~vec3<i32>(var_1.d.e, 0i, arg_3) << (abs(u_input.a) % vec3<u32>(32u))));
    var var_3 = Struct_2(func_5(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_1.c.d, u_input.a.x), vec3<u32>(83730u, 1u, arg_1.b.d.d), u_input.a)), true), arg_1.b.d, ~(~var_1.d.d)).b.d, func_1(vec4<u32>(~countOneBits(var_1.a.d), firstTrailingBit(48680u), 1u, 1623u), func_2(firstTrailingBit(vec2<i32>(var_2.x, arg_3)) << (u_input.a.xz % vec2<u32>(32u)), var_1.d.e, Struct_4(var_0.a, arg_2.b)).b, !func_3(vec3<f32>(var_0.b, arg_2.b, var_0.b)).x != true), !func_2(vec2<i32>(_wgslsmith_div_i32(arg_1.c.e, arg_0), i32(-1i) * -18332i), func_2(select(var_2.zz, arg_1.a.xz, arg_2.a), abs(-44189i), var_0).c.e, arg_2).b.c, var_1.d, !vec2<bool>(func_5(u_input.a, Struct_1(var_1.a.a, arg_0, vec2<f32>(1436f, -383f), u_input.a.x, 5307i), u_input.a.x).b.e.x, var_0.a.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(arg_1.b.d.c - arg_1.c.c);
    return arg_2;
}

fn func_7(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> i32 {
    var var_0 = func_2(min(reverseBits(vec2<i32>(-2147483647i, arg_1)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_1, 0i), reverseBits(vec2<i32>(arg_1, arg_1)), vec2<i32>(arg_1, -58779i)), (vec2<i32>(2147483647i, -2147483647i) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) & vec2<i32>(-31610i, -41204i))), i32(-1i) * -arg_1, Struct_4(arg_2.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.b, -593f)), -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_2.b))))).c;
    let var_1 = var_0.a;
    var var_2 = var_1.wy;
    var var_3 = var_0.a.x;
    let var_4 = ~vec3<u32>(6577u, u_input.a.x, 4294967295u);
    return _wgslsmith_div_i32(-22595i, abs(_wgslsmith_sub_i32(18756i, firstLeadingBit(-44028i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -472f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(583f, -1188f, var_0, -428f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0, var_0, 1000f))))))), 1867i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -845f))))))), u_input.a.x, _wgslsmith_mod_i32(~abs(1i), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -15837i), vec2<i32>(-28189i, -27012i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-34551i, 1i, -1i, 0i), vec4<i32>(1i, 11734i, 2147483647i, 20044i))), i32(-1i) * -17103i)));
    let var_2 = func_7(all(vec3<bool>(true, true, true)), abs(var_1.e), func_6(i32(-1i) * -2147483647i, func_5(~(u_input.a << (u_input.a % vec3<u32>(32u))), func_1(~vec4<u32>(21535u, u_input.a.x, var_1.d, 0u), Struct_2(Struct_1(vec4<f32>(var_1.a.x, -2527f, var_1.a.x, var_0), 11036i, vec2<f32>(var_0, var_1.a.x), 4294967295u, -2147483647i), Struct_1(var_1.a, -1i, var_1.c, 1157u, -2147483647i), vec2<bool>(true, false), var_1, vec2<bool>(true, true)), false), u_input.a.x), Struct_4(vec2<bool>(true, true), _wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(trunc(var_1.a.x)))), firstTrailingBit(0i)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, 1193f, vec4<i32>(var_2, -1i, ~6756i, var_2), ~61513u);
}

