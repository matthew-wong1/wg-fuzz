struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(72590u, 37176u), vec2<u32>(42154u, 32758u)), ~37270u, ~1u)), vec2<i32>(max(u_input.a, _wgslsmith_mod_i32(~(-316i), 1i)), 2147483647i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-495f, 290f, -729f, -1223f), vec4<f32>(-954f, 167f, 515f, -169f), true))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) * 340f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(233f)), _wgslsmith_f_op_f32(f32(-1f) * -1284f))), _wgslsmith_f_op_f32(select(558f, -346f, true)), _wgslsmith_f_op_f32(f32(-1f) * -133f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~73650u, ~33049u, 17260u), ~vec4<u32>(1u, 1u, 1u, 1u)) << (~(~1u) % 32u), vec4<u32>(reverseBits(~1u), ~58069u, reverseBits(1u), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, 78752u), 1u, 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.c.wy)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(var_0.c.yx, _wgslsmith_f_op_vec2_f32(round(var_0.c.wy)))))))));
    var_0 = Struct_1(var_0.e.zxw, abs(_wgslsmith_sub_vec2_i32(-var_0.b, var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(-231f)), true)), 407f, _wgslsmith_f_op_f32(-320f + -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))))), var_0.a.x, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d, 4294967295u, var_0.d, 0u), vec4<u32>(var_0.e.x, var_0.a.x, var_0.a.x, 44323u)) << (abs(var_0.e) % vec4<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a, firstTrailingBit(var_0.a >> (var_0.e.zzx % vec3<u32>(32u)))), vec3<u32>((var_0.a.x | var_0.e.x) & _wgslsmith_div_u32(9519u, 1u), select(var_0.a.x, ~1u, all(vec2<bool>(false, false))), var_0.a.x), _wgslsmith_div_vec3_u32(~(~vec3<u32>(21480u, var_0.d, var_0.a.x)), var_0.e.wxz)), select(var_0.b, vec2<i32>(-2147483647i, abs(-2147483647i)), true), var_0.c, _wgslsmith_mod_u32(firstLeadingBit(var_0.d), 1u), _wgslsmith_mult_vec4_u32(var_0.e, var_0.e));
    var_1 = _wgslsmith_div_vec2_f32(var_0.c.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(-504f)), var_2.c.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, -1000f)))))));
    return 92801u;
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_2(vec2<u32>(0u >> (~func_3() % 32u), 12914u), Struct_1(firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, -1i)), vec2<i32>(arg_0, u_input.a)) & ~firstTrailingBit(vec2<i32>(arg_0, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-119f)), -1272f, -296f, _wgslsmith_f_op_f32(f32(-1f) * -780f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1170f, -1000f, 1000f, 961f)))), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(4294967295u, 964u, 9517u), 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(56992u, 27309u, 26670u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(countOneBits(90138u)), _wgslsmith_mult_u32(1u, firstTrailingBit(0u)), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1786f - -354f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1221f))))), vec2<i32>(-4597i, -firstTrailingBit(0i)));
    var_0 = Struct_2(_wgslsmith_div_vec2_u32(var_0.a, var_0.a), Struct_1(vec3<u32>(30948u, min(min(var_0.b.e.x, 1u), var_0.b.a.x), reverseBits(~16274u)), vec2<i32>(min(-1i, var_0.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(28705i, u_input.a, 35483i), -vec3<i32>(arg_0, arg_0, 27598i))), var_0.b.c, ~var_0.b.a.x, vec4<u32>(~_wgslsmith_div_u32(71956u, var_0.a.x), 1u, abs(~0u), firstLeadingBit(func_3()))), _wgslsmith_div_f32(var_0.b.c.x, -902f), min(-vec2<i32>(u_input.a, var_0.d.x), vec2<i32>(max(1i, var_0.d.x), var_0.b.b.x)));
    var var_1 = var_0.d.x;
    var var_2 = vec3<u32>(firstLeadingBit(~func_3()), 40709u, _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.b.e.x | var_0.a.x, 1u, ~var_0.a.x), 32045u), _wgslsmith_mult_u32(~var_0.a.x, max(var_0.b.d, var_0.b.e.x))));
    var_2 = var_0.b.e.ywx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x - -1586f) * _wgslsmith_f_op_f32(-var_0.c));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-167f + arg_1);
    var_0 = arg_1;
    return Struct_2(~abs(_wgslsmith_div_vec2_u32(arg_0.e.wy << (vec2<u32>(arg_0.d, arg_0.d) % vec2<u32>(32u)), vec2<u32>(0u, 37138u) & arg_0.a.zx)), Struct_1(abs(abs(select(arg_0.e.xwz, arg_0.e.wzy, vec3<bool>(true, true, true)))), ~arg_0.b << (select(_wgslsmith_div_vec2_u32(arg_0.e.yx, arg_0.a.yx), arg_0.e.wx, vec2<bool>(true, true)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(212f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(657f * 1665f), _wgslsmith_div_f32(arg_0.c.x, -1057f)) - vec4<f32>(218f, _wgslsmith_f_op_f32(min(-890f, -591f)), arg_1, _wgslsmith_f_op_f32(-arg_0.c.x))), arg_0.e.x, ~(~vec4<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, 0u))), 1714f, arg_0.b);
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = any(vec4<bool>(any(vec4<bool>(arg_2.c >= var_0.b.c.x, true, true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec3<bool>(true, false, all(vec3<bool>(true, false, false)))), all(vec2<bool>(true, true))));
    let var_2 = vec3<f32>(1859f, _wgslsmith_f_op_f32(select(arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), !all(vec3<bool>(true, false, var_1)) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f)))));
    return Struct_1(var_0.b.e.yzx, -vec2<i32>(arg_0.x, arg_2.d.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1201f, var_2.x, var_2.x, var_2.x) * vec4<f32>(var_0.c, var_2.x, -1020f, arg_3.c.x)) * func_4(var_0.b, arg_3.c.x, vec3<f32>(-1000f, 1695f, 943f)).b.c) * vec4<f32>(1000f, _wgslsmith_f_op_f32(var_2.x * arg_2.c), 224f, _wgslsmith_f_op_f32(-840f + -797f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(var_0.b, var_2.x, vec3<f32>(var_2.x, -1252f, 944f)).b.c.x, _wgslsmith_f_op_f32(exp2(arg_2.c)), _wgslsmith_div_f32(var_0.b.c.x, 318f), arg_2.c)))), 26131u, var_0.b.e);
}

