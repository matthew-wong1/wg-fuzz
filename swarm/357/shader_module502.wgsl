struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_add_i32(select(arg_1.c, _wgslsmith_dot_vec4_i32(arg_1.a.a, arg_1.a.a), arg_3.b.d | true), -1i);
    global0 = array<Struct_3, 22>();
    let var_1 = arg_1.a;
    let var_2 = u_input.a;
    global0 = array<Struct_3, 22>();
    return var_1.b.d;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = vec2<bool>(!arg_1.b.d, true | !(!arg_1.b.d));
    var var_1 = arg_0.x;
    var var_2 = arg_1.b.d;
    let var_3 = !all(vec4<bool>(true, true, _wgslsmith_f_op_f32(-arg_1.b.c) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.b.d));
    var_1 = -740f;
    return Struct_3(Struct_2(vec4<i32>(-52124i, -2147483647i, arg_1.a.x, 1057i), arg_1.b), arg_1.b, (~arg_1.a.x << (4294967295u % 32u)) ^ reverseBits(arg_1.a.x));
}

fn func_1() -> f32 {
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1726f, 279f, -279f, -666f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f + -1812f)), 1f, 374f, 293f), true)), Struct_2(vec4<i32>(max(-21802i, -1i), -17798i, -37722i, ~max(14533i, 372i)), Struct_1(_wgslsmith_f_op_f32(-724f + -1000f), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 9548u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(149f, -1172f)), _wgslsmith_f_op_f32(754f * 377f), select(false, true, false))), select(true, true, func_2(vec3<i32>(-75593i, -2147483647i, -5113i), global0[_wgslsmith_index_u32(u_input.a, 22u)], vec2<u32>(15030u, 4294967295u), Struct_2(vec4<i32>(2147483647i, -383i, -25884i, -63108i), Struct_1(-1000f, vec2<u32>(0u, u_input.a), 855f, false)))))), ~vec2<u32>(~u_input.a, 0u));
    global0 = array<Struct_3, 22>();
    let var_1 = select(vec4<bool>(true, !var_0.a.b.d, false, !(!var_0.a.b.d == false)), select(!(!vec4<bool>(var_0.a.b.d, var_0.b.d, var_0.b.d, false)), !vec4<bool>(all(vec3<bool>(var_0.b.d, true, false)), true, false, var_0.a.b.d), var_0.a.b.b.x == (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(var_0.b.b.x, var_0.b.b.x, 31464u)) << ((4294967295u & var_0.b.b.x) % 32u))), !var_0.b.d);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b.c, 1393f, false))))))), var_0.a.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.c) - _wgslsmith_div_f32(-488f, 1656f))) + _wgslsmith_f_op_f32(-var_0.b.c)));
    let var_3 = var_0.b.c;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.b.c * _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(434f, var_0.a.b.c, var_3, var_2.x), vec4<f32>(1865f, 1000f, var_0.a.b.a, var_0.a.b.a)), var_0.a, ~var_0.a.b.b).a.b.c - var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<Struct_3, 22>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1320f))))) + _wgslsmith_f_op_f32(sign(1f)));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1588f)), _wgslsmith_f_op_f32(abs(-1227f)))) - _wgslsmith_f_op_f32(f32(-1f) * -651f)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -324f);
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1006f - 152f) - _wgslsmith_div_f32(-1023f, var_2))), -307f), ~vec2<u32>(firstTrailingBit(~16068u), firstTrailingBit(abs(56676u))), var_2, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -29197i), vec2<i32>(-27246i, -17455i)), vec2<i32>(1i, 1i)) < firstLeadingBit(-1i));
    var_3 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-1577f + _wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-var_2), !var_3.d))), var_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.c, var_3.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a + var_2))))), Struct_2(~vec4<i32>(~(-75441i), _wgslsmith_add_i32(-57248i, 15288i), -2147483647i, 1i), Struct_1(-1547f, vec2<u32>(var_3.b.x, max(26803u, 4294967295u)), _wgslsmith_f_op_f32(-1194f * _wgslsmith_f_op_f32(select(var_3.a, -215f, var_3.d))), var_3.d | false)), var_3.b | vec2<u32>(0u, 0u)).a.b;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(var_3.a)), var_3.b, _wgslsmith_f_op_f32(step(var_3.a, 592f)), true && var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a))), 945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) * var_4.c) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.a + var_2)))), -750f), (0i | ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -6619i), vec2<i32>(-2147483647i, 59611i))) ^ abs(1i >> (~u_input.a % 32u)));
}

