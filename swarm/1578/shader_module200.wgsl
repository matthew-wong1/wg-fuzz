struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(13330u, 50902u, 45107u);

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(11364u, 1473f, i32(-2147483648));

var<private> global3: array<vec4<bool>, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global3 = array<vec4<bool>, 20>();
    var_0 = u_input.c.x;
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer((max(max(vec3<u32>(1u, 8170u, 4294967295u), vec3<u32>(u_input.b.x, 19152u, 4294967295u)), vec3<u32>(1u, u_input.d, global0.x)) | vec3<u32>(_wgslsmith_div_u32(4294967295u, global2.a), _wgslsmith_mod_u32(67672u, global2.a), reverseBits(global2.a))) ^ abs(~abs(vec3<u32>(u_input.d, 1u, 32866u))));
}