fn func_1() -> u32 {
    let var_0 = func_5(-(~(~vec2<i32>(1i, 80816i) >> (firstLeadingBit(vec2<u32>(1u, 37717u)) % vec2<u32>(32u)))), u_input.a, func_4(Struct_1(reverseBits(min(vec3<u32>(1u, 4294967295u, 29338u), vec3<u32>(1u, 1u, 4294967295u))), ~(-vec2<i32>(u_input.a, 4247i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1000f, -645f, 119f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, 161f, -1075f, 1397f))), 30049u, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(74109u, 4294967295u, 2867u, 33242u), vec4<u32>(4294967295u, 5406u, 48699u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-417f * _wgslsmith_f_op_f32(round(863f))) - _wgslsmith_f_op_f32(func_2(-2147483647i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-310f, 254f, 1659f))))), vec3<f32>(-325f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -197f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), any(vec2<bool>(true, true)))))), Struct_1(~(~min(vec3<u32>(75787u, 30344u, 44856u), vec3<u32>(0u, 0u, 4294967295u))), select(vec2<i32>(u_input.a, ~(-2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(-10615i, -27348i), reverseBits(vec2<i32>(u_input.a, 44221i))), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(966f, 166f, -1725f, 1035f) * vec4<f32>(-302f, 557f, -336f, 1491f))) - vec4<f32>(-644f, _wgslsmith_f_op_f32(f32(-1f) * -775f), -840f, _wgslsmith_f_op_f32(abs(-1548f)))), ~reverseBits(67349u), vec4<u32>(2167u, ~1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 3399u, 6312u, 4294967295u), vec4<u32>(62950u, 4294967295u, 37506u, 1u), false), ~vec4<u32>(0u, 0u, 46445u, 11163u)), 59711u)));
    var var_1 = func_4(var_0, _wgslsmith_f_op_f32(1158f + _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, 1498f, var_0.c.x))))) + vec3<f32>(-233f, 2149f, var_0.c.x)));
    var var_2 = Struct_1(~abs(var_1.b.e.xwz), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(-936f, 529f, var_1.c, 1074f)))))) + vec4<f32>(-149f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_1.b.c.x - -191f)), _wgslsmith_f_op_f32(-948f + _wgslsmith_f_op_f32(min(-590f, var_0.c.x))), _wgslsmith_f_op_f32(floor(var_1.c)))), _wgslsmith_mod_u32(var_1.b.e.x, var_1.a.x), ~max(select(~vec4<u32>(12723u, 1u, 4294967295u, 11838u), ~var_0.e, true), ~vec4<u32>(var_0.d, 0u, var_0.d, 4294967295u)));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_0.d), var_0.a.x, 4294967295u, var_2.e.x), ~(vec4<u32>(var_2.d, 96275u, 35625u, var_1.b.a.x) ^ vec4<u32>(var_0.e.x, 81294u, 1u, 51762u))) <= _wgslsmith_add_u32(abs(40906u), 6123u);
    var var_4 = ((vec3<i32>(var_1.d.x, _wgslsmith_div_i32(1i, var_1.d.x), _wgslsmith_dot_vec2_i32(var_1.d, var_1.d)) << (var_1.b.a % vec3<u32>(32u))) ^ (-select(vec3<i32>(var_2.b.x, var_1.b.b.x, 10473i), vec3<i32>(-42994i, var_2.b.x, 0i), false) | (vec3<i32>(-2147483647i, -2147483647i, var_2.b.x) >> (var_0.a % vec3<u32>(32u))))) & vec3<i32>(func_5(var_1.b.b, _wgslsmith_div_i32(~27449i, 29149i), func_4(Struct_1(var_0.a, vec2<i32>(0i, var_0.b.x), var_1.b.c, 1u, var_0.e), 361f, _wgslsmith_f_op_vec3_f32(var_0.c.zxx - vec3<f32>(var_1.c, -2356f, -1369f))), func_4(Struct_1(var_1.b.a, var_2.b, vec4<f32>(var_2.c.x, 850f, -253f, -1000f), var_2.d, vec4<u32>(1u, 4294967295u, var_2.d, 1u)), _wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-869f, var_1.c, -354f))).b).b.x, -2147483647i, reverseBits(var_0.b.x));
    return 1u >> (var_2.e.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1855f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1389f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-627f, 697f)))), -1371f);
    var var_1 = _wgslsmith_f_op_f32(max(var_0.x, 452f));
    let var_2 = (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 58607u, 71749u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 79061u, 4294967295u, 77792u) & firstTrailingBit(vec4<u32>(21249u, 0u, 1u, 73950u))) | vec4<u32>(_wgslsmith_clamp_u32(61429u, firstLeadingBit(4294967295u), _wgslsmith_add_u32(0u, 4294967295u)), ~74037u, _wgslsmith_mult_u32(42286u, ~4294967295u), func_1())) >> (vec4<u32>(1u, 51555u, firstTrailingBit(49910u), _wgslsmith_clamp_u32(~116831u, countOneBits(4294967295u), 1u) << (~countOneBits(4294967295u) % 32u)) % vec4<u32>(32u));
    let var_3 = vec3<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(u_input.a << (var_2.x % 32u), -u_input.a), reverseBits(_wgslsmith_add_i32(u_input.a, u_input.a))) ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, func_4(Struct_1(vec3<u32>(var_2.x, 16740u, var_2.x), vec2<i32>(u_input.a, -29246i), vec4<f32>(var_0.x, -1000f, var_0.x, var_0.x), 4294967295u, var_2), var_0.x, vec3<f32>(405f, var_0.x, var_0.x)).b.b.x), -countOneBits(-1i)), func_5(max(reverseBits(vec2<i32>(u_input.a, 39977i)), _wgslsmith_sub_vec2_i32(vec2<i32>(9207i, 2147483647i), vec2<i32>(u_input.a, u_input.a)) | vec2<i32>(u_input.a, u_input.a)), ~u_input.a, func_4(func_4(func_5(vec2<i32>(u_input.a, u_input.a), 26424i, Struct_2(var_2.wy, Struct_1(var_2.yzz, vec2<i32>(-1i, u_input.a), vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x), 943u, vec4<u32>(var_2.x, var_2.x, 28398u, 48202u)), -1652f, vec2<i32>(1i, u_input.a)), Struct_1(vec3<u32>(var_2.x, 32856u, 79156u), vec2<i32>(2147483647i, -2147483647i), vec4<f32>(var_0.x, -1273f, var_0.x, var_0.x), 1u, vec4<u32>(1u, 1u, var_2.x, var_2.x))), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, var_0.x, var_0.x) - vec3<f32>(var_0.x, 1659f, var_0.x))).b, _wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -153f, -1000f))), func_5(vec2<i32>(~u_input.a, 30262i), _wgslsmith_mod_i32(u_input.a, u_input.a), Struct_2(var_2.wz, func_5(vec2<i32>(u_input.a, -1i), u_input.a, Struct_2(var_2.wz, Struct_1(var_2.yzz, vec2<i32>(-2147483647i, -57260i), vec4<f32>(var_0.x, var_0.x, 1117f, var_0.x), var_2.x, vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)), -487f, vec2<i32>(u_input.a, 3755i)), Struct_1(vec3<u32>(71806u, var_2.x, 1u), vec2<i32>(u_input.a, 1i), vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x), 88870u, var_2)), func_5(vec2<i32>(-1i, 28497i), u_input.a, Struct_2(var_2.yz, Struct_1(var_2.yzz, vec2<i32>(6444i, -2147483647i), vec4<f32>(var_0.x, var_0.x, 1135f, var_0.x), 1u, vec4<u32>(var_2.x, var_2.x, var_2.x, 51223u)), var_0.x, vec2<i32>(-35708i, -1i)), Struct_1(var_2.zyy, vec2<i32>(0i, 2147483647i), vec4<f32>(-1000f, var_0.x, var_0.x, -2442f), 4294967295u, var_2)).c.x, firstLeadingBit(vec2<i32>(u_input.a, -14970i))), Struct_1(var_2.xwy, ~vec2<i32>(1i, -8055i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, 701f, var_0.x, var_0.x)), max(40057u, var_2.x), var_2 ^ var_2))).b.x, ~(-(~_wgslsmith_mod_i32(u_input.a, u_input.a))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(927f + var_0.x))), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1348f) * func_4(Struct_1(var_2.xxy, var_3.zx, vec4<f32>(483f, var_0.x, var_0.x, var_0.x), var_2.x, vec4<u32>(1u, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_f32(max(613f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(865f, var_0.x, var_0.x))).b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_2.x, ~(-22683i), reverseBits(max(func_4(Struct_1(vec3<u32>(var_2.x, var_2.x, var_2.x), vec2<i32>(2147483647i, 7629i), vec4<f32>(179f, -1075f, var_0.x, var_4.x), 0u, var_2), var_0.x, vec3<f32>(var_0.x, var_0.x, -795f)).b.b.x, _wgslsmith_mod_i32(var_3.x, 0i))) | u_input.a, var_2.xy);
}

