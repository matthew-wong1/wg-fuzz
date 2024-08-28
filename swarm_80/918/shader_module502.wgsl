struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = arg_0.yzz;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(!any(vec3<bool>(true, true, any(vec2<bool>(false, false)))), vec3<u32>(~(~(~4294967295u)), 4972u, _wgslsmith_dot_vec4_u32(~vec4<u32>(12145u, 37854u, 19028u, 10441u), vec4<u32>(1u, 1u, 1u, 1u))), max(~abs(62796i), u_input.a), ~(~1u));
    var var_1 = 39770i;
    var var_2 = var_0.a;
    var_0 = Struct_3(false, _wgslsmith_mod_vec3_u32(select(_wgslsmith_sub_vec3_u32(var_0.b, var_0.b), var_0.b, all(vec4<bool>(true, var_0.a, true, false))), ~(~var_0.b)), _wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(2381i), u_input.a), 1i), 15697u);
    var var_3 = vec2<u32>(var_0.b.x, ~(~var_0.b.x));
    return vec4<f32>(-1000f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-430f, global0.a)) - _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(round(global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(230f * global0.a) * _wgslsmith_f_op_f32(abs(322f)))) - -1575f));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_5(select(vec2<bool>(true, true), vec2<bool>(true, _wgslsmith_f_op_vec4_f32(func_3()).x != _wgslsmith_f_op_f32(-arg_2.b.a)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), arg_2.c.x < arg_2.d)));
    global0 = arg_0.e;
    let var_1 = arg_1.x;
    global0 = arg_2.b;
    global0 = func_2(~vec4<u32>(firstTrailingBit(25663u) | 1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(7890u, 4294967295u), vec2<u32>(67952u, 73414u)), select(0u, 1714u, var_0.a.x), var_0.a.x), ~(~4294967295u), 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 89u, 0u, 0u))), 1u, ~22991u, firstTrailingBit(~89880u) << (firstLeadingBit(min(26848u, 0u)) % 32u)), _wgslsmith_f_op_f32(sign(arg_1.x)));
    return _wgslsmith_mult_i32(9186i, 31919i);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_5 {
    var var_0 = u_input.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0)))));
    var_0 = ~_wgslsmith_sub_i32(func_4(Struct_2(_wgslsmith_f_op_f32(361f * arg_0), Struct_1(-345f), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 11420i, u_input.a), vec4<i32>(-1i, -1i, 2147483647i, -43439i)), arg_1.x, func_2(vec4<u32>(17629u, 0u, 0u, 7451u), vec4<u32>(1u, 1u, 1u, 8009u), arg_2.x)), _wgslsmith_f_op_vec4_f32(func_3()), Struct_2(-722f, func_2(vec4<u32>(4294967295u, 29485u, 0u, 4294967295u), vec4<u32>(52595u, 1u, 0u, 1u), -717f), vec4<i32>(0i, arg_1.x, arg_1.x, arg_1.x) >> (vec4<u32>(20085u, 4294967295u, 6191u, 78518u) % vec4<u32>(32u)), -arg_1.x, Struct_1(arg_0))), ~(-35317i));
    var var_1 = func_2(firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(21417u, ~0u), ~max(4294967295u, 0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 39981u), vec4<u32>(95777u, 1u, 4294967295u, 19732u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(104735u, 4294967295u, 1u), vec3<u32>(19443u, 4294967295u, 0u)))), vec4<u32>(1u, 77913u, firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 38010u, 0u), vec3<u32>(15563u, 43975u, 28746u), vec3<u32>(4294967295u, 0u, 4294967295u)) << (~vec3<u32>(4294967295u, 15302u, 7885u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(46083u, 0u, 1805u)))), 953f);
    let var_2 = Struct_5(vec2<bool>(true, any(vec2<bool>(true, false)) || select(true, any(vec3<bool>(false, true, false)), true)));
    return Struct_5(select(vec2<bool>(all(select(vec2<bool>(var_2.a.x, true), var_2.a, var_2.a.x)), !var_2.a.x), vec2<bool>((264f < var_1.a) & true, _wgslsmith_f_op_f32(-1126f * -772f) >= _wgslsmith_f_op_f32(global0.a * 766f)), false));
}

