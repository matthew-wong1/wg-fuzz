struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<bool>(true, false, true), -1i), Struct_1(vec3<bool>(false, true, true), -39710i), Struct_1(vec3<bool>(false, false, false), 8853i), Struct_1(vec3<bool>(false, true, true), -18584i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1027f))) * 712f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -269f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(sign(1374f))), var_0, var_0);
    var var_2 = _wgslsmith_f_op_f32(188f * 1617f);
    global1 = array<Struct_1, 4>();
    var var_3 = Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), abs(u_input.a.x));
    return u_input.a;
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    global0 = false;
    var var_0 = select(!vec3<bool>(false, all(vec2<bool>(true, true)) & all(vec4<bool>(true, false, true, false)), u_input.b.x >= 0u), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), false), !any(vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, true)))));
    var var_1 = global1[_wgslsmith_index_u32(63636u, 4u)];
    var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 4u)];
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.c), vec3<u32>(48810u, u_input.b.x, u_input.b.x)) ^ select(vec3<u32>(66227u, 28177u, 17785u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), true))), max(_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(127447u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 27107u, 15957u))), max(~vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.b.x, u_input.c, 4294967295u))), vec3<u32>(47741u, 20825u, 1u) | (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) | vec3<u32>(35636u, u_input.b.x, u_input.b.x)))), 4u)];
    return var_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(19719i);
    let var_1 = -464f;
    var_0 = 48889i;
    global1 = array<Struct_1, 4>();
    let var_2 = vec4<i32>(~2147483647i, arg_1.b, 0i, -2147483647i) | (vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b, 44407i, -6643i, arg_1.b), vec4<i32>(1i, arg_1.b, arg_0.b, arg_1.b)), func_2()));
    return Struct_1(!(!func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1))))), -_wgslsmith_div_i32(~arg_0.b, -_wgslsmith_mod_i32(-47099i, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(188f, _wgslsmith_f_op_f32(-954f - -1196f)) + -1900f)) * _wgslsmith_div_f32(-1096f, 820f));
    let var_1 = func_1(Struct_1(vec3<bool>(true & select(false, false, true), true | any(vec4<bool>(false, true, false, false)), true), ~u_input.a.x), Struct_1(vec3<bool>(true, true, true), 2147483647i));
    var var_2 = func_1(func_1(func_1(Struct_1(var_1.a, 2147483647i & u_input.a.x), Struct_1(func_1(Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), u_input.a.x), var_1).a, var_1.b)), func_1(Struct_1(var_1.a, max(2147483647i, u_input.a.x)), func_1(func_1(Struct_1(vec3<bool>(var_1.a.x, true, var_1.a.x), 14641i), Struct_1(vec3<bool>(var_1.a.x, true, false), 2147483647i)), func_1(Struct_1(vec3<bool>(true, false, var_1.a.x), -2147483647i), Struct_1(var_1.a, var_1.b))))), Struct_1(vec3<bool>((u_input.c >> (u_input.c % 32u)) != u_input.b.x, var_1.a.x, var_1.a.x), var_1.b | -1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_mult_i32(var_2.b, 2147483647i), var_1.b | func_1(var_1, Struct_1(vec3<bool>(false, false, false), u_input.a.x)).b), _wgslsmith_add_u32(~u_input.b.x, 4294967295u));
}

