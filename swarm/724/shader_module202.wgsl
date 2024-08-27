struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: vec2<bool>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(71742u, 0u, 25838u), false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(firstTrailingBit(vec3<u32>(~global1.a.x, 28280u, 60031u)), global1.c, ~0i > u_input.e.x);
    let var_0 = true;
    let var_1 = abs(u_input.e);
    global0 = !vec2<bool>(global0.x == all(select(vec3<bool>(false, false, false), vec3<bool>(global1.b, false, var_0), vec3<bool>(false, var_0, global1.b))), true);
    let var_2 = ~min(81794u & abs(u_input.d), global1.a.x) <= 26731u;
    var var_3 = reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global1.a.x, u_input.d << (0u % 32u)), global1.a.x, 1u), global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

