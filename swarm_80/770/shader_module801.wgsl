struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-3862i, 10584i);

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-1i, vec3<i32>(23115i, 2147483647i, 46919i), vec2<bool>(true, true), 68076u, -929f), Struct_1(-44969i, vec3<i32>(-9150i, 1i, -1i), vec2<bool>(true, true), 2598u, -399f), Struct_1(i32(-2147483648), vec3<i32>(-1i, -46597i, i32(-2147483648)), vec2<bool>(true, true), 4294967295u, -671f), Struct_1(-1i, vec3<i32>(1i, 1i, -25505i), vec2<bool>(false, true), 40375u, 2417f), Struct_1(0i, vec3<i32>(-9896i, 22609i, 2147483647i), vec2<bool>(false, true), 4293u, -239f), Struct_1(2147483647i, vec3<i32>(17068i, 0i, 1i), vec2<bool>(true, false), 13501u, -836f), Struct_1(-1i, vec3<i32>(-45698i, -1i, 0i), vec2<bool>(true, true), 2395u, 1312f), Struct_1(-1i, vec3<i32>(-10843i, 60991i, 80514i), vec2<bool>(false, true), 28101u, 242f), Struct_1(0i, vec3<i32>(24894i, 19647i, 8694i), vec2<bool>(true, true), 12729u, -371f), Struct_1(i32(-2147483648), vec3<i32>(-13325i, 24731i, 0i), vec2<bool>(true, false), 408u, -954f), Struct_1(-4839i, vec3<i32>(-1i, 1i, 23365i), vec2<bool>(false, false), 84026u, 692f), Struct_1(-1i, vec3<i32>(22858i, 10805i, -26938i), vec2<bool>(false, true), 1u, -1704f), Struct_1(0i, vec3<i32>(i32(-2147483648), 0i, 86660i), vec2<bool>(true, true), 4294967295u, 871f), Struct_1(13706i, vec3<i32>(1i, -34884i, 42245i), vec2<bool>(false, false), 4294967295u, 1433f), Struct_1(-5127i, vec3<i32>(2147483647i, 9182i, 1i), vec2<bool>(true, false), 26689u, 967f), Struct_1(-17504i, vec3<i32>(21880i, -13273i, 2147483647i), vec2<bool>(false, false), 37179u, -840f), Struct_1(1i, vec3<i32>(2147483647i, i32(-2147483648), 53114i), vec2<bool>(true, false), 1u, 1646f), Struct_1(-13169i, vec3<i32>(0i, 24403i, 9577i), vec2<bool>(true, false), 4294967295u, 1000f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e.x, u_input.b >> (u_input.a.x % 32u)), ~(~(~1u))), 92747u, 67715u, _wgslsmith_div_u32(~35477u | min(u_input.d.x >> (u_input.a.x % 32u), ~u_input.e.x), u_input.e.x));
    let var_2 = vec3<i32>(global0.x, min(-1i, global0.x | -92022i), firstTrailingBit(global0.x));
    global2 = array<Struct_1, 18>();
    global1 = array<bool, 1>();
    let var_3 = -1339f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), vec4<i32>(_wgslsmith_clamp_i32(36706i, 47406i, global0.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 1i), var_2.xz), -var_2.x) ^ var_2.x, -37825i, global0.x), 20901u & _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(var_1.x, 0u)), u_input.c.wx), ~u_input.d.xz));
}

