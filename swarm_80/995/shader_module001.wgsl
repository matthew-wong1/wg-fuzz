struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(Struct_3(vec3<bool>(true, true, false), Struct_2(vec2<u32>(8534u, 4294967295u)), Struct_1(i32(-2147483648)), -725f), vec4<i32>(0i, -5992i, -47026i, 2147483647i), Struct_3(vec3<bool>(false, true, false), Struct_2(vec2<u32>(0u, 2702u)), Struct_1(2147483647i), -553f)), Struct_5(Struct_3(vec3<bool>(false, false, true), Struct_2(vec2<u32>(18740u, 1u)), Struct_1(0i), -630f), vec4<i32>(27123i, 42738i, -21691i, 0i), Struct_3(vec3<bool>(false, true, true), Struct_2(vec2<u32>(1u, 4294967295u)), Struct_1(0i), -1000f)), Struct_5(Struct_3(vec3<bool>(true, false, true), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_1(-1i), -152f), vec4<i32>(0i, 19406i, 1i, -1i), Struct_3(vec3<bool>(true, false, false), Struct_2(vec2<u32>(4294967295u, 21510u)), Struct_1(17283i), -1000f)));

var<private> global2: i32;

var<private> global3: Struct_3;

var<private> global4: array<Struct_2, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(3688u, 26u)], -1355f, global0[_wgslsmith_index_u32(4294967295u, 26u)], -664f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, 1153f, global3.d, 358f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1444f, global3.d, 1238f, -237f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.d, -947f, global0[_wgslsmith_index_u32(1u, 26u)], -1321f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, global0[_wgslsmith_index_u32(global3.b.a.x, 26u)], global0[_wgslsmith_index_u32(global3.b.a.x, 26u)], global3.d)))))));
    global1 = array<Struct_5, 3>();
    let var_1 = global3.a;
    global2 = -min(0i, 20202i);
    var var_2 = _wgslsmith_add_u32(global3.b.a.x, 39766u);
    return -29391i;
}

fn func_2() -> Struct_1 {
    let var_0 = global3.b;
    let var_1 = countOneBits(-func_3(select(vec4<bool>(false, global3.a.x, true, true), vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true), vec4<bool>(global3.a.x, true, false, global3.a.x)))) | u_input.a;
    let var_2 = var_1;
    var var_3 = var_2;
    let var_4 = Struct_3(!vec3<bool>(true && all(vec3<bool>(global3.a.x, true, true)), true, false), global3.b, global3.c, _wgslsmith_f_op_f32(select(-453f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(390f)), 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 26u)], -1459f))), true)));
    return Struct_1(-2147483647i);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    global0 = array<f32, 26>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.b.a.x, arg_2, 1u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global3.b.a.x, 1u, arg_2), vec3<u32>(global3.b.a.x, 90133u, global3.b.a.x)))) | _wgslsmith_dot_vec4_u32(vec4<u32>(6625u, ~4294967295u, 52929u, reverseBits(75825u)), vec4<u32>(firstLeadingBit(32589u), arg_2, 1u, arg_2)), ~global3.b.a.x), 3u)];
    let var_1 = 0u;
    let var_2 = func_2();
    global1 = array<Struct_5, 3>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.d * global3.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d - var_0.c.d)), var_0.a.d, -222f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.d, global3.d, global3.d, var_0.c.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, global3.d, var_0.c.d, global0[_wgslsmith_index_u32(arg_2, 26u)])), !var_0.c.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, global3.d, global3.d, 598f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 3>();
    let var_0 = global3.a.zz;
    var var_1 = -22486i & (-23674i >> (_wgslsmith_div_u32(min(_wgslsmith_div_u32(24019u, 4294967295u), global3.b.a.x), global3.b.a.x) % 32u));
    global0 = array<f32, 26>();
    var var_2 = global3.c.a;
    var var_3 = -67221i;
    var_2 = 4745i;
    let x = u_input.a;
    s_output = func_1(vec2<i32>(2147483647i, -22751i), global3.c, 66336u);
}

