struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<f32>(1600f, 223f, 1437f), 43878u, true, 1u, 1000f), Struct_1(vec3<f32>(613f, -963f, -551f), 25728u, false, 4294967295u, 1119f), Struct_1(vec3<f32>(-149f, -907f, 707f), 3391u, true, 26891u, 1886f), Struct_1(vec3<f32>(824f, -1043f, -282f), 49206u, false, 84230u, -1167f), Struct_1(vec3<f32>(-911f, -209f, -915f), 4294967295u, true, 1u, -858f), Struct_1(vec3<f32>(-964f, -481f, 373f), 1u, true, 1u, 1353f), Struct_1(vec3<f32>(613f, -174f, -1146f), 998u, true, 7431u, 1136f), Struct_1(vec3<f32>(870f, 1896f, 200f), 42927u, false, 77598u, 1000f), Struct_1(vec3<f32>(2974f, 1128f, -240f), 90674u, false, 4294967295u, -343f));

var<private> global1: array<i32, 12>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = i32(-1i) * -21372i;
    let var_1 = arg_0.x;
    global0 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_mult_u32(~0u, firstTrailingBit(firstTrailingBit(u_input.a.x ^ 27883u))) >= _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(111f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), -767f), abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, 57671u, ~u_input.a.x), u_input.a.x)), var_2, 1077u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f)));
    return 62688u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    let var_0 = arg_2;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.x)) * _wgslsmith_div_f32(arg_2.a.x, var_0.a.x)), 736f))), _wgslsmith_f_op_f32(round(var_0.e)), arg_2.e);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-740f + arg_2.e))), arg_2.a.x, -796f)), reverseBits(arg_2.d), firstLeadingBit(~_wgslsmith_add_u32(var_0.d, var_0.d)) != func_2(vec4<f32>(_wgslsmith_f_op_f32(378f + 334f), arg_2.a.x, -1000f, arg_2.e)), ~38626u, _wgslsmith_f_op_f32(-var_0.e));
    var var_3 = u_input.c.x <= global1[_wgslsmith_index_u32(arg_2.d, 12u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(var_2.a)), 18455u, true, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, var_2.b, var_0.b, 78097u), vec4<u32>(36986u, 62171u, 4294967295u, arg_2.b), false) ^ select(vec4<u32>(var_2.b, 47075u, 1u, 1u), vec4<u32>(var_0.d, var_0.d, 0u, 35817u), true), ~(vec4<u32>(4294967295u, u_input.a.x, 1u, arg_2.b) ^ vec4<u32>(var_0.b, 4294967295u, arg_3, u_input.a.x))), _wgslsmith_dot_vec2_u32(abs(firstTrailingBit(vec2<u32>(48173u, 1u))), u_input.a.zy)), var_2.e);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = arg_1;
    global1 = array<i32, 12>();
    let var_1 = _wgslsmith_dot_vec2_i32(-(~u_input.d), ~(-min(u_input.d, abs(u_input.c))));
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    return func_3(!(!vec3<bool>(!arg_0.c, true, arg_0.b < u_input.a.x)), (vec2<i32>(-1i) * -vec2<i32>(-47334i, global1[_wgslsmith_index_u32(arg_2.x, 12u)])) ^ _wgslsmith_div_vec2_i32(vec2<i32>(~global1[_wgslsmith_index_u32(71199u, 12u)], u_input.c.x), ~abs(vec2<i32>(var_1, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.e, var_0.a.x, 153f), var_0.a, vec3<bool>(false, false, arg_0.c))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1565f, -1651f, var_0.a.x), vec3<f32>(arg_1.a.x, -1000f, var_0.a.x))))), _wgslsmith_add_u32(1u, arg_1.d), false, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, 1087f, -922f, var_0.e))) | 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(269f, _wgslsmith_f_op_f32(trunc(1540f)))))), firstLeadingBit(u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = -u_input.c.x;
    var var_1 = ~(-select(4553i, u_input.b, any(arg_1.xwx)));
    var var_2 = !(!vec4<bool>(false, arg_1.x, all(arg_1.zy), all(!arg_1)));
    let var_3 = u_input.a.x;
    let var_4 = ~u_input.b;
    return Struct_1(arg_0.a, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, var_3, var_3, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_3, u_input.a.x, arg_0.b), vec4<u32>(var_3, var_3, arg_0.d, arg_0.d)))), ~vec4<u32>(arg_0.b, ~arg_0.d, firstLeadingBit(u_input.a.x), reverseBits(17620u))), ~0i <= ~global1[_wgslsmith_index_u32(~var_3, 12u)], 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + 543f)) * func_1(arg_0, global0[_wgslsmith_index_u32(func_2(vec4<f32>(arg_0.e, -2495f, 801f, arg_0.e)), 9u)], _wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(var_3, var_3))).a.x), arg_0.a.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    var var_0 = select(func_3(!select(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, false, true), all(vec3<bool>(arg_0.c, arg_0.c, true))), u_input.d, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.e)), 1u, arg_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.a.x, arg_0.d)), 779f), ~1u).b, _wgslsmith_mult_u32(~(~29519u) << (~func_3(vec3<bool>(arg_0.c, true, arg_0.c), vec2<i32>(-17719i, 0i), Struct_1(vec3<f32>(-1506f, arg_1.x, 1000f), 0u, arg_0.c, 1u, 1098f), arg_0.d).b % 32u), _wgslsmith_clamp_u32(arg_0.b, arg_0.d, _wgslsmith_add_u32(u_input.a.x & arg_0.b, 1u))), false);
    var var_1 = ~arg_0.d;
    var var_2 = arg_0.c;
    global1 = array<i32, 12>();
    return global0[_wgslsmith_index_u32(~((arg_0.d ^ abs(abs(6983u))) & min(_wgslsmith_mod_u32(~6558u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 29077u), vec4<u32>(arg_0.d, u_input.a.x, arg_0.b, 1u))), ~u_input.a.x | ~u_input.a.x)), 9u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = ~firstLeadingBit(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, countOneBits(77723i)) << (func_3(select(vec3<bool>(false, true, arg_0.c), vec3<bool>(arg_0.c, false, true), false), firstLeadingBit(u_input.c), func_3(vec3<bool>(false, arg_2.x, arg_2.x), u_input.c, Struct_1(arg_0.a, arg_1.d, arg_3, 10852u, 1279f), arg_0.d), 4294967295u).b % 32u));
    let var_1 = ~arg_0.b;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~u_input.d.x), u_input.d) & 2147483647i, ~(i32(-1i) * -7776i), -5025i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(Struct_1(arg_1.a, arg_0.d, false, arg_1.d, 987f), !vec4<bool>(false, arg_3, arg_1.c, false)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1783f)), _wgslsmith_div_f32(-1520f, _wgslsmith_f_op_f32(-arg_0.e)), arg_0.a.x)));
    var var_4 = u_input.c.x;
    return func_1(func_1(arg_1, func_1(arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.zyw), _wgslsmith_add_u32(var_1, u_input.a.x), true | arg_3, var_1, -215f), ~(u_input.a.xx & u_input.a.zy)), u_input.a.xx), func_1(arg_0, Struct_1(arg_0.a, 40260u, func_5(Struct_1(vec3<f32>(var_3.x, -1810f, 1317f), 1u, false, 22798u, arg_0.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, 237f) * vec2<f32>(372f, arg_1.e))).c, 1u, arg_1.a.x), firstTrailingBit(u_input.a.yz)), _wgslsmith_sub_vec2_u32(u_input.a.yz, select(vec2<u32>(0u, countOneBits(59075u)), vec2<u32>(var_1, 17146u) >> (max(vec2<u32>(0u, 4294967295u), u_input.a.zy) % vec2<u32>(32u)), !vec2<bool>(arg_2.x, arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    let var_0 = func_6(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], func_5(func_4(func_1(Struct_1(vec3<f32>(2605f, 1000f, 1200f), u_input.a.x, true, u_input.a.x, 1117f), Struct_1(vec3<f32>(2193f, -2438f, -1000f), 0u, false, u_input.a.x, -670f), ~u_input.a.zy), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1017f, 1570f))))), !vec2<bool>(all(vec3<bool>(true, true, true)), true), !(true && func_3(vec3<bool>(true, false, true), u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 22922u).c) & false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), ~_wgslsmith_add_u32(~(var_0.b >> (u_input.a.x % 32u)), ~(~var_0.b)), true, ~(~_wgslsmith_dot_vec3_u32(u_input.a & u_input.a, firstTrailingBit(vec3<u32>(100413u, u_input.a.x, 3739u)))), -340f);
    let var_2 = ~vec3<u32>(~firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 118307u)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(922f, -1638f, -418f, var_0.a.x), vec4<f32>(var_1.e, -1587f, var_0.a.x, 124f)))), 60151u);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, (_wgslsmith_mult_u32(1u, u_input.a.x >> (var_0.d % 32u)) << (_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, ~44134u) % 32u)) & var_1.d), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_1.d, 12u)], ~(~u_input.b)), ~(_wgslsmith_mult_i32(8557i, u_input.b) << (u_input.a.x % 32u)));
}

