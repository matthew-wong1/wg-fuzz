struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec2<i32>(38406i, i32(-2147483648)), vec4<f32>(-1764f, 277f, -1429f, -829f), 729f), Struct_1(vec2<i32>(-9189i, -43014i), vec4<f32>(462f, -554f, -1068f, -730f), 1458f), Struct_1(vec2<i32>(24966i, -1i), vec4<f32>(1155f, -654f, 449f, 1000f), -871f), vec4<f32>(-116f, 226f, -506f, 112f), -29802i), Struct_2(Struct_1(vec2<i32>(-4829i, i32(-2147483648)), vec4<f32>(714f, 923f, -335f, -1000f), -223f), Struct_1(vec2<i32>(2147483647i, -27676i), vec4<f32>(-459f, 1516f, 369f, 1000f), 258f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-1059f, -567f, 328f, -682f), -406f), vec4<f32>(-792f, 1011f, 1862f, -1435f), -1i), Struct_2(Struct_1(vec2<i32>(25689i, -5959i), vec4<f32>(-163f, -652f, 828f, -1104f), 3087f), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(1259f, 946f, -1000f, -929f), -132f), Struct_1(vec2<i32>(-43090i, 0i), vec4<f32>(1167f, 829f, 1145f, -931f), -583f), vec4<f32>(-606f, -226f, -286f, 383f), 17819i), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(1000f, 174f, 532f, 477f), 352f), Struct_1(vec2<i32>(54122i, 1i), vec4<f32>(2969f, 662f, -1000f, 581f), -1134f), Struct_1(vec2<i32>(-1i, 0i), vec4<f32>(1809f, -641f, -950f, -2466f), -1075f), vec4<f32>(-1151f, -169f, -1717f, -641f), -8887i), Struct_2(Struct_1(vec2<i32>(-50084i, -66732i), vec4<f32>(1484f, 244f, -537f, -1704f), -1042f), Struct_1(vec2<i32>(8123i, -17304i), vec4<f32>(-378f, -553f, -910f, 2064f), 872f), Struct_1(vec2<i32>(-38290i, 55713i), vec4<f32>(1735f, 1941f, -694f, 2150f), 1000f), vec4<f32>(-327f, -935f, -1065f, -1000f), -1i), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(512f, 2382f, 1031f, 133f), 375f), Struct_1(vec2<i32>(-3002i, -27885i), vec4<f32>(-307f, 836f, 894f, -1588f), 1215f), Struct_1(vec2<i32>(494i, 1i), vec4<f32>(-981f, -1042f, 546f, -1167f), -208f), vec4<f32>(-479f, 415f, 181f, 300f), i32(-2147483648)), Struct_2(Struct_1(vec2<i32>(-41077i, 2147483647i), vec4<f32>(620f, -790f, -268f, 635f), 516f), Struct_1(vec2<i32>(57534i, 19651i), vec4<f32>(-774f, 201f, -1000f, -150f), -357f), Struct_1(vec2<i32>(-4445i, i32(-2147483648)), vec4<f32>(322f, 367f, -523f, -1994f), 637f), vec4<f32>(-457f, -628f, 1620f, -258f), 36043i), Struct_2(Struct_1(vec2<i32>(-48913i, -5642i), vec4<f32>(1839f, -453f, -589f, 399f), 2232f), Struct_1(vec2<i32>(-9319i, -24218i), vec4<f32>(-2489f, 185f, -740f, -1114f), -1038f), Struct_1(vec2<i32>(1i, -1i), vec4<f32>(328f, -668f, 384f, 1072f), -590f), vec4<f32>(2032f, -1314f, 598f, 1000f), 66795i), Struct_2(Struct_1(vec2<i32>(-1i, -52284i), vec4<f32>(562f, -229f, -1000f, -316f), 1511f), Struct_1(vec2<i32>(-4926i, 0i), vec4<f32>(1902f, 1832f, -574f, -563f), 1004f), Struct_1(vec2<i32>(-48777i, 1i), vec4<f32>(1000f, 823f, -229f, -988f), -103f), vec4<f32>(-694f, -629f, -304f, 2138f), -1i), Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec4<f32>(-1244f, 605f, -782f, 1811f), -756f), Struct_1(vec2<i32>(1i, 51368i), vec4<f32>(676f, 1932f, 101f, -1289f), 1222f), Struct_1(vec2<i32>(-32852i, 40768i), vec4<f32>(-219f, -446f, -235f, 1293f), 1000f), vec4<f32>(1418f, 981f, -796f, 1417f), -1i), Struct_2(Struct_1(vec2<i32>(1i, -9014i), vec4<f32>(-161f, -517f, -385f, -1663f), 1000f), Struct_1(vec2<i32>(-11796i, i32(-2147483648)), vec4<f32>(446f, 297f, 224f, -246f), -866f), Struct_1(vec2<i32>(-22248i, -64866i), vec4<f32>(-165f, 585f, 590f, -926f), 1000f), vec4<f32>(170f, 725f, 362f, 1493f), 40113i), Struct_2(Struct_1(vec2<i32>(33752i, 0i), vec4<f32>(-242f, 1000f, 577f, 488f), 831f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(1855f, -1212f, -279f, 1000f), -1385f), Struct_1(vec2<i32>(21324i, 36542i), vec4<f32>(311f, -1000f, -419f, 263f), -492f), vec4<f32>(1458f, -113f, -1000f, -1000f), 36772i));

