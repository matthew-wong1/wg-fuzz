struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<bool> {
    global0 = false;
    return vec4<bool>(!any(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-1f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-453f, 1495f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f))), !((firstTrailingBit(82694u) <= u_input.b.x) & true), true);
}

fn func_2(arg_0: bool) -> u32 {
    global0 = all(vec2<bool>(any(!func_3()), arg_0));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(644f, -882f, -1383f) - vec3<f32>(-636f, -495f, -2142f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2496f * _wgslsmith_f_op_f32(-1000f - 1179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-389f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -3306f))))));
    let var_1 = _wgslsmith_div_vec2_f32(var_0.yz, _wgslsmith_f_op_vec2_f32(min(var_0.zx, vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1315f))))))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -427f))), var_1.x), -10833i, var_0.x, reverseBits(1i | (-2147483647i << ((4294967295u << (u_input.b.x % 32u)) % 32u))));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 722f)), ~78486i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2932f + var_1.x)), _wgslsmith_sub_i32(var_2.d, _wgslsmith_div_i32(var_2.d, var_2.d))), ~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b, 7977i, -46335i, var_2.d), vec4<i32>(var_2.b, var_2.b, 8075i, -1i), vec4<i32>(2147483647i, -2147483647i, var_2.b, -1i)), vec4<i32>(var_2.d, var_2.d, var_2.d, 32703i), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -684f)), (arg_0 || select(arg_0, arg_0 || false, true)) && true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(-243f, _wgslsmith_f_op_f32(sign(-807f)), 9178u <= u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(-1991f + var_1.x)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_1, var_2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(597f, var_0.x) + var_0.yz))), var_2.d, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(669f, var_2.a.x, false))), _wgslsmith_sub_i32(var_2.d, -var_2.d)), firstTrailingBit(select(~vec4<i32>(var_2.b, var_2.b, var_2.d, 0i), ~vec4<i32>(var_2.d, var_2.d, var_2.b, 2147483647i), any(vec4<bool>(arg_0, true, true, arg_0)))), var_0.x), vec3<i32>(var_2.d, -8355i, -22347i));
    return ~71717u;
}

