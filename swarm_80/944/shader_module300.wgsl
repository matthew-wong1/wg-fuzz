struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: Struct_5;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = 21836u;
    let var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1212f * 247f) + -756f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -308f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-822f * _wgslsmith_div_f32(-1879f, -396f)), _wgslsmith_f_op_f32(step(834f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(580f))));
    var var_2 = true;
    var_0 = ~(~_wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(9289u, global1.c, global2.d.c), u_input.b.xyw, vec3<bool>(true, false, true))), vec3<u32>(~u_input.a, global1.c, global2.b.c)));
    global1 = global2.d;
    return 1u << (u_input.b.x % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = ~_wgslsmith_mult_u32(global1.c, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(arg_1, arg_2.c)) >> (func_3() % 32u)) == _wgslsmith_add_u32(45151u, global2.b.c);
    let var_1 = global2.b.b.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.e.yz, arg_2.e.xx, vec2<bool>(any(!arg_0), global2.b.b.c))));
    global2 = Struct_5(firstTrailingBit(global2.d.a), Struct_2(vec4<i32>(_wgslsmith_div_i32(~arg_2.b.b, global1.a.x >> (53402u % 32u)), _wgslsmith_clamp_i32(global1.a.x, max(2147483647i, -1i), global2.a.x), -countOneBits(11321i), 1i), Struct_1(-(~vec2<i32>(global2.a.x, 1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global2.d.a, global2.a), _wgslsmith_add_i32(1027i, 50598i)), global2.b.b.c), countOneBits(1u), -firstLeadingBit(~31796i)), ~select(global2.a.xz, arg_2.b.a, _wgslsmith_f_op_f32(-var_2.x) > 199f), Struct_2(abs(max(global2.b.a, select(global2.a, global1.a, global2.b.b.c))), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global1.b.a.x), arg_2.b.a), -global2.d.d), arg_2.b.a.x, global1.b.c), arg_2.c, u_input.c.x));
    var var_3 = vec3<bool>(~(~_wgslsmith_sub_i32(0i, arg_2.b.b)) <= abs(_wgslsmith_sub_i32(u_input.d, _wgslsmith_dot_vec4_i32(global1.a, global2.a))), true, !arg_2.b.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.e.x, -192f)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> Struct_5 {
    global2 = Struct_5(vec4<i32>(0i, max(i32(-1i) * -global2.b.b.a.x, 26585i), -arg_2.x, _wgslsmith_clamp_i32(0i, -2147483647i, _wgslsmith_div_i32(~arg_2.x, firstTrailingBit(15097i)))), Struct_2(~(vec4<i32>(2329i, arg_0.b.d, arg_2.x, 33915i) << (vec4<u32>(global2.d.c, global1.c, global2.b.c, 4294967295u) % vec4<u32>(32u))), Struct_1(vec2<i32>(arg_1.a.x | arg_2.x, -2147483647i), select(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.b, arg_1.a.x, arg_1.b), vec4<i32>(-1i, 1i, -30337i, global2.a.x)), true), all(vec4<bool>(global2.b.b.c, arg_1.c, arg_1.c, global2.d.b.c)) && true), _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(global2.b.c, _wgslsmith_mod_u32(4294967295u, 9865u))), -1i), -vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(arg_0.a.x), ~arg_0.d.d), arg_0.d.b.b), global2.b);
    var var_0 = firstLeadingBit(~_wgslsmith_mult_u32(47090u | (1u | global1.c), u_input.a));
    global1 = arg_0.d;
    global2 = arg_0;
    var var_1 = global2.b;
    return Struct_5(~vec4<i32>(~arg_1.a.x, arg_2.x, -(i32(-1i) * -21486i), _wgslsmith_mult_i32(~(-32214i), arg_1.b)), arg_0.d, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0.b.a ^ vec4<i32>(global1.d, u_input.c.x, arg_2.x, 2147483647i), -var_1.a), -1i), vec2<i32>(var_1.a.x | -1i, 1i)), Struct_2(arg_0.d.a, global1.b, _wgslsmith_div_u32(firstTrailingBit(var_1.c), 1u), -1i));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global2 = func_4(Struct_5(firstLeadingBit(select(global2.d.a, vec4<i32>(31469i, 58055i, 2147483647i, 22546i), true) & vec4<i32>(arg_0.x, -45807i, arg_0.x, -11204i)), global2.b, _wgslsmith_clamp_vec2_i32(global2.b.a.xw, vec2<i32>(-global1.a.x, global1.d), _wgslsmith_add_vec2_i32(vec2<i32>(global2.b.b.a.x, -1i), select(vec2<i32>(-11417i, global1.d), vec2<i32>(u_input.c.x, arg_0.x), vec2<bool>(false, true)))), global2.d), global1.b, -global1.a.yzy, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_2(vec3<bool>(global2.d.b.c, global0.x, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, global1.c, global1.c), firstLeadingBit(u_input.b)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1871f, -1000f, 1325f)), Struct_1(u_input.c, global1.b.b, false), select(u_input.b.x, 39204u, global2.b.b.c), 11084u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, -1116f, 273f)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -734f, -284f), vec3<f32>(575f, 293f, -111f)) + vec3<f32>(-280f, 686f, 1000f)) - vec3<f32>(_wgslsmith_f_op_f32(540f * 1652f), _wgslsmith_f_op_f32(ceil(890f)), -572f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(800f, 812f, -913f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(813f, -1741f, -219f))), _wgslsmith_div_vec3_f32(vec3<f32>(142f, -1226f, 351f), vec3<f32>(-1265f, 1188f, -894f))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(330f + -1809f)))), vec3<f32>(1057f, _wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f - 701f) * _wgslsmith_div_f32(1364f, 1025f))), 131f));
    let var_1 = func_4(Struct_5(global1.a, global2.d, ~(-u_input.c), func_4(func_4(func_4(Struct_5(global1.a, global2.d, global1.b.a, Struct_2(global2.d.a, Struct_1(u_input.c, arg_0.x, false), 4848u, 3639i)), Struct_1(u_input.c, -1i, global1.b.c), vec3<i32>(-2147483647i, 5602i, 3061i), var_0.x), func_4(Struct_5(global2.a, global2.b, global2.a.zz, global2.b), global1.b, vec3<i32>(global1.a.x, global2.a.x, -1i), -1958f).d.b, vec3<i32>(u_input.c.x, 16054i, -48318i), var_0.x), func_4(func_4(Struct_5(vec4<i32>(41966i, 14298i, 2147483647i, global2.a.x), global2.d, global2.b.b.a, global2.d), global2.d.b, global2.d.a.xwx, var_0.x), func_4(Struct_5(global1.a, Struct_2(vec4<i32>(global2.a.x, 0i, 12530i, u_input.c.x), Struct_1(vec2<i32>(global1.d, -53472i), -2147483647i, global2.b.b.c), 31093u, global1.b.b), global1.b.a, global2.b), Struct_1(global1.b.a, global2.c.x, false), global1.a.zzx, var_0.x).b.b, func_4(Struct_5(vec4<i32>(1i, 2819i, global2.d.b.a.x, arg_0.x), Struct_2(vec4<i32>(u_input.d, arg_0.x, arg_0.x, arg_0.x), Struct_1(vec2<i32>(69901i, global2.d.b.b), u_input.c.x, global1.b.c), 48938u, 17757i), u_input.c, global2.d), Struct_1(vec2<i32>(arg_0.x, -31940i), -1i, global0.x), vec3<i32>(-1i, 0i, u_input.c.x), var_0.x).a.xxz, 3010f).d.b, max(vec3<i32>(44410i, 1i, 1i), vec3<i32>(u_input.d, 21546i, global1.d)) << (u_input.b.wxy % vec3<u32>(32u)), var_0.x).d), Struct_1(-(select(global2.c, vec2<i32>(-2147483647i, -1i), global0.x) << (~u_input.b.xw % vec2<u32>(32u))), firstLeadingBit(global1.a.x), !any(vec4<bool>(false, global0.x, global0.x, global0.x))), vec3<i32>(_wgslsmith_clamp_i32(arg_0.x, -2147483647i, _wgslsmith_mult_i32(global1.a.x, u_input.d)), 0i, 1i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global2.d.a.x, u_input.c.x, arg_0.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c, 4294967295u, 41462u), u_input.b.wxx, vec3<u32>(39432u, global1.c, 66378u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -global1.a.xzx), var_0.x).a.ww;
    global1 = Struct_2(vec4<i32>(~(-1i << (min(57524u, 0u) % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-33877i, 35579i), ~(-arg_0.x)), 1i, global2.b.a.x), func_4(func_4(Struct_5(-vec4<i32>(u_input.d, global1.d, global2.a.x, var_1.x), global2.b, _wgslsmith_mult_vec2_i32(global2.b.a.yy, vec2<i32>(14133i, -24292i)), Struct_2(global1.a, Struct_1(var_1, -46477i, true), global1.c, global1.d)), func_4(Struct_5(global1.a, global2.b, vec2<i32>(-6218i, u_input.d), Struct_2(global1.a, Struct_1(vec2<i32>(28418i, -1i), arg_0.x, false), 38443u, 27103i)), func_4(Struct_5(global1.a, Struct_2(global1.a, Struct_1(vec2<i32>(-2147483647i, global1.a.x), -47780i, global0.x), u_input.a, global2.a.x), vec2<i32>(global2.d.a.x, 20662i), global2.b), Struct_1(vec2<i32>(-15225i, global2.b.b.b), var_1.x, global2.b.b.c), vec3<i32>(2147483647i, -2147483647i, 6505i), -360f).b.b, func_4(Struct_5(global1.a, global2.b, vec2<i32>(-17386i, arg_0.x), Struct_2(global1.a, global1.b, global2.d.c, 0i)), Struct_1(vec2<i32>(7303i, 48663i), global2.c.x, global2.d.b.c), arg_0, 1867f).a.wxz, 1963f).d.b, vec3<i32>(var_1.x, 682i, var_1.x), -1381f), global1.b, global2.d.a.wyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * var_0.x))).b.b, ~_wgslsmith_sub_u32(reverseBits(global2.b.c), 0u), func_4(func_4(Struct_5(global2.b.a, Struct_2(global2.a, global1.b, u_input.a, -1i), var_1, Struct_2(global1.a, Struct_1(u_input.c, 2147483647i, true), global1.c, -3069i)), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(global1.d, global2.b.b.a.x), var_1), var_1.x, !global0.x), select(global1.a.zzx, reverseBits(global1.a.yzy), true), _wgslsmith_f_op_f32(ceil(var_0.x))), func_4(Struct_5(global2.a, func_4(Struct_5(global1.a, Struct_2(global1.a, Struct_1(var_1, u_input.c.x, global1.b.c), global2.b.c, 1i), var_1, Struct_2(vec4<i32>(0i, -2147483647i, -11354i, -21098i), global2.d.b, 8586u, -1i)), global1.b, vec3<i32>(global2.d.b.b, u_input.c.x, -2147483647i), 196f).d, vec2<i32>(global1.a.x, u_input.c.x), global2.d), Struct_1(vec2<i32>(u_input.d, -2147483647i) >> (vec2<u32>(global2.b.c, 1743u) % vec2<u32>(32u)), var_1.x, select(global0.x, false, global2.b.b.c)), -vec3<i32>(arg_0.x, arg_0.x, arg_0.x), var_0.x).b.b, vec3<i32>(min(33618i, arg_0.x), i32(-1i) * -arg_0.x, select(2147483647i, abs(u_input.c.x), global0.x)), _wgslsmith_f_op_f32(889f * 1307f)).d.a.x);
    return func_4(func_4(func_4(Struct_5(vec4<i32>(arg_0.x, -33459i, global2.d.b.a.x, 2147483647i), global2.d, abs(arg_0.xy), global2.d), func_4(Struct_5(global2.d.a, global2.b, vec2<i32>(var_1.x, u_input.c.x), Struct_2(global1.a, global2.b.b, 30887u, global1.d)), global2.d.b, min(vec3<i32>(arg_0.x, -1i, -27216i), arg_0), _wgslsmith_f_op_f32(sign(204f))).b.b, func_4(func_4(Struct_5(global2.b.a, global2.d, vec2<i32>(345i, u_input.c.x), Struct_2(vec4<i32>(var_1.x, 2147483647i, 1122i, -2147483647i), Struct_1(global2.a.zw, global2.d.a.x, global2.d.b.c), global2.d.c, u_input.d)), Struct_1(vec2<i32>(-74668i, u_input.c.x), 1i, global2.b.b.c), global2.d.a.zzy, -1000f), Struct_1(global2.c, 2147483647i, global2.b.b.c), vec3<i32>(global2.a.x, u_input.c.x, global2.a.x), var_0.x).d.a.wzz, _wgslsmith_f_op_f32(f32(-1f) * -916f)), global2.b.b, _wgslsmith_add_vec3_i32(~arg_0 & (vec3<i32>(var_1.x, -1i, 1i) << (vec3<u32>(global1.c, global1.c, 0u) % vec3<u32>(32u))), ~select(vec3<i32>(arg_0.x, global2.b.d, global2.d.d), arg_0, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_2(vec3<bool>(false, global1.b.c, global1.b.c), 4294967295u, Struct_3(vec3<f32>(var_0.x, var_0.x, 682f), Struct_1(var_1, var_1.x, global1.b.c), global2.d.c, global1.c, vec3<f32>(var_0.x, var_0.x, -1150f))))))), global2.d.b, arg_0, 226f).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~global1.a.xxy);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1410f, 1508f), 1f), -1612f, 1406f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(982f)), -466f, _wgslsmith_div_f32(400f, -1926f)), vec3<f32>(_wgslsmith_f_op_f32(floor(-558f)), _wgslsmith_f_op_f32(-1672f - 441f), _wgslsmith_f_op_f32(-211f - -510f)), ~global1.c != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 82149u), u_input.b.xx)))))));
    var var_2 = func_4(func_4(func_4(Struct_5(vec4<i32>(var_0.b.a.x, -28930i, var_0.d, global2.c.x), func_1(vec3<i32>(u_input.d, global2.b.d, 1i)), -var_0.b.a, func_1(vec3<i32>(-2147483647i, global2.a.x, global2.c.x))), func_4(func_4(Struct_5(vec4<i32>(global1.a.x, -2147483647i, 2147483647i, global2.c.x), global2.d, vec2<i32>(global2.b.b.a.x, var_0.d), global2.d), global1.b, vec3<i32>(-1460i, -53684i, 22438i), -464f), func_4(Struct_5(vec4<i32>(-78495i, 11723i, 0i, 17694i), Struct_2(vec4<i32>(global1.d, global2.a.x, global2.b.d, var_0.b.a.x), Struct_1(vec2<i32>(33512i, 1i), -46969i, global1.b.c), 1u, -1i), vec2<i32>(5449i, 78886i), Struct_2(global2.a, var_0.b, 1u, -1i)), global2.d.b, vec3<i32>(global2.b.b.a.x, 0i, u_input.c.x), -252f).d.b, -global2.b.a.zyw, _wgslsmith_f_op_f32(var_1.x + 351f)).b.b, global2.d.a.yzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1658f))), Struct_1(func_1(global1.a.zyz).a.xx, 2147483647i, func_4(func_4(Struct_5(vec4<i32>(-35722i, -3540i, global2.d.d, var_0.a.x), Struct_2(var_0.a, var_0.b, 20442u, 9691i), vec2<i32>(-1i, -1509i), Struct_2(vec4<i32>(7337i, -28305i, var_0.b.b, u_input.d), Struct_1(vec2<i32>(global1.a.x, 2147483647i), 3736i, global2.b.b.c), global2.b.c, 15749i)), Struct_1(vec2<i32>(var_0.d, -34321i), 11924i, global2.b.b.c), vec3<i32>(var_0.a.x, -1i, u_input.c.x), 435f), func_4(Struct_5(var_0.a, var_0, global2.d.a.xx, Struct_2(global1.a, Struct_1(var_0.a.yx, -5630i, global2.b.b.c), 31304u, -1858i)), global1.b, global1.a.www, var_1.x).d.b, -vec3<i32>(u_input.c.x, global2.a.x, var_0.a.x), 873f).b.b.c), firstLeadingBit(-global1.a.zyx), var_1.x), Struct_1(vec2<i32>(1i, max(i32(-1i) * -38542i, ~(-28437i))), 37065i, (1u < _wgslsmith_sub_u32(var_0.c, 5121u)) == global0.x), abs(_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(10651i, var_0.d, global1.d)), global1.a.wwz)), var_1.x);
    let var_3 = Struct_4(_wgslsmith_mult_u32(25795u, ~(u_input.a << (106546u % 32u))), Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1450f, var_1.x, var_1.x) - vec3<f32>(-1605f, -1290f, -1256f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, 1167f, 866f))))), global1.b, u_input.a, _wgslsmith_sub_u32(14117u ^ _wgslsmith_add_u32(4294967295u, global1.c), ~17488u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -689f, var_1.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 2319f, var_1.x)))))));
    let var_4 = _wgslsmith_f_op_f32(-356f - var_3.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~var_2.d.a.x)), ~(vec2<u32>(select(1u, var_0.c, var_2.d.b.c), _wgslsmith_add_u32(0u, var_2.d.c)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global2.d.c), abs(u_input.b.wz)) % vec2<u32>(32u))), vec4<f32>(-1685f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_1.x), -1297f), vec3<f32>(1214f, var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.a.x + var_1.x) - _wgslsmith_f_op_f32(select(var_3.b.e.x, var_4, var_2.b.b.c)))))));
}

