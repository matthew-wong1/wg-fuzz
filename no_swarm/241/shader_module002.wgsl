struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(-1i, 1i, 29493i, -20109i), Struct_2(Struct_1(true, 762f, 664f), Struct_1(false, -678f, -327f)), 4294967295u, Struct_1(true, 724f, 681f)), vec3<i32>(-1i, 6420i, -1i), Struct_4(vec4<f32>(472f, -2219f, -168f, -201f), Struct_1(true, 881f, 328f), -1622f, vec3<bool>(false, true, false)), false), Struct_5(Struct_3(vec2<bool>(false, true), vec4<i32>(5015i, -1i, 2147483647i, -2463i), Struct_2(Struct_1(true, 2770f, 1420f), Struct_1(false, 1692f, -1000f)), 123958u, Struct_1(true, -817f, 1369f)), vec3<i32>(-9999i, i32(-2147483648), 0i), Struct_4(vec4<f32>(-1000f, -424f, 801f, -946f), Struct_1(true, 523f, 553f), -409f, vec3<bool>(false, false, true)), false), Struct_5(Struct_3(vec2<bool>(false, false), vec4<i32>(14925i, 35676i, i32(-2147483648), 0i), Struct_2(Struct_1(true, -810f, 714f), Struct_1(false, 809f, -293f)), 1u, Struct_1(false, -1354f, 908f)), vec3<i32>(i32(-2147483648), -59985i, 2147483647i), Struct_4(vec4<f32>(236f, 453f, 314f, 840f), Struct_1(false, 2478f, 1205f), -415f, vec3<bool>(true, true, true)), false), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(1i, 0i, 36891i, i32(-2147483648)), Struct_2(Struct_1(false, -1771f, 1453f), Struct_1(true, 383f, 633f)), 0u, Struct_1(false, 1000f, 353f)), vec3<i32>(-1i, 1i, -19155i), Struct_4(vec4<f32>(-1656f, 1138f, -365f, -1409f), Struct_1(false, 1000f, -378f), 1000f, vec3<bool>(true, false, false)), false), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(-1i, 1i, -28560i, -70810i), Struct_2(Struct_1(false, 768f, 1025f), Struct_1(false, 500f, 1599f)), 4294967295u, Struct_1(false, -509f, 231f)), vec3<i32>(-1i, 0i, 47008i), Struct_4(vec4<f32>(2166f, 1000f, 708f, 796f), Struct_1(false, -183f, -528f), 1000f, vec3<bool>(true, true, true)), false), Struct_5(Struct_3(vec2<bool>(false, false), vec4<i32>(12541i, 0i, 1i, -1i), Struct_2(Struct_1(true, -1390f, 1117f), Struct_1(false, -619f, -1662f)), 4294967295u, Struct_1(true, -877f, -819f)), vec3<i32>(11601i, 26742i, 0i), Struct_4(vec4<f32>(111f, 681f, -1104f, 1000f), Struct_1(false, -1725f, -1422f), 1222f, vec3<bool>(false, true, true)), true), Struct_5(Struct_3(vec2<bool>(true, false), vec4<i32>(-1i, 6882i, -22858i, -1i), Struct_2(Struct_1(true, -1506f, -1042f), Struct_1(true, 1000f, 400f)), 1u, Struct_1(false, -1615f, -849f)), vec3<i32>(-11332i, -57245i, -58185i), Struct_4(vec4<f32>(1433f, 505f, 1000f, 229f), Struct_1(true, -279f, 1206f), 1387f, vec3<bool>(false, true, true)), true), Struct_5(Struct_3(vec2<bool>(true, false), vec4<i32>(-29792i, i32(-2147483648), 45651i, 1i), Struct_2(Struct_1(false, -1000f, 216f), Struct_1(true, -943f, -1000f)), 6382u, Struct_1(false, 2576f, 476f)), vec3<i32>(-33993i, 0i, 2147483647i), Struct_4(vec4<f32>(756f, -735f, 757f, -851f), Struct_1(true, -331f, -1000f), -1748f, vec3<bool>(true, false, false)), false), Struct_5(Struct_3(vec2<bool>(true, false), vec4<i32>(-44139i, 2147483647i, -3959i, 0i), Struct_2(Struct_1(false, 316f, -895f), Struct_1(true, 104f, -1210f)), 44993u, Struct_1(false, 2357f, 1259f)), vec3<i32>(25418i, -13059i, -18208i), Struct_4(vec4<f32>(998f, -1000f, -466f, -272f), Struct_1(false, 1000f, -346f), 1000f, vec3<bool>(true, false, false)), true), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(-1927i, 15140i, 2147483647i, 0i), Struct_2(Struct_1(true, -131f, 2019f), Struct_1(false, -939f, 164f)), 0u, Struct_1(true, -2206f, -1000f)), vec3<i32>(-18007i, 39026i, -54943i), Struct_4(vec4<f32>(-1000f, -754f, 311f, 811f), Struct_1(false, -665f, 1077f), -912f, vec3<bool>(false, true, false)), false), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(0i, -25579i, 23898i, 58146i), Struct_2(Struct_1(false, 633f, -3226f), Struct_1(true, -1000f, 328f)), 45163u, Struct_1(false, 892f, 2187f)), vec3<i32>(0i, -61089i, 28765i), Struct_4(vec4<f32>(1644f, -946f, 107f, -1919f), Struct_1(false, -827f, -1428f), -398f, vec3<bool>(false, false, true)), true), Struct_5(Struct_3(vec2<bool>(true, false), vec4<i32>(-17226i, -1i, 2147483647i, 1i), Struct_2(Struct_1(false, -395f, 1285f), Struct_1(true, 487f, -189f)), 4681u, Struct_1(false, -1000f, -444f)), vec3<i32>(i32(-2147483648), 30267i, 3131i), Struct_4(vec4<f32>(449f, 652f, 531f, 283f), Struct_1(true, 650f, 108f), -393f, vec3<bool>(true, true, false)), false), Struct_5(Struct_3(vec2<bool>(false, true), vec4<i32>(55859i, -4380i, 0i, -42322i), Struct_2(Struct_1(true, -1955f, 394f), Struct_1(true, 1000f, -1006f)), 560u, Struct_1(false, 692f, -1491f)), vec3<i32>(1984i, 0i, 1333i), Struct_4(vec4<f32>(304f, -197f, 1778f, -578f), Struct_1(true, -100f, 594f), -1000f, vec3<bool>(false, false, false)), true), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(0i, i32(-2147483648), -11320i, 0i), Struct_2(Struct_1(true, 464f, -525f), Struct_1(false, 1210f, -245f)), 0u, Struct_1(true, 379f, -1471f)), vec3<i32>(35430i, i32(-2147483648), 60777i), Struct_4(vec4<f32>(537f, 748f, -354f, -1000f), Struct_1(true, 1596f, 855f), 1359f, vec3<bool>(true, false, true)), false), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(-1i, 14074i, -30162i, 1i), Struct_2(Struct_1(false, -299f, -1410f), Struct_1(true, -139f, -203f)), 1u, Struct_1(false, -1008f, 343f)), vec3<i32>(22065i, 43204i, 0i), Struct_4(vec4<f32>(-1046f, -1169f, -1979f, 2074f), Struct_1(true, 1000f, 305f), -477f, vec3<bool>(false, false, false)), true), Struct_5(Struct_3(vec2<bool>(true, true), vec4<i32>(1i, 2147483647i, -18136i, 2147483647i), Struct_2(Struct_1(true, -1000f, 420f), Struct_1(false, 745f, 967f)), 0u, Struct_1(true, -770f, 2224f)), vec3<i32>(-6840i, -15058i, 22198i), Struct_4(vec4<f32>(754f, -2442f, 1548f, 110f), Struct_1(true, 1846f, -1564f), -527f, vec3<bool>(true, false, true)), false), Struct_5(Struct_3(vec2<bool>(false, false), vec4<i32>(-41174i, 1i, 2147483647i, i32(-2147483648)), Struct_2(Struct_1(false, 1919f, 1361f), Struct_1(true, -641f, -1485f)), 4294967295u, Struct_1(true, 402f, -437f)), vec3<i32>(0i, -27348i, i32(-2147483648)), Struct_4(vec4<f32>(580f, -957f, -773f, -214f), Struct_1(false, -207f, -374f), -1474f, vec3<bool>(true, true, true)), false));

