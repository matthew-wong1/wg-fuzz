struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(66652u, 43390u, 64777u, 1175u), vec4<u32>(50953u, 1u, 4294967295u, 4294967295u), vec4<u32>(14762u, 4294967295u, 1u, 38295u), vec4<u32>(36726u, 34623u, 0u, 1u), vec4<u32>(2862u, 1u, 1u, 0u), vec4<u32>(1u, 4294967295u, 48939u, 1717u), vec4<u32>(40954u, 0u, 81440u, 4294967295u), vec4<u32>(1u, 98301u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 20123u, 83145u, 4294967295u), vec4<u32>(1u, 25691u, 30071u, 4294967295u), vec4<u32>(1u, 0u, 0u, 11842u));

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(-41919i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 14282i, _wgslsmith_mod_i32(6015i, -1i))), ~vec3<i32>(1i, 0i & u_input.a.x, 80072i), vec3<bool>(true, false, false)), _wgslsmith_add_vec3_u32(vec3<u32>(7141u, firstLeadingBit(_wgslsmith_sub_u32(51787u, 1u)), ~(~51130u)), ~(~firstLeadingBit(vec3<u32>(59611u, 18178u, 4294967295u)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 63983u, 4294967295u, 82762u), vec4<u32>(4294967295u, 1u, 1u, 22825u)), _wgslsmith_div_u32(1u, ~0u)), 0u, _wgslsmith_add_u32(4294967295u, ~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(43832u, 11u)]))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1878f)), _wgslsmith_f_op_f32(-1330f + -249f)))));
}

