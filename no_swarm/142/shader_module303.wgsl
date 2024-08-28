struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>) -> bool {
    let var_0 = select(arg_0, !vec3<bool>(any(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(true, arg_0.x, true, false))), arg_0.x, true), arg_0.x && arg_0.x);
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(1313f, _wgslsmith_div_f32(-153f, 300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1952f)), 1f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(720f, 500f, 758f, -679f), vec4<f32>(121f, 1464f, -739f, -724f), vec4<bool>(true, false, false, arg_0.x))), vec4<f32>(1757f, 610f, 383f, 124f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, 442f, 1271f, 2329f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2011f, -365f, -960f, 445f), vec4<f32>(1824f, -195f, 502f, -1235f), vec4<bool>(var_0.x, false, var_0.x, true)))))), Struct_2(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1.x, 13668u), ~68297u), Struct_1(true, true, _wgslsmith_dot_vec3_i32(reverseBits(u_input.e), vec3<i32>(35156i, u_input.e.x, u_input.b.x))), ~u_input.b));
    var var_2 = -275f;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.a)) * var_1.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(794f, -3046f, var_1.a.x, 487f)))), var_1.a)), !select(vec4<bool>(var_1.b.b.a, var_1.b.b.a, false, arg_0.x), vec4<bool>(var_0.x, true, true, var_1.b.b.a), true))), var_1.a);
    var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-339f)), var_3.x)))) + var_1.a);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = Struct_2(31310u, Struct_1(any(!select(vec2<bool>(true, true), vec2<bool>(arg_1.a.b.b, true), vec2<bool>(arg_0.a, false))), arg_1.a.b.a, arg_1.a.b.c), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(_wgslsmith_sub_i32(~arg_1.a.b.c, 14549i), arg_0.c)));
    var_0 = arg_1.a;
    let var_1 = arg_1.a.c.x;
    var_0 = arg_1.a;
    let var_2 = Struct_2(firstTrailingBit(~select(arg_1.a.a, ~65101u, true)), Struct_1(_wgslsmith_div_f32(507f, _wgslsmith_f_op_f32(max(arg_1.b, arg_1.b))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b, arg_1.b))), arg_1.a.b.b, u_input.e.x), u_input.a >> (~vec2<u32>(~u_input.d.x, 27568u) % vec2<u32>(32u)));
    return !select(!vec4<bool>(var_2.b.a, var_0.b.a, arg_1.a.a >= 11319u, !arg_1.a.b.b), vec4<bool>(all(select(vec3<bool>(true, true, var_0.b.a), vec3<bool>(var_2.b.a, false, var_2.b.a), vec3<bool>(true, var_2.b.b, false))), any(select(vec3<bool>(true, arg_1.a.b.b, true), vec3<bool>(true, true, arg_0.b), true)), true, arg_0.b), arg_0.b);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    let var_0 = arg_1;
    let var_1 = func_4(Struct_1(func_3(!vec3<bool>(false, false, arg_0), u_input.d), false, u_input.c), Struct_5(Struct_2(_wgslsmith_div_u32(~u_input.d.x, ~u_input.d.x), Struct_1(u_input.d.x > u_input.d.x, true, u_input.b.x), _wgslsmith_mod_vec2_i32(~vec2<i32>(-44084i, -27917i), select(vec2<i32>(1i, -8925i), u_input.a, vec2<bool>(arg_0, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-arg_1))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), -487f, arg_1))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f * -1151f) + _wgslsmith_f_op_f32(sign(var_2.x)))))));
    let var_3 = u_input.d.zyy;
    return Struct_4(Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d.wxy, vec3<u32>(1u, 44258u, 4294967295u)), var_3.x) & ~(~var_3.x), Struct_1(!any(vec4<bool>(false, arg_0, arg_0, arg_0)), false, u_input.c >> (u_input.d.x % 32u)), -vec2<i32>(u_input.b.x, _wgslsmith_add_i32(-1i, 61528i))), var_1.x | !any(!vec3<bool>(true, arg_0, true)));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> Struct_5 {
    let var_0 = func_2(true, 1176f);
    let var_1 = vec3<bool>(all(vec3<bool>(true & func_4(Struct_1(true, arg_2.b, -33590i), Struct_5(arg_2.a, -1000f)).x, select(false, true, var_0.a.b.a), var_0.a.b.b)), 1396f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(sign(-1000f)))), arg_2.b);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, 858f, -508f, -720f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-824f - 1000f) + 573f), 1050f, _wgslsmith_f_op_f32(min(-897f, _wgslsmith_div_f32(1344f, 193f))), _wgslsmith_f_op_f32(f32(-1f) * -1376f))), Struct_2(u_input.d.x, arg_2.a.b, ~countOneBits(vec2<i32>(-1i, var_0.a.c.x))));
    var var_3 = Struct_2(4294967295u, func_2(select(false, false, !arg_2.a.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.a.x)))))).a.b, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.b.c, select(0i, reverseBits(var_0.a.b.c), all(vec2<bool>(true, false)))), func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -375f)).a.c));
    let var_4 = func_2(var_3.b.a, var_2.a.x);
    return Struct_5(Struct_2(_wgslsmith_mult_u32(~1483u, _wgslsmith_add_u32(var_3.a, 1u)), var_2.b.b, reverseBits(vec2<i32>(-34185i, -30002i) ^ var_2.b.c)), -695f);
}

