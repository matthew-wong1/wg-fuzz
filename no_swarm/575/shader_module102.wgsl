struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<f32, 22>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-398f, -1873f, 474f, 1645f), vec4<f32>(-1162f, 1152f, 1278f, 1113f), vec4<f32>(-417f, 891f, -1053f, -185f), vec4<f32>(-320f, -821f, -1276f, 789f), vec4<f32>(-354f, -1673f, 1612f, -657f), vec4<f32>(-859f, -813f, 281f, -649f), vec4<f32>(-1000f, -421f, 706f, -836f), vec4<f32>(-2196f, 1063f, 1531f, -895f), vec4<f32>(-2623f, -389f, -354f, -1426f), vec4<f32>(245f, -2628f, -514f, 1088f), vec4<f32>(1000f, 2293f, -720f, -349f), vec4<f32>(278f, 519f, 862f, 621f), vec4<f32>(379f, -210f, 689f, -418f), vec4<f32>(-1000f, -1066f, -539f, -361f), vec4<f32>(-744f, -438f, 1000f, 782f));

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<bool>(false, false, true), true, 38663u, true), vec4<u32>(25849u, 15800u, 0u, 0u)), Struct_2(Struct_1(vec3<bool>(true, false, false), false, 32882u, true), vec4<u32>(84925u, 20259u, 4294967295u, 15651u)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, 1u, false), vec4<u32>(14103u, 89431u, 1u, 0u)), Struct_2(Struct_1(vec3<bool>(true, true, true), true, 4294967295u, false), vec4<u32>(48008u, 38096u, 1u, 62693u)), Struct_2(Struct_1(vec3<bool>(true, true, false), true, 4294967295u, true), vec4<u32>(4294967295u, 38843u, 1u, 0u)), Struct_2(Struct_1(vec3<bool>(true, false, false), true, 21362u, true), vec4<u32>(95097u, 71139u, 31951u, 0u)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, 1u, false), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, false, true), false, 1u, false), vec4<u32>(68543u, 65217u, 4294967295u, 1u)), Struct_2(Struct_1(vec3<bool>(false, true, false), true, 4294967295u, false), vec4<u32>(0u, 7270u, 4294967295u, 10681u)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, 100794u, true), vec4<u32>(35419u, 4294967295u, 39280u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, false), false, 0u, false), vec4<u32>(4294967295u, 5392u, 1u, 43431u)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, 71795u, false), vec4<u32>(26204u, 1u, 5569u, 6209u)), Struct_2(Struct_1(vec3<bool>(false, true, true), false, 4294967295u, true), vec4<u32>(0u, 11149u, 69511u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, false, true), false, 4294967295u, false), vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(false, true, true), false, 4294967295u, true), vec4<u32>(4294967295u, 0u, 4294967295u, 2599u)), Struct_2(Struct_1(vec3<bool>(true, true, false), false, 1u, true), vec4<u32>(1u, 13560u, 2853u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, 0u, false), vec4<u32>(1u, 62166u, 36651u, 5883u)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, 27358u, false), vec4<u32>(21702u, 4294967295u, 37646u, 0u)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, 53766u, false), vec4<u32>(4294967295u, 5969u, 37850u, 3152u)), Struct_2(Struct_1(vec3<bool>(true, false, false), true, 5658u, true), vec4<u32>(20707u, 70667u, 1u, 94906u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    global1 = min(arg_2.x, arg_2.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1312f, arg_3, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(161f - arg_3), _wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, -1306f), -204f))));
    global3 = array<Struct_2, 20>();
    var var_1 = arg_3;
    var var_2 = max(~(~u_input.a.x), 1u);
    return var_0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, true), true, 4294967295u, true), vec4<i32>(arg_2.x, arg_2.x, -2147483647i, 14150i), 891f)), 1284f <= arg_0.x))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f - arg_0.x) * _wgslsmith_f_op_f32(arg_0.x + global0[_wgslsmith_index_u32(40505u, 22u)]))))));
    let var_1 = !((!all(vec3<bool>(false, true, true)) | false) | any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true))));
    global3 = array<Struct_2, 20>();
    global2 = array<vec4<f32>, 15>();
    var var_2 = global3[_wgslsmith_index_u32(max(~0u, 17315u), 20u)];
    return arg_2.x >= u_input.d.x;
}

