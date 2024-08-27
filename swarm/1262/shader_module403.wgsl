struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    let var_0 = arg_1.wx;
    let var_1 = firstLeadingBit(-100403i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, -1361f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1409f))))), -1128f, _wgslsmith_f_op_f32(arg_2 + arg_2));
    var var_3 = ~arg_3;
    var var_4 = arg_3.x;
    return var_2.x;
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<bool>(select(true, _wgslsmith_f_op_f32(-1767f * _wgslsmith_f_op_f32(f32(-1f) * -590f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-2147483647i, true), vec4<bool>(false, true, true, false), 1177f, vec2<u32>(4294967295u, 1u))) + _wgslsmith_f_op_f32(1355f * 451f)), select(select(true, all(vec3<bool>(true, false, false)), true), _wgslsmith_f_op_f32(round(-1119f)) > _wgslsmith_f_op_f32(floor(-1333f)), true)), !(true || select(true, true, true)), true, any(vec4<bool>(true, true, true, true)) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    var var_1 = -((9156i & (i32(-1i) * -u_input.a)) << ((~1u << (_wgslsmith_div_u32(_wgslsmith_add_u32(12664u, 55180u), abs(4294967295u)) % 32u)) % 32u));
    var var_2 = _wgslsmith_div_u32(reverseBits(_wgslsmith_clamp_u32(~1u, ~(~63445u), 0u)), _wgslsmith_mult_u32(28911u, 67639u << (0u % 32u)));
    var_2 = 1u;
    var_0 = select(select(!select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, false, var_0.x)), true), vec4<bool>(all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, var_0.x, true))), var_0.x, true, true), select(true, true, any(!vec4<bool>(false, var_0.x, true, false)))), vec4<bool>(any(!select(var_0.yzy, vec3<bool>(false, true, false), var_0.x)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(36417u, 29202u, 89014u), vec3<u32>(30966u, 14275u, 42939u), var_0.zwx), vec3<u32>(4294967295u, 7961u, 0u)) <= ~1u, var_0.x, true), true);
    return !vec3<bool>(true, var_0.x != false, false);
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_0 << (_wgslsmith_div_u32(4294967295u, 10177u) % 32u), ~0u), vec2<u32>(arg_0, ~4294967295u) | max(~_wgslsmith_sub_vec2_u32(vec2<u32>(43481u, 4294967295u), vec2<u32>(arg_0, 4294967295u)), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(46157u, 37549u)), vec2<u32>(0u, arg_0) & vec2<u32>(arg_0, arg_0))));
    let var_1 = !select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), func_3());
    var var_2 = true;
    var_2 = (_wgslsmith_clamp_u32(~1u, firstLeadingBit(_wgslsmith_mult_u32(2942u, arg_0)), ~select(arg_0, var_0.x, false)) >> (arg_0 % 32u)) > _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x >> (31121u % 32u), arg_0, firstLeadingBit(0u)), vec4<u32>(_wgslsmith_sub_u32(56644u, _wgslsmith_mult_u32(arg_0, var_0.x)), reverseBits(_wgslsmith_sub_u32(var_0.x, arg_0)), var_0.x, _wgslsmith_mod_u32(1u, arg_0 << (31628u % 32u))));
    var var_3 = Struct_1(-u_input.a, !((var_1.x || true) | var_1.x) & true);
    return select(select(~vec2<i32>(-7109i, -58051i), abs(~firstTrailingBit(vec2<i32>(2147483647i, var_3.a))), !(var_3.b & var_3.b)), vec2<i32>(~(-20112i) & u_input.a, max(var_3.a, var_3.a)), !var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1416f), _wgslsmith_f_op_f32(f32(-1f) * -1333f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1472f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f))));
    var var_1 = reverseBits(vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, 1i), u_input.a ^ -2147483647i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, false), vec4<bool>(true, true, true, true), -456f, ~vec2<u32>(0u, 4294967295u))) + -635f)), firstLeadingBit(vec4<i32>(-1i) * -(vec4<i32>(u_input.a, u_input.a, u_input.a, 76137i) ^ vec4<i32>(var_1.x, u_input.a, -23502i, 1i))), func_2(26937u), reverseBits(vec3<u32>(1u, 1u, 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 20267u), vec4<u32>(51599u, 94755u, 4294967295u, 24765u)), ~36755u, abs(66386u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(50706u, 54806u, 15142u))), _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(1u, ~4294967295u))));
}

