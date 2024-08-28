struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f - 635f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(306f - -1122f) * 1f));
    var var_1 = _wgslsmith_mult_u32(1u, max(select(u_input.e.x, 4294967295u, !(-46719i != u_input.b.x)), _wgslsmith_mult_u32(firstTrailingBit(26283u) >> (u_input.e.x % 32u), _wgslsmith_add_u32(~40116u, countOneBits(u_input.a.x)))));
    var_1 = u_input.e.x;
    let var_2 = max(vec4<i32>(-52693i, 2147483647i, u_input.b.x, 1i) >> ((vec4<u32>(~14892u, _wgslsmith_sub_u32(51450u, u_input.e.x), u_input.e.x, u_input.a.x) ^ ~vec4<u32>(4294967295u, 28350u, 1u, u_input.e.x)) % vec4<u32>(32u)), firstTrailingBit(min(max(vec4<i32>(u_input.d.x, u_input.c.x, -2147483647i, u_input.c.x) & vec4<i32>(2147483647i, u_input.c.x, u_input.d.x, -17099i), vec4<i32>(u_input.c.x, u_input.d.x, u_input.b.x, u_input.b.x)), abs(vec4<i32>(2320i, 1390i, u_input.b.x, -1i)))));
    let var_3 = all(!select(vec2<bool>(false, var_0), !(!vec2<bool>(var_0, var_0)), !vec2<bool>(var_0, true)));
    return abs(vec4<u32>(u_input.e.x, u_input.e.x, ~u_input.a.x, 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_2(func_3());
    let var_2 = all(vec2<bool>(0i > var_0.b, !any(vec3<bool>(true, true, true))));
    var_0 = arg_0;
    var_0 = arg_0;
    return Struct_2(vec4<u32>(4294967295u, u_input.e.x << ((var_0.c.x & 4294967295u) % 32u), ~(1u >> (var_0.c.x % 32u)), 1u) | _wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(4294967295u, 41970u, u_input.e.x, var_0.c.x)), _wgslsmith_sub_vec4_u32(var_0.c, vec4<u32>(299u, var_1.a.x, 1u, arg_0.c.x)), true), vec4<u32>(var_0.c.x, _wgslsmith_div_u32(0u, u_input.e.x), 1u, ~var_0.c.x), ~var_1.a ^ _wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(var_1.a.x, 46043u, u_input.a.x, 14231u))));
}

fn func_1() -> f32 {
    let var_0 = -abs(countOneBits(_wgslsmith_mod_i32(8933i, 66718i) | u_input.d.x));
    let var_1 = Struct_3(func_2(Struct_1(1717f, _wgslsmith_sub_i32(2147483647i, i32(-1i) * -50753i), ~(~u_input.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f - -1117f))), 2147483647i, u_input.e));
    let var_2 = _wgslsmith_div_f32(var_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.a)) + var_1.b.a));
    return _wgslsmith_f_op_f32(-833f - var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(244f)))), -1047f);
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_f32(func_1()));
    let var_1 = 996f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1000f) - vec2<f32>(var_1, -1229f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), vec2<f32>(-1316f, var_1))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1216f, var_1), vec2<f32>(var_1, var_1)))), vec2<f32>(-844f, _wgslsmith_f_op_f32(-var_1)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -563f)));
    var var_3 = true;
    var_0 = 485f;
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-148f, -1584f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, -641f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 952f)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(vec2<i32>(u_input.d.x, 2147483647i))), 47894u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -683f, 1000f, -196f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, var_1, var_1, 211f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, -911f, var_1, var_1))))), max(firstLeadingBit(1u), _wgslsmith_add_u32(u_input.e.x << (109244u % 32u), _wgslsmith_div_u32(15341u, u_input.e.x))) | u_input.e.x, var_2.x);
}

