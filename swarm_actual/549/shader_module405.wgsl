struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, false, true, false)));

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-612f, 1000f, 315f, 559f), vec4<f32>(129f, 1000f, -121f, 800f), vec4<f32>(1114f, -1978f, 549f, -1000f), vec4<f32>(854f, 348f, -1338f, 715f));

var<private> global3: array<u32, 6> = array<u32, 6>(1393u, 11374u, 0u, 4294967295u, 0u, 52088u);

var<private> global4: vec4<u32> = vec4<u32>(20896u, 0u, 32146u, 20696u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global4.zw, _wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38244u, 6u)], 6u)], 1u), global4.yw)), select(vec2<u32>(global3[_wgslsmith_index_u32(0u, 6u)], 1u), vec2<u32>(global4.x, 16053u), vec2<bool>(true, true))) | select(min(reverseBits(vec2<u32>(0u, 76548u)), ~global4.xy), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), global4.yw), vec2<u32>(4294967295u, u_input.a) | vec2<u32>(global4.x, global4.x), vec2<bool>(true, true)), vec2<bool>(true, true)), vec3<u32>(u_input.a, u_input.a, ~24435u), global3[_wgslsmith_index_u32((global4.x >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, global4.x)), vec4<u32>(62753u, u_input.a, global4.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38650u, 6u)], 6u)])) % 32u)) >> (1u % 32u), 6u)]);
}

