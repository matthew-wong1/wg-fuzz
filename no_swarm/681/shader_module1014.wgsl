struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(17291i, 47188i, -1i, -1i), vec4<i32>(0i, 1i, -1i, 0i), vec4<i32>(26591i, 0i, 44727i, 2147483647i), vec4<i32>(-26639i, i32(-2147483648), i32(-2147483648), 12447i), vec4<i32>(0i, i32(-2147483648), 25527i, 1i), vec4<i32>(6649i, -21164i, 0i, 15493i), vec4<i32>(13350i, -32496i, -36409i, i32(-2147483648)), vec4<i32>(27211i, 6975i, 0i, 1414i), vec4<i32>(-56593i, -20188i, 49640i, 1i), vec4<i32>(i32(-2147483648), 1i, 6928i, 32682i), vec4<i32>(0i, -2416i, -8033i, 0i), vec4<i32>(-490i, 27168i, 21372i, -896i));

var<private> global1: array<i32, 17> = array<i32, 17>(-1217i, -206i, -1i, -1i, -35707i, i32(-2147483648), -28443i, 12653i, -51308i, 28023i, 26996i, 58437i, 10319i, -16223i, 2147483647i, -25244i, i32(-2147483648));

var<private> global2: u32 = 16386u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 12>();
    global2 = u_input.c;
    let var_0 = vec4<u32>(1u, 29824u, _wgslsmith_add_u32(arg_0.a.x, 65089u), ~(0u << (arg_0.a.x % 32u)));
    let var_1 = -_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 17u)], u_input.a, -51516i)), u_input.d.wyx);
    return arg_0;
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f - -1090f) * _wgslsmith_f_op_f32(f32(-1f) * -1128f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-355f)) - -598f) * _wgslsmith_f_op_f32(f32(-1f) * -903f)))));
    global0 = array<vec4<i32>, 12>();
    let var_1 = func_1(Struct_1(~(~(~vec2<u32>(u_input.c, 21794u))), ~u_input.c, func_1(Struct_1(select(vec2<u32>(25884u, u_input.c), vec2<u32>(u_input.c, u_input.c), vec2<bool>(false, true)), 1u, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), ~vec2<u32>(4294967295u, u_input.c))).c, vec2<bool>(global1[_wgslsmith_index_u32(~25245u, 17u)] <= -604i, true), ~vec2<u32>(1u, ~u_input.c)));
    var var_2 = func_1(func_1(func_1(Struct_1(select(vec2<u32>(var_1.b, 148914u), var_1.a, var_1.c), firstTrailingBit(u_input.c), vec2<bool>(false, var_1.c.x), func_1(var_1).c, var_1.e))));
    let var_3 = ~firstLeadingBit(~21345u);
    return global0[_wgslsmith_index_u32(var_1.b | (select(~0u, select(var_2.b, u_input.c, var_2.d.x), var_1.c.x) | ~var_3), 12u)] & vec4<i32>(global1[_wgslsmith_index_u32(var_3, 17u)], u_input.d.x, ~_wgslsmith_div_i32(u_input.b.x, 1i) << (92786u % 32u), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(firstTrailingBit(var_2.e.x), 17u)] ^ 1i, firstTrailingBit(~(-2147483647i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(func_3(), vec4<i32>(abs(firstLeadingBit(u_input.b.x >> (arg_3.a.x % 32u))), -1i, 2147483647i << (arg_3.b % 32u), ~u_input.d.x));
    var var_1 = select(!vec3<bool>(arg_3.d.x, true, arg_0.d.x), select(!vec3<bool>(arg_3.c.x || true, true, any(vec3<bool>(arg_0.c.x, true, arg_3.d.x))), vec3<bool>(true, true, true), !arg_0.c.x), vec3<bool>(!(!any(vec3<bool>(arg_0.d.x, arg_0.c.x, arg_0.c.x))), true, !all(vec3<bool>(false, arg_3.d.x, true))));
    global0 = array<vec4<i32>, 12>();
    var_1 = !select(!(!vec3<bool>(arg_3.c.x, arg_0.d.x, arg_3.c.x)), vec3<bool>(var_1.x, true, all(vec3<bool>(arg_0.c.x, true, var_1.x))), _wgslsmith_f_op_f32(max(-1000f, arg_1.x)) != arg_1.x);
    let var_2 = all(arg_3.c);
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = any(func_1(func_1(func_1(func_1(Struct_1(vec2<u32>(18050u, arg_3.a.x), 4294967295u, arg_3.c, arg_2.d, arg_3.e))))).d);
    let var_1 = u_input.d.xw;
    global1 = array<i32, 17>();
    global0 = array<vec4<i32>, 12>();
    let var_2 = -477f;
    return _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(abs(select(arg_1, arg_1, !vec3<bool>(arg_0.c.x, true, arg_0.c.x))), min(~countOneBits(vec3<u32>(10846u, arg_3.b, 3504u)), arg_1)), ~(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(29815u, arg_3.e.x, arg_0.a.x), vec3<u32>(arg_2.b, 38253u, 3608u))) & (_wgslsmith_mod_u32(58397u, u_input.c) & 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(~29592u) | func_4(func_1(Struct_1(~vec2<u32>(u_input.c, u_input.c), ~u_input.c, select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(32368u, u_input.c)))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c) & abs(vec3<u32>(4294967295u, 30272u, 21723u))), func_1(func_2(func_1(Struct_1(vec2<u32>(0u, 0u), u_input.c, vec2<bool>(false, false), vec2<bool>(true, false), vec2<u32>(15015u, u_input.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1987f, -538f, -1488f, -1666f)), u_input.d.x, func_1(Struct_1(vec2<u32>(0u, 0u), 2742u, vec2<bool>(false, true), vec2<bool>(true, true), vec2<u32>(0u, u_input.c))))), Struct_1(min(select(vec2<u32>(30649u, 0u), vec2<u32>(4294967295u, u_input.c), true), vec2<u32>(1u, u_input.c)), u_input.c ^ u_input.c, vec2<bool>(any(vec3<bool>(false, true, true)), true), func_1(func_1(Struct_1(vec2<u32>(u_input.c, 0u), 4294967295u, vec2<bool>(false, false), vec2<bool>(false, true), vec2<u32>(u_input.c, u_input.c)))).d, ~(vec2<u32>(17182u, u_input.c) >> (vec2<u32>(u_input.c, 42969u) % vec2<u32>(32u)))));
    global2 = reverseBits(~u_input.c);
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1048f), -555f, _wgslsmith_f_op_f32(sign(509f)), _wgslsmith_f_op_f32(step(-215f, -199f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1726f, 1000f, -1000f, 1000f)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(f32(-1f) * -409f)), _wgslsmith_f_op_f32(f32(-1f) * -270f), -147f, _wgslsmith_f_op_f32(-852f * _wgslsmith_f_op_f32(-1250f - 264f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, -144f, -654f, -1097f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -288f, 450f, 1305f))))))));
    var var_1 = ~(~(u_input.c | _wgslsmith_clamp_u32(_wgslsmith_div_u32(26393u, 37674u), _wgslsmith_mod_u32(7274u, 4294967295u), 0u)));
    let var_2 = func_2(Struct_1(_wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 151381u)), ~vec2<u32>(u_input.c, u_input.c)), 1u, func_1(Struct_1(~vec2<u32>(4294967295u, 12880u), _wgslsmith_sub_u32(86519u, 0u), vec2<bool>(false, true), vec2<bool>(true, true), vec2<u32>(41875u, 1u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))).d, !vec2<bool>(true, var_0.x != 317f), min(~vec2<u32>(51348u, 1u) | _wgslsmith_mod_vec2_u32(vec2<u32>(24046u, 20281u), vec2<u32>(4294967295u, u_input.c)), ~vec2<u32>(u_input.c, u_input.c))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(var_0)))), global1[_wgslsmith_index_u32(1u, 17u)], Struct_1(_wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(0u, 1u)), 43470u << (~min(1u, u_input.c) % 32u), func_2(Struct_1(~vec2<u32>(u_input.c, 1u), u_input.c, vec2<bool>(true, true), vec2<bool>(true, false), reverseBits(vec2<u32>(0u, 12704u))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 612f, -2136f, -769f))), global1[_wgslsmith_index_u32(~0u, 17u)], func_2(func_2(Struct_1(vec2<u32>(103676u, 4294967295u), u_input.c, vec2<bool>(true, true), vec2<bool>(true, true), vec2<u32>(u_input.c, 4294967295u)), var_0, u_input.b.x, Struct_1(vec2<u32>(33537u, 41240u), 30922u, vec2<bool>(true, false), vec2<bool>(true, true), vec2<u32>(u_input.c, 28783u))), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 1i, Struct_1(vec2<u32>(u_input.c, 47156u), 4294967295u, vec2<bool>(false, true), vec2<bool>(true, true), vec2<u32>(1u, u_input.c)))).d, func_1(Struct_1(min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.c)), 0u, vec2<bool>(false, true), vec2<bool>(true, true), max(vec2<u32>(1u, u_input.c), vec2<u32>(43857u, u_input.c)))).d, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, abs(u_input.c)), ~(~vec2<u32>(43958u, u_input.c))))).e;
    let var_3 = vec4<u32>(func_1(func_2(Struct_1(vec2<u32>(var_2.x, 1u), ~33456u, func_2(Struct_1(var_2, 1u, vec2<bool>(true, false), vec2<bool>(false, false), vec2<u32>(var_2.x, 10281u)), var_0, 2147483647i, Struct_1(vec2<u32>(u_input.c, 0u), 1u, vec2<bool>(true, true), vec2<bool>(false, true), vec2<u32>(u_input.c, var_2.x))).c, func_2(Struct_1(vec2<u32>(1u, var_2.x), 5651u, vec2<bool>(false, true), vec2<bool>(false, true), var_2), vec4<f32>(2065f, 1211f, 810f, var_0.x), u_input.d.x, Struct_1(vec2<u32>(var_2.x, var_2.x), var_2.x, vec2<bool>(false, true), vec2<bool>(true, true), vec2<u32>(1u, 9431u))).d, func_1(Struct_1(var_2, var_2.x, vec2<bool>(false, false), vec2<bool>(false, false), var_2)).e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -592f, 140f, var_0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f) + vec4<f32>(var_0.x, var_0.x, -625f, var_0.x))), _wgslsmith_mult_i32(-u_input.d.x, ~u_input.b.x), Struct_1(~var_2, ~4294967295u, func_2(Struct_1(vec2<u32>(u_input.c, var_2.x), u_input.c, vec2<bool>(false, true), vec2<bool>(false, true), var_2), var_0, 2147483647i, Struct_1(vec2<u32>(var_2.x, u_input.c), 4294967295u, vec2<bool>(true, false), vec2<bool>(false, false), var_2)).d, vec2<bool>(true, true), var_2))).b, ~func_1(Struct_1(var_2, 87523u, select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<u32>(1u, u_input.c))).a.x, firstLeadingBit(firstLeadingBit(~var_2.x)), _wgslsmith_div_u32(abs(~var_2.x), select(67801u, ~reverseBits(var_2.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(4294967295u, var_2.x), _wgslsmith_f_op_f32(var_0.x * -1466f), var_0.x);
}

