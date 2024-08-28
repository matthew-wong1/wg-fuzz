struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: array<Struct_4, 4>;

var<private> global2: vec4<u32> = vec4<u32>(123053u, 52417u, 134025u, 1u);

var<private> global3: Struct_1 = Struct_1(true);

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    let var_0 = vec2<i32>(countOneBits(_wgslsmith_add_i32(-2147483647i, 1i & arg_0)), arg_0);
    let var_1 = 15334i;
    return !(!(-_wgslsmith_sub_i32(var_1, var_1) <= arg_0));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    return 0i;
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = global4.a;
    let var_1 = _wgslsmith_add_i32((func_3(Struct_3(global4.a, Struct_2(Struct_1(true))), global2.zx, arg_0) >> (max(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, u_input.a, 19128u), global2.xwx)) % 32u)) >> (1u % 32u), 0i);
    global0 = array<vec4<u32>, 28>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) * -899f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)))) - _wgslsmith_f_op_f32(step(1f, -1044f))));
    let var_3 = global1[_wgslsmith_index_u32(u_input.a, 4u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec4<bool>(global4.a.a, global3.a, false, true), vec4<bool>(false, global3.a, false, global4.a.a), any(vec4<bool>(true, global3.a, false, true))), !(!vec4<bool>(true, global4.a.a, true, global4.a.a)), vec4<bool>(global4.a.a & global4.a.a, func_1(27189i, Struct_3(Struct_1(false), Struct_2(global4.a)), vec4<bool>(true, global3.a, global3.a, global3.a)), 40003u < global2.x, global3.a)), select(vec4<bool>(true, true || global4.a.a, global4.a.a, true), !(!vec4<bool>(global3.a, true, false, true)), vec4<bool>(false, !global3.a, global3.a, func_1(1i, Struct_3(Struct_1(global4.a.a), Struct_2(Struct_1(global3.a))), vec4<bool>(global3.a, global3.a, true, true)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2765f, 305f) * _wgslsmith_f_op_f32(ceil(334f)))));
    var var_1 = !var_0.ywy;
    global1 = array<Struct_4, 4>();
    global4 = Struct_2(global4.a);
    global1 = array<Struct_4, 4>();
    global1 = array<Struct_4, 4>();
    let var_2 = Struct_1(true);
    var var_3 = Struct_2(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(u_input.a, u_input.a << (24236u % 32u))), 82958i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f * 204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -816f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-471f, -820f, false)), _wgslsmith_f_op_f32(-466f - -1180f), _wgslsmith_f_op_f32(f32(-1f) * -1160f), _wgslsmith_f_op_f32(f32(-1f) * -1679f)))));
}

