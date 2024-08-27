struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(1i, -40610i, -11188i, i32(-2147483648), 36776i, -8454i, 24114i, -45703i, 46293i, 8271i, 1228i, -27080i, 27968i, -18928i, 1i, 2147483647i, 47796i, -2687i, -55964i, 1i, 2147483647i, -70162i, -1i, 15029i, 2147483647i, -53723i, 0i, 2147483647i, i32(-2147483648), 17349i, 1i);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-25839i, 26918i, -35562i));

var<private> global2: array<i32, 24>;

var<private> global3: array<bool, 13> = array<bool, 13>(true, false, true, true, true, false, false, true, false, false, true, true, false);

var<private> global4: array<u32, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(0u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(25143u, 7u)], global4[_wgslsmith_index_u32(16820u, 7u)], 0u), max(vec3<u32>(26672u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18336u, 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9713u, 7u)], 7u)], 4294967295u, global4[_wgslsmith_index_u32(0u, 7u)])) >> (~vec3<u32>(4294967295u, 11604u, 556u) % vec3<u32>(32u))), _wgslsmith_mod_i32(min(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 31u)], _wgslsmith_sub_i32(global1.a.x, 2147483647i >> (1u % 32u))), 0i));
}

