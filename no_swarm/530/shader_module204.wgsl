struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_3(-171f, arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.b.c.wz);
    var var_2 = ~(~u_input.a);
    global1 = true;
    var var_3 = _wgslsmith_mult_u32(abs(u_input.a) | ~abs(u_input.b.x), ~_wgslsmith_div_u32(1823u ^ abs(u_input.a), 2503u));
    return select(vec2<bool>(!(!any(vec4<bool>(false, false, var_0.b.b.d, global0.x))), true), select(vec2<bool>(global0.x, true), select(select(arg_0.a, global0.yw, all(vec3<bool>(true, true, global0.x))), vec2<bool>(false, arg_0.b.d), !var_0.b.a), true), !vec2<bool>(arg_0.b.d, global0.x));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(764f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1011i, 1i, 18945i), ~vec3<i32>(12227i, -15585i, 2147483647i)) <= countOneBits(firstTrailingBit(-2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(899f, -2255f)) + -898f)));
    let var_1 = Struct_2(!select(!func_3(Struct_2(global0.yw, Struct_1(vec3<i32>(2147483647i, -2147483647i, -3000i), -394f, vec4<f32>(-931f, 675f, 2330f, -972f), true), global2[_wgslsmith_index_u32(25479u, 14u)])), global0.wy, !select(vec2<bool>(global0.x, false), vec2<bool>(false, true), global0.x)), Struct_1(firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(24944i, -12346i, 1i), vec3<i32>(1i, 2147483647i, 3128i)))), 1535f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(1699f, 564f)), _wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(select(-235f, 606f, false)), -439f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-814f, 748f, -691f, 350f) * vec4<f32>(-1751f, -361f, -649f, -231f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-793f, -2108f, -834f, 529f)))), !vec4<bool>(global0.x, global0.x, global0.x, global0.x))), true), global2[_wgslsmith_index_u32(u_input.b.x, 14u)]);
    var_0 = _wgslsmith_f_op_f32(-489f - -850f);
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), firstTrailingBit(abs(countOneBits(u_input.b.x)))), u_input.b.x);
    var_0 = -567f;
    return all(vec4<bool>(var_1.a.x, all(!select(var_1.a, vec2<bool>(global0.x, global0.x), var_1.a)), false, func_3(var_1).x));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_5, arg_3: Struct_5) -> Struct_5 {
    global0 = !(!select(!select(vec4<bool>(arg_2.a.c.d, true, global0.x, global0.x), vec4<bool>(arg_3.a.b.d, true, global0.x, false), vec4<bool>(false, false, arg_3.b.a.d, false)), !vec4<bool>(global0.x, global0.x, arg_3.b.d.d, true), select(vec4<bool>(true, arg_3.b.d.d, false, false), !vec4<bool>(arg_3.b.b.x, arg_2.a.b.d, global0.x, true), func_2())));
    var var_0 = u_input.b.xwx;
    var var_1 = arg_3.a;
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    return arg_3;
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    global0 = select(select(vec4<bool>(arg_0.a.c.d, arg_0.b.d.d, false, global0.x), vec4<bool>(true, !global0.x && true, select(false, arg_0.a.c.d, true), arg_0.b.b.x & select(arg_2.b.b.d, false, arg_2.b.b.d)), true), !select(select(!vec4<bool>(arg_2.b.a.x, false, arg_2.b.a.x, arg_0.a.c.d), vec4<bool>(true, arg_0.b.b.x, true, global0.x), vec4<bool>(true, arg_2.b.a.x, true, global0.x)), vec4<bool>(arg_0.a.b.d, false, true, func_1(arg_0.b.d.c.xwy, arg_1.x, arg_0, Struct_5(arg_0.a, arg_0.b, -28630i)).a.b.d), (false != arg_0.b.b.x) && true), any(global0.zyw));
    global1 = global0.x;
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(0i, 1i, -2147483647i, -1i)) << (vec4<u32>(abs(u_input.a), abs(4294967295u), firstLeadingBit(u_input.b.x | 64791u), func_4(func_1(vec3<f32>(1408f, -123f, 1184f), 52435i, Struct_5(Struct_2(vec2<bool>(true, global0.x), Struct_1(vec3<i32>(-1i, -2147483647i, -26534i), 1000f, vec4<f32>(1000f, 721f, -131f, -126f), global0.x), global2[_wgslsmith_index_u32(41014u, 14u)]), Struct_4(Struct_1(vec3<i32>(22119i, 0i, 2147483647i), 2183f, vec4<f32>(331f, 435f, -968f, 232f), true), global0.zzx, -9991i, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec2<i32>(2147483647i, 29871i)), 1i), Struct_5(Struct_2(vec2<bool>(global0.x, global0.x), global2[_wgslsmith_index_u32(u_input.b.x, 14u)], Struct_1(vec3<i32>(9694i, -1i, -1i), -1000f, vec4<f32>(-579f, -1293f, 104f, -441f), true)), Struct_4(global2[_wgslsmith_index_u32(11920u, 14u)], vec3<bool>(global0.x, global0.x, global0.x), -34547i, global2[_wgslsmith_index_u32(u_input.a, 14u)], vec2<i32>(15218i, 2147483647i)), -4679i)), select(vec4<i32>(2147483647i, 32257i, -1i, 37132i), vec4<i32>(-1i, 28624i, 0i, 2147483647i), vec4<bool>(global0.x, false, true, true)), Struct_3(-1215f, Struct_2(global0.wx, Struct_1(vec3<i32>(-79847i, -2147483647i, -4421i), 611f, vec4<f32>(-1209f, 1216f, 151f, 446f), global0.x), global2[_wgslsmith_index_u32(u_input.a, 14u)])))) % vec4<u32>(32u)));
    global2 = array<Struct_1, 14>();
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1621f, -1612f, 1664f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-359f, 2044f, -861f) + vec3<f32>(886f, 1805f, 1067f)))))), ~15228i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(-14659i, var_0.x, -1i, -2147483647i) >> (u_input.b % vec4<u32>(32u)), var_0), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, 1000f, -434f) - vec3<f32>(-310f, 309f, -336f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-585f, -1000f, 469f)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-138f, 383f, -355f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, -1203f, 1082f))))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(668f, 166f, 492f) + vec3<f32>(-1116f, -1049f, -444f)), -2147483647i, func_1(vec3<f32>(1000f, -577f, 1095f), 14440i, Struct_5(Struct_2(global0.ww, Struct_1(var_0.zwy, 1703f, vec4<f32>(-678f, 1427f, 2701f, 1565f), global0.x), global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(Struct_1(var_0.zzz, -293f, vec4<f32>(-144f, -1609f, 1000f, -754f), false), vec3<bool>(global0.x, global0.x, false), 1i, global2[_wgslsmith_index_u32(57740u, 14u)], vec2<i32>(var_0.x, var_0.x)), var_0.x), Struct_5(Struct_2(vec2<bool>(false, global0.x), global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(42662u, 14u)]), Struct_4(global2[_wgslsmith_index_u32(0u, 14u)], global0.zyw, 2147483647i, Struct_1(vec3<i32>(var_0.x, var_0.x, 1i), -1255f, vec4<f32>(279f, 1045f, 1400f, -1661f), true), vec2<i32>(var_0.x, var_0.x)), var_0.x)), func_1(vec3<f32>(442f, -335f, -2003f), var_0.x, Struct_5(Struct_2(vec2<bool>(false, global0.x), global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(70429u, 14u)]), Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global0.wxw, var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], var_0.yz), 2147483647i), Struct_5(Struct_2(vec2<bool>(true, global0.x), global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), Struct_4(global2[_wgslsmith_index_u32(4294967295u, 14u)], global0.zxx, 1i, Struct_1(var_0.zyw, -683f, vec4<f32>(-1490f, -536f, -1908f, 1000f), global0.x), vec2<i32>(-29993i, var_0.x)), var_0.x))).c ^ 0i, func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-767f, 2445f, -1676f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, 176f, 251f)), global0.zww)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), ~vec3<i32>(var_0.x, var_0.x, -15311i)), func_1(vec3<f32>(-912f, 1554f, 133f), 5365i, func_1(vec3<f32>(-720f, 953f, -457f), var_0.x, Struct_5(Struct_2(global0.wy, Struct_1(var_0.zxy, 163f, vec4<f32>(-767f, 101f, 130f, 1238f), global0.x), Struct_1(var_0.zxx, 1169f, vec4<f32>(421f, -1000f, -1405f, -613f), global0.x)), Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global0.yzy, -5813i, global2[_wgslsmith_index_u32(u_input.a, 14u)], var_0.zw), var_0.x), Struct_5(Struct_2(global0.yy, global2[_wgslsmith_index_u32(45169u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(global2[_wgslsmith_index_u32(0u, 14u)], global0.wzw, var_0.x, Struct_1(var_0.yzw, -969f, vec4<f32>(1000f, 2882f, -735f, 445f), global0.x), var_0.zy), 13511i)), Struct_5(Struct_2(vec2<bool>(global0.x, true), Struct_1(vec3<i32>(-32700i, -1i, -1i), -844f, vec4<f32>(-1375f, 1279f, 389f, 348f), true), Struct_1(var_0.zyz, 506f, vec4<f32>(414f, -257f, -200f, 1046f), true)), Struct_4(Struct_1(vec3<i32>(var_0.x, var_0.x, -2147483647i), -1345f, vec4<f32>(-660f, -189f, -2350f, -1691f), true), vec3<bool>(true, true, global0.x), 1i, Struct_1(vec3<i32>(-2147483647i, var_0.x, var_0.x), 1404f, vec4<f32>(387f, 741f, -1000f, 1234f), false), var_0.ww), var_0.x)), func_1(vec3<f32>(972f, -152f, 719f), -2147483647i, func_1(vec3<f32>(-957f, -503f, 1155f), -30094i, Struct_5(Struct_2(vec2<bool>(global0.x, true), Struct_1(var_0.zxy, -412f, vec4<f32>(613f, -703f, -2175f, -1717f), true), Struct_1(vec3<i32>(var_0.x, -2147483647i, var_0.x), 1000f, vec4<f32>(1000f, 803f, 1000f, 427f), global0.x)), Struct_4(Struct_1(var_0.yxx, 1356f, vec4<f32>(1156f, -1112f, -124f, -590f), false), vec3<bool>(global0.x, false, global0.x), -83499i, Struct_1(vec3<i32>(-21659i, -47272i, 1197i), -736f, vec4<f32>(538f, 359f, -1484f, -1576f), true), var_0.zx), var_0.x), Struct_5(Struct_2(vec2<bool>(global0.x, global0.x), global2[_wgslsmith_index_u32(4294967295u, 14u)], Struct_1(vec3<i32>(25373i, var_0.x, var_0.x), -190f, vec4<f32>(-111f, 1502f, 439f, 738f), false)), Struct_4(global2[_wgslsmith_index_u32(24563u, 14u)], vec3<bool>(true, false, true), 19975i, global2[_wgslsmith_index_u32(1u, 14u)], var_0.yy), 2147483647i)), Struct_5(Struct_2(vec2<bool>(global0.x, global0.x), Struct_1(var_0.wxx, 136f, vec4<f32>(-366f, -543f, 530f, 843f), global0.x), global2[_wgslsmith_index_u32(0u, 14u)]), Struct_4(global2[_wgslsmith_index_u32(u_input.a, 14u)], vec3<bool>(false, false, global0.x), var_0.x, Struct_1(vec3<i32>(var_0.x, -16850i, -1i), 459f, vec4<f32>(-797f, -1185f, -2105f, 1541f), global0.x), var_0.zz), var_0.x))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1068f, 534f) + vec3<f32>(-1427f, -500f, 523f))), reverseBits(~var_0.x), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(272f, 473f, -584f), vec3<f32>(-651f, -569f, -128f)), _wgslsmith_clamp_i32(10468i, var_0.x, var_0.x), Struct_5(Struct_2(global0.yw, global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(Struct_1(vec3<i32>(-45962i, var_0.x, var_0.x), -2233f, vec4<f32>(481f, -509f, -2023f, -807f), false), global0.zwx, -1i, Struct_1(vec3<i32>(var_0.x, -2147483647i, -1i), 2148f, vec4<f32>(1401f, -480f, -988f, 1259f), false), vec2<i32>(var_0.x, var_0.x)), 63719i), func_1(vec3<f32>(1643f, -1467f, 269f), -2147483647i, Struct_5(Struct_2(global0.xx, global2[_wgslsmith_index_u32(26027u, 14u)], Struct_1(vec3<i32>(-1i, -1018i, -19476i), 1589f, vec4<f32>(-1076f, -622f, 1106f, 176f), global0.x)), Struct_4(global2[_wgslsmith_index_u32(u_input.a, 14u)], vec3<bool>(false, true, global0.x), -32834i, Struct_1(vec3<i32>(var_0.x, var_0.x, var_0.x), -940f, vec4<f32>(-444f, -1816f, 2092f, -684f), false), var_0.yw), 0i), Struct_5(Struct_2(vec2<bool>(global0.x, true), Struct_1(vec3<i32>(0i, 4837i, -22740i), 1000f, vec4<f32>(554f, 276f, -1000f, -950f), global0.x), global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(Struct_1(var_0.zzy, 1123f, vec4<f32>(449f, -1326f, 547f, -462f), global0.x), vec3<bool>(global0.x, true, false), 14065i, global2[_wgslsmith_index_u32(12499u, 14u)], var_0.yz), var_0.x))), func_1(vec3<f32>(-1348f, -574f, 1000f), ~(-1i), Struct_5(Struct_2(global0.yx, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]), Struct_4(global2[_wgslsmith_index_u32(2608u, 14u)], vec3<bool>(global0.x, global0.x, global0.x), var_0.x, Struct_1(var_0.zzw, -2470f, vec4<f32>(520f, 1128f, 531f, -1713f), global0.x), var_0.ww), 22067i), func_1(vec3<f32>(463f, 663f, -258f), 31732i, Struct_5(Struct_2(global0.xx, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(Struct_1(vec3<i32>(var_0.x, 0i, var_0.x), -1022f, vec4<f32>(-249f, 1000f, -406f, -204f), false), global0.xww, -1i, Struct_1(var_0.ywz, -490f, vec4<f32>(-237f, 117f, -845f, -1840f), true), var_0.xy), -9880i), Struct_5(Struct_2(global0.xz, global2[_wgslsmith_index_u32(0u, 14u)], Struct_1(vec3<i32>(var_0.x, -3494i, var_0.x), -402f, vec4<f32>(1431f, -348f, 1000f, -2104f), global0.x)), Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<bool>(global0.x, global0.x, false), var_0.x, Struct_1(vec3<i32>(var_0.x, var_0.x, var_0.x), 1399f, vec4<f32>(-1243f, 391f, -128f, -1000f), true), var_0.xy), var_0.x))))), Struct_5(func_1(vec3<f32>(1743f, _wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(-582f + 696f)), max(var_0.x, reverseBits(-2147483647i)), Struct_5(Struct_2(global0.wz, Struct_1(var_0.yyx, -2221f, vec4<f32>(459f, 1547f, 674f, -869f), true), Struct_1(var_0.yxw, 1590f, vec4<f32>(-236f, 680f, -1071f, 764f), true)), Struct_4(Struct_1(var_0.xzw, -1425f, vec4<f32>(1056f, 572f, -964f, 1000f), global0.x), global0.xxz, var_0.x, global2[_wgslsmith_index_u32(u_input.a, 14u)], vec2<i32>(var_0.x, var_0.x)), 0i), func_1(vec3<f32>(-112f, -905f, -486f), 22066i, func_1(vec3<f32>(-713f, -1051f, 1000f), 42578i, Struct_5(Struct_2(vec2<bool>(false, global0.x), Struct_1(var_0.xzw, -365f, vec4<f32>(-1000f, 224f, -2154f, -469f), global0.x), global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(Struct_1(vec3<i32>(var_0.x, var_0.x, 38284i), -928f, vec4<f32>(-1798f, -322f, -278f, 1385f), global0.x), global0.wyz, var_0.x, Struct_1(var_0.wyw, -230f, vec4<f32>(869f, -1025f, 1145f, 352f), global0.x), var_0.xy), -2147483647i), Struct_5(Struct_2(vec2<bool>(global0.x, false), Struct_1(var_0.zyx, 216f, vec4<f32>(-569f, 146f, 2071f, -953f), global0.x), global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), Struct_4(Struct_1(var_0.yyw, -757f, vec4<f32>(453f, -1000f, 974f, 1256f), global0.x), global0.zyx, -27261i, global2[_wgslsmith_index_u32(u_input.a, 14u)], vec2<i32>(var_0.x, var_0.x)), var_0.x)), Struct_5(Struct_2(vec2<bool>(global0.x, true), global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), Struct_4(Struct_1(vec3<i32>(1i, var_0.x, -52994i), 162f, vec4<f32>(-283f, 863f, 535f, 935f), true), vec3<bool>(global0.x, true, false), var_0.x, Struct_1(var_0.yyz, 1231f, vec4<f32>(-633f, 141f, 648f, 1065f), false), vec2<i32>(var_0.x, 0i)), 42058i))).a, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-470f, -1015f, 2886f) + vec3<f32>(-370f, 1113f, 1708f))), _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, var_0.x), var_0.x), Struct_5(Struct_2(vec2<bool>(false, global0.x), global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), Struct_4(Struct_1(vec3<i32>(var_0.x, var_0.x, -10582i), -703f, vec4<f32>(1000f, 1199f, 1894f, -197f), global0.x), vec3<bool>(false, global0.x, true), 6710i, Struct_1(var_0.zxz, -480f, vec4<f32>(-3708f, -826f, 530f, 1379f), true), vec2<i32>(var_0.x, var_0.x)), -var_0.x), Struct_5(Struct_2(global0.xx, Struct_1(var_0.yyw, -591f, vec4<f32>(-1227f, -134f, 1562f, 900f), global0.x), global2[_wgslsmith_index_u32(u_input.a, 14u)]), func_1(vec3<f32>(-235f, -1079f, 2132f), 2147483647i, Struct_5(Struct_2(vec2<bool>(global0.x, false), global2[_wgslsmith_index_u32(20611u, 14u)], Struct_1(vec3<i32>(12459i, var_0.x, 2147483647i), -120f, vec4<f32>(541f, -458f, 1380f, -345f), true)), Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<bool>(global0.x, true, false), var_0.x, Struct_1(var_0.zzy, -3134f, vec4<f32>(1000f, -973f, 289f, -1000f), true), var_0.zz), var_0.x), Struct_5(Struct_2(global0.zz, global2[_wgslsmith_index_u32(50217u, 14u)], Struct_1(vec3<i32>(-14769i, var_0.x, var_0.x), -399f, vec4<f32>(733f, 224f, 426f, -1402f), global0.x)), Struct_4(Struct_1(vec3<i32>(2147483647i, var_0.x, 0i), 124f, vec4<f32>(174f, -1000f, 881f, 477f), global0.x), global0.zwy, var_0.x, global2[_wgslsmith_index_u32(u_input.a, 14u)], var_0.zw), var_0.x)).b, -var_0.x)).b, -abs(-16153i))).b.a;
    global0 = !vec4<bool>(func_1(var_1.c.xww, var_1.a.x, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1460f, var_1.c.x, -1557f)), ~var_1.a.x, Struct_5(Struct_2(global0.xw, Struct_1(var_1.a, 1024f, var_1.c, true), Struct_1(vec3<i32>(9648i, -1i, var_0.x), -1085f, var_1.c, var_1.d)), Struct_4(Struct_1(vec3<i32>(1i, 0i, var_0.x), var_1.b, var_1.c, false), global0.ywy, var_0.x, global2[_wgslsmith_index_u32(4349u, 14u)], vec2<i32>(29522i, -2147483647i)), 2147483647i), func_1(var_1.c.zzx, 73207i, Struct_5(Struct_2(global0.wx, global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_4(global2[_wgslsmith_index_u32(1u, 14u)], global0.ywy, var_0.x, global2[_wgslsmith_index_u32(0u, 14u)], var_0.yw), var_1.a.x), Struct_5(Struct_2(vec2<bool>(false, false), Struct_1(var_0.ywz, var_1.c.x, vec4<f32>(var_1.c.x, var_1.b, -1666f, var_1.b), var_1.d), Struct_1(var_1.a, 344f, vec4<f32>(var_1.c.x, var_1.b, var_1.c.x, var_1.b), var_1.d)), Struct_4(Struct_1(var_1.a, 225f, vec4<f32>(560f, var_1.c.x, var_1.c.x, var_1.c.x), var_1.d), vec3<bool>(true, global0.x, var_1.d), var_1.a.x, Struct_1(vec3<i32>(var_0.x, -1i, 1i), 456f, vec4<f32>(var_1.c.x, var_1.b, 670f, var_1.c.x), global0.x), vec2<i32>(-59114i, 2234i)), var_1.a.x))), func_1(var_1.c.xyy, var_1.a.x, func_1(var_1.c.zxy, -1i, Struct_5(Struct_2(global0.wx, Struct_1(vec3<i32>(var_1.a.x, -2147483647i, 2147483647i), -946f, var_1.c, false), Struct_1(vec3<i32>(var_0.x, 12002i, -10969i), -399f, var_1.c, var_1.d)), Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<bool>(var_1.d, false, false), 2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], var_0.zz), var_1.a.x), Struct_5(Struct_2(vec2<bool>(global0.x, global0.x), Struct_1(vec3<i32>(var_0.x, 32198i, var_1.a.x), 1000f, var_1.c, global0.x), Struct_1(var_1.a, var_1.c.x, var_1.c, true)), Struct_4(Struct_1(vec3<i32>(0i, var_1.a.x, var_0.x), var_1.c.x, var_1.c, global0.x), vec3<bool>(true, true, global0.x), -36823i, global2[_wgslsmith_index_u32(109588u, 14u)], var_1.a.xx), var_1.a.x)), func_1(vec3<f32>(2033f, -197f, 1163f), -31680i, Struct_5(Struct_2(vec2<bool>(global0.x, true), global2[_wgslsmith_index_u32(u_input.a, 14u)], Struct_1(var_1.a, -151f, vec4<f32>(796f, 526f, -628f, var_1.b), global0.x)), Struct_4(Struct_1(vec3<i32>(-1i, var_1.a.x, 2147483647i), var_1.c.x, var_1.c, false), vec3<bool>(false, global0.x, false), -30496i, global2[_wgslsmith_index_u32(4294967295u, 14u)], var_0.zx), 0i), Struct_5(Struct_2(global0.xy, global2[_wgslsmith_index_u32(u_input.a, 14u)], Struct_1(var_1.a, var_1.b, var_1.c, global0.x)), Struct_4(global2[_wgslsmith_index_u32(u_input.a, 14u)], global0.xxy, var_1.a.x, Struct_1(var_0.zyw, var_1.b, var_1.c, var_1.d), var_1.a.xx), 14041i)))).a.b.d, var_1.d, global0.x, var_1.c.x <= var_1.b);
    let var_2 = !(!(!(var_1.a.x != _wgslsmith_clamp_i32(var_1.a.x, -9706i, 49329i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(min(i32(-1i) * -1i, i32(-1i) * -12956i), -1i, var_0.x, reverseBits(func_1(var_1.c.wxy, var_0.x, Struct_5(Struct_2(global0.zw, global2[_wgslsmith_index_u32(u_input.a, 14u)], Struct_1(var_0.zzx, 808f, vec4<f32>(var_1.b, var_1.b, var_1.b, -222f), true)), Struct_4(global2[_wgslsmith_index_u32(94430u, 14u)], vec3<bool>(false, false, var_1.d), -1i, Struct_1(vec3<i32>(var_0.x, var_0.x, var_0.x), 1218f, var_1.c, var_1.d), vec2<i32>(2147483647i, var_1.a.x)), var_1.a.x), Struct_5(Struct_2(vec2<bool>(global0.x, var_1.d), Struct_1(vec3<i32>(var_0.x, var_0.x, var_0.x), -450f, vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.b), global0.x), Struct_1(vec3<i32>(var_1.a.x, -2147483647i, -2147483647i), var_1.b, var_1.c, true)), Struct_4(global2[_wgslsmith_index_u32(7834u, 14u)], vec3<bool>(var_2, var_1.d, false), var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec2<i32>(var_0.x, var_1.a.x)), var_1.a.x)).c))));
}

