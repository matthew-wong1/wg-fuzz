struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(29944u, 1u, 0u), 58246i);

var<private> global1: Struct_1;

var<private> global2: array<i32, 15>;

var<private> global3: array<bool, 19>;

var<private> global4: array<i32, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(select(global3[_wgslsmith_index_u32(0u, 19u)], true, global3[_wgslsmith_index_u32(global0.a.x, 19u)]), min(_wgslsmith_mult_u32(global1.a.x, global0.a.x), ~_wgslsmith_sub_u32(4294967295u, 4294967295u)) != min(reverseBits(global0.a.x) << (505u % 32u), 15833u), true, all(select(!vec2<bool>(global3[_wgslsmith_index_u32(global0.a.x, 19u)], global3[_wgslsmith_index_u32(global0.a.x, 19u)]), vec2<bool>(true, !global3[_wgslsmith_index_u32(0u, 19u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(47478u, 19u)], false), vec2<bool>(true, true), !global3[_wgslsmith_index_u32(30331u, 19u)]))));
    var var_1 = var_0.ww;
    let x = u_input.a;
    s_output = StorageBuffer(~(-13782i), _wgslsmith_sub_vec2_u32(global0.a.yz, vec2<u32>(global0.a.x, ~_wgslsmith_mult_u32(global1.a.x, 4294967295u))), _wgslsmith_mult_u32(global1.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, 2577u, global1.a.x), vec3<u32>(global1.a.x, 4294967295u, global1.a.x)), ~global1.a), reverseBits(~vec3<u32>(global0.a.x, 1u, 1u)))));
}

