struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(2426f, 239f, -1168f), vec3<f32>(528f, -372f, -639f), vec3<f32>(-1304f, -199f, -1000f), vec3<f32>(491f, 2406f, 864f), vec3<f32>(-440f, -315f, 446f), vec3<f32>(1078f, 548f, 959f));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 53634u)), Struct_1(true, vec3<u32>(56287u, 37340u, 4294967295u)), Struct_1(true, vec3<u32>(6389u, 20161u, 81443u)), Struct_1(false, vec3<u32>(0u, 0u, 59168u)), Struct_1(false, vec3<u32>(0u, 1u, 37750u)), Struct_1(true, vec3<u32>(23675u, 38144u, 1u)), Struct_1(true, vec3<u32>(0u, 88417u, 1595u)), Struct_1(true, vec3<u32>(0u, 29387u, 39713u)), Struct_1(true, vec3<u32>(12860u, 9119u, 0u)), Struct_1(false, vec3<u32>(0u, 24269u, 90831u)), Struct_1(false, vec3<u32>(28952u, 64837u, 17130u)));

var<private> global2: bool = false;

var<private> global3: array<u32, 12> = array<u32, 12>(66716u, 0u, 21233u, 14772u, 4294967295u, 21525u, 4294967295u, 22513u, 4294967295u, 4703u, 1u, 0u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = true;
    let var_2 = 1106f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 * 975f))));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(61173i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-27044i, 2147483647i, u_input.a.x, 22533i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-54062i, u_input.a.x, u_input.a.x, 27024i), vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -4613i, -2147483647i, -6144i)))), ~(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)] << (24438u % 32u), 12u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 12u)], 4294967295u), 12u)])), u_input.a.x);
}