var<private> global1: f32;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(false, 355f, 1185f), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1314f - -462f), _wgslsmith_f_op_f32(233f - -219f)), _wgslsmith_f_op_f32(-1020f + _wgslsmith_f_op_f32(f32(-1f) * -199f))));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(~((u_input.d.x << (1u % 32u)) ^ (u_input.d.x ^ 70813u)), u_input.a), 1u >> (1u % 32u));
    global0 = array<Struct_5, 17>();
    let var_2 = 28994i;
    let var_3 = any(global2.wz);
    return var_0.b.b;
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5) -> bool {
    global2 = select(select(vec4<bool>(global2.x, false, false, all(arg_1.d.yz)), select(!vec4<bool>(arg_2.c.b.a, arg_0, arg_0, false), !vec4<bool>(false, arg_2.c.b.a, false, true), select(select(vec4<bool>(global2.x, true, false, true), vec4<bool>(false, true, arg_2.d, true), true), !vec4<bool>(false, true, arg_0, arg_1.d.x), arg_1.b.a)), !global2.x), vec4<bool>(arg_2.a.a.x, (0u <= _wgslsmith_dot_vec2_u32(u_input.d.wx, u_input.d.zw)) == (arg_1.d.x && all(vec2<bool>(true, false))), all(vec3<bool>(true, any(vec2<bool>(false, arg_1.b.a)), false)), !(_wgslsmith_sub_u32(4294967295u, 37326u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(57026u, 1u, arg_2.a.d), vec3<u32>(1u, arg_2.a.d, 1u)))), select(select(select(select(vec4<bool>(true, global2.x, false, false), vec4<bool>(false, arg_2.a.c.b.a, true, true), vec4<bool>(true, false, true, arg_0)), !vec4<bool>(global2.x, false, false, arg_2.d), global2.x), vec4<bool>(true, true, true, false), !(!vec4<bool>(true, false, arg_0, arg_0))), !vec4<bool>(4294967295u > arg_2.a.d, true, true, true), !all(select(vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, arg_0, false, global2.x), vec4<bool>(true, true, true, arg_1.d.x)))));
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(~(-vec4<i32>(u_input.b.x, 10247i, arg_2.b.x, 2147483647i))), abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~arg_2.a.b, firstLeadingBit(vec4<i32>(-1i, -2147483647i, 0i, u_input.b.x)), abs(vec4<i32>(arg_2.a.b.x, -32041i, -2147483647i, -44011i))), abs(~vec4<i32>(0i, arg_2.a.b.x, u_input.c.x, 13034i)))));
    global0 = array<Struct_5, 17>();
    global2 = select(vec4<bool>(any(vec4<bool>(!arg_2.c.b.a, true, arg_1.b.a, global2.x)), arg_0, false, false), vec4<bool>(!all(!vec4<bool>(true, global2.x, global2.x, false)), !(u_input.a < (1u ^ u_input.d.x)), true, true), vec4<bool>(false, all(!vec2<bool>(global2.x, arg_1.d.x)), global2.x, _wgslsmith_mult_u32(0u, firstTrailingBit(0u)) != ~1u));
    var_0 = select(reverseBits(vec4<i32>(-1i) * -vec4<i32>(-24433i, arg_2.a.b.x, var_0.x, u_input.c.x)), _wgslsmith_add_vec4_i32(arg_2.a.b, arg_2.a.b), false);
    return (10761u | u_input.a) < 4294967295u;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.b, arg_1.b.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(896f * arg_1.b.b) - _wgslsmith_f_op_f32(f32(-1f) * -566f)))), 255f, _wgslsmith_f_op_f32(round(1083f)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1324f, -228f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-706f, var_0.x, 762f, -1700f), vec4<f32>(arg_1.b.b, 1006f, arg_1.b.b, arg_1.a.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(391f, var_0.x, 1720f, -2620f), vec4<f32>(arg_1.a.c, 728f, 750f, var_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1041f, -473f, 314f, arg_1.a.b))), u_input.a >= 9552u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-548f, 965f, var_0.x, 1440f), vec4<f32>(arg_1.b.b, arg_1.a.b, 1145f, 326f), vec4<bool>(true, global2.x, arg_2.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, -1050f, var_0.x, -557f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1467f, var_0.x, arg_1.b.b), vec4<f32>(-708f, 587f, 292f, arg_1.b.c)))))), arg_1.a, _wgslsmith_f_op_f32(-var_0.x), arg_2.zzy);
    global0 = array<Struct_5, 17>();
    global0 = array<Struct_5, 17>();
    var var_2 = Struct_1(func_3(any(vec2<bool>(true, true)), var_1, Struct_5(Struct_3(!vec2<bool>(arg_2.x, true), vec4<i32>(-27329i, u_input.c.x, -86437i, arg_0) << (u_input.d % vec4<u32>(32u)), Struct_2(arg_1.a, var_1.b), ~u_input.d.x, Struct_1(false, 656f, -2220f)), u_input.c, var_1, global2.x)), _wgslsmith_f_op_f32(abs(arg_1.a.b)), arg_1.a.b);
    return vec3<bool>(select(any(vec3<bool>(arg_1.a.a, true, !var_2.a)), true & (arg_1.b.a && true), any(select(!vec2<bool>(var_2.a, true), arg_2.yx, arg_1.b.a))), min(~u_input.a, min(1612u, firstLeadingBit(49854u))) > 0u, false != arg_1.b.a);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(473f, arg_2)))), _wgslsmith_f_op_f32(func_2()), 1241f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-929f + -1354f), 2422f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(121f * arg_1), _wgslsmith_div_f32(615f, -272f)), 1000f, -641f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), func_4(u_input.c.x, Struct_2(Struct_1(func_3(global2.x, Struct_4(vec4<f32>(-592f, arg_1, arg_2, 1809f), Struct_1(true, arg_1, arg_0), 1081f, arg_3.xxw), global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1083f)), Struct_1(4294967295u > u_input.a, _wgslsmith_f_op_f32(arg_1 - -368f), _wgslsmith_f_op_f32(-arg_2))), arg_3));
    global0 = array<Struct_5, 17>();
    global1 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), 17u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1173f - 1000f) * _wgslsmith_f_op_f32(arg_1 - -789f)))) * _wgslsmith_f_op_f32(round(1499f)));
    return !(!arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-429f)))) * 2044f)));
    global2 = !(!(!select(func_1(-229f, -1002f, 954f, vec4<bool>(true, true, false, global2.x)), !vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(false, false, global2.x, global2.x))));
    var var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 - 1739f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0)))));
    global0 = array<Struct_5, 17>();
    global2 = vec4<bool>(!(!(var_0 >= 468f)), !(!(global2.x && global2.x)), u_input.c.x != _wgslsmith_mult_i32(u_input.b.x, u_input.b.x & (u_input.c.x << (u_input.a % 32u))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.yx, -vec2<i32>(25264i, u_input.b.x)), vec2<i32>(u_input.b.x, ~u_input.c.x)));
}

