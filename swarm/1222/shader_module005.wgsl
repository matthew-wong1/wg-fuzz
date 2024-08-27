struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<vec4<f32>, 27>;

var<private> global2: array<bool, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> u32 {
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 28>();
    let var_0 = 0i;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, func_1(~u_input.c), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d, 6077u, 0u, 68228u)), ~vec4<u32>(u_input.a.x, 24862u, u_input.b, u_input.d)), ~u_input.b), vec4<u32>(~firstLeadingBit(u_input.b), 34498u, 24636u, u_input.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), ~vec3<u32>(reverseBits(u_input.a.x), 38760u, u_input.b)), u_input.b, _wgslsmith_dot_vec2_u32(~u_input.a.yx | ~(~vec2<u32>(151730u, u_input.b)), firstLeadingBit(~u_input.a.zx) ^ ~(~u_input.a.yz)));
    var var_2 = -1805f;
    var var_3 = var_1.x;
    var_2 = -139f;
    let var_4 = vec3<bool>(!any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(u_input.b, 21u)], global2[_wgslsmith_index_u32(var_1.x, 21u)]), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 21u)]))), global2[_wgslsmith_index_u32(u_input.a.x, 21u)], !(!global2[_wgslsmith_index_u32(39631u, 21u)]));
    var_1 = select(firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 0u, 46515u, var_1.x), vec4<u32>(34198u, u_input.a.x, 25969u, 52515u) | vec4<u32>(1u, u_input.a.x, 1u, 84744u), vec4<u32>(u_input.d, var_1.x, 1u, u_input.b)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.a.x, 31740u), vec4<u32>(u_input.a.x, u_input.a.x, 8609u, 32865u)), all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(42718u, 21u)], true)))), ~(~(~vec4<u32>(var_1.x, 15475u, 35042u, 0u) ^ max(vec4<u32>(58386u, 0u, var_1.x, 21131u), vec4<u32>(26044u, var_1.x, 63750u, 1u)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(i32(-1i) * -var_0));
}

