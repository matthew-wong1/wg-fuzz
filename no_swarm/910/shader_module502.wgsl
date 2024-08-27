struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
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

var<private> global0: array<Struct_4, 16>;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, true, false, true, true, true, false, true, false, true, true, true, false, true);

var<private> global2: array<i32, 13>;

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1076f, -416f, -735f, -838f), vec4<f32>(606f, 1813f, 932f, 891f), vec4<f32>(693f, 321f, -1717f, -395f), vec4<f32>(583f, 1237f, -1239f, -1714f), vec4<f32>(-654f, -291f, 558f, -1115f), vec4<f32>(-645f, -840f, 255f, 1000f), vec4<f32>(-264f, -1177f, 1578f, -1393f), vec4<f32>(1000f, 1051f, 1327f, 908f), vec4<f32>(564f, 130f, 1221f, 435f), vec4<f32>(-843f, 2213f, 1281f, -975f), vec4<f32>(-326f, 1596f, 791f, -769f));

var<private> global4: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(_wgslsmith_clamp_i32(global4.b.b, -5274i, global2[_wgslsmith_index_u32(~(~u_input.d.x), 13u)]), 71790i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

