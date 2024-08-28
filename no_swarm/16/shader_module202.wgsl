struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_vec2_i32(max(~min(vec2<i32>(arg_2, arg_0.d), select(vec2<i32>(17556i, 1i), u_input.e, vec2<bool>(arg_0.b, arg_0.b))), u_input.e), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~(-1i), ~arg_2), -74169i ^ u_input.b), -(countOneBits(vec2<i32>(1i, 66911i)) & _wgslsmith_mod_vec2_i32(u_input.e, u_input.e))), select(vec2<i32>(~_wgslsmith_mult_i32(36695i, 7907i), firstLeadingBit(abs(arg_2))), -(~_wgslsmith_div_vec2_i32(u_input.e, u_input.e)), true));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~min(arg_1, var_0.x), _wgslsmith_div_i32(max(0i, -34357i), ~var_0.x), _wgslsmith_sub_i32(abs(arg_2), ~5935i)), vec3<i32>(-21669i >> ((2757u >> (u_input.a % 32u)) % 32u), 7217i, u_input.b)), abs(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2909i, u_input.d, arg_2), vec3<i32>(arg_0.d, 1i, -1i)), _wgslsmith_add_i32(~arg_0.d, _wgslsmith_add_i32(arg_0.d, 43259i)), -2147483647i)));
    var_1 = ~(~(vec3<i32>(firstTrailingBit(1i), 27337i, u_input.b << (arg_0.c % 32u)) & _wgslsmith_clamp_vec3_i32(select(vec3<i32>(16008i, var_0.x, u_input.d), vec3<i32>(var_1.x, u_input.b, -1i), arg_0.b), vec3<i32>(1i, 2147483647i, arg_1), ~vec3<i32>(10169i, -36187i, var_0.x))));
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(65333u, u_input.c.x), select(vec2<u32>(0u, u_input.a), arg_0.a, vec2<bool>(true, true)))), ~(min(u_input.c.ww, vec2<u32>(14687u, u_input.a)) & _wgslsmith_add_vec2_u32(arg_0.a, vec2<u32>(arg_0.a.x, u_input.c.x)))), false, ~countOneBits(arg_0.a.x), arg_1, min(arg_0.e, arg_0.e << (_wgslsmith_mod_vec4_u32(~arg_0.e, countOneBits(vec4<u32>(arg_0.e.x, 1u, 0u, u_input.c.x))) % vec4<u32>(32u))));
    var_1 = abs(-vec3<i32>(var_1.x, var_0.x, -(i32(-1i) * -10249i)));
    return vec3<bool>(!var_2.b, all(!select(vec4<bool>(false, true, var_2.b, true), !vec4<bool>(false, var_2.b, arg_0.b, true), true)), arg_0.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_2(false == arg_0.x, ~_wgslsmith_mult_u32(1u, 49389u), vec2<bool>(false, max(22762u << (1u % 32u), 1u) < _wgslsmith_sub_u32(~119010u, ~u_input.c.x)), vec2<i32>(-66940i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, 17046i, u_input.d) << ((vec4<u32>(20960u, arg_1.x, arg_2.x, arg_1.x) | vec4<u32>(27224u, arg_1.x, arg_2.x, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -10053i), vec4<i32>(u_input.e.x, u_input.b, u_input.e.x, -49501i)), select(vec4<i32>(54215i, u_input.e.x, -2147483647i, 2147483647i), vec4<i32>(u_input.e.x, -19063i, 0i, u_input.d), false), ~vec4<i32>(-1i, 51792i, -27124i, u_input.d)))));
    var var_1 = Struct_2(var_0.a, 4294967295u, vec2<bool>(!arg_0.x & true, !all(vec2<bool>(var_0.c.x, true))), ~(-_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), var_0.d), min(u_input.e, var_0.d))));
    var var_2 = var_0;
    var_1 = var_0;
    let var_3 = ~var_1.d.x;
    return _wgslsmith_f_op_f32(round(-426f));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(Struct_1(arg_0, false, u_input.c.x, 44085i, vec4<u32>(arg_0.x, u_input.c.x, arg_0.x, u_input.a)), u_input.b, 0i), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(1u, u_input.a, 25259u, arg_0.x)), firstLeadingBit(min(vec3<u32>(0u, u_input.c.x, 1u), u_input.c.xxz)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 383f)));
    var var_1 = Struct_2(true, 0u, vec2<bool>(all(vec4<bool>(true, true, true, true)), false), -(~(-u_input.e)));
    var var_2 = Struct_1(~vec2<u32>(min(~0u, ~67145u), 1u | max(arg_0.x, u_input.a)), var_1.d.x != (var_1.d.x & _wgslsmith_add_i32(reverseBits(-15495i), -1i)), ~(~4497u), firstTrailingBit(u_input.d) << ((arg_0.x << (_wgslsmith_mod_u32(var_1.b >> (u_input.a % 32u), ~2518u) % 32u)) % 32u), u_input.c);
    let var_3 = Struct_1(var_2.e.xw, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.a, var_1.c.x), false), _wgslsmith_clamp_vec4_u32(vec4<u32>(31338u, 19804u, 33485u, var_2.c), vec4<u32>(17065u, 48258u, 1u, 38050u), u_input.c), firstLeadingBit(var_2.e.wxy))))) != 127f, var_2.a.x, -1i, abs(~select(vec4<u32>(arg_0.x, 95584u, 31027u, var_2.e.x), vec4<u32>(5950u, 0u, arg_0.x, 52454u), !var_2.b)));
    let var_4 = var_0;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e, vec2<i32>(1i, var_3.d)), firstTrailingBit(~vec2<i32>(var_2.d, -34998i))), 1i);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = countOneBits(_wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, -22348i, 2147483647i), vec3<i32>(-8374i, arg_1, arg_0.d)), -vec3<i32>(arg_1, arg_1, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(~arg_0.d, arg_0.d ^ 26425i, u_input.e.x ^ arg_1), firstLeadingBit(firstLeadingBit(vec3<i32>(arg_0.d, -1i, 0i))))));
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(func_2(vec2<u32>(u_input.a, arg_0.a.x) | vec2<u32>(u_input.a, 0u)), firstTrailingBit(max(-2147483647i, 0i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-9518i, 64943i), vec2<i32>(u_input.d, -1334i)), -1i), reverseBits(vec3<i32>(~arg_0.d << (abs(arg_0.a.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, u_input.e.x, arg_0.d), vec4<i32>(var_0.x, u_input.b, u_input.b, 44303i)) & -10665i, min(-arg_0.d, 2147483647i))));
    var_0 = vec3<i32>(2147483647i, -1i, firstTrailingBit(abs(max(~39028i, -2147483647i))));
    var var_1 = false;
    var_0 = vec3<i32>(~1i >> (arg_0.c % 32u), i32(-1i) * -firstTrailingBit(-1i), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-24750i, ~16502i), arg_0.d));
    return false && (func_3(Struct_1(u_input.c.wz, arg_1 != u_input.b, select(arg_0.c, arg_0.c, arg_0.b), arg_0.d, vec4<u32>(1u, arg_0.c, arg_0.c, arg_0.e.x) << (vec4<u32>(42497u, u_input.a, 4294967295u, u_input.c.x) % vec4<u32>(32u))), u_input.d, var_0.x).x && false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, -1863f)))));
    let var_1 = -2147483647i;
    var var_2 = Struct_2(func_1(Struct_1(u_input.c.yw, false, u_input.a, ~u_input.e.x >> (4294967295u % 32u), u_input.c), min(-21185i, -u_input.d)), u_input.a, vec2<bool>(false, !all(vec3<bool>(true, true, false))), u_input.e);
    var_2 = Struct_2(var_2.c.x, ~(abs(var_2.b) ^ ~var_2.b) | abs(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 1u))), !var_2.c, abs(~min(firstLeadingBit(u_input.e), var_2.d)));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(sign(-1078f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(430f, var_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1484f, var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1357f) + vec2<f32>(var_0, var_0))))))));
    var_2 = Struct_2(var_2.c.x, var_2.b, var_2.c, u_input.e);
    var_2 = Struct_2(all(!select(!vec3<bool>(var_2.a, false, true), vec3<bool>(false, var_2.a, var_2.c.x), vec3<bool>(true, var_2.c.x, var_2.a))), 1u, vec2<bool>(any(!select(vec4<bool>(false, false, var_2.a, var_2.c.x), vec4<bool>(var_2.c.x, true, true, true), var_2.a)), false), vec2<i32>(var_2.d.x, -var_1));
    var_2 = Struct_2(var_2.a, abs(_wgslsmith_mult_u32(u_input.c.x >> (19299u % 32u), 1u)), vec2<bool>(_wgslsmith_dot_vec4_u32(u_input.c, firstTrailingBit(u_input.c)) == select(var_2.b, _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.yz), var_2.c.x), !any(vec3<bool>(false, false, true))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(firstTrailingBit(20810i), abs(-1i)), -abs(vec2<i32>(-1i, var_2.d.x))), var_2.d));
    var var_4 = vec4<bool>(false, var_2.c.x, false & any(!(!vec2<bool>(var_2.c.x, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(var_1), var_2.d.x ^ select(var_1, 2147483647i & var_2.d.x, true), !(!all(var_4.zzz))), vec4<i32>(u_input.b, var_1, var_1, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_1, 21914i, u_input.e.x)), vec3<i32>(var_1 ^ var_1, 2147483647i & u_input.b, _wgslsmith_div_i32(23021i, var_2.d.x)))), u_input.b >> (~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(var_2.d.x, 46104i, -2147483647i, 2147483647i)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 26570i, 44282i, 2147483647i), vec4<i32>(-1i, u_input.b, 60224i, u_input.b)))), vec4<i32>(16821i, -(~var_1), 1i, -2147483647i)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(abs(u_input.c.wy), u_input.c.yy | vec2<u32>(var_2.b, u_input.a)), u_input.c.x));
}

