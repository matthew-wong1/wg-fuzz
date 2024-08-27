struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: i32 = 13215i;

var<private> global3: vec2<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    global0 = _wgslsmith_div_vec2_i32(max(u_input.a.yw, countOneBits(-firstLeadingBit(vec2<i32>(3577i, global0.x)))), vec2<i32>(global0.x, firstLeadingBit(-2147483647i)));
    let var_0 = ~vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, u_input.d.x), ~u_input.b), ~_wgslsmith_mult_u32(9106u, u_input.b.x) | _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 21950u, u_input.b.x, u_input.d.x), vec4<u32>(u_input.c, 0u, u_input.c, u_input.d.x), global3.x), reverseBits(vec4<u32>(u_input.c, u_input.c, 72817u, u_input.d.x))));
    global1 = array<Struct_2, 15>();
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_vec3_i32(~u_input.a.wyz, -vec3<i32>(var_1.b.x, 30011i, 2147483647i)) | u_input.a.xxy), -551f, _wgslsmith_f_op_f32(step(663f, 1962f)));
}