fn func_1() -> bool {
    global3 = array<Struct_2, 20>();
    var var_0 = Struct_1(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)) & !(u_input.b < 1u), _wgslsmith_f_op_f32(f32(-1f) * -1204f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) + _wgslsmith_f_op_f32(trunc(-947f))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1144f, global0[_wgslsmith_index_u32(u_input.b, 22u)], -306f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) - global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), min(-vec2<i32>(u_input.c.x, 2147483647i), u_input.c), vec4<i32>(reverseBits(35576i), u_input.c.x << (0u % 32u), _wgslsmith_div_i32(1033i, 4146i), u_input.e << (0u % 32u)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u ^ u_input.a.x, ~4294967295u), ~1630u), 22u)] != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-999f * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(35164u, 22u)]))) - global0[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 70314u), ~(u_input.a << (u_input.a % vec2<u32>(32u))))), _wgslsmith_div_f32(-291f, global0[_wgslsmith_index_u32(u_input.b, 22u)]) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))));
    global0 = array<f32, 22>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_0.c, var_0.c), abs(0u | firstTrailingBit(var_0.c)))), 20u)];
    let var_2 = Struct_1(vec3<bool>(true, !func_2(_wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(67610u, 15u)])), countOneBits(vec2<i32>(25835i, 0i)), vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, 2147483647i) | u_input.d), !(var_1.a.d & !var_0.a.x)), true, _wgslsmith_div_u32(_wgslsmith_div_u32(~(50856u >> (1u % 32u)), ~(~12477u)), ~0u), _wgslsmith_f_op_f32(111f + global0[_wgslsmith_index_u32(var_0.c, 22u)]) >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(var_1.b), ~vec4<u32>(var_1.b.x, 104340u, 4294967295u, 1u) ^ ~var_1.b), 22u)]);
    return !any(vec3<bool>(true, !var_1.a.b || var_2.d, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.c.x);
    var_0 = _wgslsmith_mod_i32(2147483647i, -u_input.d.x);
    var var_1 = Struct_1(select(vec3<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true))), !func_1()), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, all(vec3<bool>(false, true, false)), true)), !all(vec2<bool>(true, false))), !func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, 1795f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]) - vec4<f32>(global0[_wgslsmith_index_u32(17340u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)]))), u_input.d.xw, u_input.d), ~(u_input.a.x >> (u_input.b % 32u)), true && all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
    var var_2 = -(i32(-1i) * -(u_input.e & -2147483647i)) | max(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, u_input.c.x), -17539i, -58660i), _wgslsmith_add_i32(1i, abs(-30568i)));
    var_1 = Struct_1(var_1.a, any(vec3<bool>(!var_1.b, true, true)) && func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(u_input.a.x, 15u)])), global2[_wgslsmith_index_u32(abs(26521u), 15u)], !var_1.b)), u_input.c, u_input.d), u_input.a.x, all(!(!select(vec3<bool>(var_1.a.x, var_1.b, false), var_1.a, var_1.a))));
    global1 = max(max(u_input.e, -1i), u_input.e | u_input.e);
    var_1 = Struct_1(!vec3<bool>(var_1.b, any(vec3<bool>(var_1.a.x, var_1.d, var_1.b)), true & !var_1.a.x), all(!var_1.a.zy), var_1.c, ~(~(~u_input.b)) > max(~var_1.c ^ u_input.b, _wgslsmith_add_u32(var_1.c, 21203u) & var_1.c));
    global3 = array<Struct_2, 20>();
    var var_3 = Struct_1(select(select(!var_1.a, select(select(var_1.a, vec3<bool>(true, var_1.d, true), var_1.a), !vec3<bool>(false, var_1.b, var_1.a.x), var_1.d | var_1.a.x), any(vec2<bool>(var_1.b, true))), !(!select(var_1.a, vec3<bool>(true, var_1.a.x, var_1.d), var_1.a)), -880f > _wgslsmith_f_op_f32(floor(-443f))), var_1.d, (var_1.c ^ 4294967295u) | ~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(var_1.c, var_1.c))), _wgslsmith_mult_u32(13576u, ~u_input.b) == 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.x);
}

