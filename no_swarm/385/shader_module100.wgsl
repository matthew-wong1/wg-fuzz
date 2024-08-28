struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_3,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = -select(reverseBits(u_input.a), 0i, false);
    let var_1 = Struct_5(vec4<bool>(!any(vec3<bool>(true, true, true)), true, (var_0 >> (47635u % 32u)) == ~_wgslsmith_mod_i32(var_0, -21854i), false), false, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(-881f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(455f + -1504f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1064f)) * -876f)))), _wgslsmith_add_vec3_i32(select(vec3<i32>(-54479i, _wgslsmith_add_i32(u_input.a, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e, var_0), vec3<i32>(var_0, -2147483647i, u_input.b))), abs(vec3<i32>(1i, var_0, -2147483647i) & vec3<i32>(u_input.e, var_0, var_0)), vec3<bool>(false, false, all(vec3<bool>(false, true, false)))), reverseBits(~(-vec3<i32>(0i, var_0, var_0)))));
    var var_2 = firstTrailingBit(u_input.c >> ((u_input.c | _wgslsmith_sub_u32(u_input.c & u_input.c, 0u)) % 32u));
    var var_3 = ~abs(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 64206u), vec3<u32>(23881u, u_input.c, 2431u) ^ vec3<u32>(0u, 55696u, u_input.c), ~vec3<u32>(u_input.c, 4294967295u, 0u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.x)), -108f, _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(1279f, 185f))))));
    return any(vec4<bool>(var_1.a.x, true, false, (115f <= var_4.x) || true)) | !(!select(var_1.b, true, var_1.b) & true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = false;
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(14002i, 811i), firstLeadingBit(~vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-2147483647i, 0i)))), _wgslsmith_add_vec2_i32(max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, u_input.d), vec2<i32>(u_input.e, u_input.e)) ^ vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(u_input.b, -2147483647i) >> (firstLeadingBit(vec2<u32>(0u, u_input.c)) % vec2<u32>(32u))), firstLeadingBit(firstLeadingBit(-vec2<i32>(4154i, 1i)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1222f, 1001f, 665f, -179f), vec4<f32>(-1190f, 254f, 1225f, -724f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1570f, -1124f, 320f, 1034f) + vec4<f32>(-338f, -367f, -706f, -655f)))))), 778f);
    var var_3 = Struct_4(arg_1.xz, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.a, vec4<f32>(var_2.a.x, var_2.a.x, var_2.b, var_2.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, 274f))))), Struct_3(var_0, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f) - 1475f), arg_1.ww, -var_1 << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), firstTrailingBit(var_1.x), _wgslsmith_add_i32(u_input.b, var_1.x) >> (select(21491u, u_input.c, arg_1.x) % 32u))), ~(~(-vec4<i32>(-1i, u_input.e, -2147483647i, var_1.x))), select(arg_0.yw, !(!arg_0.xw), var_0));
    var var_4 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b)))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, any(vec3<bool>(false, true, true)), func_3(), true), vec4<bool>(select(true, false, false), all(vec3<bool>(false, false, false)), true, true))) - _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    let var_1 = u_input.c;
    var var_2 = -28729i;
    var var_3 = 1u;
    let var_4 = Struct_4(vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_2(vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) * _wgslsmith_div_f32(-934f, var_0)), var_0, var_0), 184f), Struct_3(select(true, true, true), Struct_1(_wgslsmith_f_op_f32(-var_0), select(vec2<bool>(false, true), vec2<bool>(false, true), true), abs(vec2<i32>(u_input.a, -31688i) << (vec2<u32>(4515u, var_1) % vec2<u32>(32u))), i32(-1i) * -1i, u_input.e)), _wgslsmith_mod_vec4_i32(-vec4<i32>(countOneBits(23180i), -u_input.b, -15229i, -27i ^ u_input.e), -(~vec4<i32>(u_input.b, u_input.e, -8154i, u_input.a))), vec2<bool>(all(vec4<bool>(true, true, any(vec2<bool>(false, true)), true)), true));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_4.b.a.x))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -602f));
    let var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1287f, var_1.b.a, -1221f, arg_0.b.b) - _wgslsmith_f_op_vec4_f32(-arg_1)) * arg_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.b.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.b.a)))));
    var var_3 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, 61966u))), ~(~vec3<u32>(u_input.c, 4294967295u, u_input.c))) | u_input.c, 4294967295u, var_1.b.b.x);
    var var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, ~9981u, ~(~(~u_input.c))), min(abs(vec3<u32>(u_input.c, 22012u, u_input.c) & (vec3<u32>(6702u, 1u, u_input.c) >> (vec3<u32>(20257u, 0u, 1u) % vec3<u32>(32u)))), ~vec3<u32>(62585u, firstLeadingBit(12978u), firstLeadingBit(8750u))));
    return arg_0.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, _wgslsmith_f_op_f32(round(-581f))))))), vec2<bool>(true, true || all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false))), vec2<i32>(i32(-1i) * -24388i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-10871i, -30092i), firstTrailingBit(arg_3.x)), -(~u_input.e))), -21866i, _wgslsmith_mod_i32(37058i, firstLeadingBit(u_input.a | abs(arg_3.x))));
    var_0 = Struct_1(737f, vec2<bool>(true, !all(var_0.b) || var_0.b.x), vec2<i32>(~(u_input.b >> (arg_0.x % 32u)), -reverseBits(arg_1.x)), var_0.c.x, u_input.e);
    let var_1 = 1778f;
    let var_2 = Struct_4(!var_0.b, func_1(Struct_4(var_0.b, func_1(Struct_4(vec2<bool>(true, true), Struct_2(vec4<f32>(arg_2.b, arg_2.a.x, 2045f, var_1), var_0.a), Struct_3(var_0.b.x, Struct_1(-248f, var_0.b, var_0.c, var_0.c.x, var_0.c.x)), vec4<i32>(var_0.c.x, var_0.e, 48163i, -37695i), vec2<bool>(var_0.b.x, var_0.b.x)), arg_2.a, -vec2<i32>(u_input.e, arg_1.x)), Struct_3(var_0.b.x || false, Struct_1(arg_2.b, vec2<bool>(var_0.b.x, true), vec2<i32>(var_0.d, arg_3.x), -80400i, -2147483647i)), select(firstLeadingBit(vec4<i32>(-34535i, -53334i, -17539i, -24438i)), arg_1, true), !(!vec2<bool>(var_0.b.x, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, 963f, -1535f, _wgslsmith_f_op_f32(-arg_2.b)), arg_2.a)), vec2<i32>(abs(-809i >> (arg_0.x % 32u)), 248i & (1i << (arg_0.x % 32u)))), Struct_3(any(select(var_0.b, vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, false))) && any(!vec3<bool>(false, var_0.b.x, false)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1601f)) - _wgslsmith_f_op_f32(min(var_0.a, -553f))), vec2<bool>(all(vec3<bool>(false, true, var_0.b.x)), false), -arg_3.xy, 4414i, arg_3.x)), arg_1, vec2<bool>(true, -42382i > _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.xx, arg_1.zy), ~arg_1.xx)));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.b.a.zyw - arg_2.a.zxx);
    return var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(540f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -827f)), _wgslsmith_f_op_f32(max(615f, -1101f)))), 1417f);
    let var_1 = ~_wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(1u, 16350u, 4294967295u))), vec3<u32>(u_input.c, 1u, ~5278u));
    var var_2 = Struct_1(-1553f, !select(vec2<bool>(1i < u_input.e, all(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false), vec2<i32>(_wgslsmith_mod_i32(func_5(vec4<u32>(u_input.c, 1u, var_1, u_input.c), vec4<i32>(-1i, 2147483647i, u_input.e, u_input.b), func_1(Struct_4(vec2<bool>(true, false), Struct_2(vec4<f32>(-912f, 627f, var_0.x, var_0.x), var_0.x), Struct_3(false, Struct_1(var_0.x, vec2<bool>(true, false), vec2<i32>(2147483647i, u_input.b), -1i, u_input.a)), vec4<i32>(u_input.b, u_input.e, u_input.b, u_input.a), vec2<bool>(true, true)), vec4<f32>(var_0.x, -1198f, var_0.x, var_0.x), vec2<i32>(u_input.a, u_input.d)), abs(vec3<i32>(u_input.b, u_input.e, -1821i))), -5522i), _wgslsmith_sub_i32(abs(func_5(vec4<u32>(37856u, 27510u, u_input.c, 56121u), vec4<i32>(u_input.e, u_input.d, -56937i, -1i), Struct_2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 1000f), vec3<i32>(-2147483647i, 0i, -2147483647i))), _wgslsmith_mod_i32(63246i, _wgslsmith_div_i32(u_input.a, -57738i)))), _wgslsmith_mult_i32(~(u_input.b & -9711i), u_input.d), select(i32(-1i) * -43488i, _wgslsmith_div_i32(-u_input.e, firstTrailingBit(_wgslsmith_clamp_i32(u_input.e, u_input.e, u_input.d))), false));
    let var_3 = Struct_4(vec2<bool>(var_2.b.x, all(var_2.b)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.a)), -507f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -620f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1040f)))))), Struct_3(false & !var_2.b.x, Struct_1(-966f, vec2<bool>(false, true), _wgslsmith_sub_vec2_i32(var_2.c << (vec2<u32>(var_1, u_input.c) % vec2<u32>(32u)), ~var_2.c), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, -1i, 70006i, 12969i), ~vec4<i32>(44469i, -28021i, var_2.c.x, 15131i)), _wgslsmith_sub_i32(-2147483647i, u_input.e) << (80997u % 32u))), vec4<i32>(-31110i, -1i, -var_2.c.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(17816i, var_2.e, -2834i), -vec3<i32>(-1i, u_input.b, -23711i))), !var_2.b);
    let var_4 = firstLeadingBit(~var_1);
    let var_5 = -(min(firstTrailingBit(var_2.c.x << (var_4 % 32u)), _wgslsmith_mod_i32(min(-18968i, 10551i), 19115i)) | 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, ~(~0u), u_input.c, 32927u));
}

