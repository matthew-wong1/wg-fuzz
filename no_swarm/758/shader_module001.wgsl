struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(2147483647i, 0i, 42678i, -46095i, i32(-2147483648), 2147483647i, i32(-2147483648), 32226i);

var<private> global1: array<u32, 3>;

var<private> global2: vec2<bool>;

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1000f, select(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12004u, 3u)], 3u)], 3u)], 3u)], 3u)], 4294967295u), vec3<u32>(1u, 4294967295u, 2574u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 1u, 1u), u_input.a.zyy) ^ vec3<u32>(global1[_wgslsmith_index_u32(48828u, 3u)], 4294967295u, 79050u)), min(vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19196u, 3u)], 3u)], u_input.a.x, countOneBits(global1[_wgslsmith_index_u32(6456u, 3u)])), vec3<u32>(4294967295u, 42941u, 13661u)), global3.ywz), u_input.a);
}