fn func_6(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3, arg_3: bool) -> bool {
    var var_0 = u_input.d;
    let var_1 = func_2(all(select(select(vec4<bool>(arg_2.b.b.a, false, true, arg_2.b.b.a), select(vec4<bool>(arg_1.a.b.a, false, arg_1.a.b.a, true), vec4<bool>(arg_3, arg_3, arg_1.a.b.a, true), vec4<bool>(true, false, arg_2.b.b.b, false)), vec4<bool>(arg_2.b.b.b, arg_1.a.b.b, arg_1.a.b.a, true)), select(func_4(arg_2.b.b, Struct_5(Struct_2(25773u, arg_2.b.b, arg_1.a.c), 122f)), vec4<bool>(arg_1.a.b.a, true, false, arg_1.a.b.b), !vec4<bool>(arg_2.b.b.b, arg_2.b.b.b, arg_2.b.b.b, false)), vec4<bool>(false || arg_1.a.b.a, arg_1.a.b.a, func_4(Struct_1(arg_3, false, -33628i), arg_1).x, all(vec2<bool>(arg_2.b.b.b, arg_3))))), _wgslsmith_f_op_f32(f32(-1f) * -234f));
    var_0 = vec4<u32>(arg_2.b.a, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 0u), arg_1.a.a, var_1.a.a ^ 1u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.d.x), ~vec2<u32>(29601u, 1u)), ~arg_2.b.a) >> (u_input.d % vec4<u32>(32u));
    var_0 = select(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 25947u), u_input.d), ~vec4<u32>(~0u, var_0.x, 55458u, min(63055u, arg_1.a.a)), !vec4<bool>(arg_2.b.b.a, func_2(arg_3, arg_2.a.x).b, func_5(54434u, 29393u, var_1).a.b.a, arg_1.a.b.c < u_input.b.x)) ^ vec4<u32>(countOneBits(_wgslsmith_sub_u32(60131u >> (var_1.a.a % 32u), 30501u << (arg_1.a.a % 32u))), 68757u, 66068u, 4294967295u);
    let var_2 = vec3<u32>(4294967295u, 16656u, ~reverseBits(u_input.d.x));
    return true;
}

fn func_1(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = Struct_2(~57389u, Struct_1(func_6(-2147483647i, func_5(firstTrailingBit(17533u), _wgslsmith_mod_u32(16524u, 14626u), func_2(false, arg_0.x)), Struct_3(vec4<f32>(-978f, arg_0.x, arg_0.x, 1097f), Struct_2(u_input.d.x, Struct_1(true, false, -1796i), u_input.a)), true), true, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-74420i), u_input.e.x), min(-vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-23266i, 15609i) & u_input.e.xy))), _wgslsmith_add_vec2_i32(func_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1144f) + 271f)).a.c, u_input.b));
    var var_1 = func_2(var_0.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.x, 313f)))) - arg_0.x), 186f)).a;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(arg_0))))), func_5(u_input.d.x, _wgslsmith_add_u32(~var_0.a, _wgslsmith_mult_u32(17816u, 0u)) | 54204u, func_2(func_2(var_1.b.a, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)).a.b.b, 319f)).a);
    var_1 = func_2(any(!(!(!vec3<bool>(true, false, var_1.b.b)))), -1000f).a;
    var_1 = Struct_2(~countOneBits(1u), Struct_1(false, var_0.b.a, var_0.b.c), var_2.b.c);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_4(Struct_2(~3022u, Struct_1(!var_0, any(vec4<bool>(var_0, var_0, true, var_0)), -u_input.b.x | u_input.e.x), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-378f, -1437f, -922f, -801f))))), false);
    var var_2 = !vec3<bool>(false, var_1.a.b.a, !(!func_3(vec3<bool>(true, false, false), vec4<u32>(4104u, 1u, var_1.a.a, var_1.a.a))));
    let var_3 = Struct_1(!(!all(select(vec4<bool>(var_1.a.b.b, false, true, var_0), vec4<bool>(var_1.a.b.b, var_0, false, var_0), var_2.x))), var_1.a.b.b, u_input.e.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f) * _wgslsmith_f_op_f32(abs(1524f))));
    var_2 = func_4(func_5(~func_5(33070u, ~u_input.d.x, func_2(var_3.b, -1674f)).a.a, 99758u, func_2(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-822f, 1041f))))).a.b, func_5(abs(28963u), reverseBits(~var_1.a.a >> (37973u % 32u)), func_2(false, _wgslsmith_f_op_f32(-437f + _wgslsmith_f_op_f32(min(-298f, -886f)))))).wwx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, max(_wgslsmith_dot_vec4_u32(~u_input.d, _wgslsmith_mult_vec4_u32(u_input.d, u_input.d)), select(_wgslsmith_clamp_u32(u_input.d.x, var_1.a.a, 16979u), var_1.a.a | u_input.d.x, var_1.a.a >= var_1.a.a)), var_1.a.a, _wgslsmith_div_u32(4294967295u, u_input.d.x)), vec4<i32>(~firstLeadingBit(-7192i | var_3.c), func_5(u_input.d.x & 0u, func_2(var_3.b, 281f).a.a, func_2(var_2.x, -308f)).a.c.x & -_wgslsmith_mod_i32(76601i, -7817i), ~(-u_input.a.x), var_1.a.c.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, -862f, -300f, -622f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(800f, -165f, 168f, 1175f))), vec4<f32>(-670f, -483f, -920f, -963f))))), u_input.d.x);
}

