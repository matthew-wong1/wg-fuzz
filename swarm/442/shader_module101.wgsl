struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(52937u, 0u), vec2<u32>(0u, 25507u))), ~1u, reverseBits(50433u), 10887u), ~(~vec3<u32>(1u, 19318u, 33241u)), vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1566f, 649f) * _wgslsmith_f_op_f32(374f * -353f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1070f, 354f)))), all(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-843f)), 105f))))));
    let var_1 = var_0;
    var var_2 = 4294967295u;
    let var_3 = u_input.b;
    var var_4 = 0u;
    let var_5 = vec4<bool>(true, false, true, false);
    var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(var_0.a.x), max(4294967295u, var_1.a.x), ~1u), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_1.a.wwz, var_1.a.xxy), abs(vec3<u32>(6649u, var_0.b.x, var_1.a.x)))), ~abs(var_1.a.wzx));
    global0 = array<vec3<i32>, 27>();
    var_2 = abs(~(0u >> (~(~var_1.b.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(select(~_wgslsmith_div_u32(var_0.b.x, var_1.b.x), 0u, any(vec3<bool>(true, true, var_0.c.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0.a, var_0.a << (var_0.a % vec4<u32>(32u))), vec4<u32>(var_1.a.x, var_1.b.x, ~var_0.b.x, 4294967295u))), var_0.b.xx, var_1.d, -416f);
}

