struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(1u, 0u, 31230u), vec3<u32>(22468u, 1u, 34243u), vec3<u32>(1u, 4294967295u, 74964u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 47538u), vec3<u32>(0u, 15557u, 16630u), vec3<u32>(84369u, 21318u, 32108u), vec3<u32>(62538u, 53081u, 4720u), vec3<u32>(1u, 19905u, 43872u), vec3<u32>(17015u, 1u, 4294967295u), vec3<u32>(1u, 69194u, 4097u), vec3<u32>(1u, 1u, 1u), vec3<u32>(2172u, 4294967295u, 1u), vec3<u32>(11646u, 1u, 1u), vec3<u32>(50603u, 31032u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(29069u, 1u, 1u), vec3<u32>(72674u, 0u, 23330u));

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-1i, 0i, 1i), vec3<i32>(-1i, -8232i, 1i), vec3<i32>(-25600i, 1i, -1i), vec3<i32>(20804i, 24283i, i32(-2147483648)), vec3<i32>(47357i, 2147483647i, 0i), vec3<i32>(-7852i, -3870i, 2579i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(3622i, 20021i, 2147483647i), vec3<i32>(-1i, -9079i, 33567i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 28379i), vec3<i32>(i32(-2147483648), -36862i, 2147483647i), vec3<i32>(23370i, 1i, 2147483647i), vec3<i32>(34686i, 1i, 6170i), vec3<i32>(11735i, -1i, -19496i), vec3<i32>(-9917i, -32226i, i32(-2147483648)), vec3<i32>(29212i, 2147483647i, 1i), vec3<i32>(-36925i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(48454i, 2147483647i, -35416i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5) -> f32 {
    var var_0 = true;
    let var_1 = Struct_2(~u_input.c);
    var var_2 = -_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~11003u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e, arg_0.x), vec2<u32>(35887u, 52214u))), 20u)] >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, 6957u), ~vec3<u32>(u_input.b.x, 1u, arg_0.x), vec3<u32>(1u, arg_0.x, 9193u) ^ vec3<u32>(arg_0.x, 1u, 0u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 49964i, -2147483647i), abs(~global1[_wgslsmith_index_u32(0u, 20u)])));
    var_0 = true;
    var_0 = true;
    return arg_1.c;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_add_u32(~u_input.b.x, u_input.b.x);
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-307f, _wgslsmith_div_f32(754f, 823f))))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-216f, -304f)));
    let var_2 = !var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(~vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x), Struct_5(u_input.b.x, Struct_2(u_input.c), -851f, Struct_2(u_input.c), 4294967295u))))) * _wgslsmith_f_op_f32(ceil(123f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(645f, 193f)))))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<f32> {
    let var_0 = any(!vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !all(vec2<bool>(false, false)), false, select(true, true, true)));
    let var_1 = arg_1;
    global1 = array<vec3<i32>, 20>();
    var var_2 = ~vec2<u32>(u_input.b.x, reverseBits(u_input.b.x) | max(_wgslsmith_div_u32(u_input.b.x, var_1), ~61397u));
    var var_3 = vec4<bool>(false, true, any(select(!select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(true, false, true, true), var_0), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, true, false, true), var_0), !all(vec2<bool>(var_0, true)))), var_0);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-836f, -2013f, -537f))), vec3<f32>(-431f, _wgslsmith_f_op_f32(func_2(~vec4<u32>(u_input.b.x, 0u, 4294967295u, var_1), Struct_5(37293u, Struct_2(27304i), 991f, Struct_2(-29379i), 72295u))), _wgslsmith_f_op_f32(round(-263f))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-681f + -2245f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1130f * -1605f), -1000f, var_0))), 739f)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_4(~(~reverseBits(firstTrailingBit(vec4<u32>(arg_3.x, arg_3.x, u_input.b.x, 97621u)))), vec2<bool>(!all(vec3<bool>(true, arg_2.a, arg_0)), all(select(vec4<bool>(false, true, arg_2.a, arg_0), select(vec4<bool>(arg_0, arg_2.a, arg_2.a, false), vec4<bool>(true, false, arg_0, false), vec4<bool>(true, true, arg_0, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, false, arg_2.a, false), vec4<bool>(arg_0, arg_0, true, true))))), u_input.a, arg_3.x);
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    let var_1 = ~vec2<u32>(~min(var_0.a.x, ~u_input.b.x), abs(u_input.b.x));
    var var_2 = Struct_2(var_0.c.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(2563f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f), 1646f), -1067f, arg_1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, arg_2.b.x, _wgslsmith_div_f32(arg_2.b.x, 482f), _wgslsmith_f_op_f32(469f + -705f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 661f, -262f, 3261f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -239f, arg_2.b.x, 923f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 18>();
    let var_0 = u_input.a;
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    var var_1 = firstLeadingBit(_wgslsmith_mod_u32(~(u_input.b.x & 9999u), ~(~4294967295u << (1u % 32u))));
    global1 = array<vec3<i32>, 20>();
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 20u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(func_4(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), (u_input.b.x != 57081u) | true, false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-349f, 2387f))))), vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1000f))))), Struct_1(u_input.d > var_2.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(1i), u_input.b.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(select(u_input.b.x, 48469u, true), min(u_input.b.x, 0u), ~u_input.b.x), ~global0[_wgslsmith_index_u32(u_input.b.x, 18u)] & vec3<u32>(u_input.b.x, 28390u, 1u))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -824f, var_3.x, -1000f) * vec4<f32>(var_3.x, var_3.x, var_3.x, -1460f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(!(u_input.a.x == u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.x, var_3.x))) * vec2<f32>(2867f, var_3.x)), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 1867f, 857f))), abs(max(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-countOneBits(var_0.x), ~max(_wgslsmith_mult_i32(-27026i, -6041i), ~var_2.x), -83268i, 36862i), ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) ^ 67297u, ~1u, ~select(u_input.b.x, 17973u, true), _wgslsmith_dot_vec3_u32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), global0[_wgslsmith_index_u32(u_input.b.x, 18u)])), ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 52938u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 26185u, u_input.b.x)), ~u_input.b.x)), vec3<i32>(select(_wgslsmith_sub_i32(-1i, var_2.x), var_2.x, true) >> (1u % 32u), _wgslsmith_mod_i32(-_wgslsmith_add_i32(576i, -89710i), -(~u_input.a.x)), -38126i), 610f);
}

