struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(true, Struct_2(vec2<i32>(18296i, 1i), Struct_1(vec2<i32>(0i, 0i), vec3<u32>(0u, 21656u, 29086u), vec4<f32>(284f, 480f, 915f, 1490f), vec2<f32>(-209f, 1455f)), 25607u, Struct_1(vec2<i32>(-1i, 3661i), vec3<u32>(22295u, 0u, 0u), vec4<f32>(-654f, -237f, -173f, 326f), vec2<f32>(-626f, 170f))), Struct_1(vec2<i32>(0i, -50335i), vec3<u32>(0u, 0u, 1u), vec4<f32>(-177f, -858f, 723f, 237f), vec2<f32>(171f, -1217f)), vec2<i32>(i32(-2147483648), 1i), vec4<i32>(18351i, -8552i, 0i, 70253i)), Struct_3(true, Struct_2(vec2<i32>(-1i, 0i), Struct_1(vec2<i32>(0i, 1i), vec3<u32>(62121u, 4294967295u, 0u), vec4<f32>(-725f, 1101f, 1638f, 1022f), vec2<f32>(-245f, -1000f)), 1u, Struct_1(vec2<i32>(1i, -21152i), vec3<u32>(16334u, 10468u, 11043u), vec4<f32>(1782f, 742f, 981f, 691f), vec2<f32>(478f, 319f))), Struct_1(vec2<i32>(0i, -1i), vec3<u32>(0u, 1u, 0u), vec4<f32>(661f, 834f, 1144f, 398f), vec2<f32>(1403f, 1373f)), vec2<i32>(-1i, -1i), vec4<i32>(-29776i, -55174i, 2147483647i, -10890i)), Struct_3(false, Struct_2(vec2<i32>(5953i, 0i), Struct_1(vec2<i32>(7710i, 52013i), vec3<u32>(4294967295u, 7923u, 1u), vec4<f32>(-324f, 568f, -613f, -193f), vec2<f32>(306f, 355f)), 0u, Struct_1(vec2<i32>(1i, -39005i), vec3<u32>(78070u, 0u, 85317u), vec4<f32>(-2151f, 623f, -885f, 849f), vec2<f32>(398f, 1532f))), Struct_1(vec2<i32>(0i, -1i), vec3<u32>(1u, 4853u, 4294967295u), vec4<f32>(-1545f, -318f, 688f, -998f), vec2<f32>(293f, 199f)), vec2<i32>(-24218i, -8209i), vec4<i32>(45449i, 1i, -1i, -1i)), Struct_3(true, Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(vec2<i32>(-20045i, 6471i), vec3<u32>(22043u, 57610u, 4294967295u), vec4<f32>(-262f, 1229f, 1000f, -478f), vec2<f32>(-217f, 109f)), 71843u, Struct_1(vec2<i32>(14254i, 7556i), vec3<u32>(73953u, 1u, 4294967295u), vec4<f32>(-137f, -893f, 726f, 1030f), vec2<f32>(1346f, -877f))), Struct_1(vec2<i32>(-26862i, -1i), vec3<u32>(44708u, 4294967295u, 1u), vec4<f32>(-1570f, 712f, -498f, -149f), vec2<f32>(629f, -1812f)), vec2<i32>(2147483647i, 1i), vec4<i32>(-7489i, -69894i, -14196i, i32(-2147483648))), Struct_3(false, Struct_2(vec2<i32>(2147483647i, 5784i), Struct_1(vec2<i32>(-39367i, 34948i), vec3<u32>(16065u, 0u, 55570u), vec4<f32>(-766f, 1307f, 1000f, 121f), vec2<f32>(-1000f, -1282f)), 33613u, Struct_1(vec2<i32>(-9202i, i32(-2147483648)), vec3<u32>(43968u, 0u, 64936u), vec4<f32>(-758f, -820f, 255f, 527f), vec2<f32>(437f, -452f))), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<u32>(7117u, 0u, 1u), vec4<f32>(-813f, -1000f, 677f, 316f), vec2<f32>(1153f, -263f)), vec2<i32>(i32(-2147483648), 31939i), vec4<i32>(-51285i, -1i, -16617i, -38026i)), Struct_3(true, Struct_2(vec2<i32>(12836i, -1i), Struct_1(vec2<i32>(2147483647i, 1i), vec3<u32>(6539u, 64967u, 23907u), vec4<f32>(-1000f, -586f, 711f, 107f), vec2<f32>(-1342f, -1052f)), 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), -45369i), vec3<u32>(79571u, 21033u, 4294967295u), vec4<f32>(534f, -426f, -878f, -714f), vec2<f32>(-659f, -1757f))), Struct_1(vec2<i32>(1i, 0i), vec3<u32>(0u, 1u, 0u), vec4<f32>(1196f, -125f, 1002f, 996f), vec2<f32>(1242f, -470f)), vec2<i32>(2147483647i, -12845i), vec4<i32>(0i, -3650i, 1i, -12892i)), Struct_3(false, Struct_2(vec2<i32>(0i, 1i), Struct_1(vec2<i32>(0i, -1i), vec3<u32>(71749u, 1u, 25805u), vec4<f32>(1798f, 291f, -415f, -155f), vec2<f32>(-1000f, 205f)), 37854u, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(32617u, 15784u, 55885u), vec4<f32>(-403f, 896f, -646f, -1633f), vec2<f32>(2177f, 244f))), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<u32>(4944u, 4294967295u, 10402u), vec4<f32>(1000f, -284f, -2222f, -298f), vec2<f32>(-1218f, -1729f)), vec2<i32>(0i, -48201i), vec4<i32>(-1i, 57378i, i32(-2147483648), -3345i)), Struct_3(true, Struct_2(vec2<i32>(2147483647i, -29385i), Struct_1(vec2<i32>(-2442i, -38196i), vec3<u32>(1u, 45003u, 55472u), vec4<f32>(-1000f, 1560f, 702f, -1445f), vec2<f32>(1171f, 1110f)), 4294967295u, Struct_1(vec2<i32>(-13563i, -15327i), vec3<u32>(1u, 1u, 4294967295u), vec4<f32>(-574f, -300f, -2371f, -404f), vec2<f32>(-1000f, 1355f))), Struct_1(vec2<i32>(-81553i, 2147483647i), vec3<u32>(14914u, 1u, 20513u), vec4<f32>(101f, 1000f, -1407f, 984f), vec2<f32>(114f, 801f)), vec2<i32>(0i, i32(-2147483648)), vec4<i32>(-24946i, i32(-2147483648), 1i, 1i)), Struct_3(false, Struct_2(vec2<i32>(32164i, -28502i), Struct_1(vec2<i32>(0i, 10227i), vec3<u32>(21891u, 30471u, 110248u), vec4<f32>(444f, 1275f, -277f, 2142f), vec2<f32>(-1194f, 1374f)), 55328u, Struct_1(vec2<i32>(20743i, 14836i), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(-685f, -1252f, 119f, -350f), vec2<f32>(-508f, 579f))), Struct_1(vec2<i32>(-33362i, 2147483647i), vec3<u32>(1u, 40993u, 0u), vec4<f32>(-436f, -1737f, -569f, 514f), vec2<f32>(-260f, -1000f)), vec2<i32>(1i, 1i), vec4<i32>(1i, 5859i, 73106i, 10491i)), Struct_3(true, Struct_2(vec2<i32>(i32(-2147483648), 20018i), Struct_1(vec2<i32>(1i, 9421i), vec3<u32>(28957u, 1u, 1u), vec4<f32>(-1237f, 1846f, -1843f, -419f), vec2<f32>(258f, -221f)), 0u, Struct_1(vec2<i32>(1i, 19224i), vec3<u32>(78205u, 1u, 14577u), vec4<f32>(151f, 1396f, -1341f, -1000f), vec2<f32>(-848f, -1979f))), Struct_1(vec2<i32>(-42839i, 0i), vec3<u32>(4294967295u, 4294967295u, 96190u), vec4<f32>(711f, 523f, -505f, 498f), vec2<f32>(250f, 717f)), vec2<i32>(1i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 18052i, -1i)), Struct_3(false, Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<i32>(-27436i, -8150i), vec3<u32>(1u, 36728u, 88112u), vec4<f32>(-1849f, -836f, 1336f, 196f), vec2<f32>(302f, -306f)), 126924u, Struct_1(vec2<i32>(i32(-2147483648), -1i), vec3<u32>(4294967295u, 0u, 8504u), vec4<f32>(1538f, -1993f, -456f, -543f), vec2<f32>(-480f, -420f))), Struct_1(vec2<i32>(-32602i, -1i), vec3<u32>(62202u, 46876u, 5744u), vec4<f32>(-729f, 1000f, 796f, 1210f), vec2<f32>(739f, -2832f)), vec2<i32>(-1i, 2147483647i), vec4<i32>(2147483647i, 6082i, 1i, 2147483647i)));

