struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<i32, 25> = array<i32, 25>(1i, 55884i, -2424i, 2147483647i, -20363i, -29666i, i32(-2147483648), 2147483647i, -7360i, 0i, 4718i, 3696i, -9912i, 1i, -1i, -19202i, 20614i, -1i, 8302i, 1i, 1i, 28442i, 2147483647i, -1i, i32(-2147483648));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 0u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(u_input.e), ~(~vec2<u32>(global3.x, u_input.e.x))), _wgslsmith_clamp_vec2_u32(~global3.yy, u_input.e, ~vec2<u32>(4294967295u, global3.x) | vec2<u32>(49725u, 53747u))), 47670u), 15u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b, global0.b, 223f))) * vec3<f32>(-660f, 1736f, global0.b))))));
    let var_1 = !global0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b, -149f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.zz * var_0.xy))))), _wgslsmith_f_op_f32(300f + global0.b), _wgslsmith_sub_u32(~u_input.e.x, 69554u & ~u_input.c));
}

