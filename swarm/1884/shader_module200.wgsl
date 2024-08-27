struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(79863u, 33060u, 90652u, 74853u));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<f32>(1604f, -116f, 1000f), vec3<f32>(328f, 1521f, 354f), Struct_1(vec4<f32>(-611f, -1353f, -356f, 418f), vec3<f32>(1000f, -517f, 976f), 16425u)), Struct_3(vec3<f32>(-628f, -833f, -666f), vec3<f32>(-164f, -1648f, -447f), Struct_1(vec4<f32>(-1836f, -441f, -1846f, 441f), vec3<f32>(-412f, 749f, 1346f), 1u)), Struct_3(vec3<f32>(-1134f, 394f, -255f), vec3<f32>(1201f, -598f, 1134f), Struct_1(vec4<f32>(-1580f, 291f, -757f, 582f), vec3<f32>(-297f, -1074f, 478f), 303u)), Struct_3(vec3<f32>(-1383f, -484f, 173f), vec3<f32>(441f, -575f, 210f), Struct_1(vec4<f32>(-1000f, -548f, 1015f, 482f), vec3<f32>(887f, -139f, -1189f), 31983u)), Struct_3(vec3<f32>(-1037f, 1260f, 1000f), vec3<f32>(1016f, 2072f, 274f), Struct_1(vec4<f32>(-344f, 2065f, 850f, 618f), vec3<f32>(-933f, 136f, 144f), 4294967295u)), Struct_3(vec3<f32>(1182f, -497f, -1000f), vec3<f32>(-619f, 162f, 134f), Struct_1(vec4<f32>(661f, -2141f, 1000f, -981f), vec3<f32>(-634f, 1017f, -282f), 49929u)), Struct_3(vec3<f32>(-189f, -780f, 265f), vec3<f32>(343f, 1473f, -150f), Struct_1(vec4<f32>(-967f, -945f, 865f, 1304f), vec3<f32>(187f, 319f, 1060f), 4294967295u)), Struct_3(vec3<f32>(-1120f, -2290f, 455f), vec3<f32>(-736f, -420f, 1000f), Struct_1(vec4<f32>(381f, -767f, 543f, 223f), vec3<f32>(-255f, 666f, -331f), 5319u)), Struct_3(vec3<f32>(-550f, -848f, -367f), vec3<f32>(-1368f, 1005f, 998f), Struct_1(vec4<f32>(2321f, 351f, 2281f, 557f), vec3<f32>(383f, -110f, 1275f), 1u)), Struct_3(vec3<f32>(-1012f, -696f, 627f), vec3<f32>(-267f, 489f, 134f), Struct_1(vec4<f32>(995f, 1670f, -1461f, 266f), vec3<f32>(240f, -785f, -1817f), 68799u)), Struct_3(vec3<f32>(1000f, -340f, 348f), vec3<f32>(1233f, -1000f, -1000f), Struct_1(vec4<f32>(1624f, 1174f, -436f, 1434f), vec3<f32>(1343f, -591f, -1176f), 67559u)), Struct_3(vec3<f32>(-1014f, 671f, -1402f), vec3<f32>(279f, -1420f, -421f), Struct_1(vec4<f32>(-163f, 299f, 2001f, -242f), vec3<f32>(298f, 1000f, -276f), 3317u)), Struct_3(vec3<f32>(-724f, -302f, -311f), vec3<f32>(-813f, -1161f, 1640f), Struct_1(vec4<f32>(-986f, 1609f, 499f, 2142f), vec3<f32>(323f, -1779f, -940f), 1255u)), Struct_3(vec3<f32>(-1163f, 1000f, -878f), vec3<f32>(-699f, 644f, 996f), Struct_1(vec4<f32>(-148f, -1000f, 955f, 222f), vec3<f32>(1059f, 914f, 1016f), 2888u)), Struct_3(vec3<f32>(-224f, 429f, 104f), vec3<f32>(307f, -729f, 1349f), Struct_1(vec4<f32>(1000f, -346f, 258f, -1337f), vec3<f32>(1065f, -1000f, 258f), 22755u)), Struct_3(vec3<f32>(-260f, 173f, 431f), vec3<f32>(-2476f, -1182f, 719f), Struct_1(vec4<f32>(-638f, -643f, 1340f, -180f), vec3<f32>(689f, 361f, -708f), 0u)), Struct_3(vec3<f32>(-655f, -367f, 318f), vec3<f32>(586f, -315f, 609f), Struct_1(vec4<f32>(1000f, 162f, -262f, 535f), vec3<f32>(-1286f, 863f, -1060f), 19168u)), Struct_3(vec3<f32>(-1056f, -426f, -1191f), vec3<f32>(-1812f, 666f, 1406f), Struct_1(vec4<f32>(-765f, -1000f, 131f, 2236f), vec3<f32>(420f, 274f, 121f), 16947u)), Struct_3(vec3<f32>(-609f, -1824f, 179f), vec3<f32>(-2495f, 529f, -1000f), Struct_1(vec4<f32>(553f, -362f, -1000f, -136f), vec3<f32>(-4177f, 1061f, -1000f), 85056u)), Struct_3(vec3<f32>(-1000f, 1000f, -1000f), vec3<f32>(2568f, 169f, 166f), Struct_1(vec4<f32>(159f, 1799f, -1757f, 1000f), vec3<f32>(-2746f, 1853f, 1383f), 38494u)), Struct_3(vec3<f32>(1000f, 176f, 1546f), vec3<f32>(-371f, -881f, 1291f), Struct_1(vec4<f32>(-807f, 1273f, -1337f, 1611f), vec3<f32>(-562f, -1007f, 1389f), 4294967295u)), Struct_3(vec3<f32>(-850f, -1798f, 1161f), vec3<f32>(-144f, 1521f, 1387f), Struct_1(vec4<f32>(-445f, 1364f, 686f, -1410f), vec3<f32>(666f, -569f, -248f), 4294967295u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = select(vec3<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x))) | any(select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, arg_0.x, true, false), true)), any(vec4<bool>(select(false, false, true), arg_0.x, arg_0.x, true)), true), select(!vec3<bool>(false, arg_0.x != arg_0.x, all(vec3<bool>(false, arg_0.x, true))), !(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), true & all(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)))), false);
    var var_1 = -firstLeadingBit(max(max(vec2<i32>(u_input.b, u_input.b), -vec2<i32>(1i, -59741i)), select(abs(vec2<i32>(2356i, -66077i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -1i)), vec2<bool>(false, arg_0.x))));
    var var_2 = Struct_2(vec2<u32>(66653u, u_input.a), arg_1, arg_1.a.yw, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, ~global1.x), 0u), firstLeadingBit(var_1.x));
    let var_3 = vec4<bool>(true, var_0.x, var_0.x, arg_0.x);
    let var_4 = ~abs(vec3<u32>(u_input.a, ~global1.x, 0u) >> (~(~vec3<u32>(4294967295u, u_input.a, arg_1.c)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(trunc(var_2.c.x));
}

fn func_2(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = Struct_2(~global1.yx, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 2368f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1135f, 181f, arg_0), vec3<f32>(-2156f, 340f, arg_0)))))), ~abs(1u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(199f, -506f), arg_0, any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(-1f)), 1159f), 4294967295u, -1i);
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), var_0.b, 512f))), _wgslsmith_f_op_f32(var_0.b.b.x - arg_0), _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-397f, arg_0), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1519f), 289f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.b.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1397f, 670f, var_0.c.x))))) - _wgslsmith_f_op_vec3_f32(var_0.b.a.yzy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-481f, var_0.c.x, var_0.c.x) - vec3<f32>(202f, -441f, var_0.c.x)) + _wgslsmith_f_op_vec3_f32(min(var_0.b.a.wyy, vec3<f32>(arg_0, var_0.c.x, var_0.c.x)))))), _wgslsmith_mod_u32(countOneBits(reverseBits(arg_1)), _wgslsmith_mod_u32(~arg_1, _wgslsmith_div_u32(arg_1, _wgslsmith_div_u32(arg_1, global1.x)))));
    var var_2 = 1u;
    let var_3 = var_0;
    global2 = array<Struct_3, 22>();
    return var_3.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_2(global1.yy, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1000f + arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.b.x, u_input.a))), -739f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x, -2490f) + arg_0.a.xww), u_input.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(232f, -1314f)))))), arg_1, vec2<bool>(arg_2.x, arg_2.x))), 4294967295u, max(-35673i, abs(u_input.b)));
    global1 = ~firstLeadingBit(vec3<u32>(var_0.d, arg_0.c >> (global1.x % 32u), var_0.d << (arg_0.c % 32u)));
    let var_1 = true;
    var var_2 = var_0.b;
    var var_3 = !(!(!vec2<bool>(var_1, false)));
    return _wgslsmith_mod_vec4_i32(~countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, var_0.e) & vec4<i32>(1i, -38284i, var_0.e, 33612i)), ~(vec4<i32>(1i, 1i, -22275i, abs(u_input.b)) >> (_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)], vec4<u32>(var_2.c, 37750u, 0u, var_2.c)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = Struct_2(global1.yz, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), 572f, 1486f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2080f, 2536f)), -1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), Struct_1(vec4<f32>(973f, -501f, -1360f, -2404f), vec3<f32>(-1225f, 1000f, 361f), global1.x), -704f)), _wgslsmith_f_op_f32(-1595f * -1000f), -1531f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(trunc(-2183f)), _wgslsmith_f_op_f32(f32(-1f) * -797f)), true)), 4294967295u << ((u_input.a | (u_input.a ^ u_input.a)) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, -483f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-643f, 214f)), all(vec4<bool>(false, true, true, true)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-760f, -1000f))))))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(24544u, 12368u, 38157u) ^ vec3<u32>(1u, u_input.a, 0u), ~vec3<u32>(0u, u_input.a, 72186u)), ~min(vec3<u32>(53345u, u_input.a, u_input.a), vec3<u32>(global1.x, 33583u, 4294967295u))) << (firstTrailingBit(0u) % 32u), 2147483647i);
    var var_1 = var_0.a.x;
    var var_2 = reverseBits(arg_0.x | ~(-_wgslsmith_mod_i32(61612i, var_0.e)));
    let var_3 = global2[_wgslsmith_index_u32(~39086u, 22u)];
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)))), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1328f * 394f), _wgslsmith_f_op_f32(max(280f, 613f)))), _wgslsmith_f_op_f32(-652f * var_0.b.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.b.b)), _wgslsmith_f_op_vec3_f32(ceil(var_3.c.b)), vec3<bool>(true, false, true))))), 49280u);
    return vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -(~u_input.b), -1i), arg_0.x, 24660i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<i32>(_wgslsmith_clamp_i32(~25642i, u_input.b, u_input.b), ~abs(u_input.b), u_input.b, _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-5465i, u_input.b, 17617i, u_input.b), func_1(Struct_1(vec4<f32>(1000f, 255f, 958f, 777f), vec3<f32>(-1074f, 469f, -436f), global1.x), vec2<f32>(1000f, 1000f), vec4<bool>(true, false, false, false))))));
    var var_1 = vec3<u32>(select(60020u, countOneBits(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~21892u, 1u)], global0[_wgslsmith_index_u32(~4294967295u, 1u)])), true), ~global1.x, 33749u);
    global2 = array<Struct_3, 22>();
    var var_2 = vec3<i32>(0i << ((_wgslsmith_add_u32(~global1.x, ~u_input.a) & 4294967295u) % 32u), -1i, _wgslsmith_mod_i32(-u_input.b, -2147483647i));
    var var_3 = Struct_2(global1.yy, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2251f, -1000f, -695f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, -865f, 476f, 1099f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), ~global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1106f, -915f) * vec2<f32>(-1021f, 958f)))))), ~min(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, u_input.a), vec3<u32>(0u, 4294967295u, global1.x)), max(u_input.a, ~16455u)), u_input.b);
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c.x)));
    var var_5 = !all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)), true));
    var var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(-35836i, var_3.e, 6631i), vec3<i32>(40787i, var_2.x, var_2.x)), vec3<i32>(u_input.b, -6701i, var_2.x) ^ vec3<i32>(var_2.x, var_0.x, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_3.e, 50961i), vec3<i32>(var_3.e, u_input.b, -2147483647i)) | firstLeadingBit(vec3<i32>(var_2.x, u_input.b, u_input.b)), ~vec3<i32>(var_0.x, var_0.x, 0i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 81515u, 0u), vec3<u32>(0u, 0u, 1u)) % vec3<u32>(32u))), var_6.a.x);
}

