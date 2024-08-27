struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<u32>(0u, 1u, 9376u), 0i, vec3<f32>(-753f, -255f, -426f)), Struct_1(vec3<u32>(37656u, 26277u, 24937u), i32(-2147483648), vec3<f32>(-177f, 1000f, -823f)), Struct_1(vec3<u32>(4294967295u, 30176u, 13864u), 2147483647i, vec3<f32>(-705f, 192f, -140f)), Struct_1(vec3<u32>(4294967295u, 1u, 31166u), -1i, vec3<f32>(1565f, -1404f, 940f)), Struct_1(vec3<u32>(4294967295u, 41940u, 29120u), -1i, vec3<f32>(-1000f, 653f, -198f)), Struct_1(vec3<u32>(1u, 28858u, 17461u), 47853i, vec3<f32>(-363f, 994f, 1000f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 2553i, vec3<f32>(2068f, 127f, -216f)), Struct_1(vec3<u32>(72599u, 4294967295u, 1u), 26710i, vec3<f32>(-108f, -116f, -1000f)), Struct_1(vec3<u32>(18502u, 44613u, 0u), 0i, vec3<f32>(-1067f, 148f, 1524f)), Struct_1(vec3<u32>(8120u, 24648u, 37038u), -1i, vec3<f32>(-1641f, -1302f, -983f)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 1i, vec3<f32>(-234f, -882f, 734f)), Struct_1(vec3<u32>(86121u, 4294967295u, 0u), -15979i, vec3<f32>(-950f, 1870f, 1979f)), Struct_1(vec3<u32>(6123u, 56629u, 4294967295u), -1i, vec3<f32>(-114f, 1722f, 151f)), Struct_1(vec3<u32>(87228u, 13605u, 4294967295u), -53191i, vec3<f32>(460f, 159f, 470f)), Struct_1(vec3<u32>(48517u, 48297u, 38785u), i32(-2147483648), vec3<f32>(-449f, 2631f, 366f)), Struct_1(vec3<u32>(0u, 0u, 125119u), 1i, vec3<f32>(-1000f, -713f, 557f)));

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(35685u, 1u, 50541u), -15707i, vec3<f32>(-289f, 1000f, 1000f)), Struct_1(vec3<u32>(0u, 1u, 10345u), -1i, vec3<f32>(-818f, -346f, 314f)), Struct_1(vec3<u32>(43469u, 60996u, 50488u), 1i, vec3<f32>(-2655f, 450f, 1000f)), Struct_1(vec3<u32>(45607u, 89770u, 1u), 29964i, vec3<f32>(755f, 1241f, 1225f)), Struct_1(vec3<u32>(0u, 14128u, 1u), 0i, vec3<f32>(-529f, -730f, 2226f)), Struct_1(vec3<u32>(83891u, 0u, 4294967295u), 34449i, vec3<f32>(-1121f, 932f, 734f)), Struct_1(vec3<u32>(1u, 4294967295u, 46687u), 46680i, vec3<f32>(-557f, -507f, 945f)), Struct_1(vec3<u32>(40331u, 2806u, 1u), i32(-2147483648), vec3<f32>(951f, -1000f, 197f)), Struct_1(vec3<u32>(1u, 28322u, 1u), 17779i, vec3<f32>(1030f, 902f, 136f)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), 0i, vec3<f32>(1137f, 167f, -2402f)), Struct_1(vec3<u32>(16904u, 15626u, 1u), -82949i, vec3<f32>(841f, -319f, 142f)), Struct_1(vec3<u32>(0u, 3489u, 4294967295u), 12111i, vec3<f32>(416f, -2068f, -581f)), Struct_1(vec3<u32>(20842u, 1u, 36094u), -54706i, vec3<f32>(726f, 734f, 441f)), Struct_1(vec3<u32>(1u, 1u, 471u), 1i, vec3<f32>(-900f, 824f, -2771f)));

var<private> global3: array<Struct_2, 31>;

