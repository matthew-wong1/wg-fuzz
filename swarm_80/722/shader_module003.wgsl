struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_1(vec4<f32>(-1316f, -1837f, 423f, 1000f))), Struct_4(Struct_1(vec4<f32>(-906f, 447f, -348f, 295f))), Struct_4(Struct_1(vec4<f32>(-390f, 472f, 2354f, 979f))), Struct_4(Struct_1(vec4<f32>(-1000f, -499f, 1099f, 1511f))), Struct_4(Struct_1(vec4<f32>(1486f, 1377f, 1000f, 1408f))), Struct_4(Struct_1(vec4<f32>(1524f, -2660f, 1000f, -2031f))), Struct_4(Struct_1(vec4<f32>(357f, -213f, -939f, 579f))), Struct_4(Struct_1(vec4<f32>(108f, 864f, 1682f, 1105f))), Struct_4(Struct_1(vec4<f32>(1093f, -1000f, 1856f, 1003f))), Struct_4(Struct_1(vec4<f32>(492f, -257f, -1410f, -1599f))), Struct_4(Struct_1(vec4<f32>(-626f, -310f, 516f, -2293f))), Struct_4(Struct_1(vec4<f32>(1444f, 389f, -1616f, 225f))), Struct_4(Struct_1(vec4<f32>(-125f, 555f, -1000f, 1977f))), Struct_4(Struct_1(vec4<f32>(1191f, 1159f, 218f, 749f))), Struct_4(Struct_1(vec4<f32>(-263f, -857f, 494f, 2451f))), Struct_4(Struct_1(vec4<f32>(-589f, -741f, -1000f, -346f))), Struct_4(Struct_1(vec4<f32>(1000f, 1240f, 1000f, -398f))), Struct_4(Struct_1(vec4<f32>(1421f, 857f, -356f, 397f))), Struct_4(Struct_1(vec4<f32>(-999f, 195f, 1370f, 373f))), Struct_4(Struct_1(vec4<f32>(1263f, 705f, 1448f, 1051f))), Struct_4(Struct_1(vec4<f32>(-580f, -672f, -1528f, 1218f))), Struct_4(Struct_1(vec4<f32>(460f, 1000f, 861f, 1572f))), Struct_4(Struct_1(vec4<f32>(715f, 549f, -1087f, -1399f))), Struct_4(Struct_1(vec4<f32>(-1000f, -794f, 1139f, 973f))), Struct_4(Struct_1(vec4<f32>(772f, -404f, -1180f, 647f))), Struct_4(Struct_1(vec4<f32>(-328f, 891f, 340f, 615f))), Struct_4(Struct_1(vec4<f32>(942f, -659f, -178f, -1000f))), Struct_4(Struct_1(vec4<f32>(170f, -2482f, 1000f, 167f))), Struct_4(Struct_1(vec4<f32>(-1282f, -915f, 436f, -1191f))), Struct_4(Struct_1(vec4<f32>(239f, 360f, 412f, -1298f))), Struct_4(Struct_1(vec4<f32>(1830f, -1868f, -1000f, 1227f))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> vec3<u32> {
    var var_0 = !vec3<bool>(arg_0.x, arg_0.x, select(!(arg_3.x != arg_1.a.x), arg_0.x, arg_0.x));
    global0 = array<Struct_4, 31>();
    var var_1 = Struct_3(vec4<u32>(_wgslsmith_div_u32(arg_2 & _wgslsmith_dot_vec3_u32(vec3<u32>(72972u, 0u, 41885u), vec3<u32>(9332u, 1u, arg_2)), 4294967295u), ~arg_2, arg_2, u_input.c));
    var var_2 = 21583u;
    var_0 = !vec3<bool>(false, !arg_0.x, false);
    return vec3<u32>(2554u, u_input.d | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_1.a, var_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), var_1.a.yx)), ~(~_wgslsmith_div_u32(countOneBits(arg_2), 1u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec3_u32(abs(~func_3(arg_0.yw, Struct_1(arg_2.a.a), firstLeadingBit(0u), _wgslsmith_f_op_vec2_f32(arg_2.a.a.wy + vec2<f32>(arg_2.a.a.x, 332f)))), vec3<u32>(u_input.c, (1u & (u_input.b.x << (1u % 32u))) << (countOneBits(0u) % 32u), firstLeadingBit(_wgslsmith_div_u32(u_input.d, u_input.c))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a.a.x + 1396f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(arg_2.a.a.wwz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(119f, _wgslsmith_f_op_f32(select(arg_2.a.a.x, -1000f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_f_op_f32(sign(arg_2.a.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.a.x)))), (u_input.a == ~(~u_input.a)) | !arg_0.x));
    var_1 = _wgslsmith_f_op_f32(-var_2.x);
    var var_3 = false;
    return Struct_4(arg_2.a);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_2(0u, vec3<bool>(false, select(true, false, select(select(false, false, true), true, true)), any(vec2<bool>(true, any(vec4<bool>(false, false, true, true))))), _wgslsmith_dot_vec3_u32(countOneBits(max(~vec3<u32>(26025u, u_input.c, u_input.c), vec3<u32>(0u, 43402u, arg_2))), countOneBits(vec3<u32>(_wgslsmith_div_u32(arg_2, arg_2), abs(44450u), ~u_input.b.x))));
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), -9978i);
    var var_2 = Struct_4(arg_1.a);
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c, arg_2, abs(u_input.c)), 31u)];
    global0 = array<Struct_4, 31>();
    return Struct_2(~var_0.c, var_0.b, func_3(select(var_0.b.xz, var_0.b.zy, all(select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(var_0.b.x, false, false), vec3<bool>(true, var_0.b.x, true)))), arg_1.a, ~(~_wgslsmith_mult_u32(arg_2, 29012u)), var_2.a.a.xy).x);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(firstTrailingBit(arg_1.x) & ~arg_1.x);
    global0 = array<Struct_4, 31>();
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(trunc(arg_3.a.x)), arg_2.x)), arg_3.a.x, arg_3.a.x), vec4<f32>(_wgslsmith_f_op_f32(-126f - -333f), arg_3.a.x, 786f, -1000f)));
    var var_2 = func_4(arg_3.a.x, func_2(select(!select(vec4<bool>(true, arg_2.x, true, false), vec4<bool>(false, arg_2.x, true, false), vec4<bool>(arg_2.x, false, arg_2.x, false)), !vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), select(select(vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(false, false, false, true), !vec4<bool>(arg_2.x, true, true, false))), arg_2.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(0u), ~0u, u_input.c ^ u_input.b.x, 0u), vec4<u32>(arg_0, u_input.c, ~arg_0, 1u)), 31u)]), 51849u);
    var var_3 = max(firstTrailingBit(abs(vec2<i32>(min(u_input.a, 67358i), -2147483647i))), vec2<i32>(-countOneBits(min(u_input.a, u_input.a)), i32(-1i) * -(~(-2147483647i))));
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_5 {
    let var_0 = Struct_3(~(~(~select(vec4<u32>(4294967295u, u_input.c, u_input.b.x, u_input.d), vec4<u32>(66305u, u_input.b.x, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.a))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.x, var_1.a.x), arg_3.a.xx)), arg_2, vec2<bool>(true, false))));
    let var_3 = arg_3;
    var var_4 = Struct_3(_wgslsmith_div_vec4_u32(max(var_0.a, ~var_0.a), ~var_0.a));
    return Struct_5(var_4.a.x, select(select(func_4(_wgslsmith_f_op_f32(arg_3.a.x - var_1.a.x), global0[_wgslsmith_index_u32(~var_0.a.x, 31u)], 44829u).b.xz, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), func_4(_wgslsmith_f_op_f32(max(-668f, 719f)), Struct_4(var_3), u_input.c).b.yz), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(817f, Struct_4(var_3), u_input.c).b.x), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, true)), func_4(-1000f, global0[_wgslsmith_index_u32(var_0.a.x, 31u)], select(func_3(vec2<bool>(true, true), Struct_1(vec4<f32>(var_2.x, arg_2.x, var_1.a.x, -1413f)), var_4.a.x, vec2<f32>(arg_0.a.x, -255f)).x, ~u_input.d, select(arg_1.x == arg_1.x, true, -52905i >= u_input.a))), global0[_wgslsmith_index_u32(4294967295u, 31u)], var_0);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    global0 = array<Struct_4, 31>();
    let var_0 = arg_0;
    global0 = array<Struct_4, 31>();
    var var_1 = vec2<i32>(0i, u_input.a);
    var var_2 = 12295u;
    return -755f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 31>();
    let var_0 = _wgslsmith_f_op_f32(func_6(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1246f, -112f, 332f, -262f), vec4<f32>(-1000f, 2271f, -109f, -383f), vec4<bool>(true, true, false, true))) + _wgslsmith_div_vec4_f32(vec4<f32>(182f, -1779f, -741f, 468f), vec4<f32>(-762f, -371f, 1515f, -300f)))), vec2<i32>(_wgslsmith_sub_i32(u_input.a, abs(u_input.a)), -1723i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1446f, 952f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-694f, -629f) * vec2<f32>(-603f, 1023f)))), func_1(u_input.c, firstLeadingBit(max(u_input.b, vec2<u32>(77068u, u_input.c))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec4<bool>(false, true, false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(271f, 367f, 594f, -190f) - vec4<f32>(1585f, -604f, 775f, -392f))))), func_5(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-686f, 125f, 699f, -1000f) + vec4<f32>(-1000f, -2408f, 725f, -832f)), _wgslsmith_div_vec4_f32(vec4<f32>(308f, 980f, -1315f, 306f), vec4<f32>(374f, 1000f, -1000f, -1412f))))), vec2<i32>(~(-2147483647i >> (u_input.b.x % 32u)), ~abs(38737i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(822f, -259f)))), func_1(10174u, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, 36075u), vec2<u32>(u_input.c, u_input.d)), vec2<bool>(all(vec4<bool>(true, true, false, true)), true), func_1(33913u, ~u_input.b, vec2<bool>(true, false), Struct_1(vec4<f32>(584f, -1388f, 731f, -107f))))).e, any(vec3<bool>(func_4(-1117f, Struct_4(Struct_1(vec4<f32>(391f, -773f, 825f, -1342f))), 4294967295u).b.x, true, !select(true, false, false))), vec4<u32>(~u_input.b.x, 4294967295u, 4294967295u, 0u)));
    let var_1 = vec3<u32>(~(u_input.c | 52446u), _wgslsmith_mult_u32(u_input.d, select(u_input.d, ~u_input.c | 0u, func_4(_wgslsmith_f_op_f32(select(var_0, 906f, false)), func_2(vec4<bool>(false, false, false, false), false, global0[_wgslsmith_index_u32(1u, 31u)]), 28197u).b.x)), u_input.d);
    var var_2 = !func_5(func_5(func_2(vec4<bool>(false, false, false, true), true, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]).a, min(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, u_input.a)) >> ((vec2<u32>(var_1.x, var_1.x) & vec2<u32>(1u, var_1.x)) % vec2<u32>(32u)), vec2<f32>(-1537f, _wgslsmith_f_op_f32(-var_0)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, -1605f, -1000f), vec4<f32>(-200f, -1221f, var_0, var_0))))).d.a, abs(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-12489i, -2147483647i), vec2<i32>(1i, -2091i)))), _wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec4<f32>(var_0, var_0, -781f, var_0)), -vec2<i32>(u_input.a, 0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 972f) + vec2<f32>(751f, 844f)), func_2(vec4<bool>(true, false, true, true), true, Struct_4(Struct_1(vec4<f32>(var_0, var_0, 1286f, -474f)))).a).d.a.a.zz * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-195f, -501f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1882f, -540f, -889f))))).c.b.x;
    var_2 = true;
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1556f, var_0, var_0, 2106f), vec4<f32>(var_0, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1122f, -1000f, 253f, var_0))))), ~min(firstLeadingBit(firstTrailingBit(vec2<i32>(1i, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 12765i), vec2<i32>(2147483647i, u_input.a)) | -vec2<i32>(-1i, -15345i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, var_0))))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1244f, -244f, -1392f, var_0))))))).c;
    let var_4 = var_3;
    var var_5 = ~_wgslsmith_mult_u32(var_3.c, ~func_5(func_5(Struct_1(vec4<f32>(-2028f, 1549f, -1244f, 550f)), vec2<i32>(52730i, 19071i), vec2<f32>(var_0, 173f), Struct_1(vec4<f32>(var_0, var_0, var_0, var_0))).d.a, vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<f32>(-417f, var_0), Struct_1(vec4<f32>(-1201f, 1429f, var_0, var_0))).e.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-firstLeadingBit(i32(-1i) * -1i)), vec3<i32>(~firstLeadingBit(~u_input.a), -9618i, 1i), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), var_0)), _wgslsmith_f_op_f32(var_0 * -507f), _wgslsmith_f_op_f32(func_6(func_5(func_2(vec4<bool>(false, var_3.b.x, var_3.b.x, var_3.b.x), false, Struct_4(Struct_1(vec4<f32>(600f, 163f, var_0, -1151f)))).a, -vec2<i32>(2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0)), func_5(Struct_1(vec4<f32>(-561f, var_0, var_0, 519f)), vec2<i32>(2147483647i, u_input.a), vec2<f32>(var_0, var_0), Struct_1(vec4<f32>(1501f, var_0, var_0, -2173f))).d.a), func_5(Struct_1(vec4<f32>(-776f, -1000f, var_0, var_0)), -vec2<i32>(u_input.a, 1i), vec2<f32>(var_0, 1081f), Struct_1(vec4<f32>(var_0, 1573f, var_0, -523f))).e, ~var_4.c > 4294967295u, _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a, var_1.x, 4294967295u, 0u), ~vec4<u32>(var_3.a, var_4.c, var_3.a, 27503u))))), -302f, vec2<u32>(72617u, ~select(46302u, 131362u, var_3.b.x)) >> (firstTrailingBit(~vec2<u32>(var_3.a, u_input.c)) % vec2<u32>(32u)));
}

