struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(-414f, 851f);

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(6387i, 1062f, vec3<bool>(true, true, false), 1i, -835f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = abs(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)))) >> (_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(79624u, 1u, 1u, 10165u)), ~vec4<u32>(~36734u, 1u, 1u, reverseBits(61701u))) % vec4<u32>(32u));
    let var_1 = false;
    let var_2 = Struct_2(!vec4<bool>(!all(global2.d.c.zy), var_1, var_1, all(global2.a)), reverseBits(_wgslsmith_sub_i32(u_input.a, -_wgslsmith_mult_i32(0i, global3.a))), global2.d, global2.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.d.e, var_2.c.b), vec2<f32>(arg_2, -1355f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-829f, var_2.d.e), vec2<f32>(arg_2, 1495f), global3.c.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.b, -895f))))))));
    let var_4 = _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_2.b, -81401i >> (firstLeadingBit(var_0.x) % 32u), ~global3.a ^ -arg_1)), firstLeadingBit(~vec3<i32>(firstLeadingBit(global2.d.d), _wgslsmith_div_i32(46673i, 1i), 9496i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -240f);
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global3 = Struct_1(-abs(_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(-56895i, u_input.a))), _wgslsmith_f_op_f32(func_3(-((vec2<i32>(u_input.a, -6083i) ^ vec2<i32>(u_input.a, 1i)) ^ abs(vec2<i32>(-145i, u_input.a))), abs(min(u_input.a, -18679i)), _wgslsmith_f_op_f32(ceil(1112f)), 1254f)), select(vec3<bool>(global2.c.c.x | (global2.c.c.x || global2.a.x), !global2.a.x, true), vec3<bool>(!(949f > global3.b), select(global3.e < 675f, true, false), false), false), 25319i, _wgslsmith_f_op_f32(abs(301f)));
    var var_0 = !global2.a;
    global1 = vec2<f32>(-1138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f - global3.b)));
    var var_1 = 1u;
    let var_2 = Struct_1(-u_input.a, 812f, !(!(!(!vec3<bool>(global2.c.c.x, false, true)))), ~global2.b, _wgslsmith_f_op_f32(func_3(vec2<i32>(~_wgslsmith_clamp_i32(global2.c.a, u_input.a, -1i), _wgslsmith_mod_i32(-1i, global2.b) | -29569i), min(_wgslsmith_mod_i32(global3.d, abs(global3.d)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-27338i, 78767i))), global2.c.e, _wgslsmith_f_op_f32(min(-1158f, _wgslsmith_f_op_f32(-global2.c.e))))));
    return _wgslsmith_f_op_f32(min(global2.d.e, _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = !(global2.c.c.x & (any(global2.a) || true));
    let var_1 = arg_3;
    global3 = arg_1.d;
    var var_2 = 23576i;
    let var_3 = arg_1;
    return vec3<u32>(1u, select(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(58251u, 61371u), ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5249u, 98670u), vec3<u32>(32722u, 1u, 4294967295u))), ~min(0u, ~4294967295u), all(vec3<bool>(false, all(vec2<bool>(true, true)), true))), ~1u);
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1729f + -1593f)))));
    global0 = arg_0.x | 1u;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(160f, _wgslsmith_f_op_f32(f32(-1f) * -413f))) + var_0), -1176f);
    global0 = 0u;
    global2 = Struct_2(select(select(!vec4<bool>(true, false, global3.c.x, global2.a.x), vec4<bool>(all(global2.a.wz), !global2.c.c.x, true, all(vec2<bool>(false, false))), global2.a), global2.a, vec4<bool>(any(vec4<bool>(false, global2.a.x, false, global2.c.c.x)) & true, true, true && !global2.a.x, true)), -_wgslsmith_sub_i32(countOneBits(min(u_input.a, -6040i)), -global2.c.d), Struct_1(10670i, _wgslsmith_f_op_f32(-global2.c.b), select(!select(global3.c, global2.a.xwz, false), vec3<bool>(all(global3.c), !global3.c.x, !global2.a.x), false), -firstTrailingBit(global3.a), _wgslsmith_f_op_f32(-global3.b)), global2.c);
    return global2.c;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_5(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 15900u), vec2<u32>(73678u, 53826u)), 4294967295u, 53704u) << ((func_4(_wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 4294967295u, 52817u, 1u))), Struct_2(vec4<bool>(false, global3.c.x, true, false), global3.d, global2.c, Struct_1(-2147483647i, 1249f, vec3<bool>(false, true, global2.d.c.x), global2.b, -777f)), -vec3<i32>(1i, global3.d, 1265i), Struct_3(vec2<i32>(-5808i, 19704i))) & vec3<u32>(5175u, countOneBits(1u), func_4(1535f, Struct_2(vec4<bool>(true, false, global3.c.x, false), -2147483647i, global2.d, Struct_1(4060i, 576f, vec3<bool>(global3.c.x, true, global2.a.x), -5142i, global1.x)), vec3<i32>(u_input.a, global3.a, global2.d.d), Struct_3(vec2<i32>(u_input.a, global2.b))).x)) % vec3<u32>(32u)));
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(-20834i, 13265i), 2147483647i));
    let var_2 = Struct_2(vec4<bool>(false, all(global2.a) && !all(global2.a.yxz), var_0.c.x, true), var_1.a.x, global2.c, global2.c);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.d.e, 1273f), vec2<f32>(global2.c.b, -216f))), vec2<f32>(-832f, 444f)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(trunc(global3.e))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b, global3.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1528f, global3.e) + vec2<f32>(-1000f, 1000f))))) * vec2<f32>(global1.x, _wgslsmith_f_op_f32(-495f * _wgslsmith_f_op_f32(global2.d.e * -521f)))));
    var var_3 = global2.a;
    return vec4<bool>(any(var_0.c), !(!all(var_3.zw)), var_2.d.c.x, any(var_2.d.c));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global0 = ~44760u;
    var var_0 = vec2<bool>(arg_1.c.c.x, !(((-2147483647i | global2.d.a) < u_input.a) && true));
    let var_1 = true;
    global1 = vec2<f32>(global2.c.b, global1.x);
    let var_2 = _wgslsmith_f_op_f32(arg_0.d.b + global1.x);
    return Struct_2(select(global2.a, global2.a, !any(arg_1.a.wzx)), arg_0.b, Struct_1(firstTrailingBit(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(global1.x * -1069f))), !(!vec3<bool>(global3.c.x, true, arg_1.d.c.x)), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, u_input.a), _wgslsmith_mult_i32(arg_0.c.d, global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.e - -518f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(135f, 1678f, true)))))), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(Struct_2(func_1(), global2.d.d, Struct_1(_wgslsmith_clamp_i32(13244i, u_input.a, global2.d.a) | _wgslsmith_clamp_i32(-2147483647i, 2147483647i, u_input.a), func_5(min(vec3<u32>(103527u, 95521u, 0u), vec3<u32>(0u, 0u, 1u))).e, func_5(vec3<u32>(0u, 0u, 644u)).c, firstLeadingBit(-49877i ^ global2.d.a), global3.b), func_5(~firstTrailingBit(vec3<u32>(21733u, 4294967295u, 1u)))), Struct_2(select(vec4<bool>(true, global3.c.x, global3.c.x, true), global2.a, !(false && global3.c.x)), -global3.a, Struct_1(u_input.a, _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-global3.b)), func_1().wwy, 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.e)) * _wgslsmith_div_f32(global3.e, global3.e))), global2.d), global3.c.x);
    let var_0 = 100229u;
    let var_1 = func_6(Struct_2(func_1(), u_input.a, global2.c, Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.e)), _wgslsmith_f_op_f32(global3.e - global1.x)), !global2.a.zyz, global3.a, global1.x)), Struct_2(vec4<bool>(!global2.c.c.x, all(global2.d.c.xx), !any(vec2<bool>(true, true)), true), _wgslsmith_div_i32(global3.d, -12052i), global2.d, Struct_1(~1634i >> (var_0 % 32u), _wgslsmith_f_op_f32(trunc(func_5(vec3<u32>(5310u, 19845u, 0u)).e)), vec3<bool>(all(global3.c.zz), !global3.c.x, false), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(533f, global2.c.b)) * _wgslsmith_div_f32(-1349f, global1.x)))), !all(!vec2<bool>(global2.a.x, global3.c.x)));
    let var_2 = max(-(~(~vec2<i32>(16901i, global2.d.a))), firstLeadingBit(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(global2.c.a, var_1.c.d), vec2<i32>(-2147483647i, -50722i)))));
    global2 = Struct_2(vec4<bool>(!func_6(var_1, Struct_2(vec4<bool>(true, var_1.a.x, global3.c.x, false), global2.b, var_1.c, Struct_1(var_1.c.d, global2.d.b, global3.c, 0i, global1.x)), false).d.c.x, any(select(!var_1.a, var_1.a, !vec4<bool>(false, true, var_1.c.c.x, true))), true, global3.c.x), 65657i, func_5(vec3<u32>(1725u, ~1u, abs(var_0 >> (4294967295u % 32u)))), var_1.d);
    let var_3 = _wgslsmith_mult_vec2_i32(var_2, firstTrailingBit(~var_2));
    var var_4 = _wgslsmith_clamp_vec2_u32(~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -856f) * -569f), func_6(Struct_2(var_1.a, -2147483647i, Struct_1(var_2.x, global2.d.b, vec3<bool>(var_1.d.c.x, global2.c.c.x, var_1.c.c.x), 14931i, -1400f), Struct_1(2147483647i, global2.c.e, vec3<bool>(true, true, true), 34806i, global2.d.b)), var_1, select(true, var_1.a.x, true)), (vec3<i32>(var_2.x, var_2.x, -2771i) & vec3<i32>(var_2.x, -19946i, -2147483647i)) << (vec3<u32>(var_0, 0u, 0u) % vec3<u32>(32u)), Struct_3(var_2 & var_2)).zz, ~(~vec2<u32>(3132u, 91157u)), ~(~(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_0, 4294967295u)) ^ reverseBits(vec2<u32>(var_0, var_0)))));
    var var_5 = vec4<f32>(-924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1085f))), 356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + var_1.d.e) - _wgslsmith_f_op_f32(-global2.d.b)));
    var var_6 = vec4<u32>(_wgslsmith_div_u32(0u, min(36573u, 4294967295u)) ^ (~var_4.x << (1u % 32u)), ~(~_wgslsmith_mult_u32(max(var_4.x, 6116u), _wgslsmith_add_u32(var_4.x, 1u))), _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0, 0u), var_4.x ^ var_4.x), var_4.x), ~firstLeadingBit(_wgslsmith_mod_u32(1u, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_0, 1u, var_4.x)), vec3<u32>(var_6.x, var_6.x & 0u, var_6.x)), ~(~1u)), var_6.yw, var_0);
}

