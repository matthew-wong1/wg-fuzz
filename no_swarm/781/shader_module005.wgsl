struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: array<Struct_5, 5>;

var<private> global2: Struct_2 = Struct_2(false, true, 0u, 10807i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(~u_input.a);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0.a.x, -u_input.d), 13875i >> (0u % 32u)), -max(vec2<i32>(_wgslsmith_sub_i32(-9007i, u_input.d), max(25589i, -6136i)), -u_input.a | vec2<i32>(0i, var_0.a.x)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> f32 {
    global0 = array<vec2<bool>, 1>();
    let var_0 = !(!select(select(!vec3<bool>(false, global2.a, false), !vec3<bool>(global2.a, false, global2.b), false), vec3<bool>(global2.a || false, true, arg_0.a.a), select(vec3<bool>(global2.a, global2.a, arg_0.a.a), select(vec3<bool>(arg_0.a.b, arg_0.a.b, global2.b), vec3<bool>(global2.a, global2.b, global2.b), true), true)));
    var var_1 = !var_0.x;
    global1 = array<Struct_5, 5>();
    global2 = Struct_2(true, arg_1.x != -114f, ~(~(1u & ~u_input.c.x)), u_input.b);
    return arg_1.x;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    let var_0 = Struct_2((_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(arg_0, false, 1u, global2.d)), arg_1.xw)))) == _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(max(1310f, 1379f))))) | false, false, global2.c, select(42649i, min(firstTrailingBit(76001i), u_input.d), !(!arg_0)));
    return abs(~firstTrailingBit(13547u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    global2 = arg_1.a.a;
    let var_0 = func_2();
    global0 = array<vec2<bool>, 1>();
    return ~func_4(true, vec4<f32>(1f, -1958f, 486f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_3(arg_1.a.a), vec2<f32>(-693f, 248f)))))), abs(22686u));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = Struct_1(vec2<i32>(~global2.d, -1i));
    let var_1 = u_input.a.x;
    global1 = array<Struct_5, 5>();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_0.x, all(vec3<bool>(global2.b, global2.a, arg_3.x)))))))));
    global0 = array<vec2<bool>, 1>();
    return StorageBuffer(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d <= _wgslsmith_dot_vec2_i32(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2167f, -2528f, _wgslsmith_f_op_f32(f32(-1f) * -1187f))))), ~vec3<u32>(4294967295u, u_input.c.x, ~func_1(Struct_1(vec2<i32>(global2.d, -1i)), Struct_4(Struct_3(Struct_2(global2.a, false, 37108u, u_input.b)), vec4<u32>(4294967295u, 26124u, 1u, 56472u), vec4<bool>(false, false, global2.b, global2.b)), vec3<u32>(58126u, 0u, 52931u))), _wgslsmith_f_op_f32(f32(-1f) * -474f), !select(select(select(vec2<bool>(global2.b, global2.b), global0[_wgslsmith_index_u32(global2.c, 1u)], global0[_wgslsmith_index_u32(global2.c, 1u)]), vec2<bool>(true, true), vec2<bool>(global2.a, global2.b)), global0[_wgslsmith_index_u32(5617u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 6858u, global2.c), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 16057u, 4294967295u), vec3<u32>(81369u, u_input.c.x, global2.c))), 1u)]));
}

