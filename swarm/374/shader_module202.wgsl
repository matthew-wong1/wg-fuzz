struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(489f, 1000f), vec2<f32>(217f, 1843f), vec2<f32>(-685f, -101f), vec2<f32>(112f, -2614f), vec2<f32>(861f, -305f), vec2<f32>(-223f, 324f), vec2<f32>(-862f, -1267f), vec2<f32>(-1000f, 249f), vec2<f32>(1327f, -489f), vec2<f32>(-1421f, 1000f), vec2<f32>(-369f, -801f), vec2<f32>(-276f, 230f), vec2<f32>(-942f, 477f), vec2<f32>(-674f, 392f), vec2<f32>(1016f, 759f), vec2<f32>(573f, -743f), vec2<f32>(1118f, 792f), vec2<f32>(-358f, -742f), vec2<f32>(-1000f, -1119f), vec2<f32>(757f, 460f), vec2<f32>(-255f, -1386f), vec2<f32>(1641f, -1504f), vec2<f32>(406f, -386f), vec2<f32>(-234f, 100f), vec2<f32>(1767f, 1751f), vec2<f32>(-606f, 251f), vec2<f32>(-1513f, 1417f), vec2<f32>(930f, 441f));

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(31565u, 4294967295u, 1u, 4294967295u), -330f), Struct_1(vec4<u32>(21115u, 1u, 4294967295u, 4294967295u), -895f), Struct_1(vec4<u32>(0u, 0u, 0u, 41592u), -711f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 16727u, 4294967295u), 870f), Struct_1(vec4<u32>(30737u, 61314u, 4294967295u, 1u), -1599f), Struct_1(vec4<u32>(4294967295u, 16666u, 0u, 41386u), 252f), Struct_1(vec4<u32>(0u, 14495u, 648u, 25489u), -1000f), Struct_1(vec4<u32>(84784u, 57272u, 0u, 0u), 537f), Struct_1(vec4<u32>(14613u, 63469u, 32983u, 72665u), -248f), Struct_1(vec4<u32>(4294967295u, 21315u, 18193u, 4294967295u), 353f), Struct_1(vec4<u32>(24970u, 90927u, 14672u, 0u), 1000f), Struct_1(vec4<u32>(4294967295u, 19852u, 4294967295u, 4294967295u), -455f), Struct_1(vec4<u32>(4294967295u, 0u, 40572u, 19992u), 1000f), Struct_1(vec4<u32>(4294967295u, 20994u, 1u, 0u), 886f), Struct_1(vec4<u32>(63560u, 1u, 1u, 40101u), 640f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, -(~arg_1)), 14024i), arg_1);
    let var_1 = arg_0.b;
    var var_2 = global4[_wgslsmith_index_u32(min(~(_wgslsmith_div_u32(select(arg_0.c.x, var_1.a.x, true), u_input.a) | var_1.a.x), _wgslsmith_dot_vec4_u32(var_1.a ^ (arg_0.e.c.a & ~vec4<u32>(var_1.a.x, arg_0.b.a.x, arg_0.c.x, arg_0.c.x)), vec4<u32>(4294967295u, arg_0.e.c.a.x, max(var_1.a.x, ~u_input.a), var_1.a.x))), 15u)];
    let var_3 = ~(~var_2.a.x);
    var var_4 = max(firstLeadingBit(abs(vec2<i32>(arg_1, arg_1))), ~_wgslsmith_div_vec2_i32(vec2<i32>(select(var_0, var_0, false), -var_0), vec2<i32>(-1i) * -vec2<i32>(-29390i, arg_1)));
    return -793f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    var var_0 = abs(-1i);
    return _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(step(arg_1.x, arg_0))) * _wgslsmith_f_op_f32(floor(-1521f)))));
}