fn func_1() -> Struct_5 {
    global0 = _wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, 63453u)), select(_wgslsmith_mult_u32(u_input.a.x, 0u) | 35133u, 39905u, false)) != min(func_2(true), ~16338u);
    var var_0 = Struct_5(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1604f, -377f) + vec2<f32>(-684f, 1233f)), -1452i, -339f, 0i), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1470f, 291f))))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, -1489f, -1267f)), vec3<f32>(473f, -669f, -332f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-2458f, -700f, -1331f), _wgslsmith_div_vec3_f32(vec3<f32>(-562f, -756f, -882f), vec3<f32>(-2098f, 697f, -516f)))), Struct_2(Struct_1(vec2<f32>(-828f, 1000f), 0i, 247f, firstTrailingBit(-2147483647i)), firstTrailingBit(vec4<i32>(8608i, 2752i, 27557i, 2147483647i)) ^ vec4<i32>(-16117i, -953i, 15465i, 1i), 460f), vec3<i32>(1i, 1i, 1i)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, -1470f)), ~(-2147483647i), _wgslsmith_f_op_f32(-803f - -2096f), i32(-1i) * -3395i), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2036f + -1929f))), !(!all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1451f, 744f, -693f))), Struct_2(Struct_1(vec2<f32>(803f, 2262f), _wgslsmith_mod_i32(-49897i, -3332i), _wgslsmith_f_op_f32(471f - -108f), abs(-1i)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -50821i, 1i, -72002i), vec4<i32>(-2147483647i, 7398i, -2467i, -52145i))), _wgslsmith_div_f32(766f, _wgslsmith_f_op_f32(f32(-1f) * -1197f))), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 0i, -1i)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(867f, -626f))), _wgslsmith_clamp_i32(-16750i, 2147483647i, 0i), _wgslsmith_f_op_f32(f32(-1f) * -420f), -5320i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, -44470i, -1i), vec4<i32>(37250i, -2147483647i, 26493i, 18206i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-312f, 825f)))), any(vec3<bool>(any(vec3<bool>(false, false, true)), true, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(3201f, -181f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2136f + -2587f), _wgslsmith_f_op_f32(-741f - 773f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(704f, -834f), vec2<f32>(-609f, 396f))), _wgslsmith_div_i32(-53856i, -2147483647i), -396f, _wgslsmith_dot_vec4_i32(vec4<i32>(-15664i, 31407i, -9573i, 28068i), vec4<i32>(68398i, 1i, 6525i, -22885i))), ~(-vec4<i32>(6215i, 1i, 7432i, -1i)), 781f), vec3<i32>(-(~(-19035i)), 1i, ~_wgslsmith_add_i32(1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1297f * 1303f))));
    var var_1 = true;
    var_0 = Struct_5(var_0.c, Struct_3(var_0.b.d, var_0.a.b, var_0.c.c, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.c.c.yz, vec2<f32>(var_0.a.a.a.a.x, -1097f), var_0.c.b)), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(step(-616f, var_0.d)), 0i), -countOneBits(var_0.c.d.b), 456f), firstLeadingBit(vec3<i32>(-1i, 1i, _wgslsmith_dot_vec2_i32(var_0.c.d.b.wz, vec2<i32>(var_0.a.e.x, -2147483647i))))), var_0.a, var_0.b.c.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.c.x * _wgslsmith_f_op_f32(ceil(var_0.c.d.c))), -424f);
    return Struct_5(Struct_3(Struct_2(var_0.a.d.a, var_0.a.d.b, _wgslsmith_f_op_f32(565f + _wgslsmith_f_op_f32(step(583f, var_0.a.d.c)))), var_0.a.e.x > abs(i32(-1i) * -23644i), vec3<f32>(var_0.c.a.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.d, 990f)), _wgslsmith_f_op_f32(floor(var_2)))), -1150f), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -997f)), -4273i, 121f, max(var_0.b.d.b.x, var_0.b.d.b.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c.d.b, vec4<i32>(-10422i, var_0.a.e.x, var_0.c.a.a.b, 1i)), _wgslsmith_add_vec4_i32(var_0.a.a.b, var_0.b.a.b)), _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(trunc(var_0.c.a.a.a.x)), true))), -(var_0.a.e & var_0.c.d.b.yyx)), var_0.a, Struct_3(Struct_2(var_0.b.d.a, _wgslsmith_div_vec4_i32(-var_0.b.a.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-28876i, 1i, var_0.a.a.b.x, 52701i), var_0.a.a.b)), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(-424f * var_2)))), var_0.a.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 806f, 161f)))))), Struct_2(Struct_1(vec2<f32>(607f, var_0.d), var_0.a.d.a.d >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(trunc(1430f)), var_0.b.e.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.e.x, 0i, -59128i, 0i), var_0.b.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-1718f * var_0.d))), vec3<i32>(2147483647i, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), i32(-1i) * -2147483647i), max(~var_0.c.d.a.b, var_0.b.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(var_0.d - 1954f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = func_1();
    var_0 = -var_1.c.d.a.d;
    let var_2 = firstTrailingBit(-vec2<i32>(-65631i, -1i));
    let var_3 = min(-2147483647i, -27713i);
    var var_4 = firstTrailingBit((~_wgslsmith_add_vec4_i32(var_1.b.a.b, vec4<i32>(40450i, var_2.x, 14480i, var_2.x)) & vec4<i32>(abs(32260i), reverseBits(1i), -2147483647i, 1i << (u_input.a.x % 32u))) << (vec4<u32>(15817u, u_input.a.x, 1u, _wgslsmith_div_u32(~4294967295u, 1u)) % vec4<u32>(32u)));
    let var_5 = -2151f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_1.a.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.c * 1562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) * _wgslsmith_f_op_f32(select(var_1.c.a.a.c, var_5, var_1.a.b))), func_1().a.a.a.a.x) + _wgslsmith_f_op_vec3_f32(max(var_1.c.c, _wgslsmith_f_op_vec3_f32(abs(var_1.c.c))))), -984f);
}

