struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, false)));

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 32>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, false)));

var<private> global4: array<vec3<u32>, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> bool {
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-2488f - _wgslsmith_f_op_f32(round(-255f))))));
    global1 = Struct_1(!(!vec4<bool>(true || global1.a.x, global1.a.x, false, 303f == var_0)));
    let var_1 = ~(~vec4<u32>(74522u, 0u, reverseBits(u_input.d.x), u_input.d.x));
    let var_2 = Struct_1(global1.a);
    global2 = array<vec4<f32>, 32>();
    return global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.d.x, var_1.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 61921u), u_input.d.yx)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, u_input.d.x), u_input.d.xz)), ~1u), 2u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1.x)))) != arg_1.x;
    global4 = array<vec3<u32>, 3>();
    global0 = array<Struct_1, 27>();
    global4 = array<vec3<u32>, 3>();
    global2 = array<vec4<f32>, 32>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(false, all(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false)), !func_1(global3[_wgslsmith_index_u32(11133u, 2u)]), true));
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_sub_u32(func_3(func_2(), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(43937u, 32u)])) & ~(~19183u), 33860u), -473f);
}

