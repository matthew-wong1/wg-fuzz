struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    return arg_3.b.b.x;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), 1566f, Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(2200f, 1000f, 1602f), vec3<u32>(u_input.a, u_input.a, 4294967295u)), Struct_2(false, Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(-415f, -169f, 668f), vec3<u32>(4294967295u, 0u, 0u)), 0i, vec4<bool>(false, false, true, false), vec4<f32>(-861f, -190f, -1220f, 467f))))))))));
}

fn func_3() -> vec3<u32> {
    var var_0 = -1481f;
    var var_1 = Struct_1(countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(20950u, u_input.a)), vec2<u32>(17003u, 64749u)), firstLeadingBit(65524u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(227f, 380f, -1468f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(686f, 1449f, -1071f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(365f, -1553f, 1000f) - vec3<f32>(2829f, 1368f, 1828f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1008f, 1323f, -373f) * vec3<f32>(-715f, -1575f, -272f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, 2286f, -775f) - vec3<f32>(967f, -1149f, -373f))))), min(vec3<u32>(u_input.a, countOneBits(20932u), _wgslsmith_mod_u32(u_input.a, 64618u)) ^ vec3<u32>(max(u_input.a, u_input.a), _wgslsmith_clamp_u32(u_input.a, 4294967295u, 27666u), _wgslsmith_add_u32(4294967295u, u_input.a)), firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 1066u)))));
    global1 = array<Struct_2, 13>();
    var_0 = _wgslsmith_f_op_f32(func_1());
    let var_2 = vec3<bool>(select(false, false, true), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec4<bool>(false, true, false, true)))), true);
    return var_1.c & firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(var_1.a.x, 70382u))), u_input.a, var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(958f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1129f, -639f, false)), _wgslsmith_f_op_f32(f32(-1f) * -442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)))))));
    let var_0 = u_input.b;
    global0 = _wgslsmith_f_op_f32(func_1());
    global1 = array<Struct_2, 13>();
    let var_1 = !vec3<bool>(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(_wgslsmith_add_u32(u_input.a, 3154u), 0u, max(0u, u_input.a)) | _wgslsmith_add_vec3_u32(func_3(), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f + -849f) - _wgslsmith_f_op_f32(f32(-1f) * -1745f)))), vec3<f32>(-520f, _wgslsmith_f_op_f32(round(-1245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1173f)))), -(i32(-1i) * -38038i) | var_0.x, vec3<i32>(u_input.b.x, var_0.x, abs((-6555i >> (u_input.a % 32u)) << (1u % 32u))));
}

