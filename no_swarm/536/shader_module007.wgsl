struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 6>;

var<private> global2: array<Struct_4, 8>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<bool>) -> u32 {
    return arg_0.b.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = Struct_3(arg_1, Struct_2(4294967295u, 51122u, arg_1));
    var var_1 = arg_1;
    let var_2 = Struct_4(u_input.b.xz, ~(countOneBits(vec3<u32>(var_0.b.a, u_input.a, var_0.b.b)) | u_input.e), var_0.b.c, abs(~u_input.b.x));
    global1 = array<f32, 6>();
    return vec2<f32>(2862f, 156f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 2174f, global1[_wgslsmith_index_u32(u_input.a, 6u)])))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1209f, -1008f, -1000f, global1[_wgslsmith_index_u32(u_input.e.x, 6u)]) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)], -1693f))))), Struct_1(690f, global1[_wgslsmith_index_u32(func_1(Struct_4(vec2<i32>(59294i, -58696i), ~vec3<u32>(u_input.c, 0u, u_input.e.x), Struct_1(1000f, -809f, vec4<bool>(global3.x, global3.x, global3.x, false)), i32(-1i) * -1i), u_input.b.xz, !vec3<bool>(global3.x, global3.x, global3.x)), 6u)], !(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)))));
    global2 = array<Struct_4, 8>();
    var var_1 = global2[_wgslsmith_index_u32(75486u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~0i), ~vec3<u32>(_wgslsmith_dot_vec3_u32(select(u_input.d, vec3<u32>(4294967295u, u_input.e.x, u_input.a), var_1.c.c.zww), u_input.e), 50347u, 1u), ~vec3<u32>(u_input.a, ~u_input.c, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.b.x, var_1.b.x), var_1.b.x)), _wgslsmith_f_op_f32(min(-497f, var_0.x)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(1f * -619f)));
}

