struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1752f, 195f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-543f, 131f, true)), -605f, any(vec2<bool>(true, true))))))), -648f));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-417f * _wgslsmith_f_op_f32(max(140f, -200f)))));
    let var_3 = select(select(select(vec2<bool>(true, var_1.x), var_1.xy, var_1.yz), !var_1.xz, var_1.x), select(!var_1.xx, vec2<bool>(all(!vec4<bool>(var_1.x, true, false, false)), !(!var_1.x)), var_1.x), vec2<bool>(true, true));
    var_2 = -680f;
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(24972u, _wgslsmith_clamp_u32(1u >> (_wgslsmith_clamp_u32(8206u, 4294967295u, 63195u) % 32u), countOneBits(67977u), max(countOneBits(41127u), _wgslsmith_dot_vec4_u32(vec4<u32>(14854u, 4294967295u, 83988u, 0u), vec4<u32>(0u, 1u, 47461u, 21635u))))), firstTrailingBit(firstTrailingBit(28188u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(8698u, 44610u), vec2<u32>(4412u, 4294967295u)) % 32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f)), _wgslsmith_f_op_f32(max(1166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1799f + 466f)))))));
    let var_1 = (~max(abs(8227u), ~714u) << (1u % 32u)) >> (~firstLeadingBit(func_3(Struct_4(vec2<i32>(u_input.c.x, 2147483647i)))) % 32u);
    var var_2 = (abs(0i) & u_input.a.x) << (max(var_1, 43241u) % 32u);
    let var_3 = firstLeadingBit(-_wgslsmith_clamp_vec3_i32(u_input.a.yxx, u_input.c, _wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, -8147i, 0i), vec3<i32>(u_input.c.x, u_input.b, 21959i)), abs(u_input.a.zyw))));
    let var_4 = ~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1, 12731u, 5977u), ~vec4<u32>(4294967295u, var_1, var_1, 1u)), var_1, ~(~var_1), var_1));
    return Struct_2(vec4<u32>(~var_4.x, _wgslsmith_add_u32(~1u, ~(var_1 | 1u)), ~(~(~9250u)), var_4.x), -29978i);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 12528u) ^ abs(vec4<u32>(0u, 0u, 4294967295u, arg_1.x)), reverseBits(~vec4<u32>(arg_1.x, 74054u, 51173u, arg_1.x))) | ~min(vec4<u32>(arg_1.x, 23925u, arg_1.x, arg_1.x) << (vec4<u32>(2003u, 0u, arg_1.x, arg_1.x) % vec4<u32>(32u)), vec4<u32>(0u, arg_1.x, arg_1.x, 41404u)), reverseBits(2147483647i));
    var var_1 = func_2();
    let var_2 = !vec2<bool>(true, any(vec2<bool>(true, true)));
    var var_3 = Struct_3(vec2<bool>(select(var_2.x, true, var_2.x) | (_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(1652f * 350f)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f)), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_1.a.x, var_1.a.x, 45511u)), vec3<u32>(max(0u, 0u), var_1.a.x, arg_1.x)) | _wgslsmith_div_u32(_wgslsmith_div_u32(var_1.a.x, ~6910u), 17134u));
    var_0 = Struct_2(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(abs(var_1.a), vec4<u32>(0u, 36767u, var_1.a.x, 32064u)), ~_wgslsmith_clamp_vec4_u32(var_1.a, var_1.a, var_0.a)), select((-var_1.b << (func_3(Struct_4(vec2<i32>(-1i, var_1.b))) % 32u)) >> (~var_0.a.x % 32u), ~u_input.b, all(vec2<bool>(var_2.x, true))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(604f + _wgslsmith_f_op_f32(trunc(881f))) + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-924f, -944f, false)))), vec2<u32>(1u, 1u)))));
    let var_1 = 0u;
    let var_2 = ~(-29744i);
    var var_3 = Struct_1(vec3<bool>(false, false, (select(true, true, false) & true) | all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(-1647f, -329f))), _wgslsmith_div_vec2_f32(vec2<f32>(136f, var_0), vec2<f32>(var_0, 2105f))))), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_clamp_u32(var_1, 9583u, var_1)), min(min(var_1, 0u), 1u), _wgslsmith_div_u32(var_1, ~0u)) & 49837u, firstLeadingBit(_wgslsmith_div_u32(firstLeadingBit(0u & var_1), 1u)), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    let var_4 = !(!(!vec3<bool>(true, !var_3.a.x, select(var_3.e.x, var_3.e.x, var_3.a.x))));
    var var_5 = _wgslsmith_mult_i32(-1i << (~(reverseBits(var_3.d) | ~var_3.c) % 32u), ~(-6582i));
    var var_6 = u_input.b > firstLeadingBit(u_input.a.x << (~var_1 % 32u));
    let var_7 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2193f + _wgslsmith_f_op_f32(var_0 * -1031f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(-169f, 213f))) + _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-var_3.b.x)));
    var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~max(select(u_input.c.x >> (0u % 32u), ~2147483647i, true), _wgslsmith_mult_i32(-u_input.b, ~u_input.b)), ~select(~vec2<u32>(var_1, var_3.d), vec2<u32>(var_3.c, _wgslsmith_add_u32(6243u, var_1)), var_3.a.x), ~_wgslsmith_mod_u32(firstTrailingBit(var_1), ~(~0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_3.c, 4294967295u, 4294967295u, 47478u) & vec4<u32>(var_3.c, var_3.d, var_3.d, 47700u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 1u, 4294967295u, var_3.c), vec4<u32>(var_3.d, var_3.c, 4294967295u, 7609u)))), ~max(reverseBits(var_3.d), var_3.c ^ 4294967295u)));
}

