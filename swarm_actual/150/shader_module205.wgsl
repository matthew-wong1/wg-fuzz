struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 0u, 1u, 4294967295u, 46625u, 1u, 41562u);

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-max(abs(vec2<i32>(u_input.c, 0i)), -vec2<i32>(u_input.b, -25931i)), vec2<i32>(~0i, 2147483647i) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 7u)]), ~vec2<u32>(29968u, 5184u)) % vec2<u32>(32u))), u_input.b);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(113856u, 17u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12233u, 17u)] + -358f)))))));
    global2 = array<Struct_1, 13>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & (var_0 >> (1u % 32u)), var_0);
}