var<private> global4: i32 = 8985i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<u32> {
    global3 = array<Struct_2, 31>();
    global1 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_mod_u32(92569u, _wgslsmith_dot_vec3_u32(~vec3<u32>(70027u, 73373u, 17712u), vec3<u32>(7718u, 46108u, 0u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(219u, 0u, 1u), vec3<u32>(1u, 1u, 1u)) % 32u)) > 83208u;
    var_0 = any(select(vec3<bool>(select(true, true, any(vec4<bool>(arg_0, arg_0, false, arg_0))), true, !arg_0), !vec3<bool>(arg_0, false, true), !select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, false), arg_0), !vec3<bool>(arg_0, false, arg_0), !vec3<bool>(true, arg_0, true))));
    let var_1 = select(select(!vec3<bool>(!arg_0, false, false), select(!vec3<bool>(false, arg_0, true), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, true, true), any(vec3<bool>(true, arg_0, arg_0))), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true)), !vec3<bool>(arg_0, false, true), !vec3<bool>(false, arg_0, arg_0))), vec3<bool>(all(vec3<bool>(true, true, true)), !any(vec4<bool>(arg_0, false, false, arg_0)), arg_0), vec3<bool>((!arg_0 || (1053f > arg_1)) || (all(vec3<bool>(arg_0, arg_0, arg_0)) | arg_0), any(!(!vec3<bool>(arg_0, arg_0, arg_0))), 2147483647i > u_input.c));
    return ~vec3<u32>(4294967295u, max(33851u, 1u) | ~select(77082u, 55194u, false), firstTrailingBit(~0u) ^ max(~74871u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 24906u), vec3<u32>(55265u, 0u, 4294967295u))));
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = ~_wgslsmith_add_vec2_u32(countOneBits(abs(vec2<u32>(34172u, 4294967295u))) & select(select(vec2<u32>(0u, arg_0), vec2<u32>(33116u, 4294967295u), vec2<bool>(false, true)), vec2<u32>(arg_0, 11373u) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)), 2147483647i == u_input.c), vec2<u32>(arg_0, arg_0));
    let var_1 = Struct_1(func_3(any(vec4<bool>(true, true, select(false, false, false), all(vec4<bool>(false, false, true, true)))), -1059f), ~0i | ~(~u_input.c ^ u_input.a.x), vec3<f32>(678f, -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1252f, 1000f)), 414f))));
    global4 = firstTrailingBit(u_input.c);
    global2 = array<Struct_1, 14>();
    var var_2 = var_1;
    return ~(~reverseBits(countOneBits(var_1.a) << (_wgslsmith_clamp_vec3_u32(var_2.a, var_2.a, var_1.a) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = countOneBits(vec3<u32>(arg_2.x, 0u, ~1u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(194f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(abs(-1000f)), any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(-arg_0.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_1.c.x), _wgslsmith_f_op_f32(arg_0.x - arg_1.c.x)), _wgslsmith_f_op_f32(select(-532f, -1332f, true)), _wgslsmith_f_op_f32(f32(-1f) * -894f)))));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(max(select(abs(arg_1.a), ~arg_1.a, select(true, true, true)), vec3<u32>(~14216u, _wgslsmith_mod_u32(6002u, 1u), 4294967295u)), min(arg_1.a, ~arg_1.a) & vec3<u32>(firstTrailingBit(arg_1.a.x), 1u & var_0.x, arg_1.a.x)), _wgslsmith_div_i32(abs(-2147483647i), -1i), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, -889f), _wgslsmith_f_op_f32(776f * _wgslsmith_f_op_f32(arg_1.c.x * 2378f)))), _wgslsmith_f_op_f32(sign(-1886f)), -106f));
    global2 = array<Struct_1, 14>();
    var var_3 = Struct_2(var_2, vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yzx, _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b, -17182i, u_input.c) << (arg_2 % vec3<u32>(32u)), -u_input.b.xxx)), -_wgslsmith_sub_i32(1i, u_input.c), _wgslsmith_sub_i32(-var_2.b << (~4294967295u % 32u), -_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), -(~_wgslsmith_add_i32(u_input.b.x, 2147483647i))));
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    global0 = array<Struct_1, 16>();
    var var_2 = var_1.a.b;
    var var_3 = any(!select(arg_2.xy, select(select(vec2<bool>(false, false), arg_2.zz, false), select(arg_2.xz, arg_2.xz, vec2<bool>(arg_2.x, false)), true), arg_2.x));
    return Struct_2(var_1.a, arg_0.b);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = false;
    var var_1 = global2[_wgslsmith_index_u32(arg_1.x, 14u)];
    global3 = array<Struct_2, 31>();
    let var_2 = !(!all(!vec2<bool>(var_0, var_0)));
    var var_3 = var_0;
    return func_5(Struct_2(func_4(_wgslsmith_f_op_vec3_f32(max(var_1.c, _wgslsmith_f_op_vec3_f32(var_1.c - var_1.c))), Struct_1(func_2(1u), countOneBits(-1i), var_1.c), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.a, var_1.a), vec3<u32>(arg_1.x, var_1.a.x, 0u))), -u_input.b), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 1i, u_input.a.x), max(vec3<i32>(-2830i, 0i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.c, -12895i))), -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -39997i, var_1.b), vec3<i32>(-1i, -2147483647i, 17526i))), vec3<bool>(var_2, all(select(!vec2<bool>(true, var_0), vec2<bool>(var_2, var_0), select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), false))), any(!vec4<bool>(false, true, false, var_2))), _wgslsmith_f_op_vec3_f32(-var_1.c));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    var var_0 = Struct_1(countOneBits(vec3<u32>(_wgslsmith_mod_u32(arg_0.a.x, 4294967295u) | _wgslsmith_mod_u32(arg_1.a.a.x, 0u), ~abs(arg_0.a.x), ~_wgslsmith_mult_u32(17896u, 9907u))), abs(-46762i), arg_1.a.c);
    global1 = array<Struct_2, 9>();
    let var_1 = func_1(_wgslsmith_f_op_f32(1325f * -355f), vec2<u32>(arg_0.a.x, func_2(_wgslsmith_mult_u32(func_2(arg_0.a.x).x, firstTrailingBit(4294967295u))).x));
    return select(vec3<bool>(any(vec2<bool>(any(vec3<bool>(false, false, false)), true)), true, all(vec2<bool>(true, true))), select(select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), false, true)), vec3<bool>(false, true, false), _wgslsmith_dot_vec2_i32(select(arg_1.b.xw, arg_1.b.yz, vec2<bool>(true, true)), var_1.b.yw >> (vec2<u32>(4294967295u, var_1.a.a.x) % vec2<u32>(32u))) > var_1.b.x), vec3<bool>(!(all(vec3<bool>(true, true, false)) & true), !select(60115i != u_input.b.x, all(vec4<bool>(true, true, false, false)), var_0.b >= var_0.b), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!vec3<bool>(any(vec4<bool>(false, true, true, true)), u_input.b.x != -2147483647i, true), func_6(Struct_1(vec3<u32>(1u, 1u, 1u), u_input.c ^ u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, -551f, -345f) - vec3<f32>(-1623f, -677f, 616f))), func_1(_wgslsmith_f_op_f32(trunc(995f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(58318u, 11307u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 52253u)))), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    global0 = array<Struct_1, 16>();
    let var_2 = 1i;
    let var_3 = vec3<f32>(879f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    global1 = array<Struct_2, 9>();
    let var_4 = vec2<bool>(any(select(vec4<bool>(var_0, -1i < u_input.b.x, any(vec2<bool>(var_0, var_0)), var_0), !select(vec4<bool>(false, false, false, var_0), vec4<bool>(true, false, var_0, false), vec4<bool>(true, var_0, true, false)), !(!vec4<bool>(var_0, var_0, var_0, true)))), !var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(14157u ^ firstTrailingBit(min(4765u, 24738u)), ~min(~36169u, func_1(-978f, vec2<u32>(36181u, 1u)).a.a.x), 2607u, _wgslsmith_mod_u32(1u, ~8324u)), firstTrailingBit(~1u), firstLeadingBit(func_5(global1[_wgslsmith_index_u32(~4294967295u, 9u)], reverseBits(var_2), vec3<bool>(var_4.x, false, true), var_3).a.a.x));
}

