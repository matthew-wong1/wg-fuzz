struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<i32, 31>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<vec3<bool>, 31>;

var<private> global4: array<vec4<bool>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = u_input.a;
    return 90292u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(func_1(), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, 47003u) << (28513u % 32u)));
    global0 = array<Struct_1, 13>();
    global1 = array<i32, 31>();
    global3 = array<vec3<bool>, 31>();
    global2 = vec3<bool>(true, true, true);
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & (u_input.a & vec2<u32>(u_input.a.x & u_input.a.x, _wgslsmith_clamp_u32(32900u, 0u, 79527u))), global1[_wgslsmith_index_u32(u_input.a.x, 31u)]);
}