var<private> global1: array<i32, 29>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, -21672i), vec4<f32>(-622f, 639f, -221f, -1729f), -1182f), Struct_1(vec2<i32>(2147483647i, -573i), vec4<f32>(-473f, -140f, 1663f, -1222f), -636f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<f32>(225f, -394f, 822f, 1565f), 1220f), vec4<f32>(-1263f, -1000f, -241f, -244f), 34907i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = Struct_3(Struct_1(vec2<i32>(-2147483647i, 1i), vec4<f32>(arg_1.a.c, global3.d.x, 1f, 2147f), _wgslsmith_f_op_f32(min(global3.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.c.c - 1074f), _wgslsmith_f_op_f32(f32(-1f) * -1534f)))))));
    global2 = countOneBits(vec3<u32>(global2.x, global2.x, select(reverseBits(min(global2.x, global2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, 0u) & vec3<u32>(global2.x, global2.x, 2924u), vec3<u32>(global2.x, global2.x, 0u)), select(global2.x < global2.x, true, all(vec2<bool>(arg_0.x, arg_2))))));
    let var_1 = _wgslsmith_sub_u32(countOneBits(abs(global2.x)), global2.x) >> (reverseBits(global2.x) % 32u);
    let var_2 = var_0.a.b;
    var var_3 = select(vec3<i32>(_wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(10326u, 29u)], ~arg_1.a.a.x, arg_0.x), firstTrailingBit(arg_3.b.a.x) ^ firstLeadingBit(global3.c.a.x)), ~u_input.a, global3.a.a.x), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-23568i ^ var_0.a.a.x, _wgslsmith_sub_i32(-1i, -1i), -global3.e), _wgslsmith_clamp_vec3_i32(vec3<i32>(22204i, global3.b.a.x, -2147483647i) >> (vec3<u32>(1u, 23484u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-41186i, global3.e, u_input.a), vec3<i32>(-19445i, global1[_wgslsmith_index_u32(global2.x, 29u)], 1i)), vec3<i32>(global1[_wgslsmith_index_u32(global2.x, 29u)], arg_3.e, global1[_wgslsmith_index_u32(global2.x, 29u)])), vec3<i32>(6412i, -global3.b.a.x, global3.e))), vec3<bool>(arg_0.x, arg_2, !all(select(arg_0.zz, vec2<bool>(arg_0.x, arg_2), vec2<bool>(true, false)))));
    return arg_1.a.a;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_3(vec3<bool>(false, arg_0, arg_0), Struct_3(global3.b), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, arg_0), arg_0)), global0[_wgslsmith_index_u32(72983u | (22536u | global2.x), 12u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a.b - vec4<f32>(-969f, global3.d.x, -943f, global3.a.c)))), _wgslsmith_f_op_f32(1521f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f - -2297f)))), Struct_1(global3.b.a, _wgslsmith_f_op_vec4_f32(-global3.b.b), -2339f), global3.c, global3.b.b, 2147483647i);
    global0 = array<Struct_2, 12>();
    let var_1 = global3.d.x;
    let var_2 = Struct_1(~(~vec2<i32>(42296i, -49372i)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global2.zz, global2.zz & global2.xy), ~(vec2<u32>(0u, global2.x) ^ vec2<u32>(43801u, 6920u)), select(vec2<u32>(1u, global2.x), vec2<u32>(global2.x, global2.x), true) ^ select(vec2<u32>(0u, 1u), global2.zz, vec2<bool>(arg_0, arg_0))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.c), -650f), -201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.x, -383f))), _wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(max(var_0.d.x, -325f)))) * _wgslsmith_f_op_vec4_f32(-var_0.b.b)), _wgslsmith_f_op_f32(floor(var_0.d.x)));
    let var_3 = var_0;
    return Struct_1(select(vec2<i32>(~global3.b.a.x, 1531i), vec2<i32>(~global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)]), select(any(select(vec2<bool>(false, arg_0), vec2<bool>(true, true), false)), true, all(!vec3<bool>(true, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(global3.d.x)), _wgslsmith_f_op_f32(max(-1797f, 1862f)), 326f, -102f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(step(1258f, 526f)), var_2.b.x, var_3.c.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -184f));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = vec3<u32>(global2.x, _wgslsmith_sub_u32(4294967295u, ~select(firstTrailingBit(global2.x), 21644u, true)), countOneBits(~global2.x));
    let var_1 = func_2(~(~7730u) <= (_wgslsmith_add_u32(global2.x, var_0.x) << (global2.x % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x)));
    global2 = max(var_0 ^ _wgslsmith_div_vec3_u32(vec3<u32>(20011u, 21457u, var_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, global2.x, var_0.x), vec3<u32>(1u, 9744u, 4294967295u))), var_0) >> (vec3<u32>(global2.x, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(16643u, 21649u), _wgslsmith_dot_vec3_u32(min(var_0, var_0), firstTrailingBit(var_0)), countOneBits(_wgslsmith_add_u32(var_0.x, var_0.x))), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, 24681u), global2.yy, vec2<bool>(true, true)), global2.xz)) % vec3<u32>(32u));
    let var_3 = select(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), var_1.c < _wgslsmith_f_op_f32(-2896f + 1554f), select(true, any(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, true, false))), false), select(vec4<bool>(global2.x < 77440u, true, any(vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, false, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), false)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, true))), !vec4<bool>(false, var_2 >= global3.c.c, all(vec3<bool>(true, false, true)), true)), !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    return vec3<u32>(global2.x, ~(~arg_0), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(~abs(abs(countOneBits(18392u))));
    global3 = Struct_2(Struct_1(vec2<i32>(-1i) * -global3.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global3.c.b), vec4<f32>(-917f, global3.b.b.x, 748f, 158f))) - global3.c.b), 1f), global3.c, Struct_1(~vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 4294967295u), vec2<u32>(global2.x, global2.x)), 29u)], 0i), vec4<f32>(global3.d.x, _wgslsmith_f_op_f32(-global3.c.c), global3.c.c, _wgslsmith_f_op_f32(f32(-1f) * -1639f)), _wgslsmith_f_op_f32(global3.a.c * global3.c.b.x)), global3.b.b, u_input.a | 236i);
    let var_0 = global0[_wgslsmith_index_u32(~(~(~global2.x) & global2.x), 12u)];
    var var_1 = 4294967295u;
    var var_2 = Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1276f));
    let var_3 = Struct_4(Struct_2(var_0.c, Struct_1(_wgslsmith_clamp_vec2_i32(global3.a.a, global3.b.a, vec2<i32>(global1[_wgslsmith_index_u32(global2.x, 29u)], u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c.b, global3.c.b, true)) - _wgslsmith_f_op_vec4_f32(global3.d * vec4<f32>(1812f, var_0.d.x, var_0.b.b.x, var_2.c))), var_2.c), func_2(var_0.d.x == global3.a.c), var_0.c.b, firstTrailingBit(var_2.a.x)), global0[_wgslsmith_index_u32(reverseBits(global2.x ^ ~global2.x) & ((global2.x & firstTrailingBit(global2.x)) >> (global2.x % 32u)), 12u)], func_2(true));
    global1 = array<i32, 29>();
    let var_4 = Struct_2(Struct_1(vec2<i32>(-global1[_wgslsmith_index_u32(global2.x, 29u)] | -u_input.a, 85317i), var_3.a.a.b, _wgslsmith_f_op_f32(ceil(-855f))), var_3.b.c, var_3.c, var_2.b, 73007i);
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.b.xyz, global3.d);
}

