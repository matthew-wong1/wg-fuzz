struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 15>();
    let var_0 = ~firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(30822i, 0i), ~(i32(-1i) * -4573i), arg_0.a));
    return Struct_1(arg_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_u32(u_input.a, u_input.a);
    return arg_0.a;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = func_2(Struct_1(arg_0.x));
    var_0 = func_2(func_2(Struct_1(func_3(func_2(Struct_1(arg_0.x)), all(vec4<bool>(false, true, true, true))))));
    global0 = array<vec3<bool>, 15>();
    let var_1 = global0[_wgslsmith_index_u32(~87250u, 15u)];
    var var_2 = Struct_1(var_0.a);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -215f), -317f, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 25949u;
    global0 = array<vec3<bool>, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1765f)), 675f, _wgslsmith_f_op_f32(round(-2364f)), _wgslsmith_f_op_f32(select(637f, -1000f, false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -643f, 313f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(387f, _wgslsmith_div_f32(-918f, 348f), _wgslsmith_div_f32(-1482f, -737f), _wgslsmith_f_op_f32(func_1(vec2<i32>(1i, 8654i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -134f, -109f, 1394f))))));
    var var_2 = func_2(Struct_1(select(min(2147483647i, -6469i) << (u_input.a.x % 32u), max(2147483647i, func_3(Struct_1(-2147483647i), false)), true)));
    var var_3 = u_input.b;
    global0 = array<vec3<bool>, 15>();
    global0 = array<vec3<bool>, 15>();
    global0 = array<vec3<bool>, 15>();
    var_0 = countOneBits(125663u);
    let x = u_input.a;
    s_output = StorageBuffer(-47976i, _wgslsmith_f_op_f32(exp2(var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), true)), -1051f), -((_wgslsmith_sub_i32(var_2.a, var_2.a) ^ (i32(-1i) * -2147483647i)) & -var_2.a));
}

