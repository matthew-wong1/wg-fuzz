struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec2<bool>(true, false), Struct_1(true, vec2<i32>(2147483647i, -5654i), -741f), Struct_2(vec4<u32>(0u, 4294967295u, 37958u, 4294967295u), vec3<u32>(0u, 0u, 74304u), 55392u, vec3<u32>(0u, 1u, 6943u)), Struct_1(false, vec2<i32>(-1i, 2147483647i), 881f)), Struct_3(vec2<bool>(false, true), Struct_1(true, vec2<i32>(37589i, 17178i), -473f), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec3<u32>(9461u, 4294967295u, 4294967295u), 21584u, vec3<u32>(1u, 48638u, 1u)), Struct_1(false, vec2<i32>(-21210i, -9050i), 541f)), Struct_3(vec2<bool>(true, false), Struct_1(false, vec2<i32>(-36439i, i32(-2147483648)), -1739f), Struct_2(vec4<u32>(1u, 1u, 13768u, 45397u), vec3<u32>(1u, 0u, 82467u), 45485u, vec3<u32>(37701u, 4294967295u, 23702u)), Struct_1(true, vec2<i32>(-67044i, -5415i), 1000f)), Struct_3(vec2<bool>(true, false), Struct_1(true, vec2<i32>(0i, -55302i), -1056f), Struct_2(vec4<u32>(65u, 4294967295u, 36848u, 38158u), vec3<u32>(4294967295u, 1u, 4294967295u), 54947u, vec3<u32>(27207u, 4294967295u, 1u)), Struct_1(true, vec2<i32>(-1i, 35635i), 304f)), Struct_3(vec2<bool>(true, false), Struct_1(false, vec2<i32>(-35848i, 0i), -1027f), Struct_2(vec4<u32>(0u, 0u, 25767u, 3502u), vec3<u32>(39427u, 1u, 1u), 35470u, vec3<u32>(1u, 1u, 42516u)), Struct_1(false, vec2<i32>(7591i, -29850i), -1067f)), Struct_3(vec2<bool>(true, true), Struct_1(true, vec2<i32>(1i, -33065i), 286f), Struct_2(vec4<u32>(25521u, 9242u, 23710u, 60959u), vec3<u32>(1u, 0u, 0u), 4294967295u, vec3<u32>(0u, 38175u, 0u)), Struct_1(false, vec2<i32>(1i, -1i), 337f)), Struct_3(vec2<bool>(false, false), Struct_1(false, vec2<i32>(-10692i, 63202i), -191f), Struct_2(vec4<u32>(1u, 45219u, 8881u, 4294967295u), vec3<u32>(34937u, 3980u, 8168u), 14597u, vec3<u32>(1u, 1u, 1u)), Struct_1(false, vec2<i32>(-15497i, 0i), 149f)), Struct_3(vec2<bool>(false, true), Struct_1(true, vec2<i32>(i32(-2147483648), 0i), 1000f), Struct_2(vec4<u32>(29965u, 23212u, 77120u, 41243u), vec3<u32>(0u, 25626u, 9419u), 1u, vec3<u32>(19163u, 0u, 4294967295u)), Struct_1(true, vec2<i32>(2147483647i, 2521i), -130f)), Struct_3(vec2<bool>(true, true), Struct_1(false, vec2<i32>(-63588i, 23123i), 779f), Struct_2(vec4<u32>(0u, 7235u, 1u, 42785u), vec3<u32>(16358u, 137028u, 10365u), 1u, vec3<u32>(4294967295u, 6129u, 4294967295u)), Struct_1(true, vec2<i32>(i32(-2147483648), 1i), 730f)), Struct_3(vec2<bool>(true, true), Struct_1(false, vec2<i32>(-7143i, 2147483647i), -729f), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec3<u32>(65086u, 0u, 83026u), 0u, vec3<u32>(38496u, 81322u, 60031u)), Struct_1(false, vec2<i32>(1i, 0i), -908f)), Struct_3(vec2<bool>(false, false), Struct_1(true, vec2<i32>(2147483647i, -1i), -451f), Struct_2(vec4<u32>(4294967295u, 46208u, 27942u, 23529u), vec3<u32>(54284u, 65345u, 60056u), 26561u, vec3<u32>(0u, 94200u, 645u)), Struct_1(true, vec2<i32>(10362i, -46479i), -1359f)), Struct_3(vec2<bool>(true, true), Struct_1(false, vec2<i32>(4913i, -1i), 1900f), Struct_2(vec4<u32>(36122u, 70866u, 5559u, 21550u), vec3<u32>(1u, 4294967295u, 34977u), 4294967295u, vec3<u32>(100564u, 0u, 23964u)), Struct_1(false, vec2<i32>(55219i, -1i), -271f)), Struct_3(vec2<bool>(false, true), Struct_1(false, vec2<i32>(-2187i, 2926i), -361f), Struct_2(vec4<u32>(1u, 32310u, 40238u, 0u), vec3<u32>(1u, 4294967295u, 63921u), 40118u, vec3<u32>(48646u, 1u, 24101u)), Struct_1(true, vec2<i32>(0i, -53317i), -757f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_1 {
    return Struct_1(false, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-37384i, -2147483647i, u_input.b.x), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), -39918i) ^ ((firstLeadingBit(u_input.b) ^ min(u_input.b, u_input.b)) | u_input.b), arg_0);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(select(abs(~vec4<u32>(arg_1.x, u_input.a, u_input.a, u_input.a)), vec4<u32>(1u, u_input.a, 57706u, u_input.a) << (abs(vec4<u32>(u_input.a, 0u, 34836u, arg_1.x)) % vec4<u32>(32u)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), ~abs(vec4<u32>(u_input.a, arg_1.x, 0u, arg_1.x)) | vec4<u32>(u_input.a, u_input.a, 61746u, u_input.a)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, ~arg_1.x, arg_1.x), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 44534u, 33520u), vec3<u32>(0u, 0u, arg_1.x)), countOneBits(vec3<u32>(0u, arg_1.x, 1u))), vec3<bool>(true, true, true)), ~(~vec3<u32>(4294967295u, u_input.a, 1u)) | ~vec3<u32>(55880u, arg_1.x, arg_1.x)), u_input.a, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_1.x, arg_1.x), vec3<u32>(14987u, u_input.a, 4294967295u)), vec3<u32>(72651u, 41254u, 28351u) >> (vec3<u32>(arg_1.x, arg_1.x, 1u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), reverseBits(countOneBits(vec3<u32>(u_input.a, u_input.a, arg_1.x)))), vec3<u32>(0u, ~4294967295u, ~4294967295u ^ countOneBits(arg_1.x))));
    var var_1 = var_0.b.yy;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 8156u), 28u)];
    global1 = array<Struct_3, 13>();
    let var_2 = ~countOneBits(max(min(-vec4<i32>(u_input.b.x, -1i, arg_0.x, arg_0.x), vec4<i32>(0i, -2147483647i, 1i, 57430i) >> (vec4<u32>(var_0.b.x, arg_1.x, u_input.a, arg_1.x) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(arg_0.x, u_input.b.x, 2147483647i, 0i)));
    return reverseBits(11152i);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<u32> {
    global0 = array<Struct_2, 28>();
    var var_0 = global1[_wgslsmith_index_u32(arg_1.c.b.x, 13u)];
    global1 = array<Struct_3, 13>();
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(1u), 28u)];
    let var_2 = arg_3;
    return vec3<u32>(arg_1.c.b.x, var_1.a.x, _wgslsmith_div_u32(~select(1u, _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(58749u, 28668u, 11649u, var_0.c.a.x)), true), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~39974u), ~1u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = firstTrailingBit(-_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.b.b.x, 1i, -43032i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.d.b.x, -42379i, arg_2.b.b.x), vec3<i32>(u_input.b.x, arg_1, arg_1))));
    var var_1 = _wgslsmith_div_vec3_u32(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(981f, arg_2.d.c, arg_2.b.c, arg_2.b.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-551f, 2609f, -736f, arg_2.b.c) - vec4<f32>(564f, arg_2.d.c, arg_2.b.c, arg_2.d.c))))), arg_2, func_2(_wgslsmith_div_f32(-465f, 1115f), any(vec4<bool>(true, arg_2.b.a, arg_2.a.x, false)) | true, ~arg_0.x), vec4<i32>(-5738i, -2147483647i, firstTrailingBit(arg_2.d.b.x & arg_1), func_3(vec3<i32>(u_input.b.x, 0i, arg_2.b.b.x), vec2<u32>(u_input.a, 1u)))), select(firstLeadingBit(vec3<u32>(arg_0.x, 4294967295u, u_input.a)), arg_0.wzx, vec3<bool>(true, all(select(vec4<bool>(arg_2.d.a, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_2.a.x, arg_2.d.a, true, false), arg_2.a.x)), true)));
    global1 = array<Struct_3, 13>();
    let var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec4_u32(~arg_2.c.a, abs(vec4<u32>(0u, var_1.x, var_1.x, 50373u)))) & var_1.x), 28u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-775f, _wgslsmith_div_f32(arg_2.d.c, arg_2.d.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b.c, -1410f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.d.c, 1005f), vec2<f32>(arg_2.d.c, 1000f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.c, arg_2.d.c)))));
    return vec4<f32>(209f, arg_2.d.c, 783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-985f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, arg_3.a), select(vec3<bool>(true, arg_3.a, arg_3.a), vec3<bool>(true, arg_3.a, arg_3.a), vec3<bool>(true, arg_3.a, false)), arg_2.x == -648f), vec3<bool>(arg_3.a, !arg_3.a, func_2(arg_3.c, arg_3.a, arg_1.x).a)), !vec3<bool>(true, arg_3.a, true), select(arg_3.a, !any(vec3<bool>(true, true, true)), !(arg_3.a != arg_3.a)));
    var var_1 = !select(var_0.xy, vec2<bool>(true, func_2(-445f, false, _wgslsmith_add_u32(arg_1.x, 4294967295u)).a), var_0.zx);
    let var_2 = !(!(!vec4<bool>(all(vec4<bool>(var_0.x, true, var_1.x, false)), false, var_0.x, !var_1.x)));
    global1 = array<Struct_3, 13>();
    return Struct_2(reverseBits(countOneBits(vec4<u32>(41187u, 33018u, 0u, arg_1.x) << (vec4<u32>(0u, 84172u, 14609u, u_input.a) % vec4<u32>(32u))) | ~vec4<u32>(1u, 73571u, 4294967295u, 76848u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, arg_1.x, 28810u) << (max(vec3<u32>(arg_1.x, arg_1.x, 46769u), vec3<u32>(0u, arg_1.x, arg_0)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_1.x), vec2<u32>(u_input.a, arg_0)), ~arg_1.x, ~arg_1.x)), abs(select(~vec3<u32>(1u, 12406u, arg_1.x), vec3<u32>(u_input.a, arg_1.x, 7718u), all(var_0)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(0u, 1u), 0u), 1796u), reverseBits(min(select(vec3<u32>(arg_1.x, arg_0, 4294967295u), vec3<u32>(31720u, arg_0, 0u), var_0.x), ~vec3<u32>(arg_0, 26623u, 42777u))) | firstTrailingBit(~(~vec3<u32>(1u, 55259u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_5(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_clamp_u32(12721u, u_input.a, u_input.a), u_input.a)) << (21952u % 32u), firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(u_input.a, u_input.a) ^ ~vec2<u32>(u_input.a, 6031u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(u_input.a, 21222u, u_input.a, 1u) << (vec4<u32>(0u, u_input.a, 61864u, u_input.a) % vec4<u32>(32u)), ~(~u_input.b.x), Struct_3(vec2<bool>(true, true), Struct_1(false, u_input.b, -1502f), global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(true, vec2<i32>(1i, u_input.b.x), -332f))))), Struct_1(true, vec2<i32>(min(u_input.b.x, 64710i), ~u_input.b.x), 857f));
    let var_2 = var_1;
    var var_3 = func_5(59083u, reverseBits(vec2<u32>(min(_wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u), 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, -1686f, 261f, 654f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(549f, -299f, -231f, -1365f), vec4<f32>(-110f, -633f, -215f, -1338f), true)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, 2147f, -1000f, -1551f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(476f, 117f, 1053f, -238f)))), true))), func_2(-840f, true, var_1.a.x << (11419u % 32u)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(17019u, 0u, 8985u, u_input.a), u_input.b.x, Struct_3(vec2<bool>(true, true), Struct_1(false, u_input.b, 185f), var_1, Struct_1(false, u_input.b, 1551f)))).x, _wgslsmith_f_op_f32(552f + -834f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(f32(-1f) * -2584f)), -619f));
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b.x, _wgslsmith_div_u32(~var_3.b.x, _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(0u, 4294967295u))))), 28u)];
    global0 = array<Struct_2, 28>();
    let var_6 = 1i;
    let var_7 = Struct_1(true, vec2<i32>(u_input.b.x, ~1i), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), _wgslsmith_f_op_f32(-1000f + var_7.c), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.d.xx & var_1.b.zx, _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.x, 83766u), vec2<u32>(var_3.d.x, 4294967295u)), vec2<u32>(u_input.a, var_3.a.x)), var_1.b.yx) ^ ~var_5.b.xz, _wgslsmith_mod_i32(8042i, -36647i >> (~firstTrailingBit(var_2.c) % 32u)));
}

