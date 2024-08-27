struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 76628u), vec2<bool>(true, false), 39057i, -1i, vec4<i32>(1i, -6203i, 1i, -894i)));

var<private> global1: array<vec3<u32>, 22>;

var<private> global2: array<i32, 22> = array<i32, 22>(-15020i, 21535i, -32424i, -14644i, 8216i, 13204i, -9667i, 0i, 9738i, 14191i, 1i, 0i, i32(-2147483648), i32(-2147483648), -1i, -1i, 17588i, -26933i, 1i, 13874i, -19303i, i32(-2147483648));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<u32>(44200u, 0u), vec2<bool>(true, true), -1i, 2147483647i, vec4<i32>(-12957i, 2147483647i, 17639i, -18377i))), Struct_2(Struct_1(vec2<u32>(57149u, 21484u), vec2<bool>(false, true), -33335i, i32(-2147483648), vec4<i32>(-1i, 2147483647i, -1i, -41473i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 6526u), vec2<bool>(false, true), i32(-2147483648), -4526i, vec4<i32>(21418i, 1i, -81362i, 0i))), Struct_2(Struct_1(vec2<u32>(57928u, 1u), vec2<bool>(false, false), -17032i, 18075i, vec4<i32>(-51191i, i32(-2147483648), 2147483647i, 1i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 54422u), vec2<bool>(true, false), 2147483647i, 2147483647i, vec4<i32>(-19831i, 36662i, 2977i, i32(-2147483648)))), Struct_2(Struct_1(vec2<u32>(52854u, 53473u), vec2<bool>(false, true), -1i, 0i, vec4<i32>(-1i, 8727i, -1i, 21439i))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(global0.a);
    global0 = Struct_2(global0.a);
    let var_1 = var_0;
    var var_2 = var_1.a.e.x;
    let var_3 = var_1.a.a;
    return Struct_2(global0.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_1.x));
    var var_1 = any(!vec2<bool>(all(select(vec4<bool>(global0.a.b.x, false, arg_0.x, false), vec4<bool>(true, global0.a.b.x, global0.a.b.x, global0.a.b.x), arg_0.x)), true));
    global3 = array<Struct_2, 6>();
    var var_2 = func_1(u_input.a);
    global1 = array<vec3<u32>, 22>();
    return _wgslsmith_f_op_f32(f32(-1f) * -498f);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.a;
    var var_1 = func_1(6813i).a;
    global2 = array<i32, 22>();
    let var_2 = var_0.a.x;
    var var_3 = any(vec2<bool>(all(!(!arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-788f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-690f * -584f)))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 6>();
    var var_0 = ~((-27940i >> (0u % 32u)) & global0.a.e.x);
    var var_1 = func_1(global0.a.e.x >> ((firstTrailingBit(_wgslsmith_add_u32(global0.a.a.x, global0.a.a.x)) << (_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global0.a.a.x, 22u)], vec3<u32>(global0.a.a.x, 103056u, 1u)) % 32u)) % 32u));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1321f))), -413f)), _wgslsmith_f_op_f32(156f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(var_1.a.b, vec3<f32>(-218f, 1094f, 416f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f * 1405f)) * _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -240f), func_3(var_1.a.b.x, global0.a.b, Struct_2(var_1.a))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f + -466f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f * 1929f)))));
    global0 = global3[_wgslsmith_index_u32(firstTrailingBit(max(~0u, ~_wgslsmith_div_u32(var_1.a.a.x, 1u))), 6u)];
    let var_3 = var_2.x;
    let var_4 = ~(firstLeadingBit(var_1.a.a.x) >> (global0.a.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -2147483647i);
}

