struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(u_input.a > u_input.a, false, all(vec2<bool>(true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))), Struct_1(-(~_wgslsmith_mod_i32(45149i, -18740i)), _wgslsmith_sub_u32(u_input.a << (1u % 32u), 1u << (~u_input.a % 32u))), Struct_1(countOneBits(-max(-15368i, 8727i)), u_input.a), true);
    let var_1 = var_0.a.zx;
    global0 = array<vec4<i32>, 2>();
    let var_2 = Struct_2(var_0.a, Struct_1(u_input.b.x, _wgslsmith_clamp_u32(~select(84842u, 1548u, true), 4294967295u, var_0.b.b)), Struct_1(select(var_0.b.a, abs(_wgslsmith_mult_i32(-67143i, var_0.b.a)), true), firstTrailingBit(_wgslsmith_mod_u32(~var_0.c.b, abs(var_0.b.b)))), false);
    var var_3 = 1u;
    return _wgslsmith_div_i32(-10138i, var_0.c.a);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(vec2<i32>(func_3(), -(1i & u_input.b.x))), _wgslsmith_div_i32(~_wgslsmith_div_i32(~0i, u_input.b.x), _wgslsmith_sub_i32(1i, -_wgslsmith_dot_vec2_i32(u_input.b, u_input.b))));
    global0 = array<vec4<i32>, 2>();
    global0 = array<vec4<i32>, 2>();
    global0 = array<vec4<i32>, 2>();
    var_0 = Struct_3(u_input.b, var_0.b);
    return arg_1.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_3(select(select(u_input.b | (vec2<i32>(arg_1.b.a, u_input.b.x) & vec2<i32>(9139i, 1i)), select(max(u_input.b, vec2<i32>(-1i, 0i)), firstTrailingBit(vec2<i32>(0i, arg_1.c.a)), arg_1.d != true), true), firstLeadingBit(max(-vec2<i32>(arg_1.b.a, arg_1.c.a), u_input.b)), any(vec2<bool>(true, false))), abs(2147483647i));
    let var_1 = arg_1.b.b;
    let var_2 = arg_1.a.x;
    var var_3 = 54907i;
    global0 = array<vec4<i32>, 2>();
    return u_input.b.x;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_4 {
    var var_0 = true & !((-arg_1.a.x == ~arg_2.a) != !all(vec4<bool>(true, false, true, true)));
    let var_1 = 640f;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-111f, arg_0, 1000f, 911f), vec4<f32>(-339f, -1532f, var_1, 468f)))))))));
    global0 = array<vec4<i32>, 2>();
    var var_3 = _wgslsmith_sub_u32(arg_2.b, arg_2.b);
    return Struct_4(arg_2);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    global0 = array<vec4<i32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1535f)));
    let var_1 = func_5(-671f, Struct_3(u_input.b, func_4(~vec4<u32>(u_input.a, 1u, arg_0.b, arg_0.b), Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_1(-4433i, u_input.a), func_2(arg_0.b, Struct_4(arg_0), var_0), true))), arg_0);
    let var_2 = Struct_2(vec3<bool>(false, !((var_1.a.b != u_input.a) | true), false), func_2(19287u, func_5(-379f, Struct_3(u_input.b, _wgslsmith_div_i32(arg_0.a, arg_1)), func_2(23650u, Struct_4(arg_0), 442f)), 883f), var_1.a, true);
    var var_3 = Struct_4(Struct_1(-2147483647i, ~(~firstLeadingBit(arg_0.b))));
    return var_2.a.yx;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    var var_0 = any(select(vec4<bool>(_wgslsmith_f_op_f32(329f * arg_1.x) <= _wgslsmith_f_op_f32(step(arg_1.x, 1322f)), false, (arg_3 < arg_0.b) | func_1(Struct_1(u_input.b.x, 46331u), arg_0.a).x, true), vec4<bool>(true, !all(vec3<bool>(false, false, false)), arg_0.a >= 2147483647i, true), true));
    let var_1 = Struct_4(func_2(abs(0u), func_5(-1000f, Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), 1i), Struct_1(~arg_0.a, u_input.a)), 1000f));
    global0 = array<vec4<i32>, 2>();
    let var_2 = vec4<i32>(max(-2586i, func_2(arg_2.x, func_5(378f, Struct_3(vec2<i32>(1i, u_input.b.x), arg_0.a), func_5(arg_1.x, Struct_3(vec2<i32>(u_input.b.x, var_1.a.a), -1i), var_1.a).a), _wgslsmith_f_op_f32(255f * _wgslsmith_f_op_f32(max(923f, arg_1.x)))).a), var_1.a.a, func_3(), abs(1i));
    var var_3 = Struct_1(var_1.a.a, 0u);
    return Struct_3(select(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_0.a), _wgslsmith_mult_vec2_i32(u_input.b, var_2.ww)), firstTrailingBit(vec2<i32>(arg_0.a, var_1.a.a)), true) ^ firstLeadingBit(var_2.yx), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -23544i, arg_0.a), _wgslsmith_add_vec3_i32(vec3<i32>(-1321i, -2147483647i, var_3.a), vec3<i32>(var_2.x, arg_0.a, 11264i))) << (arg_3 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 322u)), ~(max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(60438u, 11596u, u_input.a, 35828u), vec4<u32>(u_input.a, 0u, 1u, 4294967295u)))), ~reverseBits(~vec4<u32>(4294967295u, 71593u, 18792u, 24921u) & vec4<u32>(0u, u_input.a, u_input.a, u_input.a)));
    global0 = array<vec4<i32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1093f));
    var_0 = _wgslsmith_div_vec4_u32(max(vec4<u32>(~u_input.a | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u), vec4<u32>(4294967295u, 14172u, var_0.x, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(34095u, u_input.a, u_input.a), countOneBits(var_0.zwz)), _wgslsmith_div_u32(max(49342u, var_0.x), 47706u), min(1u, ~u_input.a)), vec4<u32>(2356u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), u_input.a), 0u, ~(~53082u))), vec4<u32>(_wgslsmith_mod_u32(abs(reverseBits(9055u)), _wgslsmith_div_u32(var_0.x, u_input.a << (var_0.x % 32u))), _wgslsmith_sub_u32(var_0.x, ~var_0.x & u_input.a), 0u, 5952u));
    global0 = array<vec4<i32>, 2>();
    var var_2 = func_6(Struct_1(2147483647i | (u_input.b.x >> (_wgslsmith_div_u32(var_0.x, 0u) % 32u)), ~4294967295u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 1f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1647f, -791f)))), !func_1(Struct_1(-26711i, u_input.a), u_input.b.x))))), vec3<u32>(var_0.x, _wgslsmith_add_u32(0u, abs(25346u)), 4294967295u), _wgslsmith_clamp_u32(var_0.x, 4294967295u | var_0.x, 72823u));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), ~14467u), ~45919u);
    let var_4 = ~min(firstLeadingBit(u_input.a ^ abs(67409u)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(_wgslsmith_sub_vec2_i32(u_input.b, u_input.b), select(vec2<i32>(var_2.b, 1i), u_input.b, vec2<bool>(false, true)))), select(~(~var_0.zw), reverseBits(firstTrailingBit(var_0.xw)), var_2.a.x <= var_2.b) | var_0.zx, _wgslsmith_mod_i32(countOneBits(u_input.b.x << (~u_input.a % 32u)), _wgslsmith_div_i32(i32(-1i) * -13108i, var_2.a.x)), var_2.a.x ^ var_2.b, var_1);
}