fn func_5(arg_0: Struct_5) -> f32 {
    let var_0 = max(min(1u, 1u), ~4294967295u);
    global0 = func_2(vec4<u32>(~var_0, 4294967295u, 43840u, 1u), _wgslsmith_div_vec4_u32(max(max(vec4<u32>(16080u, 17590u, var_0, var_0), vec4<u32>(39867u, var_0, var_0, var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(27324u, var_0, 0u, 0u), vec4<u32>(var_0, var_0, var_0, var_0))) & vec4<u32>(abs(var_0), 4294967295u | var_0, _wgslsmith_sub_u32(var_0, var_0), 0u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(26085u, 0u, 1177u, var_0), max(vec4<u32>(var_0, var_0, 1u, 19467u), vec4<u32>(var_0, 13200u, var_0, var_0)))), _wgslsmith_f_op_f32(239f - 399f));
    var var_1 = _wgslsmith_f_op_f32(floor(697f));
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a - 1511f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-436f + global0.a), _wgslsmith_div_f32(-387f, -534f))), global0.a, -667f), min(vec3<i32>(func_4(Struct_2(global0.a, Struct_1(-613f), vec4<i32>(u_input.a, 19179i, 2147483647i, u_input.a), 1i, Struct_1(346f)), vec4<f32>(global0.a, -728f, global0.a, global0.a), Struct_2(global0.a, Struct_1(global0.a), vec4<i32>(-1i, -1i, u_input.a, u_input.a), u_input.a, Struct_1(global0.a))), abs(2147483647i), firstLeadingBit(u_input.a)) >> (vec3<u32>(1025u, var_0, firstLeadingBit(var_0)) % vec3<u32>(32u)), reverseBits(-abs(vec3<i32>(9046i, u_input.a, u_input.a)))), Struct_2(661f, func_2(~(~vec4<u32>(var_0, 0u, var_0, var_0)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(var_0, var_0)), abs(var_0), ~var_0, ~0u), 420f), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.a), ~vec3<i32>(31007i, 23515i, u_input.a)), u_input.a >> (reverseBits(16272u) % 32u), 1i, u_input.a), u_input.a, Struct_1(508f)));
    global0 = func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8189u, 0u, var_0, var_0), vec4<u32>(60125u, 0u, 0u, 20340u)), var_0, var_0), ~(~vec3<u32>(var_0, var_0, 4294967295u))), _wgslsmith_add_u32(4294967295u, ~(4294967295u << (var_0 % 32u))), 1u, _wgslsmith_clamp_u32(var_0, _wgslsmith_clamp_u32(~var_0, 16222u, ~var_0), ~1u)), min(select(~firstLeadingBit(vec4<u32>(var_0, var_0, 110327u, var_0)), (vec4<u32>(var_0, var_0, var_0, 1u) << (vec4<u32>(44370u, var_0, 27725u, var_0) % vec4<u32>(32u))) << (~vec4<u32>(var_0, 6289u, 1u, var_0) % vec4<u32>(32u)), vec4<bool>(all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)), arg_0.a.x, false, true)), ~(~vec4<u32>(var_0, var_0, var_0, 4294967295u)) >> (~vec4<u32>(14046u, var_0, var_0, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(var_2.a.x, var_2.a.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) + _wgslsmith_f_op_f32(355f + -458f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -1740f)), 614f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    let var_0 = _wgslsmith_f_op_f32(func_5(func_1(global0.a, ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -4189i), ~vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, 219f, global0.a), vec3<f32>(141f, 1780f, global0.a))))))));
    var var_1 = func_2(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(35720u, 1u, 1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)), 0u), ~_wgslsmith_clamp_u32(1u, 56467u, 13545u), firstLeadingBit(75782u))), global0.a);
    var var_2 = func_1(-1000f, vec4<i32>(min(24443i, -16949i), min(abs(u_input.a), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-15539i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), u_input.a, -u_input.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-758f, 1451f, var_0) - vec3<f32>(-647f, 873f, 1092f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1787f, global0.a)))))));
    global0 = func_2(vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), ~(~0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(57826u, 53027u, 1u), min(vec3<u32>(1u, 4294967295u, 13997u), vec3<u32>(24672u, 8234u, 4294967295u))), 1u), reverseBits(~(~27482u))), select(firstLeadingBit(select(~vec4<u32>(4294967295u, 4294967295u, 1u, 1u), ~vec4<u32>(40056u, 1u, 0u, 21015u), select(vec4<bool>(false, false, true, var_2.a.x), vec4<bool>(false, true, var_2.a.x, var_2.a.x), var_2.a.x))), ~firstTrailingBit(vec4<u32>(0u, 728u, 31200u, 1u)), select(!(!vec4<bool>(var_2.a.x, true, var_2.a.x, false)), vec4<bool>(true, false && var_2.a.x, var_2.a.x, !var_2.a.x), !select(vec4<bool>(false, var_2.a.x, false, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), vec4<bool>(false, var_2.a.x, false, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(687f * _wgslsmith_f_op_f32(trunc(-2896f))) - _wgslsmith_f_op_f32(f32(-1f) * -523f)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - 1571f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(513f + -1000f)))) + global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, 37816u, select(~(u_input.a | _wgslsmith_clamp_i32(u_input.a, -35484i, u_input.a)), (~u_input.a | 1i) ^ select(countOneBits(-13807i), u_input.a, !var_2.a.x), true));
}

