struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(883f, vec4<f32>(282f, -1842f, 1102f, 1244f)), Struct_4(1242f, vec4<f32>(-1511f, -634f, 143f, -948f)), Struct_4(997f, vec4<f32>(-1156f, 433f, -938f, -276f)), Struct_4(-1295f, vec4<f32>(735f, 393f, 162f, 665f)), Struct_4(437f, vec4<f32>(-1149f, 574f, -1388f, -1770f)), Struct_4(584f, vec4<f32>(654f, -1315f, -849f, 288f)), Struct_4(930f, vec4<f32>(318f, -1012f, 1085f, -563f)), Struct_4(810f, vec4<f32>(-460f, -949f, 633f, -1289f)), Struct_4(259f, vec4<f32>(1443f, -230f, 1000f, 506f)), Struct_4(-964f, vec4<f32>(2181f, 1281f, 1554f, -867f)), Struct_4(-1456f, vec4<f32>(-822f, -876f, -1274f, -887f)), Struct_4(-2163f, vec4<f32>(-352f, 781f, -973f, -728f)), Struct_4(-1143f, vec4<f32>(1399f, 940f, 1286f, -399f)), Struct_4(2776f, vec4<f32>(1103f, -707f, 882f, -541f)), Struct_4(-575f, vec4<f32>(-1344f, -811f, 1001f, 151f)), Struct_4(-685f, vec4<f32>(292f, 782f, 337f, -1234f)), Struct_4(-1188f, vec4<f32>(-380f, -1361f, -1306f, -331f)), Struct_4(-2631f, vec4<f32>(309f, -519f, 1072f, -984f)), Struct_4(455f, vec4<f32>(-236f, -134f, 1000f, -138f)), Struct_4(-469f, vec4<f32>(-1441f, -2265f, 1000f, 645f)), Struct_4(-1100f, vec4<f32>(452f, 822f, -864f, 1039f)), Struct_4(1000f, vec4<f32>(-885f, -1175f, -1000f, 1305f)), Struct_4(1000f, vec4<f32>(-406f, -340f, -1115f, -444f)), Struct_4(-1021f, vec4<f32>(1005f, 2108f, -169f, 1213f)));