fn func_2() -> vec4<f32> {
    let var_0 = vec4<f32>(-1000f, -437f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(0u, Struct_1(vec4<u32>(54663u, u_input.a, u_input.a, u_input.a), -252f), vec4<u32>(u_input.a, u_input.a, u_input.a, 98031u), global3.x, Struct_2(-121f, vec2<u32>(34333u, 22248u), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), -1427f), -1449f)), 1i << (u_input.a % 32u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1525f, global0.x, 270f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, -1000f, global0.x))) - vec4<f32>(-113f, _wgslsmith_f_op_f32(1175f * global0.x), _wgslsmith_div_f32(global0.x, -1000f), _wgslsmith_div_f32(1257f, 1377f))), global3.x)));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(global0.x * var_0.x)), _wgslsmith_f_op_f32(func_4(-1114f, vec4<f32>(var_0.x, global0.x, 1111f, -117f), true)), -293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(386f)))), !global3.x))));
    let var_1 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, 48896u) | firstTrailingBit(u_input.a & 4294967295u), ~(~(u_input.a & u_input.a))) & ~u_input.a;
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, ~var_1), var_1, 24668u), u_input.a, u_input.a >> (~reverseBits(var_1 | 0u) % 32u));
    let var_3 = global4[_wgslsmith_index_u32(71077u, 15u)];
    return _wgslsmith_f_op_vec4_f32(-var_0);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-2066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1860f), -602f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, -1029f) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -382f), global0.wx)), global0.wz), global0.wx)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(647f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.x, -2301f)), _wgslsmith_f_op_f32(select(-355f, global0.x, global3.x))))), _wgslsmith_f_op_f32(-1000f + var_0.x))), ~((reverseBits(vec2<u32>(u_input.a, 4294967295u)) << (max(vec2<u32>(1u, 7432u), vec2<u32>(u_input.a, 32680u)) % vec2<u32>(32u))) >> (vec2<u32>(countOneBits(82102u), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a)) % vec2<u32>(32u))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 86032u), _wgslsmith_add_u32(36228u | ~u_input.a, u_input.a)), 15u)], global0.x);
    var_1 = Struct_2(var_1.d, ~(~vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), var_1.c.a.x)), var_1.c, _wgslsmith_f_op_f32(1039f * 205f));
    global4 = array<Struct_1, 15>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1537f, _wgslsmith_div_f32(634f, 1580f), var_1.a, _wgslsmith_div_f32(var_1.a, 1242f)) - _wgslsmith_f_op_vec4_f32(func_2()))));
    return Struct_2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1912f - 1388f) - _wgslsmith_f_op_f32(f32(-1f) * -1252f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.b), -126f, var_0.x, var_1.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1082f, var_1.c.b, -594f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(958f, var_0.x, var_1.d, var_0.x))))), global3.x)), ~var_1.b, Struct_1(var_1.c.a, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_3(Struct_3(var_1.b.x, var_1.c, var_1.c.a, true, Struct_2(1221f, var_1.b, Struct_1(var_1.c.a, -152f), var_0.x)), i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, 1012f, 630f, var_0.x) * vec4<f32>(-125f, var_1.c.b, var_0.x, 2078f)))))), _wgslsmith_f_op_f32(f32(-1f) * -219f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    global1 = array<vec4<bool>, 18>();
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_1.c.b, 389f, arg_0.d), vec4<f32>(-1203f, 1315f, global0.x, 607f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1855f, arg_0.d, global0.x, -1265f))))))));
    global4 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(2427f)), arg_0.a, -890f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, min(-3860i, 1i), select(1i, -5465i, global3.x)), vec3<i32>(i32(-1i) * -16640i, _wgslsmith_mod_i32(-1i, -15934i), ~(-1i))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-26015i, 11603i, 33149i), firstTrailingBit(vec3<i32>(35162i, 5045i, -1i))), firstTrailingBit(min(vec3<i32>(1i, -8017i, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, 2147483647i))))) ^ vec3<i32>(firstLeadingBit(1i), 1i, ~(-2147483647i));
    return Struct_3(arg_1.c.a.x, arg_1.c, select(_wgslsmith_div_vec4_u32(arg_1.c.a, ~(~vec4<u32>(65036u, arg_0.b.x, 1u, arg_1.c.a.x))), arg_0.c.a, select(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(105156u, arg_1.c.a.x)), 18u)], vec4<bool>(true, global3.x, !global3.x, u_input.a == 4294967295u), vec4<bool>(true && global3.x, true, !global3.x, !global3.x))), !all(!vec3<bool>(global3.x, false, global3.x)), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), -697f), _wgslsmith_mult_vec2_u32(abs(select(vec2<u32>(47238u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, global3.x))), (vec2<u32>(u_input.a, 56197u) << (vec2<u32>(u_input.a, 73583u) % vec2<u32>(32u))) << (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), func_1().c, func_1().a));
    var var_1 = func_1().c;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_1.b), vec2<u32>(_wgslsmith_mult_u32(~1u, 1u), 80640u), global4[_wgslsmith_index_u32(1629u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b, -1030f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b - -1505f), _wgslsmith_f_op_f32(-1107f * 815f)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(540f + var_0.e.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_5(Struct_2(var_2.a, var_2.c.a.yw, Struct_1(vec4<u32>(528u, 40770u, var_2.c.a.x, 1u), 552f), global0.x), func_5(Struct_2(-1162f, var_1.a.xz, Struct_1(var_1.a, var_2.c.b), var_2.a), var_0.e).e).e.c.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, var_1.b, global0.x, 600f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -651f, var_1.b))), !global3.x)) + _wgslsmith_f_op_f32(-var_2.a)));
    let var_4 = max(reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 15507i), vec3<i32>(30871i, -12589i, -2147483647i)), abs(-2147483647i)), -_wgslsmith_mult_i32(-20577i, -54755i))), -1i);
    let var_5 = vec3<i32>(i32(-1i) * -firstTrailingBit(_wgslsmith_div_i32(var_4, 28340i)), ~_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_4, 1i), vec2<i32>(var_4, -22248i))), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_4, var_4), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(var_4, -82455i)))), ~var_4 & 11972i);
    global3 = !select(!vec3<bool>(global3.x, global3.x, false), vec3<bool>(true, var_0.d, !var_0.d), true);
    var var_6 = vec3<u32>(var_2.c.a.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, ~var_1.a.x << (20514u % 32u), 4294967295u), var_0.a), 749u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

