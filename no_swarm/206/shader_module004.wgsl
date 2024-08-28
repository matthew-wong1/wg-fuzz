struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32) -> vec2<bool> {
    let var_0 = true;
    let var_1 = ~select(vec3<u32>(1u, ~abs(1u), firstLeadingBit(_wgslsmith_mod_u32(2158u, arg_1.a.d))), vec3<u32>(49108u, _wgslsmith_sub_u32(u_input.c, arg_1.a.d), 1u), select(select(select(vec3<bool>(var_0, var_0, arg_1.b), vec3<bool>(true, var_0, false), false), vec3<bool>(false, false, true), select(vec3<bool>(arg_1.b, true, var_0), vec3<bool>(true, true, false), false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec3<bool>(arg_1.b, false, false))), vec3<bool>(all(vec4<bool>(var_0, var_0, var_0, false)), var_0, all(vec4<bool>(false, var_0, arg_1.b, arg_1.b)))));
    var var_2 = vec2<i32>(i32(-1i) * -21415i, -u_input.d);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.b.x, arg_1.a.c.x) - _wgslsmith_f_op_f32(sign(arg_1.a.c.x))))), -764f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1868f))))))));
    let var_4 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, abs(-u_input.a), _wgslsmith_mod_i32(_wgslsmith_div_i32(-9332i, -30782i), var_2.x)), vec3<i32>(select(~arg_1.a.a.x, firstTrailingBit(var_2.x), all(vec4<bool>(false, true, arg_1.b, var_0))), u_input.a, var_2.x), vec3<bool>(arg_1.b, any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(step(var_3.x, 860f)) >= -514f)), arg_1.a.e.yxx);
    return !vec2<bool>(var_0, var_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_1(-vec4<i32>(countOneBits(0i & u_input.b), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, -11601i), -u_input.a), _wgslsmith_mod_i32(-u_input.a, u_input.a), _wgslsmith_sub_i32(2147483647i, u_input.b) ^ u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(654f, -906f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 796f, -1030f, 2122f), vec4<f32>(-1308f, 1476f, -2135f, -259f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1149f, 203f, 501f, -191f))) - vec4<f32>(-1046f, 1205f, -608f, -1559f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(245f, 1180f, -593f, 2536f))))), firstLeadingBit(~firstTrailingBit(u_input.c ^ u_input.c)), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.d, -1i, u_input.b), vec3<i32>(u_input.b, 46033i, 0i)), -vec3<i32>(-21718i, u_input.b, -29175i)), 32564i, u_input.a, u_input.d)));
    let var_1 = var_0;
    let var_2 = ~_wgslsmith_add_u32(4294967295u, min(3910u, min(_wgslsmith_sub_u32(u_input.c, var_1.d), 2127u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.c.wwx)));
    let var_4 = select(select(vec4<i32>(u_input.d, var_1.e.x, u_input.a | var_0.e.x, ~var_0.e.x & -var_0.a.x), var_0.e, 1u == var_2), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.e, abs(var_1.e)) & var_1.a, vec4<i32>(select(var_1.a.x, 1i, !arg_0.x), 1i, select(0i, reverseBits(u_input.d), arg_1.x), var_0.a.x)), true);
    return ~reverseBits(vec4<u32>(~0u, ~6172u, var_1.d, ~var_2));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2020f)))))));
    let var_1 = func_4(select(select(select(func_3(vec2<u32>(u_input.c, u_input.c), Struct_3(Struct_1(vec4<i32>(-16319i, u_input.d, 0i, arg_0.b), vec2<f32>(-1000f, var_0), vec4<f32>(var_0, var_0, var_0, var_0), 31065u, vec4<i32>(arg_0.b, -18545i, -2147483647i, arg_1)), true), 515f), !arg_0.a, false), select(!arg_0.a, vec2<bool>(arg_0.a.x, true), vec2<bool>(true, true)), !any(vec2<bool>(true, arg_0.a.x))), select(arg_0.a, arg_0.a, u_input.d < select(19188i, u_input.b, arg_0.a.x)), all(arg_0.a)), vec4<bool>(any(select(vec2<bool>(false, arg_0.a.x), func_3(vec2<u32>(1u, 33231u), Struct_3(Struct_1(vec4<i32>(2147483647i, u_input.d, -2147483647i, 7459i), vec2<f32>(var_0, var_0), vec4<f32>(-942f, var_0, -1532f, var_0), u_input.c, vec4<i32>(arg_0.b, u_input.b, 2147483647i, arg_0.b)), arg_0.a.x), 136f), select(arg_0.a, arg_0.a, arg_0.a))), !(!(!arg_0.a.x)), true, !(1i >= arg_0.b)));
    let var_2 = arg_0.a.x;
    let var_3 = false;
    return var_1.zy << (max(var_1.zx, select(select(var_1.xz, var_1.yz & vec2<u32>(2757u, var_1.x), func_3(vec2<u32>(0u, u_input.c), Struct_3(Struct_1(vec4<i32>(34111i, u_input.a, -17752i, arg_1), vec2<f32>(-1000f, -580f), vec4<f32>(var_0, var_0, var_0, var_0), u_input.c, vec4<i32>(-31974i, arg_0.b, arg_1, 11287i)), false), var_0).x), vec2<u32>(~3456u, _wgslsmith_dot_vec4_u32(vec4<u32>(16167u, u_input.c, 81058u, var_1.x), var_1)), all(select(arg_0.a, arg_0.a, var_3)))) % vec2<u32>(32u));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(abs(arg_2.a.e), select(-abs(vec4<i32>(arg_2.a.e.x, arg_0.b, 2147483647i, arg_0.b)), vec4<i32>(abs(arg_0.b), -13092i, -arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, 9968i, arg_0.b), vec4<i32>(arg_0.b, 1i, u_input.b, u_input.a))), select(vec4<bool>(arg_2.b, false, arg_0.a.x, arg_2.b), select(vec4<bool>(arg_0.a.x, true, arg_2.b, true), vec4<bool>(true, false, arg_0.a.x, arg_2.b), vec4<bool>(arg_2.b, false, true, false)), select(vec4<bool>(false, false, true, arg_2.b), vec4<bool>(true, true, arg_0.a.x, true), true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.b * _wgslsmith_f_op_vec2_f32(arg_2.a.c.xw + arg_2.a.b)) + arg_2.a.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.a.c.xw * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c.x, arg_2.a.c.x))))), false)), arg_2.a.c, 5396u, ~arg_2.a.e);
    var var_1 = Struct_2(arg_2.a, var_0);
    let var_2 = any(vec3<bool>(any(select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), vec4<bool>(false, arg_2.b, true, false))), false, arg_2.b)) | arg_2.b;
    var var_3 = vec3<bool>(false | arg_2.b, arg_0.a.x, arg_2.b);
    var_3 = !select(!select(!vec3<bool>(arg_2.b, false, false), select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(true, var_2, arg_2.b), true), !vec3<bool>(arg_0.a.x, true, var_2)), !vec3<bool>(!arg_0.a.x, var_2, true), any(!vec4<bool>(arg_0.a.x, var_2, var_2, false)));
    return Struct_1(select(reverseBits(-vec4<i32>(arg_0.b, 2147483647i, arg_0.b, arg_0.b)), arg_2.a.e, vec4<bool>(all(vec4<bool>(false, false, false, var_3.x)), any(vec4<bool>(var_2, false, var_2, arg_0.a.x)), var_2 || false, var_2)) << ((_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(25014u, 0u, 0u, var_0.d)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 49778u, arg_2.a.d, arg_2.a.d), vec4<u32>(41484u, u_input.c, var_1.a.d, var_0.d))) ^ vec4<u32>(~1u, ~u_input.c, ~arg_1.x, ~18116u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.b.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.c.x)), 2011f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1523f), _wgslsmith_f_op_f32(-arg_2.a.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1230f, var_0.b.x, 1104f, -1484f) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.b.x, 998f, arg_2.a.b.x, 727f), var_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(1087f - 1042f), _wgslsmith_div_f32(761f, arg_2.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(3380f, 789f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.c.x, 233f, var_0.c.x, 812f) + vec4<f32>(1455f, var_0.c.x, -1348f, var_0.c.x)) * arg_2.a.c) + arg_2.a.c)), countOneBits(min(abs(firstLeadingBit(var_1.a.d)), _wgslsmith_sub_u32(~48132u, var_1.a.d))), max(~(-(var_0.e & vec4<i32>(var_0.a.x, -1560i, -1i, -1i))), var_0.a));
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = !vec2<bool>(all(vec2<bool>(arg_0.b, select(true, arg_1, false))), false | arg_0.b);
    let var_1 = vec4<f32>(1238f, _wgslsmith_f_op_f32(-1686f * _wgslsmith_f_op_f32(select(arg_0.a.b.x, arg_0.a.c.x, true))), _wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0.a.c.x)))));
    var var_2 = Struct_3(arg_0.a, func_3(firstLeadingBit(func_2(Struct_4(vec2<bool>(true, var_0.x), u_input.d), -19480i)), Struct_3(arg_0.a, countOneBits(arg_0.a.d) < ~1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.c.x + _wgslsmith_f_op_f32(var_1.x * -1541f)), 1737f)).x);
    var var_3 = arg_0;
    var var_4 = firstTrailingBit(~vec3<u32>(~(~u_input.c), select(14717u & u_input.c, 56606u, true), countOneBits(var_2.a.d)));
    return Struct_2(func_5(Struct_4(!(!vec2<bool>(arg_1, true)), ~(~1230i)), firstTrailingBit(firstTrailingBit(~var_4.yx)), Struct_3(var_3.a, false)), var_2.a);
}