var<private> global1: bool = true;

var<private> global2: bool;

var<private> global3: array<Struct_1, 8>;

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(~global4.d.a, vec3<u32>(4294967295u, global4.d.b.x, 111186u), global4.b.c, _wgslsmith_f_op_vec2_f32(-global4.b.d));
    let var_1 = u_input.a;
    global3 = array<Struct_1, 8>();
    global3 = array<Struct_1, 8>();
    var var_2 = global0[_wgslsmith_index_u32(global4.b.b.x, 11u)];
    return global4.d.d.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = (4294967295u ^ firstTrailingBit(_wgslsmith_mult_u32(reverseBits(arg_2.b.d.b.x), 0u))) >> (~(~(~firstTrailingBit(arg_2.b.c))) % 32u);
    var_0 = arg_2.b.d.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.c.xzz, global4.d.c.wxw))) - vec3<f32>(_wgslsmith_f_op_f32(func_3(1i)), _wgslsmith_f_op_f32(1433f - -1173f), _wgslsmith_f_op_f32(trunc(1675f))))) - arg_2.c.c.xww);
    var var_2 = select(countOneBits(min(select(arg_2.e, vec4<i32>(arg_2.b.d.a.x, arg_2.b.d.a.x, u_input.b, 59131i), arg_2.a) ^ (vec4<i32>(-10001i, arg_1.a.x, 2147483647i, 15624i) << (vec4<u32>(arg_1.b.x, 20197u, 31113u, arg_1.b.x) % vec4<u32>(32u))), abs(arg_2.e))), vec4<i32>(-1i, -6690i, -(i32(-1i) * -23472i), firstLeadingBit(-36555i)), vec4<bool>(arg_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))) < _wgslsmith_f_op_f32(-1114f * -751f), !(arg_2.a | arg_2.a) & arg_2.a, true));
    let var_3 = global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(1u, arg_1.b.x, arg_1.b.x, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, arg_2.c.b.x) >> (vec4<u32>(0u, arg_1.b.x, 27090u, 10680u) % vec4<u32>(32u)), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a)), countOneBits(vec4<u32>(0u, 1u, arg_1.b.x, arg_1.b.x))), countOneBits(min(vec4<u32>(arg_2.c.b.x, 47589u, 1u, arg_1.b.x), vec4<u32>(22383u, 19125u, 51596u, arg_1.b.x)))), firstLeadingBit(arg_2.c.b.x)), 8u)];
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = global4.b.d.x;
    global4 = Struct_2(global4.d.a, global4.b, arg_0.b.c << (global4.c % 32u), func_2(arg_0.c.d.x, global3[_wgslsmith_index_u32(63947u, 8u)], func_2(_wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(-global4.b.c.x)), Struct_1(arg_0.c.a, global4.d.b, global4.d.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1464f, arg_1))), func_2(_wgslsmith_f_op_f32(-global4.d.c.x), func_2(arg_0.b.d.d.x, Struct_1(vec2<i32>(u_input.c, -17625i), vec3<u32>(arg_0.b.d.b.x, 2060u, global4.b.b.x), global4.b.c, global4.d.c.yz), arg_0).b.d, arg_0))).b.b);
    var var_1 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(756f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(abs(621f))), _wgslsmith_f_op_f32(-arg_0.c.d.x));
    return ~(~_wgslsmith_dot_vec3_u32(reverseBits(arg_0.c.b) & vec3<u32>(arg_0.b.c, arg_0.b.d.b.x, arg_0.b.d.b.x), vec3<u32>(firstTrailingBit(arg_0.c.b.x), _wgslsmith_clamp_u32(44647u, global4.b.b.x, arg_0.c.b.x), firstTrailingBit(arg_0.b.b.b.x))));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = vec2<u32>(0u, arg_0) & ~vec2<u32>(func_4(func_2(162f, Struct_1(global4.b.a, global4.d.b, global4.b.c, global4.b.c.zz), global0[_wgslsmith_index_u32(global4.b.b.x, 11u)]), func_2(global4.b.c.x, Struct_1(global4.a, global4.b.b, vec4<f32>(-305f, global4.b.c.x, global4.b.d.x, 246f), global4.b.c.wx), Struct_3(true, Struct_2(global4.a, global4.d, 0u, Struct_1(global4.a, vec3<u32>(arg_0, 0u, 0u), global4.d.c, global4.b.c.ww)), global3[_wgslsmith_index_u32(global4.b.b.x, 8u)], vec2<i32>(-2147483647i, -1i), vec4<i32>(global4.a.x, global4.d.a.x, -14871i, -63017i))).b.b.d.x), select(~global4.b.b.x, global4.b.b.x, true));
    return StorageBuffer(global4.b.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b.c.xyx)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1627f, 234f, global4.b.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global4.d.b.x);
}

