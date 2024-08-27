struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(1304f, -360f, 452f, 2166f), vec4<f32>(-923f, -693f, -539f, 806f), vec4<f32>(-534f, -196f, 615f, -1000f), vec4<f32>(1508f, -1000f, 1000f, -878f), vec4<f32>(1763f, 244f, -325f, 1041f), vec4<f32>(-1983f, 1378f, 760f, -122f), vec4<f32>(227f, 402f, -317f, 511f), vec4<f32>(-283f, -1229f, -2539f, -1251f), vec4<f32>(309f, 215f, 749f, 883f), vec4<f32>(-1466f, 243f, -1000f, 1135f), vec4<f32>(1609f, -1083f, -858f, 1490f), vec4<f32>(916f, 1361f, 1188f, -1751f), vec4<f32>(1610f, -1200f, 715f, -778f), vec4<f32>(662f, -2022f, 1000f, -199f), vec4<f32>(724f, -1246f, 1524f, 991f), vec4<f32>(138f, 2219f, 2357f, 441f), vec4<f32>(622f, -262f, 1095f, 2896f), vec4<f32>(1885f, 264f, 850f, -815f), vec4<f32>(803f, 656f, -555f, -476f), vec4<f32>(431f, 3364f, -748f, 1406f), vec4<f32>(478f, 1000f, -774f, 685f), vec4<f32>(-833f, -2393f, 958f, -768f), vec4<f32>(1360f, 1220f, -693f, -453f), vec4<f32>(-1000f, 214f, -515f, 509f), vec4<f32>(-1680f, -1766f, 799f, 217f), vec4<f32>(211f, 1158f, 297f, 796f), vec4<f32>(1124f, 346f, 883f, 598f), vec4<f32>(215f, -802f, 1567f, 714f), vec4<f32>(-360f, 302f, -296f, -295f), vec4<f32>(-1690f, 1321f, 1297f, 453f));

var<private> global2: vec4<i32> = vec4<i32>(-38212i, 22081i, i32(-2147483648), 14578i);

