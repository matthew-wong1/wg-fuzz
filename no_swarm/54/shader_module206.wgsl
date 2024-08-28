struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_4,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-1658f, 1100f, -867f, 375f), vec4<f32>(-435f, 164f, -1665f, -1494f), vec4<f32>(1034f, -1114f, -2095f, 1364f), vec4<f32>(-1317f, 167f, 2111f, 128f), vec4<f32>(-481f, 1000f, -1000f, 720f), vec4<f32>(-172f, -779f, 708f, -414f), vec4<f32>(-480f, 267f, 564f, -1737f), vec4<f32>(-806f, 770f, -1000f, -1000f), vec4<f32>(-2462f, -1446f, -1568f, 114f), vec4<f32>(-1357f, 679f, 241f, -1193f), vec4<f32>(852f, -1372f, -864f, 2342f), vec4<f32>(-869f, 453f, 272f, -400f), vec4<f32>(803f, 788f, -571f, 174f), vec4<f32>(1020f, -554f, 972f, -1012f), vec4<f32>(-1000f, -1287f, -2201f, -925f), vec4<f32>(-2361f, -787f, 142f, -1056f), vec4<f32>(-1169f, 125f, 1762f, -1313f), vec4<f32>(957f, -537f, 787f, 416f), vec4<f32>(-697f, -1699f, 1000f, -406f), vec4<f32>(1592f, 444f, 390f, -829f), vec4<f32>(2898f, 1861f, -2081f, -1000f), vec4<f32>(-1831f, -546f, 1286f, -1877f), vec4<f32>(-635f, -187f, -258f, -1210f), vec4<f32>(503f, -2309f, 366f, 351f), vec4<f32>(390f, -320f, -1081f, 125f), vec4<f32>(987f, -1741f, 755f, 995f), vec4<f32>(1071f, 2082f, 1286f, 559f), vec4<f32>(390f, 1085f, -1000f, -166f), vec4<f32>(-1007f, -949f, -396f, 1549f), vec4<f32>(-406f, -1000f, -774f, -380f), vec4<f32>(742f, 122f, -1202f, 608f));

var<private> global1: Struct_3;

var<private> global2: i32 = 0i;

