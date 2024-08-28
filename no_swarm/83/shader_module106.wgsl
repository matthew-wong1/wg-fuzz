struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<vec3<i32>, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 8>();
    let var_0 = Struct_1(true, ~u_input.a.x, ~u_input.c.x, ~((vec3<i32>(u_input.c.x, u_input.c.x, 1i) & global0[_wgslsmith_index_u32(~4294967295u, 8u)]) & reverseBits(select(vec3<i32>(-2147483647i, u_input.c.x, 0i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2203f, -1131f, -1441f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(188f, 1077f, 603f), vec3<f32>(852f, 1047f, -515f), vec3<bool>(var_0.a, false, var_0.a))))))));
}

