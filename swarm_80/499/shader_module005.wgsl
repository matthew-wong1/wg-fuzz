struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<f32>, 8>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(-661f, vec3<u32>(84140u, 58147u, 6252u)), 0u, -190f, Struct_1(-398f, vec3<u32>(4294967295u, 26233u, 0u)), vec3<f32>(-1370f, -1147f, -1816f)), Struct_3(Struct_1(-195f, vec3<u32>(17618u, 0u, 55586u)), 16207u, 822f, Struct_1(-489f, vec3<u32>(68082u, 397u, 58028u)), vec3<f32>(-694f, 691f, 337f)), Struct_3(Struct_1(254f, vec3<u32>(22775u, 4294967295u, 38142u)), 100792u, -374f, Struct_1(542f, vec3<u32>(1u, 53887u, 79134u)), vec3<f32>(874f, -547f, -307f)), Struct_3(Struct_1(529f, vec3<u32>(37079u, 108765u, 0u)), 0u, 645f, Struct_1(124f, vec3<u32>(1u, 1832u, 4294967295u)), vec3<f32>(-497f, 1764f, -150f)), Struct_3(Struct_1(-791f, vec3<u32>(37858u, 1u, 17636u)), 48161u, 224f, Struct_1(1365f, vec3<u32>(4294967295u, 29646u, 8078u)), vec3<f32>(1404f, 678f, 411f)), Struct_3(Struct_1(-804f, vec3<u32>(49025u, 46240u, 32684u)), 42454u, -1986f, Struct_1(-279f, vec3<u32>(0u, 13531u, 1u)), vec3<f32>(559f, 159f, -364f)), Struct_3(Struct_1(-554f, vec3<u32>(0u, 25343u, 4294967295u)), 1u, 1000f, Struct_1(-786f, vec3<u32>(45947u, 1u, 1u)), vec3<f32>(789f, -176f, 256f)), Struct_3(Struct_1(414f, vec3<u32>(4294967295u, 17418u, 0u)), 1u, -1668f, Struct_1(-1687f, vec3<u32>(80324u, 4294967295u, 1u)), vec3<f32>(-435f, 930f, -254f)), Struct_3(Struct_1(-841f, vec3<u32>(11690u, 60567u, 4294967295u)), 4294967295u, -864f, Struct_1(-1000f, vec3<u32>(4294967295u, 6147u, 44394u)), vec3<f32>(-754f, 709f, 399f)), Struct_3(Struct_1(-845f, vec3<u32>(5255u, 4294967295u, 1u)), 53130u, 781f, Struct_1(974f, vec3<u32>(0u, 29477u, 98775u)), vec3<f32>(-116f, -500f, -1511f)), Struct_3(Struct_1(114f, vec3<u32>(0u, 64866u, 1u)), 4294967295u, 1787f, Struct_1(1314f, vec3<u32>(4294967295u, 9826u, 106135u)), vec3<f32>(-153f, -1395f, -394f)), Struct_3(Struct_1(-754f, vec3<u32>(55341u, 0u, 8546u)), 0u, -1000f, Struct_1(1283f, vec3<u32>(1u, 0u, 71092u)), vec3<f32>(1269f, 359f, -377f)), Struct_3(Struct_1(529f, vec3<u32>(4294967295u, 1u, 0u)), 1u, 723f, Struct_1(1052f, vec3<u32>(19364u, 31243u, 26784u)), vec3<f32>(552f, -447f, -1541f)), Struct_3(Struct_1(-700f, vec3<u32>(4294967295u, 1u, 1u)), 23218u, 269f, Struct_1(284f, vec3<u32>(0u, 4294967295u, 18186u)), vec3<f32>(1397f, -735f, -536f)), Struct_3(Struct_1(1421f, vec3<u32>(1772u, 4294967295u, 34754u)), 28108u, -327f, Struct_1(1296f, vec3<u32>(1u, 1u, 4294967295u)), vec3<f32>(-598f, 887f, 1265f)), Struct_3(Struct_1(-913f, vec3<u32>(19818u, 4294967295u, 1u)), 2639u, 1000f, Struct_1(1380f, vec3<u32>(2712u, 4183u, 4294967295u)), vec3<f32>(-482f, 100f, -601f)), Struct_3(Struct_1(302f, vec3<u32>(1u, 25200u, 29972u)), 18240u, -1053f, Struct_1(1003f, vec3<u32>(6084u, 78450u, 973u)), vec3<f32>(455f, 514f, -188f)), Struct_3(Struct_1(1537f, vec3<u32>(902u, 4294967295u, 4294967295u)), 1u, -404f, Struct_1(-1199f, vec3<u32>(82059u, 32168u, 89874u)), vec3<f32>(-627f, 962f, 2387f)), Struct_3(Struct_1(-1000f, vec3<u32>(18389u, 25275u, 1u)), 0u, -410f, Struct_1(-389f, vec3<u32>(3657u, 23180u, 1u)), vec3<f32>(1913f, 2147f, -337f)), Struct_3(Struct_1(-1876f, vec3<u32>(0u, 40473u, 13388u)), 0u, 225f, Struct_1(-141f, vec3<u32>(28566u, 47152u, 0u)), vec3<f32>(641f, 1000f, 714f)), Struct_3(Struct_1(198f, vec3<u32>(1u, 87413u, 1u)), 8312u, -1011f, Struct_1(392f, vec3<u32>(52533u, 61969u, 0u)), vec3<f32>(-1255f, -189f, 1503f)), Struct_3(Struct_1(-1064f, vec3<u32>(68287u, 1u, 42700u)), 1u, 1490f, Struct_1(121f, vec3<u32>(1u, 21131u, 61187u)), vec3<f32>(-248f, -500f, -1071f)), Struct_3(Struct_1(-519f, vec3<u32>(41762u, 41447u, 0u)), 1u, -1695f, Struct_1(174f, vec3<u32>(12170u, 1u, 0u)), vec3<f32>(-1000f, -136f, 1589f)), Struct_3(Struct_1(153f, vec3<u32>(4294967295u, 1u, 1u)), 6764u, 1043f, Struct_1(-1000f, vec3<u32>(42550u, 11668u, 30062u)), vec3<f32>(-723f, 1294f, 1000f)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    var var_0 = vec2<i32>(arg_2, arg_2);
    global1 = array<vec2<f32>, 8>();
    global0 = _wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -721f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - -293f))), arg_1.x) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, arg_1) * vec4<f32>(global0.x, arg_1.x, 243f, arg_1.x))))), _wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_2, arg_2), vec3<i32>(5239i, arg_2, 1i)), vec3<i32>(0i, -1i, -993i), arg_0.x), -(~vec3<i32>(-2147483647i, -2147483647i, 7399i))) <= -48955i));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<vec2<f32>, 8>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!vec4<bool>(true, false, false, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 639f, global0.x) - vec4<f32>(global0.x, global0.x, 629f, global0.x)), _wgslsmith_mult_i32(arg_1.x, 34073i), select(vec2<bool>(false, false), vec2<bool>(arg_0, true), arg_0))) - global0.x)), _wgslsmith_f_op_f32(sign(global0.x)));
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f + 925f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - -1606f), _wgslsmith_div_f32(global0.x, 344f)), _wgslsmith_f_op_f32(-var_0), -1251f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, global0.x, var_0)))) + vec3<f32>(-950f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1092f)) + _wgslsmith_div_f32(-821f, global0.x)), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, true), vec4<bool>(arg_0, false, arg_0, arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(-683f, 689f, 228f, -484f), vec4<f32>(var_0, -787f, global0.x, var_0)), 1i, vec2<bool>(false, arg_0))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1084f, global0.x, true))))))), firstTrailingBit(vec3<u32>(0u & max(u_input.a, 82308u), firstTrailingBit(u_input.a), ~(u_input.a >> (u_input.a % 32u)))));
    global1 = array<vec2<f32>, 8>();
    return Struct_1(global0.x, ~vec3<u32>(var_2.b.x, min(~4294967295u, firstTrailingBit(u_input.a)), ~(var_2.b.x << (u_input.a % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x - -851f), -140f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a)), _wgslsmith_f_op_f32(func_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), any(vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1239f))), _wgslsmith_div_f32(1206f, _wgslsmith_f_op_f32(791f + 335f)), _wgslsmith_div_f32(-1441f, 382f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(511f, arg_1.e.x))), -2147483647i, vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true))));
    var var_0 = false;
    var var_1 = Struct_3(arg_1.d, 3300u, _wgslsmith_f_op_f32(-arg_1.d.a), Struct_1(func_2(true, -vec3<i32>(50433i, 3075i, 0i)).a, reverseBits(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_1.a.b.x, 1u, 0u)), vec3<u32>(u_input.a, 0u, arg_0.d.b.x) & arg_0.d.b))), vec3<f32>(_wgslsmith_f_op_f32(func_2(select(true, true, false), _wgslsmith_clamp_vec3_i32(vec3<i32>(-34748i, 2362i, 3998i), vec3<i32>(-1i, -48488i, 53260i), vec3<i32>(-30361i, -44207i, -65669i))).a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_1.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-236f, -376f) + _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, false), vec4<f32>(1424f, -1401f, arg_0.c, -237f), 0i, vec2<bool>(false, true)))))));
    let var_2 = Struct_2(select(vec2<bool>(!any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, false, false, false)))), firstLeadingBit(-1i));
    var var_3 = var_2;
    return Struct_2(!select(var_3.a, var_2.a, true), max(var_3.b, 1i >> ((select(3192u, 4294967295u, true) >> (~arg_0.a.b.x % 32u)) % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = select(all(!select(arg_1, arg_1, arg_1.x)), true, any(vec3<bool>(true, true, !arg_0.a.x))) != arg_0.a.x;
    var var_1 = arg_0.b;
    global1 = array<vec2<f32>, 8>();
    global2 = array<Struct_3, 24>();
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-853f, _wgslsmith_f_op_f32(round(1000f)), -855f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 547f, 1110f, -527f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, 688f, 591f)))), vec4<bool>(var_0, global0.x < global0.x, all(vec2<bool>(var_0, true)), all(vec4<bool>(true, var_0, false, true)))))), global0.yzy);
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.x, var_2.b.x)), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_div_f32(var_2.a.x, 630f))), ~vec3<u32>(~reverseBits(14497u), ~min(13653u, 4294967295u), 0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_4(func_5(func_4(Struct_3(func_2(true, vec3<i32>(-2147483647i, -9402i, 22688i)), u_input.a >> (arg_0.x % 32u), _wgslsmith_f_op_f32(arg_2 * -1525f), Struct_1(arg_2, vec3<u32>(arg_0.x, arg_0.x, 15531u)), global0.ywz), global2[_wgslsmith_index_u32(25611u, 24u)]), vec3<bool>(true, func_4(global2[_wgslsmith_index_u32(arg_0.x >> (13793u % 32u), 24u)], Struct_3(Struct_1(arg_2, vec3<u32>(1u, 21808u, u_input.a)), arg_0.x, arg_1.x, Struct_1(arg_1.x, vec3<u32>(arg_0.x, 1u, u_input.a)), vec3<f32>(343f, -270f, -739f))).a.x, all(func_4(Struct_3(Struct_1(global0.x, vec3<u32>(4294967295u, 79334u, arg_0.x)), u_input.a, 1000f, Struct_1(arg_2, vec3<u32>(u_input.a, u_input.a, 22124u)), arg_1.zwz), global2[_wgslsmith_index_u32(arg_0.x, 24u)]).a)), firstLeadingBit(_wgslsmith_add_i32(1i, countOneBits(36348i)))));
    let var_1 = var_0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x + -937f)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(44069u, 0u, 4294967295u)), var_0.a.b, var_1.b), abs(vec3<u32>(~72709u, arg_0.x, min(32723u, 4294967295u)))));
    global1 = array<vec2<f32>, 8>();
    global0 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(func_4(global2[_wgslsmith_index_u32(45830u, 24u)], Struct_3(Struct_1(arg_1.x, vec3<u32>(42274u, arg_0.x, var_2.b.x)), var_2.b.x, var_1.a, Struct_1(var_0.a.a, vec3<u32>(var_1.b.x, 69439u, 18747u)), vec3<f32>(arg_2, arg_2, 479f))).a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -22073i, 2147483647i), vec3<i32>(23096i, 3564i, 1i))).a, var_1.a)) - arg_1.x), abs(vec3<u32>(_wgslsmith_add_u32(arg_0.x, 1u) ^ abs(arg_0.x), var_2.b.x, ~56902u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(reverseBits(min(vec2<u32>(0u, 0u), ~vec2<u32>(u_input.a, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, global0.x, global0.x, -388f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 315f, 281f, -192f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, global0.x, global0.x, 823f))))), -557f), _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2(true, _wgslsmith_add_vec3_i32(vec3<i32>(-18720i, 12092i, -2504i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(40119u, 12395u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u)), vec3<i32>(1i, 25143i, reverseBits(3692i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(971f, -676f))), _wgslsmith_f_op_f32(-2080f - -1839f)));
    let var_1 = vec2<i32>(~5056i, -1i & _wgslsmith_sub_i32(-func_4(Struct_3(var_0.d, 19618u, -552f, var_0.d, vec3<f32>(global0.x, global0.x, 1000f)), global2[_wgslsmith_index_u32(10166u, 24u)]).b, ~max(0i, -1i)));
    var var_2 = func_5(Struct_2(vec2<bool>(true, !any(vec3<bool>(false, true, false))), ~var_1.x), vec3<bool>(true, all(vec3<bool>(true, true, select(true, true, false))), false), _wgslsmith_dot_vec2_i32(-(var_1 & vec2<i32>(var_1.x, -1i)), min(abs(vec2<i32>(1i, -55029i)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -2839i) & var_1, _wgslsmith_div_vec2_i32(vec2<i32>(7645i, 29735i), vec2<i32>(-4578i, var_1.x)))))).b;
    let var_3 = func_4(global2[_wgslsmith_index_u32(u_input.a, 24u)], var_0).a;
    let var_4 = Struct_4(func_5(func_4(Struct_3(var_0.a, 34329u, global0.x, Struct_1(-1561f, vec3<u32>(1u, 23081u, 75854u)), _wgslsmith_f_op_vec3_f32(-var_0.e)), global2[_wgslsmith_index_u32(56488u, 24u)]), select(vec3<bool>(select(var_3.x, var_3.x, var_3.x), true, false), select(!vec3<bool>(false, var_3.x, false), select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, true, true)), false), select(vec3<bool>(var_3.x, var_3.x, true), !vec3<bool>(var_3.x, true, var_3.x), false)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(29519i, -2147483647i, -839i), vec3<i32>(-3536i, var_1.x, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -1i, var_1.x), vec3<i32>(-22460i, var_1.x, 0i))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, var_1.x, 1i), i32(-1i) * -47808i))));
    global1 = array<vec2<f32>, 8>();
    let var_5 = Struct_3(func_5(Struct_2(vec2<bool>(var_3.x, -31811i < var_1.x), _wgslsmith_mod_i32(1i, ~0i)), select(!vec3<bool>(false, var_3.x, var_3.x), select(!vec3<bool>(var_3.x, true, true), !vec3<bool>(var_3.x, var_3.x, var_3.x), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, true, var_3.x), vec3<bool>(false, true, true))), false), var_1.x), func_2(any(select(select(var_3, var_3, var_3), var_3, var_3)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1, var_1), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), var_1)), -vec3<i32>(0i, var_1.x, 70195i) >> (var_4.a.b % vec3<u32>(32u)))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1161f)))), func_2(all(select(var_3, select(vec2<bool>(false, false), vec2<bool>(var_3.x, true), false), var_3.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, 33341i, var_1.x) | select(vec3<i32>(-19644i, 0i, -1i), vec3<i32>(var_1.x, -18302i, 0i), var_3.x), ~vec3<i32>(1360i, var_1.x, var_1.x) | ~vec3<i32>(12210i, -42843i, var_1.x))), var_0.e);
    global2 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yx, ~0i, 25527u, -var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d.a)) + _wgslsmith_f_op_f32(trunc(var_4.a.a))), -296f));
}

