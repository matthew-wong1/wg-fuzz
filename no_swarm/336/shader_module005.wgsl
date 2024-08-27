struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 30>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> u32 {
    global3 = arg_0;
    let var_0 = !(!all(vec2<bool>(arg_3.b.e == 564f, true)));
    global1 = array<vec3<u32>, 30>();
    let var_1 = abs(4294967295u);
    var var_2 = Struct_1(~var_1, arg_0.a.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global3.d.c), u_input.d) << (global3.c.b.a % 32u)));
    return _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, ~u_input.a.x, arg_1.b, ~u_input.a.x)), u_input.a);
}

fn func_1() -> StorageBuffer {
    let var_0 = ~firstLeadingBit(firstTrailingBit(vec2<u32>(func_2(Struct_3(vec3<u32>(1u, 20766u, 73641u), global3.b, global3.c, global3.d, global3.c.c.x), Struct_1(global3.d.a, 4294967295u, global3.c.a.c), true, Struct_4(vec2<bool>(global3.b, false), Struct_3(global1[_wgslsmith_index_u32(58790u, 30u)], global3.b, Struct_2(global3.c.a, Struct_1(u_input.a.x, 1u, 30230i), global3.c.c), global3.c.a, global3.e))), ~u_input.a.x)));
    var var_1 = Struct_4(!(!vec2<bool>(true, global3.b)), Struct_3(max(global3.a, ~max(u_input.a.zyx, global3.a)), false, global3.c, global2[_wgslsmith_index_u32(4294967295u, 10u)], 480f));
    global3 = var_1.b;
    var var_2 = global3.c;
    let var_3 = 26228u;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c.x))), 489f)), u_input.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.c.c.xx * var_1.b.c.c.zw) + var_1.b.c.c.xz) * _wgslsmith_f_op_vec2_f32(sign(global3.c.c.zw))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_2.c.x)), -1312f)), vec2<bool>(true, -2245i >= (var_1.b.c.b.c | var_2.b.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    var var_0 = 54712i;
    let var_1 = u_input.d.x;
    global0 = _wgslsmith_f_op_f32(sign(1f));
    var var_2 = vec2<bool>(!all(select(vec3<bool>(true, global3.b, false), !vec3<bool>(false, global3.b, true), global3.b)), true);
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

