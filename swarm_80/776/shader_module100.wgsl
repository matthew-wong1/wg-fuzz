struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~(~u_input.b), u_input.b, max(u_input.b, 4294967295u) ^ select(95610u, u_input.b, false)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 51000u, 1u) >> (max(22766u, 0u) % 32u), 77489u, firstTrailingBit(_wgslsmith_sub_u32(1u, u_input.b)), ~4989u)), 57699u, vec2<u32>(~u_input.b >> (~(~19584u) % 32u), _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1167f)), _wgslsmith_f_op_f32(-1324f * 1015f))), _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(ceil(486f))) * -1256f);
    var var_2 = var_0;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(1396f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-281f, -655f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(sign(978f)));
    var var_4 = false;
    return vec4<bool>(true, any(!vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), any(vec2<bool>(select(any(vec2<bool>(false, false)), true, var_0.c.x < u_input.b), !any(vec4<bool>(false, true, false, true)))), false);
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(u_input.a.xxz);
    var_0 = !(!func_3(u_input.a.zyz));
    var_0 = !(!(!func_3(min(vec3<i32>(u_input.a.x, -2501i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    var_0 = func_3(vec3<i32>(u_input.a.x, -1i, ~u_input.a.x & -_wgslsmith_add_i32(u_input.a.x, 1i)));
    var var_1 = -705f;
    return Struct_1(_wgslsmith_clamp_u32(0u, min(39432u, countOneBits(1u)), 0u) & ~select(1u, u_input.b, true), countOneBits(u_input.b & 11167u), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(1u, 0u)), ~min(vec2<u32>(36368u, 10846u), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(4294967295u, u_input.b))), ~(~(~vec2<u32>(22925u, 0u)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = func_2();
    return func_2();
}

fn func_1() -> vec4<bool> {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + _wgslsmith_div_f32(1091f, -1340f)))), func_2(), Struct_1(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 17257u, 1u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 66782u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), ~(~vec4<u32>(4294967295u, 14699u, u_input.b, 26330u))), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b)), ~vec2<u32>(1u, 34737u))), !(!func_3(firstLeadingBit(u_input.a.wxz)).x));
    var_0 = func_4(1000f, Struct_1(_wgslsmith_clamp_u32(4294967295u, 1u, var_0.b << (~u_input.b % 32u)), _wgslsmith_add_u32(92591u, firstTrailingBit(~0u)), vec2<u32>(max(55690u, abs(4294967295u)), _wgslsmith_clamp_u32(u_input.b, ~u_input.b, func_2().b))), func_4(_wgslsmith_f_op_f32(floor(901f)), func_2(), func_2(), func_3(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 8069i), u_input.a.zzw), u_input.a.wxw ^ vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))).x), select(all(select(func_3(vec3<i32>(u_input.a.x, 0i, u_input.a.x)).yzy, vec3<bool>(true, true, true), true)), func_3(-(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))).x, false));
    var var_1 = vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) + 693f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-802f + -532f)))), true, all(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false), select(false, true, false))));
    var var_2 = func_2();
    var var_3 = var_1.zw;
    return select(!select(!vec4<bool>(false, var_1.x, var_3.x, var_3.x), func_3(_wgslsmith_mult_vec3_i32(u_input.a.wyw, u_input.a.wwy)), true), select(!vec4<bool>(!var_3.x, !var_1.x, var_3.x, true), func_3(min(-u_input.a.ywx, vec3<i32>(u_input.a.x, -1i, u_input.a.x))), select(select(!vec4<bool>(var_3.x, var_3.x, false, false), !vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_3.x, false, false, var_3.x)), select(!vec4<bool>(var_1.x, true, var_3.x, var_3.x), !vec4<bool>(var_3.x, var_3.x, var_1.x, var_1.x), select(vec4<bool>(true, true, var_3.x, var_1.x), vec4<bool>(true, false, false, var_1.x), true)), !(!vec4<bool>(var_1.x, true, false, var_1.x)))), true && var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(~(vec4<u32>(34535u, u_input.b, u_input.b, 1u) & vec4<u32>(61682u, 4294967295u, u_input.b, 4294967295u)), ~vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), func_1(), vec4<bool>(true, true, true, true))) & vec4<u32>(1u, _wgslsmith_div_u32(~u_input.b, u_input.b), firstLeadingBit(~(~21506u)), countOneBits(u_input.b | u_input.b));
    var var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(min(4294967295u, 0u), u_input.b) ^ ~6648u, ~(~_wgslsmith_add_u32(u_input.b, u_input.b))), 75727u, ~var_0.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1085f, -623f)))))), u_input.a);
}

