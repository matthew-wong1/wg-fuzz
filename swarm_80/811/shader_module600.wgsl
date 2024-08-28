struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, false, false, true, true, true, false, true, true, true, false, true, false, true, true, true, false, false, false, false, true, false);

var<private> global1: u32;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global3: f32 = -1436f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> u32 {
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    var var_0 = -618f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(vec3<u32>(global2.x, u_input.b.x, u_input.a.x) ^ ~u_input.d.xww, u_input.d.wwx)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(43653u, u_input.b.x, firstTrailingBit(u_input.b.x), func_1(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], false, global0[_wgslsmith_index_u32(1u, 23u)], true)))), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 1u), vec4<u32>(global2.x, 17424u, 0u, global2.x)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 35407u, u_input.d.x, u_input.a.x), vec4<u32>(38818u, 0u, global2.x, 1u))));
}

