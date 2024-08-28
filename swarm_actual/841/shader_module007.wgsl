struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<u32>(4294967295u, 6959u), 116f)), Struct_2(Struct_1(vec2<u32>(69379u, 42090u), -1678f)), Struct_2(Struct_1(vec2<u32>(1u, 1u), -895f)), Struct_2(Struct_1(vec2<u32>(0u, 11192u), 484f)), Struct_2(Struct_1(vec2<u32>(76945u, 2351u), -1237f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 37864u), 655f)), Struct_2(Struct_1(vec2<u32>(5140u, 39017u), -495f)), Struct_2(Struct_1(vec2<u32>(1u, 0u), 588f)), Struct_2(Struct_1(vec2<u32>(5323u, 32360u), 414f)), Struct_2(Struct_1(vec2<u32>(33681u, 1u), -684f)), Struct_2(Struct_1(vec2<u32>(31404u, 0u), -274f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 1000f)), Struct_2(Struct_1(vec2<u32>(65761u, 1u), -793f)), Struct_2(Struct_1(vec2<u32>(20702u, 31067u), 384f)), Struct_2(Struct_1(vec2<u32>(109412u, 0u), -639f)), Struct_2(Struct_1(vec2<u32>(60531u, 1u), -687f)), Struct_2(Struct_1(vec2<u32>(13335u, 4294967295u), -562f)), Struct_2(Struct_1(vec2<u32>(7295u, 1u), -1835f)), Struct_2(Struct_1(vec2<u32>(0u, 0u), 206f)), Struct_2(Struct_1(vec2<u32>(0u, 1u), -1436f)), Struct_2(Struct_1(vec2<u32>(0u, 0u), 561f)), Struct_2(Struct_1(vec2<u32>(36680u, 0u), 659f)), Struct_2(Struct_1(vec2<u32>(54735u, 12581u), 1203f)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 444f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 24609u), 503f)), Struct_2(Struct_1(vec2<u32>(13158u, 6527u), 1805f)), Struct_2(Struct_1(vec2<u32>(1u, 94844u), 1000f)), Struct_2(Struct_1(vec2<u32>(24980u, 16306u), 276f)), Struct_2(Struct_1(vec2<u32>(26410u, 4294967295u), 586f)), Struct_2(Struct_1(vec2<u32>(8008u, 1u), 816f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), -550f)), Struct_2(Struct_1(vec2<u32>(4901u, 0u), 880f)));

var<private> global1: Struct_3 = Struct_3(31507i, 20384i);

var<private> global2: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global2.x, !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, select(1u, u_input.b.x, var_0.b.x), ~6297u, u_input.b.x)), ~vec4<u32>(u_input.b.x, ~5061u, abs(55526u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), ~1u, ~_wgslsmith_add_i32(firstTrailingBit(-22332i), u_input.a.x >> (0u % 32u)) ^ global1.b, _wgslsmith_f_op_f32(-476f - -681f), ~(~((-45424i | u_input.a.x) << (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u))));
}

