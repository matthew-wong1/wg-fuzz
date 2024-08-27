struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec4<u32> {
    return countOneBits(vec4<u32>(~_wgslsmith_clamp_u32(~1u, 1u, max(4294967295u, 1u)), 1u, (reverseBits(0u) << (firstLeadingBit(52694u) % 32u)) << (1u % 32u), 1u));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~(~_wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, arg_0), min(1u, arg_0)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f - 181f)))) + 732f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-198f, 1000f) * 290f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1267f, -1387f), -1216f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)))), -1258f);
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-829f, _wgslsmith_f_op_f32(floor(var_1.x))), -369f, 657f))));
    var var_2 = select(select(!vec3<bool>(true, var_1.x == var_1.x, true), !vec3<bool>(true, true, any(vec3<bool>(false, false, true))), select(vec3<bool>(true, arg_0 < 7280u, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)))), select(select(vec3<bool>(select(false, true, false), true, any(vec4<bool>(true, false, true, true))), vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true)), true), vec3<bool>(any(vec4<bool>(false, true, true, true)), false, false)), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), !all(vec3<bool>(true, true, true))), false);
    let var_3 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1195f), _wgslsmith_f_op_f32(-394f - var_1.x))))));
    return _wgslsmith_div_f32(-1034f, _wgslsmith_f_op_f32(round(-1474f)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-577f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(arg_1, arg_1, arg_1)))))), 792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 185f)) - 1955f)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * var_0.x), vec4<u32>(_wgslsmith_add_u32(~arg_1, ~(~0u)), 0u, 147368u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<u32>(0u, 61046u, 11430u, 25836u)), vec4<u32>(firstLeadingBit(arg_1), ~arg_1, _wgslsmith_mod_u32(arg_1, 0u), arg_1))));
    var var_2 = var_1;
    var var_3 = arg_1 <= var_1.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-738f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(979f, var_2.a, var_0.x) * vec3<f32>(var_0.x, var_2.a, var_1.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_1.a, var_0.x), false)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false), true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1622f, -439f))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, var_0.x, var_0.x), vec3<f32>(-894f, var_2.a, var_2.a)))))));
    return 37767u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~0u));
    let var_1 = _wgslsmith_sub_vec3_u32(~(~(~(~vec3<u32>(1u, 31785u, 52403u)))), vec3<u32>(firstTrailingBit(abs(1u)), ~1u, ~(~firstTrailingBit(0u))));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(468f + 957f), 169f), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_1.x, 9847u, 4294967295u)), vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x)), ~func_1()), ~(~4294967295u), _wgslsmith_dot_vec2_u32(~(var_1.yy | vec2<u32>(4294967295u, 41702u)), vec2<u32>(func_2(false, var_1.x, vec4<i32>(1i, 0i, 2147483647i, u_input.a.x)), ~4294967295u)), (abs(var_1.x) & func_1().x) | 3043u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-670f, var_2.a)))) + var_2.a);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, 714f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) - var_2.a)), abs(select(var_2.b, var_2.b, vec4<bool>(true, true, true, true))));
    var var_5 = !(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_6 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_7 = var_2;
    let var_8 = Struct_1(max(var_7.b.x, var_4.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3, -1000f, -545f, var_2.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_7.a, var_7.a, var_7.a, 1048f), vec4<f32>(var_3, var_3, 1725f, var_3), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a, -240f, 382f, var_3), vec4<f32>(var_3, var_2.a, -1776f, 1515f), var_6)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, var_7.a, var_7.a, var_3) + vec4<f32>(1024f, var_2.a, var_4.a, 917f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_7.a, var_4.a) + vec4<f32>(var_3, var_3, var_3, var_2.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2146f, var_4.a, var_7.a, -682f) - vec4<f32>(var_2.a, 1000f, 709f, var_3))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(4294967295u, 4294967295u) | _wgslsmith_mod_u32(var_7.b.x << (2387u % 32u), ~4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3, _wgslsmith_f_op_f32(-var_3))))), ~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~45345u), _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(25899u, var_7.b.x))));
}