fn func_7(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    var var_0 = func_6(Struct_3(arg_2.b, true), true && !(_wgslsmith_f_op_f32(floor(arg_2.b.b.x)) >= arg_3.c.x));
    var var_1 = select(select(vec2<bool>(false, !all(vec4<bool>(true, false, true, false))), vec2<bool>(true, (505f >= arg_3.c.x) & false), true), vec2<bool>(true, true), vec2<bool>(func_3(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(118337u, 0u), vec2<u32>(30013u, arg_2.b.d)), ~vec2<u32>(var_0.a.d, var_0.a.d)), Struct_3(Struct_1(vec4<i32>(-13004i, -2147483647i, arg_2.b.a.x, -2147483647i), arg_2.b.c.zx, var_0.a.c, 4294967295u, arg_2.b.e), false), _wgslsmith_f_op_f32(-461f + _wgslsmith_f_op_f32(arg_3.b.x + -1830f))).x, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.c.x), _wgslsmith_f_op_f32(var_0.b.b.x - 1552f), _wgslsmith_div_f32(var_0.b.b.x, -1435f)))) - var_0.b.c.zyx));
    let var_3 = func_6(Struct_3(var_0.b, !all(!vec4<bool>(false, false, false, var_1.x))), !(_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(arg_2.a.b.x - var_2.x)) <= arg_3.c.x));
    var var_4 = Struct_4(vec2<bool>(true, true), 0i);
    return Struct_4(select(select(var_4.a, select(var_4.a, var_4.a, any(vec2<bool>(var_4.a.x, true))), !var_4.a), var_4.a, false), reverseBits(-(~_wgslsmith_mult_i32(arg_3.e.x, -1i))));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = func_7(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(6449i, u_input.b, u_input.b, u_input.a) & vec4<i32>(u_input.d, u_input.d, 20171i, -7528i), firstLeadingBit(vec4<i32>(u_input.b, -21350i, -5486i, -1i))), -1i ^ reverseBits(u_input.d), u_input.b), countOneBits(~vec3<i32>(1i, 1i, 1i))), 2147483647i, func_6(Struct_3(func_5(Struct_4(vec2<bool>(true, true), 7153i), func_2(Struct_4(vec2<bool>(true, false), u_input.a), -2147483647i), Struct_3(Struct_1(vec4<i32>(4799i, 1i, -7384i, -1i), vec2<f32>(-310f, -1580f), vec4<f32>(-466f, 563f, -337f, 1509f), u_input.c, vec4<i32>(u_input.b, u_input.d, u_input.a, u_input.d)), true)), true), true), Struct_1(vec4<i32>(~(u_input.d >> (25748u % 32u)), ~2147483647i, -(~u_input.a), (u_input.a << (27487u % 32u)) ^ u_input.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) + -916f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, -581f, -325f, -2655f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, 333f, -139f, 517f) * vec4<f32>(-604f, -1729f, 115f, -835f)))), ~arg_0.x ^ arg_0.x, max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.b, 28520i, u_input.d), vec4<i32>(14307i, 2147483647i, u_input.a, 29901i)), countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.d, 0i)))));
    var_0 = Struct_4(func_3(_wgslsmith_mod_vec2_u32(~arg_0.xy, vec2<u32>(arg_0.x, arg_0.x)) >> (vec2<u32>(abs(0u), 14157u) % vec2<u32>(32u)), Struct_3(func_6(Struct_3(Struct_1(vec4<i32>(-1i, var_0.b, -1i, 0i), vec2<f32>(-1000f, 1198f), vec4<f32>(-278f, 786f, -830f, 1927f), 1u, vec4<i32>(-32414i, -36428i, var_0.b, var_0.b)), true), func_7(vec3<i32>(var_0.b, 29365i, 17137i), var_0.b, Struct_2(Struct_1(vec4<i32>(var_0.b, var_0.b, -2147483647i, 2147483647i), vec2<f32>(-1000f, -740f), vec4<f32>(-722f, 581f, -283f, 411f), u_input.c, vec4<i32>(u_input.d, -6987i, var_0.b, u_input.b)), Struct_1(vec4<i32>(var_0.b, u_input.b, 2147483647i, 5961i), vec2<f32>(2934f, 205f), vec4<f32>(1996f, 137f, -1000f, 1818f), 11271u, vec4<i32>(-20823i, u_input.a, -3151i, -2147483647i))), Struct_1(vec4<i32>(20139i, -10770i, var_0.b, -33537i), vec2<f32>(113f, 1906f), vec4<f32>(-1262f, -1159f, -1330f, 600f), 0u, vec4<i32>(65511i, -1i, var_0.b, u_input.a))).a.x).b, !var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-771f + -422f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -301f))))), 6930i);
    let var_1 = !(!select(vec4<bool>(any(var_0.a), var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, !var_0.a.x, false, true), false || !var_0.a.x));
    var_0 = func_7(firstTrailingBit(vec3<i32>(u_input.a, 1i, u_input.b)), ~var_0.b, Struct_2(func_5(Struct_4(var_1.yy, i32(-1i) * -1132i), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0, arg_0), u_input.c), Struct_3(func_6(Struct_3(Struct_1(vec4<i32>(u_input.a, var_0.b, 42793i, var_0.b), vec2<f32>(-1524f, -1000f), vec4<f32>(-2095f, -810f, -1589f, -634f), 119191u, vec4<i32>(-1189i, -9191i, 1i, 0i)), true), true).a, var_0.a.x)), Struct_1((vec4<i32>(var_0.b, var_0.b, u_input.d, 2726i) & vec4<i32>(var_0.b, var_0.b, var_0.b, 1135i)) ^ (vec4<i32>(var_0.b, var_0.b, -1i, 8169i) >> (vec4<u32>(24722u, 37781u, 0u, u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 131f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, -1286f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-634f, 1104f, 700f, -1475f)))), 1u, -vec4<i32>(-2147483647i, var_0.b, 11868i, var_0.b))), Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(6142i, u_input.a)), vec2<i32>(0i, u_input.a)), i32(-1i) * -var_0.b, -2147483647i, 4741i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, -101f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-160f, -100f) + vec2<f32>(1102f, 1059f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1727f, -1070f, 372f, 1497f))))), ~98327u | u_input.c, ((vec4<i32>(u_input.a, -1i, u_input.d, -2147483647i) | vec4<i32>(-19289i, 1i, u_input.d, var_0.b)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, arg_0.x), vec4<u32>(90234u, 0u, 0u, 4294967295u), vec4<u32>(0u, arg_0.x, 1u, 39181u)) % vec4<u32>(32u))) ^ ~(-vec4<i32>(var_0.b, -7232i, u_input.d, -1i))));
    var var_2 = Struct_3(Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(56394i, -2147483647i, u_input.a, 10042i) << (vec4<u32>(1869u, 38898u, 4294967295u, 0u) % vec4<u32>(32u)), -vec4<i32>(u_input.a, u_input.a, u_input.d, 0i)), func_5(Struct_4(!vec2<bool>(var_0.a.x, var_1.x), 1i), _wgslsmith_mod_vec2_u32(arg_0.zx << (vec2<u32>(72157u, u_input.c) % vec2<u32>(32u)), vec2<u32>(arg_0.x, arg_0.x)), Struct_3(Struct_1(vec4<i32>(var_0.b, 1i, var_0.b, 10473i), vec2<f32>(723f, 831f), vec4<f32>(500f, 1528f, 1250f, 1092f), u_input.c, vec4<i32>(9602i, u_input.d, 1i, var_0.b)), var_1.x)).c.xy, vec4<f32>(_wgslsmith_f_op_f32(ceil(865f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1579f * 1402f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-411f, 466f) + -1223f), _wgslsmith_f_op_f32(-func_6(Struct_3(Struct_1(vec4<i32>(-734i, u_input.b, var_0.b, u_input.d), vec2<f32>(-636f, 142f), vec4<f32>(-1366f, -332f, -2401f, -394f), arg_0.x, vec4<i32>(14300i, -39378i, var_0.b, -2147483647i)), true), false).b.b.x)), _wgslsmith_clamp_u32(~arg_0.x & ~45693u, 1u, arg_0.x), vec4<i32>(_wgslsmith_clamp_i32(1i, func_5(Struct_4(var_1.wz, 1i), arg_0.xy, Struct_3(Struct_1(vec4<i32>(u_input.d, 2147483647i, -2147483647i, -39713i), vec2<f32>(-1058f, 1631f), vec4<f32>(-896f, 836f, -456f, -172f), 26591u, vec4<i32>(var_0.b, 1i, var_0.b, 22558i)), var_1.x)).e.x, u_input.d), countOneBits(~u_input.d), u_input.d, _wgslsmith_mod_i32(firstTrailingBit(var_0.b), var_0.b))), true);
    return 1484f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(117f, -595f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, _wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_sub_u32(0u, u_input.c))))) - 1000f);
    var_0 = func_5(Struct_4(vec2<bool>(true, true), ~reverseBits(u_input.b << (u_input.c % 32u))), max(vec2<u32>(0u, _wgslsmith_mod_u32(85544u, u_input.c) >> (0u % 32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(5312u, u_input.c) ^ vec2<u32>(19597u, 79133u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(4294967295u, 4294967295u)))), Struct_3(func_6(Struct_3(func_6(Struct_3(Struct_1(vec4<i32>(u_input.a, -2147483647i, -2646i, 2147483647i), vec2<f32>(-601f, -130f), vec4<f32>(-1487f, -607f, -1025f, -1052f), u_input.c, vec4<i32>(u_input.a, -6044i, -2147483647i, u_input.b)), true), true).a, u_input.b < u_input.b), (u_input.b > u_input.b) | true).a, true)).b.x;
    var_0 = 1176f;
    let var_1 = Struct_3(func_5(func_7(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-4351i, 0i, 20606i), vec3<i32>(0i, u_input.d, u_input.a), true), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 19535i, u_input.d))), 2147483647i, func_6(Struct_3(Struct_1(vec4<i32>(-1i, 1i, 2147483647i, -15070i), vec2<f32>(745f, -545f), vec4<f32>(679f, -1167f, 395f, -1553f), u_input.c, vec4<i32>(16732i, u_input.b, u_input.b, 0i)), true), true), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.d, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(626f, 526f) * vec2<f32>(-1645f, 1310f)), vec4<f32>(382f, -1412f, 147f, -1183f), func_2(Struct_4(vec2<bool>(false, true), 2147483647i), u_input.a).x, vec4<i32>(u_input.b, u_input.d, 2602i, u_input.b) & vec4<i32>(u_input.d, 4404i, 3298i, -1i))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), ~vec2<u32>(101608u, 1u)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 27531u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(0u, 4294967295u)), ~vec2<u32>(48888u, 4294967295u)), Struct_3(Struct_1(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1194f, 891f, 766f, -896f) + vec4<f32>(-236f, 252f, -447f, -585f)), 6174u, vec4<i32>(2147483647i, -1i, 507i, 0i)), !select(false, false, false))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(abs(475f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c.x + 1213f), _wgslsmith_f_op_f32(-var_1.a.c.x)), -470f)))));
    let var_3 = -vec4<i32>(u_input.a, _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.d, var_1.a.e.x), -27170i), _wgslsmith_dot_vec2_i32(~firstLeadingBit(var_1.a.a.yz), var_1.a.a.zz), var_1.a.a.x);
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(var_1.a.b.x * _wgslsmith_f_op_f32(-754f * 471f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c.x, -938f) * _wgslsmith_f_op_f32(var_2.x - 301f)), var_2.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1.a.c, vec4<f32>(-1451f, -509f, var_1.a.b.x, -209f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), -969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 303f)))), !select(vec4<bool>(true, !var_1.b, true, func_3(vec2<u32>(var_1.a.d, var_1.a.d), Struct_3(Struct_1(var_1.a.e, var_2.xy, var_1.a.c, u_input.c, var_3), var_1.b), var_2.x).x), select(vec4<bool>(var_1.b, var_1.b, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, var_1.b, var_1.b), var_1.b), select(var_1.b, false, var_1.b)), !select(vec4<bool>(true, var_1.b, var_1.b, false), vec4<bool>(false, var_1.b, false, false), vec4<bool>(var_1.b, var_1.b, var_1.b, false)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.c.wzx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.wxw, vec3<f32>(var_1.a.c.x, var_2.x, var_1.a.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x)) + vec3<f32>(_wgslsmith_f_op_f32(var_1.a.b.x + -1634f), _wgslsmith_f_op_f32(var_1.a.b.x + -157f), _wgslsmith_f_op_f32(var_2.x * 1399f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec4<i32>(0i, _wgslsmith_mod_i32(firstTrailingBit(76624i), var_1.a.e.x), 27781i, _wgslsmith_add_i32(var_3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, var_1.a.a.x), vec2<i32>(var_1.a.e.x, var_1.a.a.x)))) ^ var_1.a.a, _wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, 58294u, ~(~var_1.a.d)))), _wgslsmith_mult_i32(min(-_wgslsmith_mod_i32(8896i, -2147483647i), -23382i), abs(5992i)));
}

