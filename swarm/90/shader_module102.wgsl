struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-1248f, 1319f, -104f, -1136f, 2338f, 1058f, -1097f, -462f, -704f, -1099f, 185f, 1926f, -1214f, 222f, 143f, -685f, 637f, -483f, 618f);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: array<vec2<u32>, 27>;

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    return 7134u;
}

fn func_1() -> StorageBuffer {
    global4 = true;
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global4 = true;
    return StorageBuffer(global0[_wgslsmith_index_u32(~26023u, 19u)], func_2(), u_input.c, ~vec2<u32>(u_input.b.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    global3 = array<vec2<u32>, 27>();
    let x = u_input.a;
    s_output = func_1();
}