var<private> global3: array<Struct_5, 21>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec3<bool> {
    global0 = array<vec4<f32>, 31>();
    return global1.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    global3 = array<Struct_5, 21>();
    var var_0 = Struct_5(-_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -30382i, u_input.b, 22887i), vec4<i32>(u_input.b, 0i, u_input.a, u_input.a))), (vec4<i32>(38964i, u_input.a, 18104i, -2147483647i) & vec4<i32>(0i, -6025i, -1i, u_input.a)) ^ -vec4<i32>(1i, u_input.a, u_input.b, 1i)), Struct_4(_wgslsmith_f_op_f32(step(1f, -1000f)), Struct_3(!(!vec3<bool>(false, arg_2.x, true))), Struct_2(arg_1.a)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1240f))), Struct_3(select(vec3<bool>(false, global1.a.x, global1.a.x), select(arg_2.xzz, vec3<bool>(arg_2.x, global1.a.x, false), false), true)), Struct_2(~(~97188u))), arg_2);
    var var_1 = arg_0.x;
    let var_2 = Struct_3(select(!global1.a, !func_3(global1.a.x && true, _wgslsmith_mod_vec2_i32(vec2<i32>(8091i, -2147483647i), vec2<i32>(-46311i, var_0.a)), ~vec4<u32>(var_0.c.c.a, 10779u, arg_1.a, 51058u)), vec3<bool>(false, !var_0.d.x, true)));
    global2 = var_0.a;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f - 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.a + var_0.b.a), _wgslsmith_f_op_f32(round(var_0.c.a)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global1 = Struct_3(vec3<bool>(false, true | global1.a.x, !global1.a.x));
    let var_0 = true;
    var var_1 = min(_wgslsmith_dot_vec4_i32(firstTrailingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_1.x, u_input.b, u_input.a), vec4<i32>(arg_1.x, -2147483647i, 22851i, 1i))), vec4<i32>(1i, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(14738i, 1i, arg_1.x), vec3<i32>(-2147483647i, arg_1.x, -33209i))), -1i, -_wgslsmith_clamp_i32(-1i, u_input.b, u_input.b))), _wgslsmith_div_i32(arg_1.x, _wgslsmith_mult_i32(-(i32(-1i) * -72431i), ~arg_1.x & firstLeadingBit(arg_1.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-804f)), _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(func_2(vec2<u32>(0u, _wgslsmith_clamp_u32(arg_0.a.x, arg_0.c, 47750u)), Struct_2(arg_0.a.x), !vec4<bool>(true, false, global1.a.x, true)))), _wgslsmith_f_op_f32(arg_0.d * arg_0.d));
    var var_3 = _wgslsmith_add_vec2_u32(arg_0.b.zz, (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.c, 0u), arg_0.a.xy) | arg_0.a.xx) & vec2<u32>(arg_0.b.x, ~(~arg_0.b.x)));
    return reverseBits(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(48121u, 1u, 4294967295u, 1u)), vec4<u32>(~_wgslsmith_mult_u32(0u, 3974u), 4294967295u, ~4294967295u, firstTrailingBit(4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(19515u, 33480u, 1u, 69920u), vec4<u32>(4294967295u, 4294967295u, 1u, 21895u)))), ~(~(~vec3<u32>(49582u, 8412u, 4294967295u))), _wgslsmith_sub_u32(14777u << (func_1(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 0u), vec3<u32>(1u, 0u, 7525u), 1u, -987f), _wgslsmith_mod_vec2_i32(vec2<i32>(-49100i, 1i), vec2<i32>(1663i, u_input.a))) % 32u), 74905u), 270f);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.d)), _wgslsmith_f_op_f32(var_0.d + 546f))));
    global0 = array<vec4<f32>, 31>();
    var var_2 = -min(max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, u_input.b, 2147483647i, -14628i), vec4<i32>(u_input.a, -1i, u_input.b, 2147483647i), global1.a.x), vec4<i32>(-24427i, 14689i, -1i, u_input.b)), ~vec4<i32>(-28915i, u_input.b, u_input.a, -16071i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(65501i, 1i, u_input.a, u_input.a), vec4<i32>(-22968i, u_input.b, -2147483647i, 22824i))), vec4<i32>(-1i, 49767i, min(u_input.a & u_input.b, firstTrailingBit(u_input.b)), -1i));
    let var_3 = select(vec4<bool>(37709u < var_0.c, !(var_0.c == 51083u) && any(!global1.a.zy), true, true), select(!(!select(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global1.a.x)), select(vec4<bool>(true, true, all(global1.a), global1.a.x == true), !(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true)), true), true), select(!vec4<bool>(true, global1.a.x, true, false), select(select(select(vec4<bool>(global1.a.x, true, global1.a.x, false), vec4<bool>(true, global1.a.x, global1.a.x, true), false), !vec4<bool>(global1.a.x, false, true, global1.a.x), global1.a.x), select(!vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(global1.a.x, false, global1.a.x, false), false), select(select(vec4<bool>(false, false, global1.a.x, global1.a.x), vec4<bool>(false, true, true, false), false), !vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), true)), false));
    var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(~4294967295u), ~(~0u), firstLeadingBit(firstLeadingBit(var_0.c)), 4294967295u), ~abs(vec4<u32>(24769u, var_0.a.x, 1u, var_0.b.x) | var_0.a)), var_0.b, 1u, _wgslsmith_f_op_f32(-var_0.d));
    global0 = array<vec4<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, 0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(~20002u, 31u)], _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u & var_0.b.x, 31u)]), !func_3(global1.a.x, vec2<i32>(var_2.x, u_input.a), vec4<u32>(43714u, 62832u, var_0.c, var_0.b.x)).x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(var_0.c, 31u)], vec4<f32>(1073f, var_0.d, var_0.d, -2417f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + var_0.d), _wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(var_0.d * var_0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-163f, -1000f, var_0.d))), vec3<f32>(var_0.d, -879f, var_0.d))))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(23447u, 1u, var_0.a.x, var_0.c), vec4<u32>(var_0.b.x, var_0.b.x, 39981u, 52940u), var_3), reverseBits(var_0.a)), ~max(var_0.a, var_0.a)), 1u));
}

