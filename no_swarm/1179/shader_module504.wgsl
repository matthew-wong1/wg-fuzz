struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(~0u, _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, reverseBits(arg_0), arg_0), abs(~vec3<u32>(u_input.a, u_input.a, u_input.b.x))) << (abs(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.b.x, 17128u, arg_0)), select(vec3<u32>(27739u, 82344u, arg_0), vec3<u32>(arg_0, u_input.b.x, 0u), vec3<bool>(true, true, false)), vec3<u32>(u_input.a, 0u, 4294967295u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(u_input.a, _wgslsmith_sub_vec3_u32(abs(var_0.b), ~(vec3<u32>(0u, var_0.a, 4294967295u) >> ((vec3<u32>(arg_0, arg_0, 1u) | var_0.b) % vec3<u32>(32u)))));
    let var_2 = Struct_1(~(var_0.b.x | 64455u) | ~(arg_0 >> (var_1.b.x % 32u)), _wgslsmith_mult_vec3_u32(var_1.b, var_0.b));
    global0 = array<vec2<bool>, 28>();
    var_1 = Struct_1(~4294967295u, vec3<u32>(countOneBits(~13021u), ~(~reverseBits(var_0.b.x)), countOneBits(~u_input.b.x)));
    return 23534u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_u32(~(arg_1.a ^ select(14233u, 0u, any(vec4<bool>(false, true, true, false)))), ~arg_1.a ^ 1u);
    let var_1 = Struct_1(arg_1.a, max(arg_1.b << (~(~vec3<u32>(18771u, var_0, 1u)) % vec3<u32>(32u)), ~(~reverseBits(vec3<u32>(u_input.a, arg_1.b.x, 1u)))));
    let var_2 = Struct_1(countOneBits(~1u), vec3<u32>(0u, abs(123917u), min(1u, ~(1u & var_0))));
    global1 = vec3<i32>(select(u_input.c.x, ~u_input.c.x, select(true, true, true)), (_wgslsmith_div_i32(~u_input.c.x, select(u_input.c.x, 36980i, true)) >> (var_2.a % 32u)) >> (27171u % 32u), -(~global1.x));
    let var_3 = vec4<bool>(true, true, true, true);
    return !(!vec2<bool>(true, true | all(vec3<bool>(false, var_3.x, true))));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(16635u, arg_0.b.x) & u_input.b), vec2<u32>(u_input.a, _wgslsmith_mult_u32(arg_0.b.x, 0u))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_0.b.x, arg_0.a, 9756u), vec4<u32>(arg_0.a, 17255u, 61569u, 49448u)), ~(vec4<u32>(13183u, u_input.b.x, 41315u, u_input.a) | vec4<u32>(0u, 56012u, 106889u, u_input.b.x)))), arg_0.b);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1089f, 2122f)))), -389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1301f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f * -989f))) - 2779f), -818f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 584f)));
    var var_3 = Struct_1(u_input.b.x, arg_0.b);
    var var_4 = ~max(var_0.b.x, ~(~u_input.b.x));
    return func_4(Struct_1(0u, var_3.b), Struct_1(~var_3.b.x, vec3<u32>(func_3(u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(72154u, var_0.b.x, 0u, arg_0.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, 22195u, u_input.b.x, u_input.b.x), vec4<u32>(0u, 0u, u_input.a, var_0.a))), u_input.b.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> u32 {
    global0 = array<vec2<bool>, 28>();
    var var_0 = func_2(Struct_1(20224u, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b.x) | vec3<u32>(arg_0.x, arg_0.x, u_input.a), vec3<u32>(~arg_0.x, u_input.b.x | 5385u, u_input.a))));
    var_0 = vec2<bool>(true, func_2(Struct_1(1u, abs(~arg_0.xwy))).x);
    global0 = array<vec2<bool>, 28>();
    let var_1 = 1u;
    return 68252u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    global1 = -abs(~u_input.c.wyz);
    let var_0 = _wgslsmith_div_i32(4320i, ~1i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.c.x), -global1.x, _wgslsmith_add_i32(15176i, u_input.c.x)), abs(~vec3<i32>(-5543i, 2147483647i, global1.x))), u_input.c.x);
    global1 = _wgslsmith_clamp_vec3_i32(-u_input.c.xzy, -(~_wgslsmith_sub_vec3_i32(u_input.c.wxw, u_input.c.xyy)), vec3<i32>(_wgslsmith_add_i32(-1i ^ _wgslsmith_mod_i32(global1.x, u_input.c.x), 19103i), _wgslsmith_mod_i32(u_input.c.x & ~64633i, min(u_input.c.x, _wgslsmith_sub_i32(var_0, var_0))), abs(u_input.c.x)));
    let var_1 = arg_2.x;
    var var_2 = arg_0.b.zy;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(~1u, select(~vec3<u32>(0u, u_input.b.x, 44180u), reverseBits(vec3<u32>(1606u, u_input.a, 0u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(func_1(vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.b.x), vec3<f32>(515f, -110f, 1601f)), 26633u ^ u_input.b.x), u_input.b.x), max(~vec3<u32>(435u, 25085u, u_input.b.x), ~(vec3<u32>(u_input.a, u_input.b.x, 4294967295u) & vec3<u32>(21555u, 73956u, u_input.b.x)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.a > 0u), vec3<bool>(true, any(vec3<bool>(true, false, true)), false), !func_4(Struct_1(21321u, vec3<u32>(u_input.b.x, 0u, 0u)), Struct_1(9878u, vec3<u32>(u_input.b.x, 0u, u_input.b.x))).x), vec3<bool>(true, global1.x <= (2147483647i >> (u_input.b.x % 32u)), true), true));
    global1 = vec3<i32>(reverseBits(global1.x), 84307i, abs(1i));
    var var_1 = 17410i;
    global1 = -_wgslsmith_mult_vec3_i32(countOneBits(-vec3<i32>(-55456i, 1i, 6416i)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(select(u_input.c.xxy, vec3<i32>(u_input.c.x, -48610i, global1.x), false), vec3<i32>(u_input.c.x, -1i, -10526i), _wgslsmith_sub_vec3_i32(u_input.c.xww, vec3<i32>(u_input.c.x, -22234i, u_input.c.x))), u_input.c.xzx ^ u_input.c.wxw));
    global1 = vec3<i32>(-u_input.c.x, u_input.c.x, 31129i);
    let var_2 = func_4(Struct_1(_wgslsmith_sub_u32(var_0.a, ~(~u_input.b.x)), var_0.b), var_0).x;
    let var_3 = func_5(func_5(Struct_1(4294967295u, var_0.b), Struct_1(var_0.b.x, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.a)), vec3<u32>(u_input.a, 10563u, var_0.b.x))), !select(select(vec3<bool>(false, var_2, false), vec3<bool>(false, var_2, var_2), var_2), !vec3<bool>(true, var_2, true), !var_2)), Struct_1(40652u, vec3<u32>(select(select(u_input.a, 30711u, var_2), 34209u, var_2), ~u_input.a, 38155u)), !vec3<bool>(-10401i != u_input.c.x, var_2, !var_2));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1f), 1379f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(103f, -848f, var_4, var_4) * vec4<f32>(var_4, -269f, var_4, var_4)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-902f, var_4, var_4, var_4))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4 + var_4), _wgslsmith_f_op_f32(f32(-1f) * -1717f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, var_4) + _wgslsmith_f_op_f32(var_4 + var_4)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_4, -1170f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-var_4))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~1u), 1u, abs(1u), ~(~4294967295u)), vec4<u32>(~5969u, 70833u, ~1u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_3.a, var_3.b.x), var_0.b))), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, 0u, 1u), vec4<u32>(43509u, u_input.b.x, 33305u, var_0.a)))), ~global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-945f, var_4))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 * 193f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(752f, var_4)), _wgslsmith_f_op_f32(-var_4))), 708f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4 + var_4)))))));
}