var<private> global3: array<Struct_4, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = select(vec4<bool>(arg_0, false & (~u_input.a != u_input.a), -625f != _wgslsmith_f_op_f32(-arg_2.x), arg_3), !(!(!select(vec4<bool>(arg_3, true, arg_3, true), vec4<bool>(arg_3, true, false, arg_0), arg_3))), true);
    let var_1 = all(!(!vec4<bool>(555f >= arg_2.x, select(arg_3, var_0.x, false), false, all(vec3<bool>(true, arg_3, var_0.x)))));
    let var_2 = Struct_3(Struct_2(4294967295u, -2147483647i, !(any(var_0) | (global2.x != global2.x)), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -1i, select(913i, -78164i, true)), false, 85615u, ~u_input.a), Struct_1(-_wgslsmith_mult_i32(global2.x, -1295i), false, reverseBits(13629u) << (u_input.a % 32u), ~u_input.a | 8164u)), all(vec3<bool>(var_1, true, all(var_0.yx))));
    global1 = array<vec4<f32>, 30>();
    return !(false && !any(vec3<bool>(var_1, var_1, var_0.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !func_3(false, vec3<f32>(768f, -732f, 1000f), vec2<f32>(-1946f, -487f), true)));
    let var_1 = ~abs(max(vec3<u32>(1u, 0u ^ u_input.a, firstTrailingBit(u_input.a)), select(vec3<u32>(u_input.a, 78552u, 0u), vec3<u32>(u_input.a, u_input.a, 1u), var_0.x) << ((vec3<u32>(1u, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global3 = array<Struct_4, 20>();
    let var_2 = Struct_3(Struct_2(1u, 1i, any(vec2<bool>(var_0.x, true)) & true, Struct_1(global2.x, var_0.x, ~var_1.x, var_1.x), Struct_1(global2.x, var_0.x, max(~0u, ~u_input.a), ~(~var_1.x))), !(true || var_0.x));
    global2 = min(-vec4<i32>(var_2.a.b, global2.x, -global2.x, var_2.a.b), vec4<i32>(4501i << (var_2.a.d.d % 32u), -1i, _wgslsmith_mult_i32(max(firstLeadingBit(11232i), var_2.a.e.a), min(_wgslsmith_clamp_i32(var_2.a.e.a, var_2.a.d.a, global2.x), ~38046i)), -2147483647i));
    return var_2.a;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = arg_1.c;
    global0 = 174f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-734f)) * -428f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-320f, _wgslsmith_div_f32(2441f, -343f)), all(select(vec3<bool>(arg_1.c.a.d.b, false, arg_1.c.a.e.b), vec3<bool>(arg_0.a.c, true, var_0.e.b), true)))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1470f) + var_2);
    return Struct_4(~_wgslsmith_clamp_u32(120174u, ~39024u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~arg_3, arg_2, arg_2), 1u), var_0.e.c), Struct_3(Struct_2(~arg_3, max(global2.x, -20815i << (u_input.a % 32u)), func_3(any(vec4<bool>(arg_0.a.c, arg_1.e.d.b, var_1.b, arg_0.a.d.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, -142f, 411f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, 1112f))), !arg_1.c.b), func_2().e, func_2().e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))) < 1001f), abs(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b, var_0.e.d, var_0.e.d), vec3<u32>(arg_2, arg_1.b, 1u), vec3<u32>(22939u, var_0.a, 26342u)), vec3<u32>(arg_3, 6713u, 9322u)), _wgslsmith_mod_u32(reverseBits(29129u), 4294967295u))), func_2());
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_u32(55664u, 1u), -19770i, !arg_1.e.c, arg_1.e.e, arg_1.e.d), any(select(!vec4<bool>(arg_1.e.d.b, arg_1.c.b, var_0, true), vec4<bool>(true, all(vec2<bool>(false, true)), 53479i >= arg_1.c.a.b, global2.x >= global2.x), true && !arg_0.x)));
    let var_2 = arg_1.e.d;
    var var_3 = Struct_2(_wgslsmith_sub_u32(~(~(~var_1.a.e.d)), ~(~var_1.a.a)), reverseBits(arg_1.e.b << (arg_1.d.x % 32u)), arg_0.x, Struct_1(global2.x, var_2.b, 1u, ~(~_wgslsmith_add_u32(var_1.a.d.c, var_1.a.e.d))), func_1(func_1(arg_1.c, func_1(arg_1.c, Struct_4(35812u, 1126u, Struct_3(Struct_2(50499u, global2.x, var_0, Struct_1(arg_1.c.a.b, true, var_1.a.d.d, u_input.a), var_1.a.e), var_1.a.e.b), arg_1.d, var_1.a), 1u, var_2.d), u_input.a, 1u).c, Struct_4(0u, var_2.c, func_1(func_1(arg_1.c, Struct_4(27001u, 32661u, arg_1.c, arg_1.d, arg_1.e), 50811u, 48620u).c, func_1(Struct_3(Struct_2(0u, global2.x, var_2.b, Struct_1(arg_1.e.d.a, false, 60061u, var_1.a.e.c), arg_1.c.a.e), true), arg_1, 75232u, 0u), ~55860u, ~0u).c, abs(arg_1.d << (vec2<u32>(46763u, 0u) % vec2<u32>(32u))), arg_1.e), func_2().e.d, _wgslsmith_add_u32(abs(~arg_1.c.a.d.c), ~firstTrailingBit(2897u))).e.e);
    return func_2();
}

