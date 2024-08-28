struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    var var_0 = firstTrailingBit(~2147483647i);
    let var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 24655u, min(arg_0, arg_0) >> ((0u >> (0u % 32u)) % 32u), ~_wgslsmith_div_u32(arg_0, 1u)), vec4<u32>(63152u | arg_0, ~abs(arg_0), ~(~arg_0), 61482u));
    var var_2 = -1728f;
    let var_3 = _wgslsmith_div_vec3_i32(u_input.c.yyy, ~u_input.c.xxw);
    var var_4 = var_1.x;
    return ~(_wgslsmith_div_i32(1i, ~20147i) >> (firstLeadingBit(max(~var_1.x, ~87751u)) % 32u));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = arg_2;
    let var_1 = 26849u;
    let var_2 = all(vec3<bool>(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(arg_2.a, true, false)), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), any(vec3<bool>(true, any(vec4<bool>(arg_2.a, var_0.a, var_0.a, false)), true)), true));
    let var_3 = var_0;
    let var_4 = any(!select(vec3<bool>(var_2, true, false), select(vec3<bool>(true, var_2, false), vec3<bool>(var_3.a, var_3.a, true), vec3<bool>(false, false, var_2)), all(select(vec4<bool>(arg_2.a, false, true, arg_2.a), vec4<bool>(false, true, var_3.a, var_3.a), false))));
    return firstTrailingBit(~1u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(true, vec3<u32>(43893u, arg_0.b.x, ~0u));
    var_0 = Struct_2(!var_0.a, vec3<u32>(4294967295u, ~min(~4294967295u, _wgslsmith_sub_u32(4294967295u, 1u)), var_0.b.x));
    var_0 = Struct_2(!any(vec2<bool>(true, true)), vec3<u32>(arg_0.b.x, arg_0.b.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 6977u & var_0.b.x, _wgslsmith_dot_vec3_u32(arg_0.b.xwy, arg_0.b.yyw)), arg_0.b.x)));
    let var_1 = Struct_2(!(!(u_input.a.x == -14575i)) | !(!var_0.a), vec3<u32>(_wgslsmith_clamp_u32(func_4(~var_0.b.x, ~u_input.c.x, Struct_2(false, vec3<u32>(26879u, 76345u, 20199u)), func_3(arg_0.b.x, false)), 1u, 50508u), 59446u, var_0.b.x));
    var_0 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a, arg_0.a)))))), vec4<u32>(~_wgslsmith_mod_u32(1u, 20978u), var_1.b.x, 49590u, 32423u));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-1356f - _wgslsmith_f_op_f32(f32(-1f) * -889f)), ~vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(_wgslsmith_add_u32(60366u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(5805u, 0u, 80002u, 14805u), vec4<u32>(4294967295u, 70301u, 4294967295u, 36568u)), max(52658u, 15926u), ~14767u)));
    var var_1 = -reverseBits(~(~u_input.b.x)) < -_wgslsmith_mult_i32(20111i, _wgslsmith_sub_i32(u_input.c.x, 1i));
    var_1 = select(((max(-1i, -1i) > func_3(var_0.b.x, true)) == true) || !(var_0.a < 1f), all(vec4<bool>(true, any(vec2<bool>(true, true)) || true, !(-12298i <= u_input.b.x), true)), true);
    let var_2 = Struct_2((var_0.b.x >= ~firstLeadingBit(var_0.b.x)) || !(!all(vec2<bool>(false, true))), vec3<u32>(var_0.b.x, 1u, ~(~1u)));
    var var_3 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 99971u, var_2.b.x), vec3<u32>(firstLeadingBit(var_0.b.x), var_0.b.x, var_2.b.x)));
    return func_2(func_2(Struct_1(-487f, ~var_0.b | vec4<u32>(var_2.b.x, 13763u, var_2.b.x, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 74488u;
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, -707f), vec2<f32>(var_1.a, 465f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-845f, -358f)))))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-876f + var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f * _wgslsmith_f_op_f32(-var_1.a)))), var_2);
    let var_4 = _wgslsmith_mod_u32(func_1().b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 59084u << (1u % 32u), _wgslsmith_mult_u32(0u, var_0)), var_1.b.xwx)) << (func_2(Struct_1(1066f, var_1.b)).b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 2707f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_2.x, 417f), vec3<f32>(2269f, -1000f, -2257f)))))), _wgslsmith_f_op_f32(trunc(780f)), 1u);
}

