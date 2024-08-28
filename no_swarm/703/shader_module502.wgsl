struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<f32>(1000f, -724f, 1000f), 2147483647i, vec3<u32>(16072u, 41841u, 4294967295u)), Struct_1(vec3<f32>(759f, 625f, -1711f), 1i, vec3<u32>(110576u, 48716u, 4948u)), Struct_1(vec3<f32>(1000f, 1369f, 691f), -35451i, vec3<u32>(1u, 0u, 15883u)), Struct_1(vec3<f32>(-1385f, -460f, -1411f), i32(-2147483648), vec3<u32>(10799u, 0u, 34259u)), Struct_1(vec3<f32>(-1468f, -1084f, 736f), -1i, vec3<u32>(0u, 18564u, 51103u)), Struct_1(vec3<f32>(1239f, -252f, 1273f), 0i, vec3<u32>(4294967295u, 4294967295u, 97772u)), Struct_1(vec3<f32>(1615f, 1367f, -974f), -1i, vec3<u32>(0u, 27835u, 52442u)), Struct_1(vec3<f32>(-1356f, -1298f, -653f), 1i, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<f32>(135f, -970f, 353f), i32(-2147483648), vec3<u32>(29393u, 70350u, 4294967295u)), Struct_1(vec3<f32>(-224f, 374f, 267f), i32(-2147483648), vec3<u32>(29101u, 1u, 26013u)), Struct_1(vec3<f32>(-1304f, 351f, 842f), -14831i, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<f32>(-141f, 133f, -294f), i32(-2147483648), vec3<u32>(4294967295u, 0u, 13999u)), Struct_1(vec3<f32>(1495f, -571f, 206f), 8555i, vec3<u32>(4294967295u, 1u, 22018u)), Struct_1(vec3<f32>(-1660f, -903f, 1130f), i32(-2147483648), vec3<u32>(4294967295u, 40298u, 1u)), Struct_1(vec3<f32>(197f, 150f, 1707f), i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(370f, -2013f, -2114f), 1i, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<f32>(-179f, -617f, 1127f), -1i, vec3<u32>(1u, 5947u, 39482u)), Struct_1(vec3<f32>(-2745f, 107f, -356f), -1i, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<f32>(822f, -1258f, -678f), i32(-2147483648), vec3<u32>(1u, 62234u, 0u)), Struct_1(vec3<f32>(-420f, 1453f, 890f), -59688i, vec3<u32>(24361u, 1u, 18797u)), Struct_1(vec3<f32>(-2869f, -1215f, -552f), 31677i, vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<f32>(-441f, -1334f, -706f), -36438i, vec3<u32>(42486u, 42894u, 4294967295u)), Struct_1(vec3<f32>(1441f, -438f, -3149f), 55076i, vec3<u32>(77570u, 0u, 647u)), Struct_1(vec3<f32>(-153f, 151f, 1000f), -6218i, vec3<u32>(8280u, 61388u, 4294967295u)), Struct_1(vec3<f32>(-132f, 228f, 1000f), 2147483647i, vec3<u32>(0u, 1u, 10410u)), Struct_1(vec3<f32>(-245f, -569f, 1203f), 0i, vec3<u32>(0u, 28203u, 20185u)), Struct_1(vec3<f32>(-457f, 1324f, 146f), -23642i, vec3<u32>(4294967295u, 4294967295u, 0u)));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(89724u, 4294967295u, 4294967295u), vec2<i32>(-1841i, 1i));

var<private> global2: array<i32, 23>;

var<private> global3: array<Struct_2, 25>;

