struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-723f, 246f, 979f, 1335f, 405f, -774f, -747f, 423f, 875f, -721f, 134f, 1000f, 970f, 173f, -387f, -1886f, -432f, 685f, 178f, -268f, -634f, 1000f, -1802f, -700f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    var var_0 = vec2<u32>(reverseBits(max(0u, 6141u) | ~u_input.a.x), 32721u) | abs(u_input.a);
    global0 = array<f32, 24>();
    var var_1 = (min(~vec2<u32>(var_0.x, var_0.x) | (u_input.a | vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(1u, abs(var_0.x))) | vec2<u32>(~countOneBits(u_input.a.x), 14379u)) >> (vec2<u32>(abs(27357u), ~59243u) % vec2<u32>(32u));
    var_1 = ~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(reverseBits(1u), 103442u >> (0u % 32u))), ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), u_input.a, vec2<bool>(true, false)), vec2<u32>(var_1.x, var_1.x)));
    let var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~1i), vec2<i32>(0i, 9934i));
    var_0 = u_input.a;
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~(reverseBits(-16819i) | (var_2 | 2147483647i)), ~var_3), vec3<i32>(var_3, 1i, -45592i));
}

