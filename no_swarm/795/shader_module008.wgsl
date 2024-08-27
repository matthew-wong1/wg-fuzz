struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1;

var<private> global2: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(vec3<u32>(47666u, 4294967295u, 1u), 1577f, Struct_1(vec2<u32>(136757u, 7245u), 1i), Struct_4(false, vec4<bool>(true, false, false, false), vec4<f32>(2348f, 541f, -1402f, 126f), Struct_1(vec2<u32>(43391u, 0u), -11159i), vec2<bool>(false, true)), vec3<bool>(true, false, false)), Struct_5(vec3<u32>(4294967295u, 0u, 0u), 931f, Struct_1(vec2<u32>(22369u, 1u), -17314i), Struct_4(false, vec4<bool>(true, false, false, true), vec4<f32>(-545f, 204f, -215f, 1596f), Struct_1(vec2<u32>(4289u, 0u), 1i), vec2<bool>(false, true)), vec3<bool>(false, true, false)), Struct_5(vec3<u32>(1u, 35589u, 78596u), 350f, Struct_1(vec2<u32>(1u, 0u), -8274i), Struct_4(true, vec4<bool>(true, false, false, true), vec4<f32>(-1271f, 1230f, -697f, -1882f), Struct_1(vec2<u32>(1u, 9961u), 0i), vec2<bool>(true, false)), vec3<bool>(true, true, true)), Struct_5(vec3<u32>(94843u, 0u, 0u), -966f, Struct_1(vec2<u32>(64392u, 27137u), -13562i), Struct_4(true, vec4<bool>(true, true, true, true), vec4<f32>(-787f, 2124f, -512f, -1877f), Struct_1(vec2<u32>(10156u, 4294967295u), -1i), vec2<bool>(false, true)), vec3<bool>(false, true, true)), Struct_5(vec3<u32>(44863u, 85010u, 4294967295u), -1318f, Struct_1(vec2<u32>(44250u, 0u), -5321i), Struct_4(false, vec4<bool>(false, true, false, false), vec4<f32>(-937f, 585f, -1000f, -823f), Struct_1(vec2<u32>(1u, 4294967295u), -1i), vec2<bool>(false, false)), vec3<bool>(false, false, false)), Struct_5(vec3<u32>(18791u, 3848u, 75845u), -1184f, Struct_1(vec2<u32>(1u, 0u), 2147483647i), Struct_4(true, vec4<bool>(false, false, false, true), vec4<f32>(1535f, -604f, 2304f, 189f), Struct_1(vec2<u32>(32075u, 20570u), -1i), vec2<bool>(false, false)), vec3<bool>(false, false, true)), Struct_5(vec3<u32>(1u, 39128u, 15109u), -513f, Struct_1(vec2<u32>(39276u, 11779u), 2147483647i), Struct_4(false, vec4<bool>(true, false, false, true), vec4<f32>(-351f, -1000f, -181f, -682f), Struct_1(vec2<u32>(734u, 4294967295u), 0i), vec2<bool>(true, true)), vec3<bool>(false, false, false)), Struct_5(vec3<u32>(4294967295u, 4751u, 29568u), 1524f, Struct_1(vec2<u32>(1u, 48669u), -3453i), Struct_4(false, vec4<bool>(false, true, true, false), vec4<f32>(-454f, 1465f, 1000f, -570f), Struct_1(vec2<u32>(149273u, 4294967295u), i32(-2147483648)), vec2<bool>(true, true)), vec3<bool>(true, false, false)), Struct_5(vec3<u32>(49860u, 4294967295u, 3905u), -1000f, Struct_1(vec2<u32>(4294967295u, 1u), -25521i), Struct_4(true, vec4<bool>(false, false, true, true), vec4<f32>(-1027f, 2085f, -808f, -1000f), Struct_1(vec2<u32>(35588u, 35485u), -64582i), vec2<bool>(false, false)), vec3<bool>(true, false, false)), Struct_5(vec3<u32>(4294967295u, 53563u, 68478u), 791f, Struct_1(vec2<u32>(92452u, 4294967295u), 18829i), Struct_4(false, vec4<bool>(false, true, false, true), vec4<f32>(1000f, 1479f, 550f, -1585f), Struct_1(vec2<u32>(8069u, 4294967295u), 9620i), vec2<bool>(false, true)), vec3<bool>(false, true, false)), Struct_5(vec3<u32>(0u, 53372u, 4294967295u), -677f, Struct_1(vec2<u32>(0u, 26094u), -3822i), Struct_4(true, vec4<bool>(false, true, true, true), vec4<f32>(248f, 784f, -1993f, -844f), Struct_1(vec2<u32>(48867u, 1u), -1i), vec2<bool>(true, false)), vec3<bool>(true, false, false)), Struct_5(vec3<u32>(1u, 72714u, 7207u), -590f, Struct_1(vec2<u32>(26234u, 33382u), i32(-2147483648)), Struct_4(true, vec4<bool>(true, false, false, true), vec4<f32>(695f, -1512f, -269f, 181f), Struct_1(vec2<u32>(44104u, 1u), -1i), vec2<bool>(true, false)), vec3<bool>(true, false, false)), Struct_5(vec3<u32>(0u, 0u, 1u), 362f, Struct_1(vec2<u32>(41224u, 47765u), 16163i), Struct_4(false, vec4<bool>(false, false, true, false), vec4<f32>(-1294f, 483f, -626f, 915f), Struct_1(vec2<u32>(90566u, 0u), 14963i), vec2<bool>(false, true)), vec3<bool>(true, false, false)), Struct_5(vec3<u32>(1u, 24256u, 1u), 1661f, Struct_1(vec2<u32>(0u, 91326u), 39746i), Struct_4(false, vec4<bool>(true, false, true, false), vec4<f32>(-602f, 373f, -150f, -618f), Struct_1(vec2<u32>(1u, 23366u), 29373i), vec2<bool>(true, false)), vec3<bool>(false, false, true)), Struct_5(vec3<u32>(1u, 0u, 28177u), 346f, Struct_1(vec2<u32>(0u, 81037u), -1794i), Struct_4(true, vec4<bool>(true, false, true, true), vec4<f32>(-1480f, 987f, 859f, 2250f), Struct_1(vec2<u32>(0u, 18973u), 0i), vec2<bool>(false, true)), vec3<bool>(false, true, true)), Struct_5(vec3<u32>(1u, 4294967295u, 4294967295u), -1710f, Struct_1(vec2<u32>(2883u, 1u), 1i), Struct_4(false, vec4<bool>(false, true, false, true), vec4<f32>(-183f, -800f, -193f, 1308f), Struct_1(vec2<u32>(8133u, 25620u), 1i), vec2<bool>(true, false)), vec3<bool>(false, true, true)), Struct_5(vec3<u32>(5297u, 4294967295u, 14156u), 1174f, Struct_1(vec2<u32>(44586u, 0u), 36273i), Struct_4(true, vec4<bool>(false, false, false, false), vec4<f32>(-1240f, -653f, -1807f, 670f), Struct_1(vec2<u32>(0u, 55625u), 46611i), vec2<bool>(true, true)), vec3<bool>(true, true, false)), Struct_5(vec3<u32>(4294967295u, 4294967295u, 47717u), 197f, Struct_1(vec2<u32>(0u, 0u), -22187i), Struct_4(true, vec4<bool>(true, false, false, true), vec4<f32>(1003f, 1065f, -274f, -600f), Struct_1(vec2<u32>(54475u, 1u), 46787i), vec2<bool>(true, false)), vec3<bool>(false, false, false)), Struct_5(vec3<u32>(4294967295u, 4294967295u, 0u), 129f, Struct_1(vec2<u32>(63534u, 1u), -29021i), Struct_4(true, vec4<bool>(false, true, true, true), vec4<f32>(-968f, 537f, 244f, 600f), Struct_1(vec2<u32>(1u, 1u), 37367i), vec2<bool>(false, false)), vec3<bool>(false, true, false)), Struct_5(vec3<u32>(4294967295u, 0u, 74950u), -205f, Struct_1(vec2<u32>(1u, 4294967295u), 32022i), Struct_4(true, vec4<bool>(false, true, true, true), vec4<f32>(-163f, 1210f, 1065f, 1590f), Struct_1(vec2<u32>(4690u, 33332u), -1i), vec2<bool>(false, false)), vec3<bool>(false, false, false)), Struct_5(vec3<u32>(0u, 1u, 24229u), -472f, Struct_1(vec2<u32>(29495u, 8261u), 0i), Struct_4(false, vec4<bool>(false, false, true, false), vec4<f32>(666f, 1119f, -1924f, 135f), Struct_1(vec2<u32>(0u, 4294967295u), -1i), vec2<bool>(false, true)), vec3<bool>(false, true, true)), Struct_5(vec3<u32>(35437u, 4294967295u, 13698u), 1783f, Struct_1(vec2<u32>(6891u, 30214u), 27941i), Struct_4(true, vec4<bool>(false, true, false, true), vec4<f32>(941f, 223f, -1699f, -856f), Struct_1(vec2<u32>(15026u, 13091u), -25996i), vec2<bool>(false, true)), vec3<bool>(false, false, true)), Struct_5(vec3<u32>(81892u, 20956u, 12192u), -1257f, Struct_1(vec2<u32>(61249u, 1u), -1i), Struct_4(false, vec4<bool>(true, false, true, false), vec4<f32>(-215f, 578f, 1000f, -1190f), Struct_1(vec2<u32>(4294967295u, 0u), 0i), vec2<bool>(false, true)), vec3<bool>(false, false, true)));

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_2(global3.a.b, Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(global3.a.b.a.x, global3.a.a.a.x), vec2<u32>(1u, u_input.e)), -u_input.b.x)));
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(countOneBits(~(~1u)), var_0.a.b.a.x)), 23u)];
    var var_2 = var_1.d;
    let var_3 = Struct_4(false, var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2415f), _wgslsmith_div_f32(-701f, var_1.d.c.x), _wgslsmith_f_op_f32(-var_1.d.c.x), -2146f)))), Struct_1(~(abs(var_0.a.b.a) >> (u_input.d % vec2<u32>(32u))), 46785i), select(var_1.e.zz, !var_1.e.xz, var_2.c.x == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(738f + -325f)))));
    let var_4 = Struct_3(Struct_2(Struct_1(vec2<u32>(_wgslsmith_sub_u32(global3.a.b.a.x, var_1.a.x), 12209u), firstLeadingBit(~(-2147483647i))), var_3.d));
    return var_3;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = max(vec3<u32>(global0.d.a.x << (_wgslsmith_add_u32(u_input.a, 1u) % 32u), _wgslsmith_add_u32(arg_0.d.a.x, arg_2.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.e, global1.a.x, global3.a.a.a.x), vec4<u32>(0u, global0.d.a.x, global3.a.b.a.x, global0.d.a.x), global0.a), vec4<u32>(arg_2.a.x, global3.a.b.a.x, 35646u, 9730u))), ~vec3<u32>(arg_2.a.x, 4398u, ~u_input.a)) << (~(vec3<u32>(~4294967295u, global3.a.a.a.x, 2278u) ^ vec3<u32>(~0u, u_input.e, 16476u)) % vec3<u32>(32u));
    var var_1 = 1403f;
    global1 = func_2().d;
    var var_2 = Struct_3(Struct_2(func_2().d, func_2().d));
    let var_3 = select(!arg_1, arg_1, !any(!global0.b.yw));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_4 {
    global0 = func_3(func_2(), !(!vec3<bool>(true, global0.a, global0.a)), global3.a.a);
    let var_0 = global0.b.zyw;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.wzw));
    global0 = func_3(func_3(func_3(func_2(), vec3<bool>(global0.e.x | global0.a, true, var_0.x || true), Struct_1(firstLeadingBit(u_input.d), ~0i)), vec3<bool>(true, !any(vec2<bool>(global0.e.x, global0.a)), true | global0.a), global3.a.a), vec3<bool>(true == (_wgslsmith_f_op_f32(step(var_1.x, -1365f)) > _wgslsmith_f_op_f32(select(-613f, global0.c.x, var_0.x))), func_3(func_3(func_3(Struct_4(var_0.x, global0.b, global0.c, global0.d, var_0.zx), vec3<bool>(false, true, var_0.x), Struct_1(global1.a, global0.d.b)), !global0.b.zwx, func_3(Struct_4(true, global0.b, vec4<f32>(var_1.x, 1761f, var_1.x, -207f), global3.a.a, vec2<bool>(false, false)), vec3<bool>(var_0.x, global0.a, global0.b.x), Struct_1(global1.a, 2147483647i)).d), func_2().b.yyw, func_3(Struct_4(global0.a, global0.b, global0.c, global0.d, global0.e), vec3<bool>(var_0.x, global0.b.x, false), Struct_1(vec2<u32>(1u, u_input.d.x), global1.b)).d).b.x, (any(vec4<bool>(true, false, false, true)) || any(vec2<bool>(false, false))) & true), func_3(func_3(Struct_4(true, !global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1136f, var_1.x, 639f, -640f)), Struct_1(u_input.d, -34484i), vec2<bool>(false, global0.b.x)), global0.b.zzz, Struct_1(~vec2<u32>(global0.d.a.x, global1.a.x), i32(-1i) * -1i)), global0.b.ywz, func_2().d).d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) - -1055f);
    return func_3(func_3(Struct_4(global0.e.x, global0.b, vec4<f32>(921f, _wgslsmith_f_op_f32(-global0.c.x), global0.c.x, _wgslsmith_div_f32(433f, 380f)), func_3(Struct_4(true, global0.b, vec4<f32>(580f, global0.c.x, var_1.x, var_1.x), global3.a.a, global0.e), vec3<bool>(var_0.x, false, true), global0.d).d, select(var_0.yy, func_3(Struct_4(var_0.x, global0.b, vec4<f32>(global0.c.x, 528f, 376f, 1000f), global3.a.a, global0.b.wz), global0.b.wxy, global0.d).e, true)), global0.b.zxz, Struct_1(vec2<u32>(max(global0.d.a.x, 74989u), 1u), firstLeadingBit(countOneBits(global1.b)))), vec3<bool>(true, true, true), global3.a.a);
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = -abs(-862i);
    global1 = func_2().d;
    let var_2 = var_0.d;
    var var_3 = Struct_5(vec3<u32>(38869u, ~(_wgslsmith_mult_u32(64499u, u_input.d.x) & global3.a.a.a.x), 1u), var_2.c.x, var_2.d, func_3(arg_0.d, vec3<bool>(true, false, true), var_2.d), !vec3<bool>(var_0.d.a, global3.a.a.b <= u_input.b.x, func_1(20023i).a));
    return Struct_2(var_0.d.d, func_3(var_2, func_1(~_wgslsmith_mod_i32(2147483647i, global1.b)).b.xzy, Struct_1(_wgslsmith_div_vec2_u32(var_0.d.d.a, min(u_input.c, var_0.c.a)), 2147483647i)).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(~vec3<u32>(global1.a.x, global3.a.a.a.x >> (31920u % 32u), global1.a.x), global0.c.x, Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(global3.a.b.a.x, global0.d.a.x), vec2<u32>(u_input.e, global0.d.a.x)), u_input.b.x), func_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, u_input.b.x), -global1.b)), select(global0.b.yyx, !vec3<bool>(global0.a, false, false), func_1(-1i).b.xxw)));
    var var_1 = 14868i >> ((_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, global3.a.b.a.x), 0u) >> (func_1(abs(-2147483647i)).d.a.x % 32u)) % 32u);
    var var_2 = global0.b;
    var var_3 = ~((_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i), -vec4<i32>(global0.d.b, -37424i, u_input.b.x, global0.d.b)) | ~countOneBits(vec4<i32>(global1.b, var_0.a.b, -1i, u_input.b.x))) | vec4<i32>(u_input.b.x, firstTrailingBit(2147483647i), -18107i, -2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.x, global3.a.b.a.x, global3.a.a.a.x, global3.a.b.a.x), vec4<u32>(1u, 49611u, u_input.e, var_0.a.a.x)) % 32u)));
    let var_4 = ~(~_wgslsmith_mult_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(global1.a.x, 16295u, global1.a.x, 1u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, global0.d.a.x, u_input.c.x), vec4<u32>(global1.a.x, global3.a.a.a.x, 1u, u_input.e), vec4<u32>(global1.a.x, 1u, u_input.e, global3.a.a.a.x)), reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(global1.a.x, u_input.a, 29425u, 4707u))));
    var_2 = vec4<bool>(true, false, (func_1(-1i).d.b == ~(-u_input.b.x)) && true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -852f), global0.c.x)))), _wgslsmith_f_op_vec4_f32(abs(global0.c)), 39426u, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-42958i, 43863i, global3.a.a.b, -2147483647i), vec4<i32>(var_3.x, u_input.b.x, 1i, 2147483647i)), vec4<i32>(-9552i, -u_input.b.x, 2147483647i, var_3.x)) ^ max(33872i, _wgslsmith_sub_i32(global3.a.a.b, 19761i)));
}

