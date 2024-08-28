struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 14> = array<u32, 14>(4294967295u, 30613u, 20875u, 3844u, 91284u, 0u, 4294967295u, 78771u, 2619u, 83403u, 1u, 40516u, 69476u, 1u);

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(57787u, 31553u), vec2<u32>(30589u, 1u), vec2<u32>(19046u, 35945u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(58260u, 16366u), vec2<u32>(61727u, 16219u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 18283u), vec2<u32>(33575u, 0u), vec2<u32>(7136u, 1u), vec2<u32>(0u, 0u), vec2<u32>(21310u, 1u), vec2<u32>(45890u, 32015u), vec2<u32>(1u, 1u), vec2<u32>(0u, 48031u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(67104u, 0u), vec2<u32>(32452u, 0u), vec2<u32>(0u, 36414u), vec2<u32>(1u, 1207u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u));

var<private> global2: array<f32, 23>;

var<private> global3: array<bool, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(-528f));
    global1 = array<vec2<u32>, 23>();
    global2 = array<f32, 23>();
    global1 = array<vec2<u32>, 23>();
    global2 = array<f32, 23>();
    var var_1 = u_input.a;
    global3 = array<bool, 4>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f));
    var var_2 = Struct_3(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~128348u, _wgslsmith_mult_u32(0u, u_input.a), u_input.a, ~39685u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(24572u, 14u)], 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 14u)], 0u, global0[_wgslsmith_index_u32(0u, 14u)], 8288u)))), Struct_2(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(121f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]) + vec2<f32>(646f, global2[_wgslsmith_index_u32(79134u, 23u)])) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1867f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 23u)]))))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, -1i, 12585i) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32810u, 14u)], 14u)], 14u)], 29634u, 1u, global0[_wgslsmith_index_u32(15087u, 14u)]) % vec4<u32>(32u)), vec4<i32>(2147483647i, 1i, -1i, -55791i))), firstLeadingBit(vec2<i32>(1i, -44226i)));
    let x = u_input.a;
    s_output = StorageBuffer(-15293i);
}