var<private> global4: array<u32, 7> = array<u32, 7>(50703u, 93196u, 2863u, 33913u, 43787u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    global1 = Struct_4(u_input.b.yzx, global1.b);
    global1 = Struct_4(_wgslsmith_add_vec3_u32(abs(vec3<u32>(countOneBits(u_input.b.x), 19168u, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(96830u, 7u)], 1u))), reverseBits(vec3<u32>(_wgslsmith_add_u32(35212u, 5594u), 1u, ~u_input.c.x))), abs(global1.b << (u_input.c % vec2<u32>(32u))));
    var var_0 = true;
    let var_1 = ~0u;
    var var_2 = -min(-(-vec2<i32>(-28843i, 8146i) << (_wgslsmith_mod_vec2_u32(global1.a.yy, vec2<u32>(90338u, u_input.b.x)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(-firstTrailingBit(global1.b), -_wgslsmith_mult_vec2_i32(vec2<i32>(41051i, 1i), vec2<i32>(u_input.a, 13752i))));
    return 421f;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))))));
    global4 = array<u32, 7>();
    global4 = array<u32, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.ywz)))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(func_3(-u_input.a, _wgslsmith_f_op_f32(236f - arg_2.x))), -1534f), _wgslsmith_f_op_vec3_f32(-arg_2.ywx), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), any(vec3<bool>(true, false, false)) & select(true, true, false)))));
    var var_2 = global1.b.x;
    return 0u;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> Struct_4 {
    let var_0 = vec3<u32>(~min(func_2(abs(vec3<u32>(60402u, 4294967295u, 31068u)), ~0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, arg_3, 1690f, arg_3)), reverseBits(global1.b)), u_input.c.x), 19634u, ~(~u_input.b.x));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1194f, 289f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(911f))))), arg_3));
    var var_3 = select(arg_1.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(72327u, global4[_wgslsmith_index_u32(22234u, 7u)]) << (u_input.b.wx % vec2<u32>(32u))), global1.a.yx) >= arg_0, any(select(select(vec4<bool>(arg_2, true, false, false), select(vec4<bool>(true, arg_1.x, true, true), arg_1, true), arg_1.x), vec4<bool>(all(arg_1.yz), arg_2, arg_3 == arg_3, !arg_2), any(vec2<bool>(false, true)))));
    var var_4 = global1.b.x;
    return Struct_4(u_input.b.ywx, ~abs(global1.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: bool) -> Struct_4 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(-13970i, firstLeadingBit(countOneBits(-1i)))), _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(select(arg_0.b.x | global1.b.x, i32(-1i) * -41503i, arg_2), _wgslsmith_mod_i32(global1.b.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(46786u, 7u)], 48709u, 18476u), vec3<u32>(arg_0.a.x, 55359u, global4[_wgslsmith_index_u32(0u, 7u)])), 23u)]))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(step(1302f, -1436f)))))), 475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f + -1470f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-970f, 854f, 1000f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-469f, -768f, -1274f))), !vec3<bool>(true, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(690f, 538f, 977f) + vec3<f32>(-1171f, 676f, 534f))))))));
    global3 = array<Struct_2, 25>();
    var var_2 = vec2<f32>(-1801f, 733f);
    let var_3 = vec3<bool>(all(!vec4<bool>(true, any(vec3<bool>(arg_2, arg_2, false)), arg_2 == false, true)), true, true);
    return arg_0;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: u32) -> i32 {
    global2 = array<i32, 23>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~(~func_1(~1u, !arg_1.c, any(vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x)), arg_2.a.x).a.x), 27u)], func_1(_wgslsmith_add_u32(28002u, global4[_wgslsmith_index_u32(arg_0.x, 7u)] << (countOneBits(global4[_wgslsmith_index_u32(global1.a.x, 7u)]) % 32u)), !(!arg_1.c), !arg_1.c.x, -723f).a.x, Struct_1(arg_2.a, -(5242i | func_4(arg_1.a, vec4<i32>(arg_2.b, -1i, arg_2.b, -10795i), false).b.x), min(vec3<u32>(4294967295u, arg_1.a.a.x, 81265u) & vec3<u32>(u_input.c.x, 86363u, 40181u), ~u_input.b.yzx) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(global4[_wgslsmith_index_u32(global1.a.x, 7u)], 0u, 1u))), vec3<bool>(true, true, true));
    var var_1 = Struct_3(arg_1.c);
    global2 = array<i32, 23>();
    let var_2 = true;
    return func_4(func_4(arg_1.a, _wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(vec4<i32>(-22164i, global1.b.x, global1.b.x, arg_1.a.b.x))), vec4<i32>(-global1.b.x, firstLeadingBit(var_0.c.b), global2[_wgslsmith_index_u32(arg_1.a.a.x, 23u)] << (14058u % 32u), -2147483647i), max(~vec4<i32>(27962i, u_input.a, -2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec4<i32>(global2[_wgslsmith_index_u32(arg_2.c.x, 23u)], global1.b.x, 0i, arg_1.a.b.x) | vec4<i32>(u_input.a, -27985i, 24807i, -68687i))), arg_1.c.x), _wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.a.b.x, global2[_wgslsmith_index_u32(0u, 23u)], 19972i, 0i), ~vec4<i32>(15627i, u_input.a, arg_1.a.b.x, global1.b.x)), vec4<i32>(-1i) * -vec4<i32>(1i, global1.b.x, var_0.c.b, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(false, var_1.a.x, false, arg_2.a.x > var_0.a.a.x)), vec4<i32>(-2147483647i, 0i, arg_2.b, global2[_wgslsmith_index_u32(49319u, 23u)])), true).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.b.wyw, Struct_5(func_4(func_1(u_input.b.x, vec4<bool>(false, true, true, false), all(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(433f * 1158f)), ~abs(vec4<i32>(19110i, -35788i, global2[_wgslsmith_index_u32(global1.a.x, 23u)], 25508i)), false), 1000f, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.x, 1u), 27u)], u_input.c.x);
    let var_1 = ~(_wgslsmith_dot_vec3_u32(global1.a, _wgslsmith_mult_vec3_u32(global1.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, global4[_wgslsmith_index_u32(29531u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37819u, 7u)], 7u)]), u_input.b.wxz))) << (9605u % 32u));
    global1 = Struct_4(u_input.b.yzx, ~(vec2<i32>(global2[_wgslsmith_index_u32(~u_input.b.x, 23u)], -758i) >> (vec2<u32>(global1.a.x, 1u << (global4[_wgslsmith_index_u32(var_1, 7u)] % 32u)) % vec2<u32>(32u))));
    var_0 = func_5(abs(global1.a | func_4(func_4(Struct_4(global1.a, global1.b), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(global1.a.x, 23u)], -47364i, 0i), false), vec4<i32>(16627i, -61960i, -1i, 0i), true).a), Struct_5(func_1(_wgslsmith_mod_u32(4294967295u, u_input.c.x) << ((global4[_wgslsmith_index_u32(var_1, 7u)] << (u_input.b.x % 32u)) % 32u), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), true), true, _wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-821f)))))), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(true, false))))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-329f, -525f, -574f))))), _wgslsmith_mod_i32(reverseBits(-12799i), ~(u_input.a & global2[_wgslsmith_index_u32(global1.a.x, 23u)])), _wgslsmith_clamp_vec3_u32(u_input.b.yww, vec3<u32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(35002u, u_input.b.x), 7u)], _wgslsmith_mod_u32(1u, u_input.b.x), 1u), vec3<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 7u)], 134733u, global4[_wgslsmith_index_u32(u_input.b.x, 7u)]) ^ ~u_input.b.xyx)), u_input.b.x & u_input.c.x);
    let var_2 = func_4(func_4(func_1(1u, vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1869f))), -(-vec4<i32>(u_input.a, -5107i, global1.b.x, global1.b.x) & vec4<i32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(42997u, 23u)], 0i)), false), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, u_input.a, min(global1.b.x, 16653i), -1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(53444u, 23u)], global2[_wgslsmith_index_u32(94384u, 23u)], global2[_wgslsmith_index_u32(23463u, 23u)], -2147483647i), ~vec4<i32>(global1.b.x, -2147483647i, -46024i, 0i))), select(~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(67659u, 7u)], 12600u), max(u_input.b.x, global4[_wgslsmith_index_u32(global1.a.x, 7u)]) ^ ~73757u, max(global1.b.x, global1.b.x) > global1.b.x) > (var_1 << (u_input.c.x % 32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-134f, -675f)), _wgslsmith_f_op_f32(ceil(-1322f)), -159f)))));
    var var_4 = ~(~(var_1 | countOneBits(_wgslsmith_clamp_u32(var_2.a.x, var_1, global4[_wgslsmith_index_u32(1u, 7u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(-1i, 7457i, func_1(var_2.a.x, vec4<bool>(true, true, true, true), false, var_3.x).b.x, func_1(var_2.a.x, vec4<bool>(true, false, true, false), any(vec3<bool>(true, false, true)), 637f).b.x)), 16968u, u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(295f - -1000f))), 1529f)), _wgslsmith_f_op_vec2_f32(-var_3.yx));
}

