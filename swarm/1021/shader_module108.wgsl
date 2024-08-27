struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-711f - 1467f);
    var var_1 = Struct_1(true, max(~reverseBits(vec2<u32>(u_input.c.x, 4294967295u)) >> (abs(select(u_input.b.ww, u_input.d.xx, vec2<bool>(true, true))) % vec2<u32>(32u)), u_input.c.xz), u_input.b.yxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2630f)) * _wgslsmith_f_op_f32(f32(-1f) * -745f)), true))));
    let var_2 = var_1.d != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * _wgslsmith_f_op_f32(f32(-1f) * -1230f)), _wgslsmith_f_op_f32(exp2(var_1.d))))));
    var_1 = Struct_1(!var_2, ~abs(_wgslsmith_sub_vec2_u32(u_input.d.yz, vec2<u32>(37685u, var_1.b.x))) ^ max(vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(16978u, 1u)), var_1.b), _wgslsmith_div_vec3_u32(~firstLeadingBit(u_input.b.zwz), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(var_1.c), ~u_input.d, u_input.d), ~var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.d, var_1.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.d, -838f)), _wgslsmith_f_op_f32(-840f + -1267f)))));
    let var_3 = Struct_2(Struct_1(false, firstLeadingBit(~(~vec2<u32>(24656u, var_1.b.x))), select(~(vec3<u32>(34976u, 25789u, 0u) | vec3<u32>(4294967295u, u_input.c.x, 0u)), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, var_1.c.x), ~40745u, ~var_1.b.x), select(vec3<bool>(var_1.a, true, false), vec3<bool>(var_2, false, var_1.a), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(381f + _wgslsmith_f_op_f32(var_1.d * var_1.d))))), Struct_1(!(all(vec3<bool>(false, var_2, true)) | all(vec4<bool>(var_2, var_1.a, true, var_2))), ~vec2<u32>(_wgslsmith_mod_u32(1u, 86124u), firstLeadingBit(var_1.c.x)), ~max(~vec3<u32>(var_1.b.x, u_input.c.x, var_1.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.x, 1u, u_input.d.x), u_input.d)), _wgslsmith_f_op_f32(floor(var_1.d))), vec3<u32>(4294967295u, ~var_1.c.x, u_input.b.x), true, i32(-1i) * -1i);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, 1772f, -1339f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1539f, _wgslsmith_f_op_f32(-558f * 1089f), _wgslsmith_f_op_f32(round(1455f)))))));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_1(((all(vec3<bool>(false, false, false)) & true) & false) && true, ~vec2<u32>(1u, _wgslsmith_sub_u32(u_input.d.x, 1u)), ~u_input.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2322f * _wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_0))))));
    return _wgslsmith_f_op_vec3_f32(func_3());
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(765f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-arg_1.a.d))));
    var var_2 = u_input.b;
    var_0 = arg_1.b.d;
    var_0 = -444f;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.d), 1f));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -567f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-557f * arg_1.d), _wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3, arg_1.d)) + _wgslsmith_f_op_f32(ceil(642f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(729f - arg_2))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) * _wgslsmith_f_op_f32(113f - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(step(-1342f, _wgslsmith_div_f32(-516f, arg_1.d))))).x));
    let var_1 = Struct_1(all(select(select(!vec3<bool>(arg_1.a, true, true), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(false, true, arg_1.a), vec3<bool>(arg_1.a, true, true)), true), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), all(select(vec3<bool>(false, arg_1.a, false), vec3<bool>(true, false, true), vec3<bool>(arg_1.a, false, arg_1.a))))), ~(~(u_input.b.ww << (vec2<u32>(11348u, u_input.b.x) % vec2<u32>(32u))) | ~vec2<u32>(35540u, 12798u)), _wgslsmith_clamp_vec3_u32(u_input.b.wyx, _wgslsmith_clamp_vec3_u32(vec3<u32>(~40007u, u_input.c.x, u_input.c.x ^ 0u), _wgslsmith_sub_vec3_u32(arg_1.c, vec3<u32>(arg_1.c.x, 42658u, 1u)), max(vec3<u32>(37408u, 1u, 13686u) & vec3<u32>(arg_1.b.x, 0u, 44681u), firstLeadingBit(u_input.c.xwy))), ~vec3<u32>(_wgslsmith_mod_u32(arg_1.c.x, 97067u), u_input.b.x & 17535u, _wgslsmith_add_u32(1u, 61725u))), 1323f);
    var var_2 = arg_1;
    return vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.d)), -1315f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1688f, 2057f, arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, var_2.d))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, 1298f, -663f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-859f, -1112f, 2200f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 1678f, 103f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(u_input.a, Struct_1(any(vec3<bool>(false, false, false)), u_input.b.yz, countOneBits(vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(round(784f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f + -1183f) - _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a, 1i), Struct_2(Struct_1(false, u_input.b.zy, u_input.b.zyz, -570f), Struct_1(false, u_input.b.zw, u_input.d, 332f), u_input.c.wyw, false, u_input.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(-473f)).x, _wgslsmith_f_op_f32(func_1(vec2<i32>(12293i, 2147483647i), Struct_2(Struct_1(true, u_input.b.zx, vec3<u32>(u_input.d.x, 82051u, 4294967295u), -944f), Struct_1(false, u_input.d.zy, u_input.c.zxx, 592f), vec3<u32>(u_input.d.x, u_input.b.x, u_input.c.x), false, 2147483647i)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-633f, _wgslsmith_f_op_f32(1722f * -394f), -1339f) + _wgslsmith_f_op_vec3_f32(func_2(1f))))));
    let var_1 = Struct_1(true, vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.d.x, u_input.b.x)), vec3<u32>(max(u_input.b.x, (u_input.d.x | u_input.b.x) & 38213u), ~u_input.d.x, u_input.c.x), 2709f);
    let x = u_input.a;
    s_output = StorageBuffer(-530f);
}

