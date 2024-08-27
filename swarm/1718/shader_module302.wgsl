struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32>;

var<private> global2: vec4<i32> = vec4<i32>(3217i, 8550i, -1i, 1i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, ~(8136i ^ global2.x)), global1.yzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.d.c, _wgslsmith_f_op_f32(f32(-1f) * -1541f))), global0.d.c < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b)) * 265f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(select(2147483647i, -26312i, false), ~global1.x), arg_0.x, _wgslsmith_add_i32(-global0.c, arg_0.x), -1i), arg_0, reverseBits(~arg_0)));
    let var_1 = max(vec4<u32>(25321u, 67428u, 1u, u_input.b.x), ~vec4<u32>(46503u, select(1u, select(67339u, 4294967295u, true), var_0.c), ~0u & _wgslsmith_mult_u32(46543u, u_input.b.x), ~0u >> ((1u << (1u % 32u)) % 32u)));
    let var_2 = ~2147483647i;
    global2 = -var_0.d;
    var var_3 = _wgslsmith_div_vec2_i32(global1.yw, vec2<i32>(-arg_0.x, 2147483647i));
    return global0.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = ~(-vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c, -27374i, 14234i), arg_0.d.zyz), arg_0.a, -2147483647i, -18395i));
    global1 = var_0;
    global0 = Struct_3(select(global0.a, select(global0.a, !func_3(var_0), true), func_3(arg_0.d)), 1053f, abs(1i), global0.d);
    global0 = Struct_3(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f * -395f)) > global0.d.c, true), _wgslsmith_f_op_f32(ceil(892f)), _wgslsmith_dot_vec3_i32(vec3<i32>(27570i, 32693i, 2147483647i) & global2.zyz, vec3<i32>(i32(-1i) * -2147483647i, global1.x, ~global2.x)) >> (abs(5539u) % 32u), Struct_2(vec3<u32>(1u, u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(global1.yww, arg_1), arg_0.b.x, u_input.b.x));
    let var_1 = -340f;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    global2 = (~arg_1.d << (vec4<u32>(_wgslsmith_clamp_u32(~62400u, u_input.b.x, u_input.b.x), firstLeadingBit(~59197u), ~arg_0.a.x, ~u_input.a) % vec4<u32>(32u))) & (vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -33734i, global1.x ^ arg_0.b, -2147483647i, abs(arg_0.b)));
    global2 = vec4<i32>(~(-select(global2.x, global1.x, true)), -30844i, -2147483647i, func_2(func_2(func_2(Struct_1(-2147483647i, vec3<f32>(arg_0.c, 1391f, 2213f), global0.a.x, arg_1.d), reverseBits(global1.xzw)), ~global1.zyy), func_2(arg_1, vec3<i32>(countOneBits(arg_1.d.x), 0i, _wgslsmith_mult_i32(global0.d.b, -53560i))).d.zzw).a);
    var var_0 = Struct_2(~_wgslsmith_mod_vec3_u32(global0.d.a, vec3<u32>(63152u, 103235u, 58688u) << (vec3<u32>(arg_0.d, global0.d.d, 61153u) % vec3<u32>(32u))), global2.x, _wgslsmith_f_op_f32(min(arg_0.c, arg_1.b.x)), _wgslsmith_sub_u32(4294967295u, 26785u));
    return Struct_1(arg_1.d.x, vec3<f32>(_wgslsmith_div_f32(arg_0.c, 707f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), 1399f), !arg_3.x, max(select(~vec4<i32>(global1.x, arg_1.d.x, var_0.b, arg_0.b) << (~vec4<u32>(var_0.a.x, u_input.a, arg_0.a.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(abs(arg_1.d), vec4<i32>(-18157i, var_0.b, global0.c, -14079i)), global0.a.x), ~(-reverseBits(arg_1.d))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = u_input.b;
    let var_1 = func_4(global0.d, func_2(Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.c, global0.d.b), global2.x), vec3<f32>(global0.b, -122f, _wgslsmith_f_op_f32(sign(826f))), func_2(arg_0, global2.wxy).c, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), -88285i, 2147483647i, arg_1.a)), arg_0.d.wwy), abs(37920u), !(!(!global0.a)));
    return countOneBits(~var_1.d);
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_div_vec4_i32(abs(-vec4<i32>(-1i, 2147483647i, 1i, 1i) & (vec4<i32>(-1i) * -vec4<i32>(global1.x, -23656i, 1i, global2.x))), _wgslsmith_div_vec4_i32(func_5(func_4(Struct_2(u_input.b, global2.x, global0.b, global0.d.d), func_2(Struct_1(11755i, vec3<f32>(346f, global0.d.c, -1392f), false, vec4<i32>(global0.c, -67951i, 12253i, global2.x)), global1.yyy), u_input.b.x, select(global0.a, global0.a, global0.a.x)), func_4(Struct_2(vec3<u32>(0u, u_input.a, u_input.a), 1i, global0.d.c, 42891u), func_2(Struct_1(global2.x, vec3<f32>(global0.b, global0.b, global0.d.c), false, vec4<i32>(-20889i, global0.c, 9484i, -2147483647i)), vec3<i32>(global0.c, 1i, 1888i)), u_input.b.x, !global0.a)), vec4<i32>(-46208i, ~(-18801i), 46318i, -1i) | firstTrailingBit(-vec4<i32>(global2.x, global2.x, global2.x, global0.c))));
    var var_0 = Struct_3(select(global0.a, select(!global0.a, vec2<bool>(global0.a.x || true, any(vec4<bool>(false, global0.a.x, false, false))), select(global0.a, func_3(vec4<i32>(-7650i, global1.x, -2147483647i, global1.x)), !global0.a.x)), global0.a.x), global0.d.c, i32(-1i) * -1329i, global0.d);
    global0 = Struct_3(select(vec2<bool>(true, true | func_2(Struct_1(86066i, vec3<f32>(global0.d.c, 1851f, global0.d.c), var_0.a.x, vec4<i32>(global2.x, global0.d.b, global1.x, 23881i)), vec3<i32>(global2.x, -1i, 2147483647i)).c), vec2<bool>(!func_3(vec4<i32>(52301i, -37116i, global2.x, global0.d.b)).x, true || global0.a.x), !global0.a.x), global0.d.c, firstTrailingBit(-7888i), Struct_2(vec3<u32>(select(_wgslsmith_add_u32(0u, u_input.b.x), 56155u << (u_input.a % 32u), var_0.a.x), 1u, select(reverseBits(1u), ~50722u, !var_0.a.x)), global0.c, 1701f, global0.d.d >> (1u % 32u)));
    global0 = Struct_3(!select(!(!vec2<bool>(global0.a.x, false)), vec2<bool>(!var_0.a.x, global0.a.x), func_2(Struct_1(global2.x, vec3<f32>(340f, global0.b, 548f), global0.a.x, vec4<i32>(1i, var_0.c, global2.x, global0.c)), global1.wzx).c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-113f + var_0.b))), ~1i, var_0.d);
    global2 = firstLeadingBit(vec4<i32>(global1.x, reverseBits(global1.x) | global2.x, ~1i, -1i));
    return Struct_2(vec3<u32>(8959u | abs(min(5120u, var_0.d.d)), ~(~countOneBits(0u)), 1u), 40758i, -1624f, ~var_0.d.a.x);
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_3(vec2<bool>(global0.a.x, global0.a.x), -1283f, func_4(func_1(), func_2(Struct_1(-22456i & global0.c, vec3<f32>(global0.b, arg_0.c, arg_0.c), global0.a.x, vec4<i32>(global1.x, -1i, -4133i, global2.x)), global1.zyz), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 58747u), _wgslsmith_div_u32(~u_input.b.x, 4294967295u)), select(global0.a, global0.a, global0.a.x)).d.x, func_1());
    global2 = vec4<i32>(countOneBits(-2147483647i), ~max(func_1().b, global2.x), ~(-2147483647i), arg_0.b);
    let var_1 = Struct_3(vec2<bool>(var_0.a.x, true), 821f, _wgslsmith_mod_i32(2147483647i, arg_0.b), func_1());
    global1 = vec4<i32>(var_1.c, global2.x, i32(-1i) * -1i, global2.x);
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_f32(725f + -1070f), func_4(arg_0, Struct_1(arg_0.b | arg_0.b, vec3<f32>(global0.d.c, -1000f, -545f), var_0.a.x || true, abs(vec4<i32>(var_0.c, -1i, global1.x, 9086i))), ~8088u, select(select(vec2<bool>(var_1.a.x, false), vec2<bool>(true, var_0.a.x), true), var_0.a, true)).a << (firstLeadingBit(min(_wgslsmith_mod_u32(64624u, var_1.d.d), _wgslsmith_add_u32(var_0.d.a.x, u_input.a))) % 32u), Struct_2(~var_1.d.a, global2.x, -1298f, ~(~var_0.d.d)));
    return reverseBits(arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    global2 = (-(vec4<i32>(1i, var_0.b, global2.x, global0.c) | ~vec4<i32>(-2147483647i, 0i, global2.x, -2958i)) & vec4<i32>(0i, abs(global1.x), _wgslsmith_mod_i32(global0.d.b, var_0.b), i32(-1i) * -1i)) ^ vec4<i32>(~func_6(func_1()), abs(global1.x) | global2.x, abs(-(~(-2147483647i))), global1.x);
    global2 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b & global0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.x, 0i), global1.wwy), firstTrailingBit(global2.x), -1i), vec4<i32>(var_0.b, -var_0.b, global0.d.b >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(global2.zyy, global1.yzz))));
    var var_1 = !any(!vec4<bool>(select(true, global0.a.x, global0.a.x), true, func_4(Struct_2(vec3<u32>(4294967295u, 36413u, u_input.b.x), global2.x, var_0.c, global0.d.a.x), Struct_1(39569i, vec3<f32>(var_0.c, global0.b, global0.b), global0.a.x, vec4<i32>(global0.d.b, global2.x, global0.c, global2.x)), var_0.d, global0.a).c, true));
    var var_2 = vec4<u32>(u_input.b.x, 91462u, global0.d.d, var_0.a.x << (~func_1().a.x % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c) - vec4<f32>(global0.b, -1762f, var_0.c, -642f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, 255f, -885f, -951f))))), vec4<f32>(-925f, var_0.c, -411f, global0.d.c))));
    var_1 = global0.a.x;
    var var_4 = Struct_3(!select(func_3(func_4(Struct_2(vec3<u32>(53064u, var_2.x, 32012u), var_0.b, -1087f, 0u), Struct_1(22873i, vec3<f32>(var_0.c, global0.d.c, 149f), true, vec4<i32>(-12766i, var_0.b, 2561i, var_0.b)), 0u, vec2<bool>(true, global0.a.x)).d), vec2<bool>(func_3(vec4<i32>(47523i, 1255i, -25118i, var_0.b)).x, true), global0.a), _wgslsmith_f_op_f32(round(var_0.c)), i32(-1i) * -2147483647i, Struct_2(u_input.b, -(~func_4(global0.d, Struct_1(1i, vec3<f32>(-2313f, 964f, global0.d.c), true, vec4<i32>(var_0.b, -49164i, global2.x, 27344i)), 4294967295u, global0.a).a), _wgslsmith_f_op_f32(-801f + -402f), u_input.a));
    var var_5 = Struct_3(vec2<bool>(all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(var_4.a.x, false, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, true, var_4.a.x)), vec4<bool>(false, true, false, false), select(vec4<bool>(false, var_4.a.x, global0.a.x, false), vec4<bool>(false, var_4.a.x, false, false), global0.a.x))), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-634f)))), _wgslsmith_div_f32(var_0.c, global0.b)))), 16291i, Struct_2(var_0.a, 18822i, _wgslsmith_f_op_f32(trunc(1800f)), ~_wgslsmith_mod_u32(53860u, abs(var_4.d.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.ww, ~(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-54790i, global2.x, -2147483647i, global2.x), vec4<i32>(var_4.c, 2147483647i, var_4.d.b, var_5.c)), max(vec4<i32>(global2.x, var_0.b, global2.x, global1.x), vec4<i32>(1i, global0.c, 0i, var_4.d.b))) | vec4<i32>(-global0.d.b, _wgslsmith_dot_vec3_i32(global2.yww, global1.zyw), var_5.c, global0.c)), ~(~vec4<u32>(reverseBits(1u), max(u_input.a, var_2.x), ~var_4.d.a.x, _wgslsmith_clamp_u32(global0.d.a.x, var_0.d, 89826u))));
}

