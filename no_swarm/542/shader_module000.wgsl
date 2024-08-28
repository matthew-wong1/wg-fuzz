struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, true, true, true, false, false, true, false, false, false, false, false, true);

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global2: bool = false;

var<private> global3: array<bool, 27> = array<bool, 27>(false, false, true, false, true, true, true, false, true, false, false, false, true, false, true, true, true, true, true, false, true, true, false, true, true, true, true);

var<private> global4: array<u32, 22>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38841u, 0u), vec2<u32>(1u, global4[_wgslsmith_index_u32(17030u, 22u)])), vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)])) << (firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 22u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24051u, 22u)], 22u)], 22u)])) % vec2<u32>(32u))), _wgslsmith_mod_vec3_i32(~countOneBits(vec3<i32>(18492i, -1i, u_input.a) << (vec3<u32>(23969u, global4[_wgslsmith_index_u32(29517u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)]) % vec3<u32>(32u))), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(0i, 0i)), -36514i << (global4[_wgslsmith_index_u32(104496u, 22u)] % 32u)) << (~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6057u, 22u)], 22u)]), vec3<u32>(global4[_wgslsmith_index_u32(17736u, 22u)], 1u, 1u)) % vec3<u32>(32u))), -u_input.a, ~min(-2147483647i, -713i));
}

