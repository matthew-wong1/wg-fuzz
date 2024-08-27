struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_4(Struct_1(0u, vec4<f32>(1000f, 389f, -1000f, -162f), 20617i, vec2<u32>(0u, 1u)))), Struct_5(Struct_4(Struct_1(4294967295u, vec4<f32>(264f, 760f, 1158f, -513f), 1i, vec2<u32>(4294967295u, 4294967295u)))), Struct_5(Struct_4(Struct_1(1u, vec4<f32>(144f, -1203f, -359f, 973f), i32(-2147483648), vec2<u32>(10123u, 0u)))), Struct_5(Struct_4(Struct_1(11748u, vec4<f32>(1277f, -1252f, -971f, -564f), -14540i, vec2<u32>(16092u, 1u)))), Struct_5(Struct_4(Struct_1(0u, vec4<f32>(-914f, 612f, -314f, 1196f), 19665i, vec2<u32>(104486u, 0u)))), Struct_5(Struct_4(Struct_1(9438u, vec4<f32>(602f, 265f, 859f, 214f), -1i, vec2<u32>(17659u, 15847u)))), Struct_5(Struct_4(Struct_1(50719u, vec4<f32>(-335f, 364f, 277f, -2028f), -30453i, vec2<u32>(1u, 0u)))), Struct_5(Struct_4(Struct_1(4294967295u, vec4<f32>(-152f, 191f, -770f, -322f), 38110i, vec2<u32>(23543u, 4294967295u)))), Struct_5(Struct_4(Struct_1(16083u, vec4<f32>(-1722f, 1174f, 240f, 1605f), 29644i, vec2<u32>(3447u, 87726u)))), Struct_5(Struct_4(Struct_1(42056u, vec4<f32>(-287f, -473f, 543f, -3596f), -29310i, vec2<u32>(0u, 54770u)))), Struct_5(Struct_4(Struct_1(23990u, vec4<f32>(702f, 131f, -481f, 1701f), 18672i, vec2<u32>(0u, 18489u)))), Struct_5(Struct_4(Struct_1(9306u, vec4<f32>(111f, 1128f, -346f, 1577f), -45004i, vec2<u32>(43051u, 4294967295u)))), Struct_5(Struct_4(Struct_1(1u, vec4<f32>(2294f, -253f, 776f, 804f), 71325i, vec2<u32>(1u, 44940u)))), Struct_5(Struct_4(Struct_1(25741u, vec4<f32>(-486f, -1532f, -797f, -960f), 7881i, vec2<u32>(0u, 13564u)))), Struct_5(Struct_4(Struct_1(48071u, vec4<f32>(-847f, 162f, -238f, -1448f), 1i, vec2<u32>(23238u, 4294967295u)))), Struct_5(Struct_4(Struct_1(0u, vec4<f32>(1633f, 742f, 721f, -761f), -24833i, vec2<u32>(27594u, 71794u)))), Struct_5(Struct_4(Struct_1(69508u, vec4<f32>(824f, 355f, -544f, -587f), -15657i, vec2<u32>(17114u, 4294967295u)))), Struct_5(Struct_4(Struct_1(0u, vec4<f32>(249f, -1513f, -557f, -118f), 50054i, vec2<u32>(4294967295u, 0u)))), Struct_5(Struct_4(Struct_1(0u, vec4<f32>(-1084f, 1000f, 198f, 644f), -1i, vec2<u32>(19367u, 4294967295u)))), Struct_5(Struct_4(Struct_1(4294967295u, vec4<f32>(952f, -703f, -1442f, 2026f), 55618i, vec2<u32>(1u, 1751u)))), Struct_5(Struct_4(Struct_1(9961u, vec4<f32>(-327f, 363f, 1577f, 3786f), -1i, vec2<u32>(4294967295u, 45136u)))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> f32 {
    global0 = array<Struct_5, 21>();
    let var_0 = global0[_wgslsmith_index_u32(abs(arg_2.x), 21u)];
    var var_1 = var_0.a.a;
    global0 = array<Struct_5, 21>();
    var var_2 = arg_1.a;
    return _wgslsmith_f_op_f32(min(587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a.b.x, var_0.a.a.b.x)))) * _wgslsmith_f_op_f32(ceil(-1000f)))));
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    global0 = array<Struct_5, 21>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_div_f32(2452f, -253f))), _wgslsmith_f_op_f32(func_3(vec3<u32>(4294967295u, arg_0.x, 0u) << (vec3<u32>(arg_0.x, 23438u, 1u) % vec3<u32>(32u)), Struct_3(141f), ~vec3<u32>(0u, arg_0.x, arg_0.x))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1092f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(599f)) + -140f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2799f * 137f) + _wgslsmith_f_op_f32(f32(-1f) * -1125f)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1044f)))))));
    var var_2 = arg_0.x;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~vec3<u32>(1645u, 4294967295u, arg_0.x), Struct_3(var_1.a), ~vec3<u32>(arg_0.x, 4294967295u, arg_0.x))), _wgslsmith_f_op_f32(1298f + 1213f))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a)))), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(484f + var_1.a)))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(1i, u_input.b, u_input.a, 1i)), ~(vec4<i32>(-1i) * -vec4<i32>(-33627i, u_input.a, u_input.a, 1i))) & firstLeadingBit(max(_wgslsmith_div_i32(-u_input.b, u_input.a), u_input.b));
    let var_1 = -(~var_0);
    global0 = array<Struct_5, 21>();
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-634f - -164f), _wgslsmith_f_op_f32(-arg_0.a), arg_0.a, 804f)))), _wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(1u, 1u))));
    let var_3 = Struct_3(1f);
    return -394f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    global0 = array<Struct_5, 21>();
    global0 = array<Struct_5, 21>();
    let var_0 = Struct_4(arg_0);
    let var_1 = !select(!vec3<bool>(true, any(vec3<bool>(false, false, false)), any(vec2<bool>(false, false))), vec3<bool>(true, all(vec3<bool>(true, true, true)), !select(false, false, false)), vec3<bool>(true, arg_1.a < var_0.a.b.x, true));
    global0 = array<Struct_5, 21>();
    return ~arg_0.a;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec2<u32> {
    global0 = array<Struct_5, 21>();
    let var_0 = Struct_4(Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -442f, arg_1.x, arg_1.x))))), select(_wgslsmith_clamp_i32(-1i, min(u_input.b, 2147483647i), arg_2.x), -5178i, !any(vec3<bool>(true, true, true))), _wgslsmith_mod_vec2_u32(vec2<u32>(~22808u, firstTrailingBit(arg_0.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(38110u, arg_0.x)))));
    var var_1 = (_wgslsmith_clamp_vec2_i32(abs(firstTrailingBit(vec2<i32>(u_input.a, -1i))), _wgslsmith_div_vec2_i32(arg_2.xw, vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-19938i, arg_2.x)), _wgslsmith_mult_vec2_i32(~arg_2.xw, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.c, -29756i), vec2<i32>(-2147483647i, arg_2.x)))) << (~vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))) >> (vec2<u32>(39205u, ~((arg_0.x ^ arg_0.x) ^ _wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(4294967295u, 4294967295u)))) % vec2<u32>(32u));
    var var_2 = 1u;
    return abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26430u, 0u, 1u), vec3<u32>(37245u, arg_0.x, 27846u)), arg_0.x), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(arg_0.x, 1u)), abs(arg_0.xy)), vec2<u32>(35973u, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<u32>(13851u, 1u, func_4(Struct_1(102959u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -930f, 1306f, 418f))), -u_input.a, ~vec2<u32>(4294967295u, 27873u)), Struct_3(_wgslsmith_f_op_f32(func_1(Struct_2(-1320f, vec3<f32>(1800f, 849f, -2252f)))))), select(1u, ~_wgslsmith_clamp_u32(7053u, 0u, 7454u), !all(vec2<bool>(false, false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1761f)), _wgslsmith_div_f32(184f, _wgslsmith_f_op_f32(f32(-1f) * -959f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(178f, 1011f))), 1f)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(7635i, 1864i, 2147483647i, -1i), -vec4<i32>(2147483647i, u_input.b, 43515i, 18117i)) >> (11663u % 32u), u_input.b, 0i << (firstTrailingBit(~1935u) % 32u), 2147483647i));
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 21u)];
    var_0 = var_1.a.a.d;
    var var_2 = vec4<u32>(49485u, abs(~reverseBits(select(1u, var_0.x, true))), _wgslsmith_div_u32(var_1.a.a.d.x ^ firstTrailingBit(var_0.x), min(~select(var_0.x, 0u, true), var_0.x)), var_0.x);
    var var_3 = Struct_2(-429f, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a.b.x), -782f, _wgslsmith_f_op_f32(var_1.a.a.b.x - 1000f)));
    var var_4 = !select(select(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), 12620u < var_1.a.a.a), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), all(vec2<bool>(false, false))), vec3<bool>(true, _wgslsmith_div_f32(var_3.a, -889f) >= 692f, abs(var_1.a.a.c) <= -1i), all(vec3<bool>(true, true, true)));
    let var_5 = (_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.c, var_1.a.a.c), select(vec2<i32>(1i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -18508i), vec2<i32>(2147483647i, var_1.a.a.c)), select(var_4.xx, var_4.zz, vec2<bool>(var_4.x, var_4.x)))) << (var_1.a.a.a % 32u)) | _wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(var_1.a.a.c, u_input.a, -53340i, u_input.a)) >> (~vec4<u32>(var_0.x, 32725u, var_1.a.a.a, var_0.x) % vec4<u32>(32u)), ~(~vec4<i32>(var_1.a.a.c, var_1.a.a.c, -4853i, -16733i)), vec4<bool>(true, var_4.x, false, 53372u >= var_1.a.a.a)), (vec4<i32>(-1i) * -vec4<i32>(7246i, var_1.a.a.c, -96662i, var_1.a.a.c)) ^ (vec4<i32>(-2624i, 19770i, -1i, u_input.b) ^ ~vec4<i32>(u_input.b, 1i, 2147483647i, var_1.a.a.c)));
    let var_6 = var_3.b.x;
    var_4 = select(vec3<bool>(any(!select(vec4<bool>(var_4.x, true, false, false), vec4<bool>(var_4.x, true, true, true), var_4.x)), !(min(var_0.x, 0u) != var_1.a.a.a), any(var_4.zz)), select(select(select(vec3<bool>(true, false, var_4.x), !vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(true, var_4.x, var_4.x)), !vec3<bool>(var_4.x, true, true), vec3<bool>(false, var_4.x, any(vec3<bool>(var_4.x, var_4.x, var_4.x)))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, var_4.x), vec3<bool>(var_4.x, true, var_4.x)), select(vec3<bool>(false, true, var_4.x), vec3<bool>(var_4.x, var_4.x, false), true), select(vec3<bool>(false, var_4.x, false), vec3<bool>(var_4.x, var_4.x, false), vec3<bool>(var_4.x, true, var_4.x))), !select(vec3<bool>(var_4.x, true, false), vec3<bool>(var_4.x, var_4.x, true), var_4.x), select(false, true, all(vec4<bool>(var_4.x, true, var_4.x, var_4.x)))), var_4.x), u_input.b < firstLeadingBit(50325i));
    let x = u_input.a;
    s_output = StorageBuffer(6291i, _wgslsmith_mod_i32(select(1i, abs(firstLeadingBit(1i)), !any(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x))), var_5), -(var_1.a.a.c | 807i) >> (firstLeadingBit(firstLeadingBit(var_1.a.a.a)) % 32u));
}

