struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.a, global1.c.a, arg_0.a, arg_2.b.x)) * vec4<f32>(936f, _wgslsmith_f_op_f32(-global1.d.a), arg_2.a, -757f))))));
    var var_1 = reverseBits(arg_2.d);
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, 1991f, var_0.x, global1.d.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 585f, global1.c.b.x, 1400f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, var_0.x, global1.d.a)))) * vec4<f32>(-595f, arg_2.a, global1.d.a, _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(exp2(arg_2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, var_0.x, arg_2.b.x, -1142f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, global1.c.b.x, arg_2.a))))) - vec4<f32>(global1.c.b.x, _wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_f_op_f32(round(-137f)), arg_2.b.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + arg_2.b.x), -611f, _wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(min(arg_0.b.x, -647f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(-584f)), _wgslsmith_f_op_f32(883f + -308f), _wgslsmith_f_op_f32(256f * var_0.x), _wgslsmith_f_op_f32(floor(-2164f))))))));
    let var_2 = firstTrailingBit(arg_2.d.xy);
    return _wgslsmith_f_op_f32(arg_0.a * 2688f);
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.b.x) + _wgslsmith_f_op_f32(func_3(global1.c, 18477i, global1.d))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(trunc(global1.d.a)), _wgslsmith_f_op_vec3_f32(-global1.c.b), true, vec3<u32>(4294967295u, 1u, arg_0.x), global1.c.e << (50531u % 32u)), u_input.c, global1.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.d.a)))))));
    let var_1 = 63581u;
    var var_2 = 79404u;
    var var_3 = Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, u_input.c) & (u_input.b & u_input.b), 51369i) != u_input.c, global1.b, Struct_1(762f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1469f, -807f, -1056f), vec3<f32>(-745f, -742f, 1000f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1264f, global1.d.b.x, global1.c.b.x), _wgslsmith_f_op_vec3_f32(sign(global1.d.b))))), global1.e, global1.c.d, 4294967295u), Struct_1(global1.c.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.d.a - -709f), _wgslsmith_f_op_f32(round(1227f)), _wgslsmith_f_op_f32(f32(-1f) * -2659f)), global1.d.b, vec3<bool>(global1.e, any(vec4<bool>(false, global1.a, global1.d.c, false)), global1.e))), false, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~35906u, 5565u), ~global1.d.d, ~vec3<u32>(4294967295u, 57152u, global1.d.d.x)), _wgslsmith_mod_u32(~firstLeadingBit(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.a, global2.x, global2.x), arg_0) >> (44860u % 32u))), false);
    global2 = arg_0;
    return !select(vec3<bool>(global1.d.c, true, all(select(vec4<bool>(false, global1.a, global1.d.c, var_3.b.x), vec4<bool>(false, global1.c.c, var_3.a, false), global1.d.c))), !vec3<bool>(false, !global1.d.c, false), false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = ~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(5844u, global0.x), _wgslsmith_mod_u32(arg_3.x, global2.x)) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(31099u, u_input.a), ~(arg_3.x & 52283u), min(_wgslsmith_add_u32(global0.x, arg_0.e), max(212u, arg_1.x))) % 32u));
    var var_1 = func_2(vec4<u32>((arg_1.x & max(1u, global1.c.e)) & global0.x, global0.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 25340u, 32829u, 1u), vec4<u32>(global0.x, 4294967295u, 1u, var_0))), abs((27676u & arg_0.d.x) << (u_input.a % 32u))));
    var var_2 = global1.c;
    var var_3 = _wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_sub_u32(global1.d.d.x, 59415u)) | global0.x, var_0);
    let var_4 = select(select(vec4<bool>(any(select(vec4<bool>(true, true, arg_0.c, false), vec4<bool>(false, true, true, var_2.c), global1.e)), all(select(vec4<bool>(true, arg_0.c, arg_2, false), vec4<bool>(false, arg_0.c, false, var_1.x), true)), func_2(arg_1).x, any(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(false, true, true, true), vec4<bool>(false, global1.b.x, false, false)))), vec4<bool>(select(arg_0.c, var_2.c, func_2(arg_1).x), var_1.x, true, true), select(vec4<bool>(true, 1u <= var_2.d.x, false, true), select(select(vec4<bool>(var_1.x, true, false, var_2.c), vec4<bool>(global1.c.c, global1.c.c, arg_2, global1.e), var_1.x), vec4<bool>(true, false, true, var_2.c), vec4<bool>(global1.c.c, false, false, global1.d.c)), vec4<bool>(!global1.c.c, false, func_2(vec4<u32>(var_0, 0u, arg_0.d.x, 4294967295u)).x, !arg_2))), select(vec4<bool>(!all(vec4<bool>(false, false, true, false)), var_2.c, true || (arg_2 && var_1.x), all(!vec3<bool>(global1.c.c, var_1.x, false))), !vec4<bool>(any(vec4<bool>(var_2.c, var_1.x, var_1.x, true)), true, false, true | global1.e), func_2(firstTrailingBit(~vec4<u32>(var_0, global2.x, arg_1.x, 12340u))).x), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.a - -318f), -1171f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1024f + arg_0.b.x)))));
    return false;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    global0 = vec2<u32>(4294967295u, 30711u);
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2.d.e, firstLeadingBit(arg_2.d.d.x) << (2088u % 32u)), ~select(abs(arg_2.d.d.zx), global1.d.d.zy, arg_2.a));
    let var_0 = firstTrailingBit(vec2<u32>(4294967295u, ~28528u)) ^ ~global1.c.d.xx;
    let var_1 = firstLeadingBit(var_0.x);
    let var_2 = abs(_wgslsmith_sub_vec4_i32(~select(reverseBits(vec4<i32>(arg_1.x, arg_2.b.x, 1i, u_input.b)), select(vec4<i32>(u_input.c, arg_2.b.x, 1i, -1i), vec4<i32>(16897i, arg_1.x, -1i, -22507i), vec4<bool>(arg_3.x, false, global1.c.c, global1.a)), !vec4<bool>(true, global1.e, true, arg_3.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, ~arg_1.x, arg_1.x, reverseBits(-18492i)), vec4<i32>(arg_2.b.x, arg_1.x ^ 1i, 7538i, 1i))));
    return Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1.c.b - _wgslsmith_f_op_vec3_f32(arg_2.d.b - _wgslsmith_f_op_vec3_f32(global1.c.b + arg_2.d.b))), arg_2.d.b)), func_1(Struct_1(global1.c.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2.d.b), vec3<f32>(1686f, arg_0.x, global1.d.a))), arg_2.a.x, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1, global1.d.d.x, 135330u), vec3<u32>(u_input.a, global0.x, u_input.a))), var_1), vec4<u32>(_wgslsmith_sub_u32(select(25659u, 1u, arg_2.a.x), ~global2.x), var_1, u_input.a, 38545u), any(vec4<bool>(func_1(arg_2.d, vec4<u32>(1u, arg_2.d.d.x, 4294967295u, u_input.a), false, vec3<u32>(var_0.x, u_input.a, 1u)), func_2(vec4<u32>(var_1, var_1, u_input.a, 12359u)).x, arg_3.x | arg_3.x, arg_2.c)), vec3<u32>(46580u, 40189u, global2.x)), ~select(vec3<u32>(global0.x, 1u, 0u), vec3<u32>(global0.x, 0u, var_1) | vec3<u32>(4298u, 28201u, var_0.x), !vec3<bool>(true, false, arg_3.x)), 60342u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 20213i) << (global2.zz % vec2<u32>(32u)), vec2<i32>(0i, 0i) | vec2<i32>(u_input.c, u_input.c)), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, 72925i)), select(vec2<i32>(-2147483647i, u_input.b) ^ vec2<i32>(1i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -18763i), vec2<i32>(u_input.b, 2147483647i)), global1.c.c | global1.c.c)), vec2<i32>(-51304i | _wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(max(u_input.c, -57562i), ~u_input.b, 33213i))), (_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-7953i, 2147483647i), vec2<i32>(u_input.c, 2147483647i))) ^ -2147483647i) & -47384i);
    var var_1 = global2.zwz;
    let var_2 = global1.c;
    var_1 = abs(global2.xxz >> (~_wgslsmith_div_vec3_u32(firstTrailingBit(global1.c.d), ~global1.d.d) % vec3<u32>(32u)));
    var var_3 = Struct_3(var_2.c, global1.b, global1.d, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_2.b.yx)), vec2<f32>(-1850f, global1.d.b.x), global1.d.c))), ~(vec2<i32>(-1i) * -vec2<i32>(-49147i, var_0.x)), Struct_2(select(vec2<bool>(var_2.c, global1.d.c), vec2<bool>(global1.d.c, global1.c.c), false), -vec3<i32>(0i, 2147483647i, var_0.x), func_1(Struct_1(var_2.b.x, vec3<f32>(-132f, -953f, global1.d.b.x), true, vec3<u32>(72182u, 22687u, global2.x), 64933u), vec4<u32>(global0.x, 71342u, var_2.e, 1u) ^ vec4<u32>(0u, var_2.d.x, global2.x, var_2.e), all(global1.b), var_2.d), global1.d, _wgslsmith_sub_i32(u_input.b, 21055i) != (u_input.b & 2367i)), select(!func_2(vec4<u32>(4294967295u, 58705u, 30922u, 0u)), !vec3<bool>(var_2.c, global1.d.c, true), func_1(global1.d, abs(vec4<u32>(37276u, global1.d.e, global0.x, 64762u)), all(vec2<bool>(var_2.c, global1.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(103404u, 17024u, var_2.d.x), var_2.d, var_2.d)))), select(true, false, _wgslsmith_f_op_f32(ceil(194f)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a - 195f), _wgslsmith_f_op_f32(-global1.d.b.x)))));
    let var_4 = global1.d;
    var_3 = Struct_3(global1.b.x || var_2.c, global1.b, func_4(var_2.b.xy, vec2<i32>(-1i, 22128i) | ~select(vec2<i32>(-2147483647i, -8663i), vec2<i32>(17010i, u_input.b), vec2<bool>(global1.b.x, global1.b.x)), Struct_2(!var_3.b, firstLeadingBit(vec3<i32>(10845i, 2147483647i, var_0.x)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-2147483647i, u_input.b, var_0.x), vec3<i32>(u_input.b, -75931i, -1i)), func_4(var_2.b.yx, countOneBits(vec2<i32>(-1i, 6486i)), Struct_2(vec2<bool>(false, true), vec3<i32>(-1i, var_0.x, -2147483647i), var_3.d.c, Struct_1(global1.c.b.x, vec3<f32>(var_3.c.b.x, -615f, 2103f), global1.b.x, vec3<u32>(0u, 0u, var_3.c.e), global1.c.e), false), !vec3<bool>(var_2.c, false, var_3.a)).c, var_3.d, var_2.c), !vec3<bool>(false, func_1(global1.c, vec4<u32>(76183u, var_3.c.e, 12206u, global0.x), false, var_3.d.d), var_4.c)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.yz)), firstLeadingBit(countOneBits(vec2<i32>(u_input.c, -2147483647i) >> (vec2<u32>(var_2.d.x, var_3.c.e) % vec2<u32>(32u)))), Struct_2(vec2<bool>(func_1(Struct_1(186f, var_2.b, false, vec3<u32>(var_3.d.d.x, u_input.a, global1.d.e), u_input.a), vec4<u32>(var_2.d.x, u_input.a, 62632u, global2.x), true, var_2.d), var_4.c), (vec3<i32>(-493i, var_0.x, 20439i) ^ vec3<i32>(1i, u_input.b, var_0.x)) >> (countOneBits(vec3<u32>(var_3.c.d.x, 57321u, 85938u)) % vec3<u32>(32u)), !any(vec3<bool>(var_2.c, var_2.c, var_3.c.c)), func_4(_wgslsmith_f_op_vec2_f32(step(var_2.b.xz, global1.d.b.xx)), vec2<i32>(var_0.x, u_input.c) ^ vec2<i32>(var_0.x, 2147483647i), Struct_2(global1.b, vec3<i32>(var_0.x, var_0.x, 48640i), var_4.c, var_3.c, var_3.b.x), select(vec3<bool>(global1.e, global1.b.x, true), vec3<bool>(var_4.c, true, true), vec3<bool>(true, var_3.d.c, var_2.c))), !var_2.c), vec3<bool>(var_3.d.c == true, var_3.b.x, (var_0.x == var_0.x) & select(false, var_2.c, var_2.c))), true);
    var var_5 = Struct_2(global1.b, firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 29614i, 24996i), vec3<i32>(u_input.b, u_input.c, -37713i)), min(vec3<i32>(-7675i, 69159i, u_input.c), ~vec3<i32>(u_input.c, 67528i, u_input.b)))), var_4.c, var_3.d, var_3.d.c);
    let var_6 = abs(vec4<u32>(_wgslsmith_mod_u32(global2.x, var_3.c.e), 4294967295u, abs(u_input.a), 2264u)) ^ reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 91839u, var_5.d.e, 7739u), vec4<u32>(46418u, var_1.x, global2.x, global1.c.e), vec4<bool>(false, var_4.c, global1.e, false)), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.e, global0.x, 9926u, 51538u), vec4<u32>(4294967295u, global2.x, 0u, global1.c.d.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, var_3.d.e, global0.x, global2.x), vec4<u32>(80978u, global0.x, var_5.d.e, 104960u))), select(abs(vec4<u32>(64180u, var_2.d.x, 1u, var_3.d.d.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.x, global2.x, var_1.x), vec4<u32>(0u, u_input.a, var_1.x, 0u)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(84196u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global2.x, global0.x), 0u << (var_6.x % 32u), max(~var_2.d.x, 1u)), select(~_wgslsmith_mult_u32(0u, 4294967295u), abs(var_2.d.x), var_3.a)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(14584i, -9377i), countOneBits(vec2<i32>(u_input.c, u_input.b)), global1.b) >> (var_6.xz % vec2<u32>(32u)), vec2<i32>(var_0.x, _wgslsmith_mod_i32(0i, u_input.b)) ^ _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.x, var_5.b.x), ~var_5.b.xz)), abs(reverseBits(vec4<u32>(1u, 20177u, ~var_4.e, 4294967295u))));
}

