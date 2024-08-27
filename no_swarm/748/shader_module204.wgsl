struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(540f, -795f, -1420f, 1515f) + vec4<f32>(-1062f, 1937f, 237f, 430f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(401f, -599f, -1266f, 342f) * vec4<f32>(931f, 455f, 1320f, 780f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(-1312f, 197f)), _wgslsmith_f_op_f32(abs(-1087f)), _wgslsmith_f_op_f32(max(-1000f, -307f)), _wgslsmith_f_op_f32(sign(-686f))))), any(vec2<bool>(true, true)) && true)) + vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1640f))), -1000f), u_input.a);
    var var_3 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + -151f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(139f * var_2.a.a))))));
    var var_4 = var_3.b;
    return -1000f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_5 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-2296f + -2266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)) - _wgslsmith_f_op_f32(1533f + _wgslsmith_f_op_f32(-701f + 436f)))), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, arg_1));
    var var_1 = 71551u;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, var_0.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(-3225i, _wgslsmith_mult_i32(1i, u_input.b.x), arg_1.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), 1620f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) - _wgslsmith_f_op_f32(exp2(var_0.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -1397f), -1000f));
    let var_3 = var_0.a.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_2.yz);
    return Struct_5(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, all(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), false), !any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(542f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1726f))) - -1132f));
    var var_1 = vec4<i32>(-u_input.b.x, _wgslsmith_mod_i32(1i >> (_wgslsmith_clamp_u32(u_input.a.x, arg_1.x, 1u) % 32u), _wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), min(u_input.b.x, -1i))) & (i32(-1i) * -(~34165i)), abs(-5845i), _wgslsmith_add_i32(firstTrailingBit(1i), firstTrailingBit(abs(u_input.b.x) << (1u % 32u))));
    var var_2 = (false & arg_0.a.x) & all(vec2<bool>(arg_0.a.x, arg_0.a.x));
    var var_3 = arg_1.x;
    var var_4 = ~4294967295u;
    return 1391f;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(vec3<u32>(1u, 0u, u_input.a.x), u_input.a), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), -1049f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + arg_3.x) - -1920f)), abs(~select(u_input.a, abs(vec3<u32>(u_input.c, 1846u, 87898u)), true)));
    var var_1 = any(vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))))));
    let var_2 = !(!select(true, false, !any(vec2<bool>(false, true))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mult_u32(13976u, var_0.b.x), ~_wgslsmith_sub_u32(countOneBits(33714u << (var_0.b.x % 32u)), _wgslsmith_add_u32(0u, u_input.c)));
    var var_4 = select(vec3<bool>(!(0u > ~u_input.a.x), var_2, all(vec2<bool>(false, !var_2))), select(vec3<bool>(all(!vec4<bool>(false, false, var_2, true)), var_2, var_2), select(!vec3<bool>(false, var_2, true), select(select(vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_2, true), var_2), vec3<bool>(false, var_2, var_2), vec3<bool>(false, var_2, var_2)), all(vec4<bool>(true, true, false, var_2)) && all(vec4<bool>(true, true, false, var_2))), select(vec3<bool>(false, true, var_2), !vec3<bool>(false, var_2, var_2), any(select(vec3<bool>(var_2, false, false), vec3<bool>(false, false, true), vec3<bool>(true, var_2, var_2))))), ~_wgslsmith_add_i32(reverseBits(u_input.b.x), countOneBits(arg_1.x)) > 1i);
    return _wgslsmith_sub_vec3_u32(var_0.b, firstLeadingBit(_wgslsmith_add_vec3_u32(max(vec3<u32>(46441u, u_input.c, var_0.b.x), vec3<u32>(u_input.a.x, 1u, u_input.c)), vec3<u32>(u_input.a.x, var_0.b.x, 1u) ^ var_0.b) | _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(var_0.b.x, u_input.a.x, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_vec3_u32(min(u_input.a, u_input.a) ^ u_input.a, ~vec3<u32>(47289u, u_input.a.x, u_input.a.x)) << (u_input.a % vec3<u32>(32u)));
    var_0 = ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.c & _wgslsmith_mult_u32(38946u, u_input.a.x), 1u));
    var_0 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(min(u_input.a.x, var_0.x), u_input.c, reverseBits(var_0.x)), vec3<u32>(~abs(var_0.x), 1u, var_0.x));
    var_0 = _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(var_0.x, 0u, 27415u)) & ~(~func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1216f, 1095f))), firstLeadingBit(vec4<i32>(1i, 79757i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, -15355i) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, 1606f) + vec2<f32>(-1000f, 435f))));
    var_0 = ~vec3<u32>(u_input.a.x, var_0.x, firstTrailingBit(~max(u_input.a.x, var_0.x)));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, 67106u), ~(~var_0.yx)) << (reverseBits(~vec2<u32>(1u, 0u)) % vec2<u32>(32u)), vec2<u32>(reverseBits(u_input.a.x), ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, -2147483647i, -(u_input.b.x | -2147483647i)) >> (abs(u_input.a) % vec3<u32>(32u)), ~u_input.a);
}

