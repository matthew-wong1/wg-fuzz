struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: Struct_1;

var<private> global2: f32 = 1000f;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<f32, 22>();
    let var_0 = select(vec4<bool>(!(!all(vec2<bool>(true, false))), true, !(!all(vec2<bool>(false, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)) || (true | all(vec4<bool>(false, false, true, false)))), select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), select(vec4<bool>(false, any(vec3<bool>(true, true, false)), global1.a > global0[_wgslsmith_index_u32(4294967295u, 22u)], true), vec4<bool>(all(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, true, false)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true)))), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), all(vec4<bool>(true, false, false, false)), true, true)), vec4<bool>(false, select(all(vec4<bool>(true, false, true, true)), true, any(vec3<bool>(false, false, false))) & true, all(vec2<bool>(true, true)), !(!any(vec3<bool>(false, true, false)))));
    let var_1 = Struct_2(select(var_0.zxx, vec3<bool>(!var_0.x, any(!var_0), !(!var_0.x)), select(vec3<bool>(all(var_0), var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), false)), Struct_1(global0[_wgslsmith_index_u32(79561u, 22u)]));
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(1u, u_input.b, u_input.b)), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.b)), select(vec3<u32>(u_input.c.x, u_input.c.x, 21226u), ~vec3<u32>(1u, 1u, 32863u), select(vec3<bool>(true, var_0.x, var_0.x), var_0.wzz, false))), 66668u), u_input.c);
    return global0[_wgslsmith_index_u32(~var_3.x ^ 66834u, 22u)];
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_1(global1.a);
    global1 = Struct_1(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(func_3())));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(978f - _wgslsmith_f_op_f32(arg_0 - var_2.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1316f, var_1.a))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-global1.a)))))));
    return -2147483647i < (u_input.a.x | firstTrailingBit(abs(1i)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32) -> vec3<u32> {
    global1 = Struct_1(global0[_wgslsmith_index_u32(0u, 22u)]);
    let var_0 = vec2<bool>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(859f + global1.a)))), -977f), false);
    let var_1 = Struct_2(select(select(vec3<bool>(u_input.a.x == u_input.a.x, false, arg_0), vec3<bool>(any(vec2<bool>(true, arg_0)), var_0.x, select(var_0.x, var_0.x, arg_0)), !(!vec3<bool>(false, false, arg_0))), select(select(select(vec3<bool>(var_0.x, arg_0, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(arg_0, true, var_0.x)), vec3<bool>(arg_0, false, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, var_0.x))), vec3<bool>(any(vec3<bool>(false, arg_0, false)), false, false), vec3<bool>(any(vec3<bool>(false, var_0.x, false)), false && arg_0, true)), all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_f32(arg_2, 221f)));
    let var_2 = u_input.a.x;
    global2 = var_1.b.a;
    return vec3<u32>(u_input.c.x >> (~u_input.b % 32u), 4294967295u, min(~(~17324u), firstLeadingBit(~_wgslsmith_mult_u32(u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(~30153u, u_input.b, ~firstTrailingBit(18785u)) & ~(func_1(true, 369f, global1.a) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.b), vec3<u32>(u_input.c.x, 0u, u_input.c.x))));
    let var_1 = Struct_2(select(select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), select(vec3<bool>(any(vec2<bool>(false, false)), true, false), vec3<bool>(true, true, true), true), false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) * global1.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f * global0[_wgslsmith_index_u32(u_input.b, 22u)]) - _wgslsmith_f_op_f32(-global1.a)))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~(firstTrailingBit(_wgslsmith_mult_u32(1u, 65040u)) >> (firstLeadingBit(var_0.x) % 32u)), 22u)]);
    let var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 1u), ~var_0.x), ~1u, ~_wgslsmith_sub_u32(var_0.x, var_0.x)), reverseBits(~(~(~vec3<u32>(var_0.x, 1u, u_input.c.x)))));
    var_2 = var_1.b;
    let var_4 = var_1.b;
    var var_5 = !vec3<bool>(var_1.a.x, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1632f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_0.x, 22u)])) + 441f)), any(vec2<bool>(true, var_1.a.x)));
    let var_6 = Struct_2(vec3<bool>(true, false, any(vec3<bool>(!var_1.a.x, true, true & var_5.x))), Struct_1(_wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.a, global0[_wgslsmith_index_u32(0u, 22u)])) + _wgslsmith_f_op_f32(max(var_4.a, -130f))))));
    global0 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)), vec4<u32>(~func_1(var_6.a.x == var_6.a.x, var_1.b.a, _wgslsmith_f_op_f32(select(1541f, 2056f, var_6.a.x))).x, ~4294967295u, var_3.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 5695u, 1u, 0u), vec4<u32>(4294967295u, 4662u, 97627u, 17339u)), max(_wgslsmith_mod_u32(63890u, 10221u), _wgslsmith_add_u32(var_0.x, var_3.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.a, -1688f, var_4.a, 1399f)))))))));
}