fn func_5(arg_0: Struct_2) -> f32 {
    global3 = array<Struct_4, 20>();
    var var_0 = !(!select(vec4<bool>(true, false && arg_0.d.b, arg_0.d.b, arg_0.d.b | true), select(!vec4<bool>(true, arg_0.e.b, arg_0.d.b, false), vec4<bool>(arg_0.d.b, arg_0.c, false, arg_0.c), !vec4<bool>(false, false, arg_0.e.b, arg_0.d.b)), any(!vec4<bool>(true, true, arg_0.c, false))));
    global3 = array<Struct_4, 20>();
    global3 = array<Struct_4, 20>();
    global1 = array<vec4<f32>, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-884f)), 410f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f)))), _wgslsmith_div_f32(-114f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -399f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 30>();
    global1 = array<vec4<f32>, 30>();
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(vec2<bool>(true, true), func_1(Struct_3(Struct_2(u_input.a, 52273i, true, Struct_1(-10658i, true, u_input.a, u_input.a), Struct_1(global2.x, true, u_input.a, 14536u)), false), global3[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a, u_input.a)))) + 1f), true && func_4(vec2<bool>(func_3(false, vec3<f32>(720f, 172f, -406f), vec2<f32>(1076f, -1000f), true), true), global3[_wgslsmith_index_u32(14634u, 20u)]).d.b));
    var var_0 = max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(2287u, u_input.a)), func_1(func_1(Struct_3(Struct_2(u_input.a, 2147483647i, false, Struct_1(global2.x, true, 61705u, 94742u), Struct_1(0i, true, 37325u, 77713u)), false), Struct_4(u_input.a, u_input.a, Struct_3(Struct_2(0u, global2.x, true, Struct_1(global2.x, false, u_input.a, 9016u), Struct_1(2147483647i, true, u_input.a, 72375u)), true), vec2<u32>(12772u, 1u), Struct_2(u_input.a, 2147483647i, false, Struct_1(global2.x, true, u_input.a, u_input.a), Struct_1(global2.x, false, 29475u, u_input.a))), u_input.a, 1u).c, global3[_wgslsmith_index_u32(~78760u, 20u)], ~0u, u_input.a).e.a, func_1(Struct_3(Struct_2(u_input.a, global2.x, false, Struct_1(0i, false, 51717u, u_input.a), Struct_1(2147483647i, true, 0u, 1570u)), true), Struct_4(u_input.a, 0u, Struct_3(Struct_2(4294967295u, global2.x, false, Struct_1(global2.x, true, 1u, 0u), Struct_1(-2147483647i, false, u_input.a, u_input.a)), false), vec2<u32>(u_input.a, 1u), Struct_2(16545u, -1i, true, Struct_1(global2.x, true, u_input.a, 0u), Struct_1(5774i, false, 0u, u_input.a))), ~58364u, _wgslsmith_div_u32(22078u, u_input.a)).d.x), select(~(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) << (vec4<u32>(0u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), vec4<u32>(func_1(Struct_3(Struct_2(34408u, -1i, true, Struct_1(-1i, false, 1u, 1u), Struct_1(-2147483647i, true, u_input.a, 16458u)), true), Struct_4(48788u, 35296u, Struct_3(Struct_2(u_input.a, global2.x, false, Struct_1(12121i, true, 89396u, 4303u), Struct_1(global2.x, true, 69897u, u_input.a)), false), vec2<u32>(u_input.a, u_input.a), Struct_2(4294967295u, -17652i, false, Struct_1(global2.x, false, u_input.a, u_input.a), Struct_1(global2.x, true, 69268u, u_input.a))), 4294967295u, 4294967295u).c.a.a, u_input.a, ~0u, ~11905u), all(vec3<bool>(false, false, false)))), abs(countOneBits(max(vec4<u32>(79725u, 4294967295u, 26827u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 52319u)) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 56u) % vec4<u32>(32u)))));
    let var_1 = u_input.a;
    let var_2 = ~(~(_wgslsmith_add_u32(~var_1, _wgslsmith_mult_u32(u_input.a, var_0.x)) ^ 1u));
    var_0 = vec4<u32>(1u, var_0.x, 1426u, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(466f, -732f) + vec2<f32>(-1000f, -1391f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(402f, -163f)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -619f), -263f, -8946i >= global2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(Struct_2(0u, 1i, true, Struct_1(0i, false, 40429u, var_2), Struct_1(-2147483647i, true, u_input.a, 23873u)))), -1589f, false))), !(!func_3(true, vec3<f32>(-513f, 1000f, -841f), vec2<f32>(448f, 1000f), true)))), vec4<i32>(func_1(func_1(func_1(Struct_3(Struct_2(var_1, global2.x, true, Struct_1(-1i, false, 41411u, var_1), Struct_1(global2.x, false, var_0.x, var_0.x)), true), global3[_wgslsmith_index_u32(var_1, 20u)], var_0.x, var_1).c, global3[_wgslsmith_index_u32(1841u, 20u)], u_input.a, 1u).c, Struct_4(1u, _wgslsmith_div_u32(0u, var_0.x), Struct_3(Struct_2(u_input.a, global2.x, false, Struct_1(global2.x, false, var_2, 4294967295u), Struct_1(-44243i, false, var_0.x, u_input.a)), true), var_0.xw, func_2()), ~_wgslsmith_mod_u32(42872u, 31078u), 1u).c.a.b, -20853i, -29468i, -1i));
}

