struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
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

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> u32 {
    global0 = array<vec4<bool>, 15>();
    var var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0));
    global0 = array<vec4<bool>, 15>();
    var var_2 = Struct_3(vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -34170i, _wgslsmith_clamp_i32(1i, 1i, 2147483647i), abs(-74670i), _wgslsmith_mult_i32(-31964i, -23645i)));
    return 5810u;
}

fn func_3(arg_0: Struct_4) -> f32 {
    global0 = array<vec4<bool>, 15>();
    let var_0 = vec4<bool>(any(global0[_wgslsmith_index_u32(~13556u, 15u)]), arg_0.a.b, true, _wgslsmith_f_op_f32(sign(arg_0.a.a)) != _wgslsmith_f_op_f32(abs(arg_0.a.a)));
    global0 = array<vec4<bool>, 15>();
    var var_1 = 0u;
    let var_2 = -abs(abs(-(~1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1500f - arg_0.a.a), _wgslsmith_f_op_f32(-arg_0.a.a)))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -232f))), _wgslsmith_f_op_f32(abs(-441f)), 4294967295u)), u_input.a.x);
    global0 = array<vec4<bool>, 15>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(-106f, true)))) * _wgslsmith_f_op_f32(f32(-1f) * -325f)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)));
    var var_2 = select(_wgslsmith_f_op_f32(round(-1809f)) <= 189f, !(!(!var_1.b)), !all(vec3<bool>(var_1.b, var_1.b, var_1.b))) | !((-2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.b.x, 2363u, u_input.a.x), vec4<u32>(4294967295u, var_0, 46000u, u_input.b.x)) % 32u)) < ((-1i >> (var_0 % 32u)) ^ 0i));
    global0 = array<vec4<bool>, 15>();
    return 6502i;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_5 {
    global0 = array<vec4<bool>, 15>();
    var var_0 = _wgslsmith_div_u32(arg_0, _wgslsmith_dot_vec3_u32(reverseBits(u_input.b), vec3<u32>(_wgslsmith_mod_u32(~1u, 2798u), _wgslsmith_mult_u32(~1u, arg_0 >> (1u % 32u)), _wgslsmith_mod_u32(u_input.b.x >> (25490u % 32u), ~8268u))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(853f + 228f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(318f, -831f), _wgslsmith_f_op_f32(f32(-1f) * -582f)))), !arg_1), 43376i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-485f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1868f)))), true), -942f);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a + 1570f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.c.a, 659f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -565f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1262f, var_1.a.a)))))));
    global0 = array<vec4<bool>, 15>();
    return Struct_5(_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0, 1u), _wgslsmith_sub_u32(1u, arg_0), _wgslsmith_add_u32(u_input.a.x, u_input.b.x)) | arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))))), Struct_2(var_1.a, -10291i, Struct_1(-173f, !(!arg_1)), 1343f), Struct_2(var_1.a, -select(_wgslsmith_add_i32(arg_3, var_1.b), firstTrailingBit(arg_3), var_1.c.b), Struct_1(607f, true), 1f), ~select(~1u, ~1u ^ u_input.a.x, any(vec3<bool>(arg_1, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 15>();
    let var_0 = func_4(1u, false, u_input.a.x, _wgslsmith_sub_i32(~1i, func_1()) >> (~0u % 32u));
    var var_1 = min(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~var_0.e, var_0.e ^ _wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_div_u32(54178u >> (var_0.e % 32u), _wgslsmith_add_u32(var_0.e, 4294967295u))), 1u), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(var_0.a, ~var_0.e)));
    let var_2 = var_0.d.a;
    var var_3 = -1178f;
    let var_4 = ~((vec2<u32>(max(9567u, u_input.b.x), var_0.e) | ~u_input.a.zy) & vec2<u32>(u_input.a.x, func_2(1568f, -1148f, ~1u)));
    var var_5 = var_0;
    var var_6 = _wgslsmith_clamp_u32(var_4.x, ~(~var_4.x) ^ 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, abs(vec3<u32>(1u, var_0.a, 4294967295u)), min(u_input.b, vec3<u32>(var_4.x, 1u, 0u))), u_input.a)) & abs(56921u);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.b);
}

