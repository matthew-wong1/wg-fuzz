struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(242f, -1000f, 821f);

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(6161i, -34054i, -6516i, -1i), vec4<i32>(54479i, 0i, 32423i, -25422i), vec4<i32>(1i, 49163i, 0i, -13219i), vec4<i32>(-46900i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -1i), vec4<i32>(-1i, i32(-2147483648), 20770i, 2147483647i), vec4<i32>(4352i, -47405i, 1i, 33790i), vec4<i32>(17956i, 2147483647i, 13624i, -1i), vec4<i32>(-30650i, 18517i, 2147483647i, 65608i), vec4<i32>(42932i, -18880i, -46288i, 77444i), vec4<i32>(20089i, 12560i, -16612i, 0i), vec4<i32>(0i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(-9106i, -23871i, 3477i, 1i), vec4<i32>(2147483647i, 25143i, 31050i, 1i), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)));

var<private> global2: i32 = 0i;

var<private> global3: u32 = 1u;

var<private> global4: vec4<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 15>();
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 52397u), select(vec2<u32>(u_input.a, 3131u), vec2<u32>(28988u, u_input.a), false)), min(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(4294967295u, u_input.a)))), _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(u_input.a, 14392u)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -532f, global0.x) + vec3<f32>(160f, global0.x, global0.x)))))));
    var var_1 = ~(u_input.a & _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -1569f);
    let var_4 = i32(-1i) * -(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(12310i, -57288i)), -vec2<i32>(-22386i, 7703i)));
    var var_5 = _wgslsmith_f_op_f32(round(-2516f));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(~597u, u_input.a, _wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x << (0u % 32u)) | vec4<u32>(1u >> (u_input.a % 32u), 108842u, ~1u, _wgslsmith_mod_u32(u_input.a, 5327u))), ~abs(~(u_input.a << (18270u % 32u))), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(var_0.x, u_input.a, var_0.x)), ~vec3<u32>(57711u, 4294967295u, u_input.a)) >> (max(vec3<u32>(~u_input.a, u_input.a, ~2663u), select(~vec3<u32>(u_input.a, var_0.x, 0u), abs(vec3<u32>(3197u, 5974u, 37713u)), !vec3<bool>(global4.x, false, var_2))) % vec3<u32>(32u)));
}

