struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(1052f, -1615f, 1000f), vec2<f32>(-1000f, 1497f), vec3<i32>(2147483647i, 6275i, 14956i)), Struct_1(vec3<f32>(753f, -1000f, -757f), vec2<f32>(324f, 1529f), vec3<i32>(-41954i, 1i, -1i)), Struct_1(vec3<f32>(725f, -102f, -1575f), vec2<f32>(-154f, -210f), vec3<i32>(80389i, -29524i, 2147483647i)), Struct_1(vec3<f32>(-174f, 769f, 2764f), vec2<f32>(-1387f, -804f), vec3<i32>(352i, -1i, i32(-2147483648))), Struct_1(vec3<f32>(584f, 1000f, -1581f), vec2<f32>(-1441f, 223f), vec3<i32>(-14734i, 2147483647i, 87514i)), Struct_1(vec3<f32>(181f, 1324f, -2330f), vec2<f32>(1276f, -1733f), vec3<i32>(52279i, i32(-2147483648), 34376i)));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    let var_0 = !(!(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false))));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, u_input.c << (u_input.c % 32u)) ^ (vec2<u32>(u_input.c, 4294967295u) ^ (vec2<u32>(4294967295u, u_input.c) & vec2<u32>(u_input.c, 118125u))), vec2<u32>(50842u, u_input.c)) << (_wgslsmith_mult_u32(22247u, 1u) % 32u);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1967u, var_1), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~(~_wgslsmith_mod_i32(global3.c.x, -2147483647i)), u_input.c, var_2.a.xz, abs(~abs(vec2<u32>(41112u, 4294967295u))));
}

