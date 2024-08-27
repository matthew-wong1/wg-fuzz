struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_5) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1893f))) + 662f));
    global0 = -961f;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.c.x)), arg_3.c.x), 1000f)))));
    global0 = arg_3.b.a;
    var var_0 = arg_3.a;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-419f, _wgslsmith_f_op_f32(621f * 308f), arg_3.c.x, _wgslsmith_f_op_f32(round(-561f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.a, 708f, arg_3.b.a, 129f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1619f, arg_3.c.x, 119f, -1000f), vec4<f32>(arg_3.c.x, arg_3.b.a, 487f, arg_3.b.a)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.a, _wgslsmith_f_op_f32(-arg_3.b.a), _wgslsmith_f_op_f32(-arg_3.c.x), 601f)))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(737f, _wgslsmith_f_op_f32(-1040f - -236f), _wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(max(101f, -936f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, 1267f, 159f, -766f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, 257f, -1412f, 944f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(332f - -1000f), -1046f, -1262f, -2371f), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(u_input.a, u_input.a, vec4<bool>(true, true, true, false)), Struct_1(u_input.a, -57107i, vec4<bool>(true, true, true, true)), Struct_2(false, u_input.a, vec2<bool>(false, false)), Struct_1(-16082i, u_input.a, vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false)), Struct_2(true, u_input.a, vec2<bool>(false, false)), vec2<i32>(-10903i, -2147483647i), Struct_5(Struct_4(Struct_1(-10944i, u_input.a, vec4<bool>(true, true, false, true)), Struct_1(0i, 2147483647i, vec4<bool>(false, true, false, true)), Struct_2(true, 41144i, vec2<bool>(true, false)), Struct_1(u_input.a, 1i, vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, false)), Struct_3(1031f, vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), Struct_1(0i, 0i, vec4<bool>(true, true, false, true)), vec2<i32>(-6116i, 0i)), vec2<f32>(481f, 412f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(366f, 846f, 155f, 1965f), vec4<f32>(1803f, 738f, -108f, -879f)))))));
    var var_1 = ~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(94653u, 52927u, 32557u, 29242u), vec4<u32>(57004u, 0u, 10540u, 1u), vec4<bool>(true, false, true, true))), 22277u) | firstLeadingBit(vec2<u32>(~13137u, 1u)));
    var_1 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(firstTrailingBit(var_1.x), ~(28011u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(118006u, var_1.x, 4294967295u)))));
    let var_2 = Struct_4(Struct_1(1i, -u_input.a << (74445u % 32u), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, var_0.x >= 210f, true), true && select(true, false, true))), Struct_1(_wgslsmith_div_i32(u_input.a ^ 2147483647i, -u_input.a) << (1u % 32u), 0i, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), Struct_2(true, 51357i, !select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), Struct_1(-12508i, reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 5238i), vec3<i32>(1i, -47268i, 2625i)), ~(-2147483647i), abs(9289i))), !vec4<bool>(true, all(vec2<bool>(false, true)), true, any(vec3<bool>(true, false, false)))), vec4<bool>(false, true, !(u_input.a != -2147483647i), all(vec2<bool>(true, any(vec3<bool>(true, true, false))))));
    let var_3 = var_2.e.yy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - _wgslsmith_f_op_f32(-arg_0.x));
    global0 = _wgslsmith_f_op_f32(func_2());
    global0 = -856f;
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, ~(~1u), ~39110u, select(1u, max(33209u, 11740u), true)), vec4<u32>(1u, 1u, 1u, 1u) & (vec4<u32>(_wgslsmith_add_u32(16036u, 1u), ~103031u, 4294967295u, 1u) & vec4<u32>(firstTrailingBit(56273u), max(4294967295u, 9377u), ~4294967295u, 54742u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(-u_input.a, 31434i, vec4<bool>(true, true, true, true)), Struct_1(u_input.a, -u_input.a, select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), Struct_2(true, u_input.a, vec2<bool>(true, true)), Struct_1(_wgslsmith_sub_i32(17355i, -100i), abs(236i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), vec4<bool>(true, true, true, true)), Struct_2(any(vec4<bool>(true, true, true, true)), firstTrailingBit(~u_input.a), vec2<bool>(true, true)), vec2<i32>(-8888i, -min(u_input.a, u_input.a)), Struct_5(Struct_4(Struct_1(u_input.a, u_input.a, vec4<bool>(true, true, true, false)), Struct_1(u_input.a, u_input.a, vec4<bool>(true, false, false, true)), Struct_2(false, u_input.a, vec2<bool>(false, true)), Struct_1(u_input.a, u_input.a, vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), Struct_3(_wgslsmith_div_f32(-1000f, 1090f), select(vec4<i32>(-2147483647i, -1i, u_input.a, -33102i), vec4<i32>(9249i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, false, true)), Struct_1(u_input.a, u_input.a, vec4<bool>(false, true, true, true)), vec2<i32>(-38837i, -2147483647i)), _wgslsmith_f_op_vec2_f32(trunc(arg_0.zx))))).x + arg_0.x);
    return any(!vec4<bool>(0u <= var_0, true, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -827f)));
    var var_1 = select(vec4<bool>(true, true == (true | all(vec4<bool>(false, true, true, false))), any(vec2<bool>(false, func_1(vec3<f32>(386f, -558f, -2142f)))), true), !select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), true), vec4<bool>(select(false, true, false), 50847i <= u_input.a, true, true), true), func_1(vec3<f32>(113f, -1049f, _wgslsmith_f_op_f32(min(1290f, 1373f)))) | (1u < ~select(83329u, 4294967295u, true)));
    global0 = -1276f;
    var var_2 = ~max(countOneBits(~vec4<u32>(4294967295u, 1u, 0u, 1u)), ~vec4<u32>(0u, ~21616u, 1u, 4294967295u));
    global0 = _wgslsmith_f_op_f32(func_2());
    let var_3 = !all(var_1.zx);
    global0 = _wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) - 503f));
    let var_4 = ~var_2.x;
    var var_5 = vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, ~(~_wgslsmith_add_i32(17283i, u_input.a))), 55317i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_mod_i32(u_input.a, -1i)), 23284i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zx, _wgslsmith_mod_u32(reverseBits(0u) ^ (~56133u | var_2.x), ~_wgslsmith_add_u32(select(0u, var_4, false), _wgslsmith_mult_u32(16216u, var_2.x))), _wgslsmith_add_i32(0i, firstTrailingBit(max(var_5.x, u_input.a) >> ((var_2.x ^ var_4) % 32u))));
}

