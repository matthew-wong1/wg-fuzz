struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<u32, 11>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_3 = Struct_3(vec3<bool>(false, false, false), false, Struct_1(vec3<u32>(24798u, 0u, 20246u), -1i), vec4<bool>(false, false, true, false), Struct_2(vec2<i32>(-11138i, 39727i)));

var<private> global4: array<u32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    let var_0 = global3.c;
    let var_1 = any(global3.d);
    global4 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(0u), global3.c.a.x, 56720u), _wgslsmith_div_vec3_u32(~var_0.a, vec3<u32>(27180u, 13773u, 4661u))), ~(~var_0.a.x) >> (abs(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(var_0.a.x, 12u)], 0u, global4[_wgslsmith_index_u32(var_0.a.x, 12u)])) % 32u)));
}

