struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 27822i, 0i), vec4<f32>(840f, -1000f, -760f, 1000f), -45020i, vec4<bool>(true, false, false, true)), vec4<i32>(-1i, 2147483647i, -38351i, 57966i), -762f), Struct_2(Struct_1(vec3<i32>(-1i, -40075i, -78303i), vec4<f32>(1000f, -1000f, -567f, 1000f), 1i, vec4<bool>(false, false, false, true)), vec4<i32>(i32(-2147483648), -1i, 1i, 0i), 465f), Struct_2(Struct_1(vec3<i32>(-1109i, 37446i, i32(-2147483648)), vec4<f32>(165f, 871f, 273f, 539f), 10133i, vec4<bool>(true, true, false, true)), vec4<i32>(-49796i, 0i, 0i, 35494i), -1241f), Struct_2(Struct_1(vec3<i32>(0i, 0i, -29496i), vec4<f32>(234f, -770f, 1403f, 208f), 556i, vec4<bool>(false, true, false, false)), vec4<i32>(31545i, i32(-2147483648), 0i, 2147483647i), 1000f), Struct_2(Struct_1(vec3<i32>(-53762i, -31810i, 0i), vec4<f32>(-1353f, 862f, 1000f, 2482f), -15076i, vec4<bool>(true, true, false, false)), vec4<i32>(0i, 13917i, 5681i, i32(-2147483648)), 455f), Struct_2(Struct_1(vec3<i32>(-6380i, 30678i, 1030i), vec4<f32>(1715f, -1000f, 1014f, -977f), 0i, vec4<bool>(true, false, false, true)), vec4<i32>(3334i, 0i, -96847i, 13793i), 653f), Struct_2(Struct_1(vec3<i32>(573i, 0i, -42724i), vec4<f32>(-1484f, -311f, 1149f, -516f), -1i, vec4<bool>(true, true, true, true)), vec4<i32>(-1i, -2561i, 2147483647i, 59941i), -1082f), Struct_2(Struct_1(vec3<i32>(-36020i, 0i, 2147483647i), vec4<f32>(-2722f, 769f, 1175f, -1403f), -24266i, vec4<bool>(false, false, false, false)), vec4<i32>(5547i, 22445i, 46226i, 14295i), 636f), Struct_2(Struct_1(vec3<i32>(-43120i, i32(-2147483648), 1i), vec4<f32>(363f, 1760f, -1064f, -481f), -1i, vec4<bool>(false, true, false, false)), vec4<i32>(-5564i, 2147483647i, 53901i, 0i), 147f), Struct_2(Struct_1(vec3<i32>(-63364i, i32(-2147483648), 1i), vec4<f32>(-1471f, 1949f, -1000f, 693f), -24845i, vec4<bool>(false, false, true, true)), vec4<i32>(1i, -7819i, -3787i, 37494i), -1505f), Struct_2(Struct_1(vec3<i32>(-4898i, -24348i, -49899i), vec4<f32>(705f, -293f, -774f, 1375f), -66838i, vec4<bool>(true, false, false, true)), vec4<i32>(1i, 0i, 37952i, -41171i), 346f), Struct_2(Struct_1(vec3<i32>(1i, -1i, 0i), vec4<f32>(101f, -1000f, -102f, -1737f), -22353i, vec4<bool>(true, true, true, true)), vec4<i32>(-33723i, -1i, 1i, i32(-2147483648)), 2114f), Struct_2(Struct_1(vec3<i32>(-30042i, 2147483647i, -5755i), vec4<f32>(620f, -1646f, 1000f, -2557f), 30779i, vec4<bool>(false, true, false, false)), vec4<i32>(2147483647i, 0i, 1i, -46556i), -115f), Struct_2(Struct_1(vec3<i32>(0i, -1i, 27779i), vec4<f32>(1265f, 488f, 1105f, 1173f), -12595i, vec4<bool>(true, false, false, true)), vec4<i32>(12017i, 2147483647i, -1i, 1i), -500f), Struct_2(Struct_1(vec3<i32>(14639i, -6162i, -30391i), vec4<f32>(711f, 1000f, -646f, 781f), 0i, vec4<bool>(true, false, false, false)), vec4<i32>(637i, 1i, 2147483647i, -88i), -1194f), Struct_2(Struct_1(vec3<i32>(-24373i, -8689i, -23411i), vec4<f32>(1874f, 1195f, -1217f, 1068f), 0i, vec4<bool>(true, true, false, true)), vec4<i32>(i32(-2147483648), 1i, 5249i, -1i), 679f), Struct_2(Struct_1(vec3<i32>(9221i, 906i, -3758i), vec4<f32>(-257f, 779f, -284f, 859f), -85209i, vec4<bool>(true, true, false, false)), vec4<i32>(i32(-2147483648), 47048i, -1i, -1i), 1632f), Struct_2(Struct_1(vec3<i32>(-35968i, -11787i, 32649i), vec4<f32>(1829f, 190f, -1000f, 1000f), -13049i, vec4<bool>(true, true, false, false)), vec4<i32>(1i, 1i, -1i, 2147483647i), 560f), Struct_2(Struct_1(vec3<i32>(15169i, -32478i, 2147483647i), vec4<f32>(1000f, -376f, -2241f, -287f), 13i, vec4<bool>(false, true, true, true)), vec4<i32>(-1i, 0i, -44433i, 118232i), 1380f), Struct_2(Struct_1(vec3<i32>(37738i, 3409i, -1i), vec4<f32>(556f, 550f, 246f, -1000f), -23766i, vec4<bool>(true, true, false, false)), vec4<i32>(-1i, i32(-2147483648), -24913i, 27470i), 289f), Struct_2(Struct_1(vec3<i32>(21205i, -25742i, 1i), vec4<f32>(-335f, 1889f, -335f, -468f), 68707i, vec4<bool>(false, false, true, true)), vec4<i32>(-45119i, i32(-2147483648), 49533i, 66251i), -730f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(arg_1.x, 1889f)) - _wgslsmith_f_op_f32(round(arg_1.x))) - arg_1.x), arg_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1977f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1316f))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = select(true, select(all(!vec2<bool>(true, arg_0.a.d.x)), arg_0.a.d.x, true), !func_2(_wgslsmith_f_op_f32(round(arg_0.a.b.x)), arg_0.a.b.zzy));
    let var_1 = arg_0.a.d.x;
    var var_2 = true;
    global0 = array<Struct_2, 21>();
    var var_3 = Struct_5(arg_0.a.b.x);
    return Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(-arg_0.a.a >> (_wgslsmith_clamp_vec3_u32(arg_0.d, vec3<u32>(arg_0.c.x, 4294967295u, 7981u), vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u)), arg_0.a.a, arg_0.a.a), _wgslsmith_f_op_vec4_f32(arg_0.a.b - _wgslsmith_f_op_vec4_f32(arg_0.a.b + arg_0.a.b)), max(0i, ~u_input.b << (u_input.c % 32u)), select(!select(arg_0.a.d, vec4<bool>(var_1, arg_0.a.d.x, var_1, false), var_0), arg_0.a.d, arg_0.a.d.x)), reverseBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b, arg_0.b, arg_0.e.x), vec4<i32>(15724i, u_input.b, arg_0.a.a.x, arg_0.a.c))) << ((arg_0.c ^ (arg_0.c >> (arg_0.c % vec4<u32>(32u)))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-154f))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<Struct_2, 21>();
    var var_0 = Struct_4(-834f, _wgslsmith_mult_vec4_u32(~(vec4<u32>(82476u, 0u, 24475u, 6114u) << (~vec4<u32>(u_input.a, 0u, 37120u, u_input.c) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.a), abs(u_input.c)), select(abs(vec4<u32>(4294967295u, 4294967295u, 50796u, u_input.c)), countOneBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.c)), arg_0.a.d.x), vec4<u32>(u_input.a, 4294967295u, _wgslsmith_mult_u32(10738u, 21009u), u_input.c ^ u_input.a))), 30802i << (u_input.a % 32u), Struct_3(Struct_1((vec3<i32>(-2147483647i, 59364i, arg_0.b.x) << (vec3<u32>(u_input.a, 48259u, 0u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.c, u_input.c, 19572u) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), arg_0.c, arg_0.c, _wgslsmith_f_op_f32(-arg_0.c)), 1i, arg_0.a.d), arg_0.a.c, min(vec4<u32>(max(u_input.a, 8694u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(5221u, u_input.a, u_input.c, 0u), vec4<u32>(u_input.a, u_input.a, 35563u, u_input.a)), 1u), vec4<u32>(u_input.a, u_input.a, ~u_input.c, ~4294967295u)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(56103u, 34486u, u_input.a), vec3<u32>(u_input.c, u_input.c, u_input.a))), arg_0.a.a.xy));
    global0 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) + 539f));
    let var_2 = vec2<f32>(var_0.a, func_1(Struct_3(Struct_1(arg_0.b.zzx, arg_0.a.b, 7203i, vec4<bool>(false, arg_0.a.d.x, false, false)), max(-1i ^ var_0.d.a.c, countOneBits(var_0.c)), ~(~vec4<u32>(14035u, 106018u, 4294967295u, 18655u)), firstTrailingBit(vec3<u32>(u_input.a, u_input.c, u_input.c) << (var_0.b.yyw % vec3<u32>(32u))), _wgslsmith_sub_vec2_i32(select(arg_0.a.a.yz, arg_0.a.a.xx, vec2<bool>(true, var_0.d.a.d.x)), ~vec2<i32>(var_0.c, 2147483647i)))).c);
    return var_0.d.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 21>();
    var var_0 = (func_3(func_1(Struct_3(Struct_1(vec3<i32>(u_input.b, 33550i, -26399i), vec4<f32>(-463f, 296f, -1000f, 1000f), 1i, vec4<bool>(false, false, true, false)), 0i, vec4<u32>(26424u, u_input.a, 1u, u_input.c), vec3<u32>(4294967295u, u_input.a, u_input.c), vec2<i32>(1916i, u_input.b)))) | false) & true;
    var var_1 = Struct_1(~(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, 0i), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, 2147483647i)) & min(-vec3<i32>(-12688i, u_input.b, u_input.b), ~vec3<i32>(u_input.b, 71241i, -1i))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -726f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-691f + -682f)))), func_1(Struct_3(func_1(Struct_3(Struct_1(vec3<i32>(u_input.b, 2992i, u_input.b), vec4<f32>(560f, -1000f, -2266f, -1268f), 37402i, vec4<bool>(true, true, true, false)), 59672i, vec4<u32>(u_input.c, u_input.a, 55963u, u_input.c), vec3<u32>(8835u, 48849u, 55452u), vec2<i32>(u_input.b, u_input.b))).a, u_input.b, vec4<u32>(u_input.c, u_input.a, 37277u, u_input.a) ^ vec4<u32>(16558u, u_input.c, 4294967295u, u_input.a), select(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.a, 6223u, 45669u), true), abs(vec2<i32>(u_input.b, u_input.b)))).c, -1812f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -152f), 238f))), 5525i, vec4<bool>(!all(vec2<bool>(true, true)), true, true, false));
    var var_2 = _wgslsmith_f_op_f32(-var_1.b.x);
    let var_3 = func_1(Struct_3(func_1(Struct_3(func_1(Struct_3(Struct_1(vec3<i32>(u_input.b, 19802i, u_input.b), vec4<f32>(591f, var_1.b.x, var_1.b.x, 884f), u_input.b, var_1.d), var_1.c, vec4<u32>(3596u, 0u, 17612u, 0u), vec3<u32>(1u, 0u, 12892u), var_1.a.xy)).a, _wgslsmith_mult_i32(2147483647i, u_input.b), countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.c), ~vec2<i32>(u_input.b, u_input.b))).a, -18287i, ~((vec4<u32>(u_input.a, 5857u, 4887u, u_input.a) & vec4<u32>(5973u, 0u, u_input.c, u_input.c)) << (firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 1u, 30926u)) % vec4<u32>(32u))), select(vec3<u32>(_wgslsmith_sub_u32(u_input.c, 1u), u_input.c ^ 1u, 19151u), select(vec3<u32>(u_input.a, 26562u, u_input.a), vec3<u32>(4294967295u, 21976u, u_input.c), !vec3<bool>(false, true, var_1.d.x)), func_3(Struct_2(Struct_1(var_1.a, vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), u_input.b, vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x)), vec4<i32>(-14903i, u_input.b, 18213i, u_input.b), var_1.b.x))), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(54842i, var_1.c), vec2<i32>(u_input.b, u_input.b))))).a;
    var var_4 = func_1(Struct_3(func_1(Struct_3(var_3, u_input.b, reverseBits(vec4<u32>(0u, u_input.c, 1u, u_input.c)), ~vec3<u32>(u_input.a, u_input.c, u_input.c), vec2<i32>(var_1.a.x, u_input.b))).a, 1i, max(~abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), ~select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 14138u, 4294967295u, u_input.c), var_1.d)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(1u, 88910u, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), select(vec3<u32>(76317u, 22809u, 70248u), vec3<u32>(u_input.a, u_input.c, 0u), false)) | _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.c, u_input.c) >> (vec3<u32>(1u, u_input.c, 15531u) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -58977i), var_3.a.xz) | vec2<i32>(var_3.a.x, var_1.a.x), vec2<i32>(u_input.b | var_1.c, -26944i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 9560i) ^ vec2<i32>(40720i, 10194i), -vec2<i32>(u_input.b, 2147483647i))))).a;
    var_1 = Struct_1(-vec3<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, var_3.c), min(var_4.a, vec3<i32>(1i, -1i, -22235i))), var_3.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_4.b.x, var_3.b.x, var_3.b.x)) - vec4<f32>(var_4.b.x, 1157f, var_4.b.x, var_3.b.x))), _wgslsmith_f_op_vec4_f32(select(var_4.b, var_4.b, func_1(Struct_3(var_3, var_4.a.x, vec4<u32>(27622u, 0u, u_input.a, 52853u), vec3<u32>(4294967295u, 2923u, 0u), vec2<i32>(var_4.a.x, -35612i))).a.d))), 27981i, func_1(Struct_3(func_1(Struct_3(Struct_1(vec3<i32>(-2147483647i, 1i, var_1.a.x), vec4<f32>(1031f, 1591f, 789f, -807f), var_3.a.x, vec4<bool>(var_4.d.x, var_4.d.x, true, false)), 16403i, vec4<u32>(u_input.c, 1u, u_input.c, u_input.a), vec3<u32>(1u, u_input.c, u_input.c), var_3.a.zy)).a, -17758i, vec4<u32>(1u, 21286u, u_input.c, ~u_input.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 67347u), vec3<u32>(4294967295u, 67028u, 29615u), vec3<u32>(u_input.a, 4294967295u, u_input.c)), countOneBits(vec3<u32>(1u, u_input.c, 27748u)), max(vec3<u32>(1u, u_input.c, 86718u), vec3<u32>(0u, 30690u, u_input.a))), var_1.a.xx)).a.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.b.zxx, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.b.wxw)))))), ~firstTrailingBit(vec4<u32>(1u, u_input.a, _wgslsmith_clamp_u32(u_input.c, u_input.a, 4294967295u), u_input.a)), ~u_input.c);
}