var<private> global4: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(1u, vec3<bool>(true, true, true)), Struct_5(20824u, vec3<bool>(true, false, false)), Struct_5(28379u, vec3<bool>(true, false, false)), Struct_5(0u, vec3<bool>(false, false, false)), Struct_5(4294967295u, vec3<bool>(false, true, true)), Struct_5(4294967295u, vec3<bool>(false, false, false)), Struct_5(17462u, vec3<bool>(false, false, false)), Struct_5(1u, vec3<bool>(true, true, true)), Struct_5(4294967295u, vec3<bool>(true, false, false)), Struct_5(1201u, vec3<bool>(true, false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(-432f)))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_3 {
    global0 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(2147483647i, vec2<i32>(-29263i, 0i) << (u_input.d.xz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(4294967295u, arg_2.x), arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(741f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1231f) + arg_0), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(arg_0, 1991f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0))))));
    var var_1 = Struct_2(Struct_1(select(select(select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x), false), vec4<bool>(global1.x, global1.x, false, true), 9613u != arg_2.x), vec4<bool>(false, true, global1.x && true, false), true)), Struct_1(vec4<bool>(true, true, false, !global1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 636f, -234f, 176f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -545f, -944f) - vec4<f32>(var_0.x, -2039f, -1782f, arg_0)), vec4<f32>(1054f, arg_0, -292f, arg_0)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(196f, arg_0, arg_0, var_0.x) * vec4<f32>(arg_0, var_0.x, var_0.x, var_0.x))))))), (-abs(arg_1.x) | (arg_1.x >> (_wgslsmith_mod_u32(arg_2.x, 0u) % 32u))) ^ countOneBits(_wgslsmith_sub_i32(1i, u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_1.d, countOneBits(max(vec2<i32>(-14690i, 637i), vec2<i32>(u_input.a.x, arg_1.x))), vec2<u32>(abs(0u), max(0u, u_input.d.x)))), 1979f))));
    global0 = array<Struct_2, 18>();
    return Struct_3(var_1.c, select(vec4<bool>(any(vec2<bool>(var_1.a.a.x, true)), -1632f >= _wgslsmith_div_f32(var_1.c.x, 1165f), true, all(!vec2<bool>(var_1.b.a.x, var_1.b.a.x))), vec4<bool>(any(select(vec3<bool>(var_1.a.a.x, false, false), vec3<bool>(false, var_1.b.a.x, false), var_1.a.a.zxw)), global1.x | any(var_1.a.a.wzz), true, any(select(var_1.b.a, var_1.b.a, global1.x))), select(select(vec4<bool>(false, var_1.b.a.x, true, false), vec4<bool>(true, false, global2.x, true), true), var_1.a.a, !global1.x)), -(vec4<i32>(_wgslsmith_div_i32(-28439i, -54424i), 1i, arg_1.x, -2147483647i << (arg_2.x % 32u)) & arg_1));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(vec4<f32>(-499f, arg_1.a.x, 544f, _wgslsmith_div_f32(957f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1025f + 280f))))), !func_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(397f, 160f), _wgslsmith_f_op_f32(f32(-1f) * -588f))), arg_1.c, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d.x, 4294967295u), reverseBits(vec2<u32>(u_input.d.x, 4294967295u)))).b, vec4<i32>(func_2(arg_1.a.x, vec4<i32>(-22681i, u_input.a.x, arg_2, 9370i), u_input.d.xy).c.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(47475i, 0i, -2147483647i, arg_1.c.x) >> (vec4<u32>(90022u, u_input.d.x, 1u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(arg_1.c)), min(1i >> (_wgslsmith_mod_u32(u_input.d.x, u_input.d.x) % 32u), 0i), -(_wgslsmith_mult_i32(u_input.a.x, arg_1.c.x) ^ (arg_1.c.x >> (u_input.d.x % 32u)))));
    var var_1 = func_2(var_0.a.x, select(-max(_wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(u_input.a.x, u_input.a.x, 0i, -16487i)), abs(vec4<i32>(var_0.c.x, 2147483647i, 2147483647i, arg_2))), abs(firstLeadingBit(~vec4<i32>(arg_2, arg_2, var_0.c.x, 2147483647i))), all(vec3<bool>(false, any(var_0.b.wwz), all(arg_1.b.zx)))), firstTrailingBit(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 31823u)), vec2<u32>(~u_input.b, abs(0u)))));
    var var_2 = max(max(firstTrailingBit(select(vec4<u32>(31197u, 23084u, 24483u, u_input.d.x), ~vec4<u32>(29023u, 22932u, u_input.d.x, 1u), vec4<bool>(global2.x, false, false, false))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.d.x, u_input.d.x) & vec4<u32>(u_input.d.x, 9354u, 18610u, 26476u), vec4<u32>(11439u, u_input.d.x, 0u, u_input.b) ^ vec4<u32>(u_input.b, u_input.d.x, 1u, u_input.b)), firstLeadingBit(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.b) | vec4<u32>(0u, u_input.b, u_input.b, u_input.b)))), ~vec4<u32>(0u, u_input.b, u_input.d.x, _wgslsmith_mult_u32(max(u_input.b, u_input.b), ~u_input.b)));
    var var_3 = 30908u;
    var var_4 = Struct_1(arg_1.b);
    return Struct_1(vec4<bool>(all(!(!var_4.a)), var_4.a.x, var_1.b.x, var_1.b.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    return func_4(global3[_wgslsmith_index_u32(u_input.b, 24u)], func_2(_wgslsmith_div_f32(-875f, 260f), arg_1, ~select(u_input.d.zz, vec2<u32>(u_input.b, u_input.d.x), select(global2.x, global1.x, arg_2))), countOneBits(-2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, -273f, -2246f) - vec3<f32>(772f, 2300f, 937f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1416f, -1543f), vec3<f32>(380f, 280f, 374f))) - vec3<f32>(1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(-_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.c, -2147483647i)), reverseBits(vec4<i32>(2147483647i, u_input.c ^ u_input.a.x, _wgslsmith_mod_i32(u_input.c, u_input.c), u_input.a.x)), global1.x), func_1(u_input.a, _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.c, 2416i, -8541i)), vec4<i32>(u_input.c, u_input.a.x, u_input.c, 0i) << (select(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 1u), vec4<u32>(1u, 35633u, u_input.d.x, u_input.b), vec4<bool>(true, global2.x, global1.x, global1.x)) % vec4<u32>(32u))), global1.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -880f) + _wgslsmith_f_op_f32(-935f + 714f)))), _wgslsmith_f_op_f32(sign(3472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) - -1036f), -937f), u_input.c);
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(55774u, u_input.d.x), ~u_input.b, ~u_input.d.x, u_input.d.x);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x & ~3844u, u_input.d.x & firstLeadingBit((19461u | var_1.x) << (countOneBits(var_1.x) % 32u))), 24u)];
    global2 = vec2<bool>(false, all(!vec3<bool>(!global2.x, true, all(vec4<bool>(global2.x, global2.x, var_0.a.a.x, global2.x)))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f + _wgslsmith_f_op_f32(var_2.b.x * 1f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.b - vec4<f32>(_wgslsmith_div_f32(1000f, -649f), var_2.a, -544f, var_0.c.x)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-383f, var_2.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_3.b.zy * var_0.c.yy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 654f))))));
    let var_5 = Struct_4(_wgslsmith_f_op_f32(min(1090f, -857f)), vec4<f32>(_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(round(var_3.b.x))), _wgslsmith_f_op_f32(func_3(var_0.d, u_input.a, vec2<u32>(firstTrailingBit(31368u), _wgslsmith_add_u32(var_1.x, u_input.b)))), var_4.x, -284f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.wy), min(min(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 65079u, 14878u, 0u), vec4<u32>(u_input.b, var_1.x, 4294967295u, var_1.x)), ~firstTrailingBit(vec4<u32>(var_1.x, var_1.x, 0u, u_input.d.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, u_input.d.x, 20694u, 37575u), vec4<u32>(1u, 4294967295u, 12115u, 51938u) & max(vec4<u32>(var_1.x, 1u, 41321u, 7246u), vec4<u32>(16527u, 1u, 0u, 1u)))), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(161f - _wgslsmith_f_op_f32(trunc(var_3.b.x)))), u_input.d, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) + func_2(_wgslsmith_f_op_f32(553f * var_0.c.x), vec4<i32>(10858i, var_0.d, u_input.a.x, var_0.d), ~vec2<u32>(25807u, var_1.x)).a.x), -firstLeadingBit(vec4<i32>(2147483647i, var_0.d, u_input.a.x, 31342i) ^ vec4<i32>(-1i, var_0.d, var_0.d, 18753i)), firstLeadingBit(_wgslsmith_sub_vec2_u32(~var_1.zy, ~u_input.d.zy))).a);
}

