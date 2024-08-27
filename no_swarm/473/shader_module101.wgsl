struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(8454u, -1106f, vec2<f32>(210f, 478f)), Struct_2(20308u, 177f, vec2<f32>(319f, 214f)), Struct_2(1u, 846f, vec2<f32>(-185f, 642f)), Struct_2(1u, -908f, vec2<f32>(315f, -1752f)), Struct_2(1221u, 527f, vec2<f32>(-388f, -638f)), Struct_2(89744u, 1000f, vec2<f32>(-1697f, 1000f)), Struct_2(13487u, 163f, vec2<f32>(1956f, 1000f)), Struct_2(29789u, -200f, vec2<f32>(1158f, -1642f)), Struct_2(46903u, 685f, vec2<f32>(-492f, -1000f)), Struct_2(1u, 1000f, vec2<f32>(497f, 698f)), Struct_2(40691u, -167f, vec2<f32>(1549f, -127f)), Struct_2(22231u, 1568f, vec2<f32>(-375f, -719f)), Struct_2(1u, 695f, vec2<f32>(-921f, -297f)), Struct_2(1u, -1121f, vec2<f32>(-1494f, -271f)), Struct_2(47021u, 1264f, vec2<f32>(-291f, 335f)), Struct_2(7863u, -1000f, vec2<f32>(1088f, -469f)), Struct_2(28157u, -1000f, vec2<f32>(1156f, 913f)), Struct_2(1u, 1000f, vec2<f32>(-2084f, -459f)), Struct_2(17384u, 271f, vec2<f32>(-106f, -583f)), Struct_2(1u, 336f, vec2<f32>(339f, 783f)), Struct_2(13205u, 176f, vec2<f32>(1000f, -1351f)), Struct_2(1u, 717f, vec2<f32>(-1000f, 1000f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_5(Struct_1(~vec3<u32>(_wgslsmith_add_u32(arg_3.a.x, arg_1), ~arg_1, reverseBits(arg_3.d)), ~(~arg_3.b), ~countOneBits(select(0u, 0u, global0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(77870u, u_input.a, arg_0.c, arg_0.b.x) >> (reverseBits(vec4<u32>(arg_1, 22486u, arg_0.a.x, u_input.e.x)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1, 5726u, 4294967295u), vec4<u32>(4294967295u, arg_0.c, u_input.e.x, arg_0.a.x))), vec2<f32>(-2266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.x - arg_2.x) - _wgslsmith_f_op_f32(ceil(arg_3.e.x))))), Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(u_input.e | arg_0.b.xz, u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1267f) - 559f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.e)) + _wgslsmith_f_op_vec2_f32(-arg_0.e))), u_input.d, global3[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec3_u32(arg_0.b, arg_3.a), ~(~arg_1), all(vec4<bool>(true, false, true, global0.a.x)) && any(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x))), 22u)], Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 113288u, arg_3.a.x), vec3<u32>(arg_0.b.x, arg_0.a.x, 48204u)), abs(vec3<u32>(arg_1, 15560u, arg_0.a.x)), arg_0.d, arg_3.d << (~90571u % 32u), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), 286f))));
    var var_1 = abs(-(~(-abs(vec4<i32>(var_0.b.b, u_input.d, 0i, u_input.d)))));
    var var_2 = firstTrailingBit(arg_0.b.xx ^ _wgslsmith_clamp_vec2_u32(abs(var_0.a.a.yz), ~max(arg_3.b.xx, vec2<u32>(47548u, 4294967295u)), vec2<u32>(var_0.b.c.a << (1u % 32u), 12169u)));
    var var_3 = vec4<bool>(global0.a.x, !(!all(!global0.a)), !global0.a.x, false && !((u_input.d > 1i) & any(vec4<bool>(true, global0.a.x, global0.a.x, false))));
    global1 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(arg_3.e.x * 1811f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = arg_1.b;
    global0 = Struct_4(select(global0.a, arg_0.yz, !select(arg_0.zz, select(arg_0.xy, arg_0.zx, vec2<bool>(true, global0.a.x)), select(vec2<bool>(arg_0.x, arg_0.x), global0.a, false))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.e.x)))), -486f);
    let var_2 = firstLeadingBit(firstTrailingBit(vec3<i32>(~var_0 >> (~1u % 32u), arg_3.b & min(var_0, var_0), u_input.d)));
    global0 = Struct_4(vec2<bool>((select(var_2.x, 1i, global0.a.x) >> (4294967295u % 32u)) != 43246i, true));
    return vec2<bool>(all(global0.a), global0.a.x);
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(0i), 37320i), ~vec2<i32>(arg_0, -4278i)), firstLeadingBit(abs(~(~vec2<i32>(u_input.d, -1i)))));
    return Struct_4(func_4(vec3<bool>(true, true, true), Struct_3(Struct_2(u_input.a, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(57683u, 9u)], u_input.a, vec3<f32>(-682f, 1233f, 435f), global1[_wgslsmith_index_u32(u_input.e.x, 9u)])), vec2<f32>(1f, 1f)), _wgslsmith_dot_vec2_i32(-vec2<i32>(8870i, 16845i), vec2<i32>(28161i, -2147483647i)), global3[_wgslsmith_index_u32(~min(u_input.c, 32516u), 22u)], global1[_wgslsmith_index_u32(1u, 9u)]), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.e.x), vec3<u32>(20450u, u_input.a, u_input.b.x) << (vec3<u32>(u_input.e.x, u_input.c, u_input.a) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), abs(u_input.c), firstTrailingBit(0u)), 30899u | u_input.b.x, ~_wgslsmith_add_u32(u_input.a, u_input.e.x), vec2<f32>(-133f, _wgslsmith_f_op_f32(-1000f - 930f))), Struct_3(global3[_wgslsmith_index_u32(5181u, 22u)], 2147483647i, Struct_2(1859u, _wgslsmith_f_op_f32(2312f + -146f), vec2<f32>(582f, -849f)), Struct_1(vec3<u32>(0u, 1u, u_input.e.x), _wgslsmith_sub_vec3_u32(vec3<u32>(89094u, u_input.e.x, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 49875u, u_input.b.x, 4294967295u), vec4<u32>(1u, u_input.c, u_input.b.x, u_input.b.x)), select(43149u, u_input.e.x, false), vec2<f32>(-1000f, -680f)))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_5 {
    let var_0 = vec3<i32>(0i, u_input.d, 2147483647i ^ (arg_0 ^ ~1i));
    global0 = func_2(-1i);
    global2 = array<vec3<bool>, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1031f, _wgslsmith_f_op_f32(f32(-1f) * -188f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(628f, -160f), vec2<f32>(-218f, 415f)))))), true)));
    global3 = array<Struct_2, 22>();
    return Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(reverseBits(19676u), max(4373u, ~u_input.e.x))), 9u)], Struct_3(Struct_2(~reverseBits(0u), -719f, vec2<f32>(var_1.x, var_1.x)), ~arg_0, global3[_wgslsmith_index_u32(~u_input.a, 22u)], global1[_wgslsmith_index_u32(u_input.c, 9u)]));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5) -> Struct_2 {
    var var_0 = select(!select(select(vec4<bool>(false, global0.a.x, global0.a.x, arg_0.x), !vec4<bool>(true, false, arg_0.x, true), true), !(!vec4<bool>(global0.a.x, global0.a.x, false, false)), arg_0.x), vec4<bool>(arg_0.x, !global0.a.x, arg_0.x | all(vec4<bool>(global0.a.x, global0.a.x, true, true)), func_4(global2[_wgslsmith_index_u32(func_1(31629i, -vec4<i32>(u_input.d, 30659i, 20241i, u_input.d)).a.c, 32u)], func_1(arg_1.b.b, -vec4<i32>(arg_1.b.b, u_input.d, 4500i, arg_1.b.b)).b, func_1(~43710i, ~vec4<i32>(-52603i, arg_1.b.b, u_input.d, -11048i)).a, arg_1.b).x), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(-1780f, 876f, 1u > arg_1.b.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-986f * 954f), 773f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c.c.x, -2164f, -649f)))) - vec3<f32>(1048f, _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a.b, arg_1.b.d.a, 64132u, u_input.e.x, arg_1.a.e), u_input.b.x, vec3<f32>(arg_1.b.a.c.x, 274f, arg_1.a.e.x), global1[_wgslsmith_index_u32(4294967295u, 9u)])), arg_1.a.e.x)), arg_0.x))));
    global2 = array<vec3<bool>, 32>();
    global1 = array<Struct_1, 9>();
    let var_2 = vec2<u32>(arg_1.b.a.a, arg_1.b.c.a);
    return func_1(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(countOneBits(u_input.d), ~u_input.d) | -max(13074i, u_input.d)), min(firstLeadingBit(~vec4<i32>(arg_1.b.b, arg_1.b.b, -23238i, u_input.d) << ((vec4<u32>(0u, var_2.x, 26238u, 0u) << (vec4<u32>(4294967295u, u_input.c, u_input.e.x, 32441u) % vec4<u32>(32u))) % vec4<u32>(32u))), -vec4<i32>(firstLeadingBit(-1i), ~u_input.d, arg_1.b.b, -50796i))).b.c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(arg_3.x, i32(-1i) * -abs(_wgslsmith_mult_i32(-18312i, u_input.d)));
    global1 = array<Struct_1, 9>();
    let var_1 = arg_0.b;
    global2 = array<vec3<bool>, 32>();
    var var_2 = Struct_3(Struct_2(~(~select(1u, u_input.a, global0.a.x)), -2412f, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.x))), arg_0.c.x)), ~(~(-31015i) | u_input.d) ^ (_wgslsmith_mult_i32(-14258i, _wgslsmith_dot_vec4_i32(arg_3, arg_3)) >> (arg_2.x % 32u)), arg_1, global1[_wgslsmith_index_u32(arg_0.a, 9u)]);
    return select(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_0.a), _wgslsmith_mult_vec2_u32(var_2.d.a.zy, vec2<u32>(78263u, 0u))) > ~arg_0.a, global0.a.x, global0.a.x, true), !vec4<bool>(global0.a.x, global0.a.x, any(global0.a), global0.a.x), select(vec4<bool>(func_2(12509i).a.x, global0.a.x, true, (global0.a.x | global0.a.x) && (global0.a.x & global0.a.x)), select(select(!vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), !vec4<bool>(global0.a.x, false, global0.a.x, false), select(vec4<bool>(true, global0.a.x, true, true), vec4<bool>(true, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, true))), select(!vec4<bool>(true, false, global0.a.x, true), vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), select(true, global0.a.x, 31319u < arg_2.x)), global0.a.x));
}

fn func_7(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_5) -> StorageBuffer {
    let var_0 = !(!vec3<bool>(true, true, global0.a.x));
    let var_1 = arg_2.b.a.b;
    let var_2 = 0i <= _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0, -25677i), ~(~(-1i)));
    let var_3 = arg_2.a.e.x;
    var var_4 = arg_2;
    return StorageBuffer(~var_4.b.d.a, -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.d, -6312i, -43784i), select(vec4<i32>(var_4.b.b, u_input.d, -1i, u_input.d), vec4<i32>(1319i, var_4.b.b, arg_2.b.b, -1i), true)) & _wgslsmith_add_vec4_i32(select(vec4<i32>(arg_0, 11987i, 10879i, 1i), vec4<i32>(arg_2.b.b, 22956i, var_4.b.b, arg_2.b.b), vec4<bool>(false, true, arg_1.x, global0.a.x)), vec4<i32>(reverseBits(arg_2.b.b), 21260i, ~(-53312i), u_input.d)), vec4<u32>(~58186u, countOneBits(~_wgslsmith_clamp_u32(1u, 0u, 0u)), 4294967295u, _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(~22998u, u_input.b.x & arg_2.b.c.a))), var_4.a.a.x, max(-37435i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-77575i, -1i, 18993i), max(~vec3<i32>(arg_2.b.b, 32962i, arg_2.b.b), vec3<i32>(1i, 2147483647i, u_input.d) ^ vec3<i32>(arg_2.b.b, 15020i, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 32>();
    var var_0 = any(vec4<bool>(global0.a.x, global0.a.x, !global0.a.x, u_input.d < 1i));
    var var_1 = _wgslsmith_div_f32(-385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1062f, 787f), 596f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-336f, _wgslsmith_f_op_f32(f32(-1f) * -122f))))));
    global2 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = func_7(u_input.d, func_6(func_5(vec2<bool>(all(vec4<bool>(true, global0.a.x, false, global0.a.x)), false), func_1(_wgslsmith_clamp_i32(1i, 0i, 31865i), reverseBits(vec4<i32>(56022i, u_input.d, 30595i, 15641i)))), func_5(select(select(global0.a, vec2<bool>(true, true), global0.a), vec2<bool>(true, global0.a.x), any(vec4<bool>(global0.a.x, global0.a.x, true, false))), Struct_5(global1[_wgslsmith_index_u32(u_input.a, 9u)], Struct_3(global3[_wgslsmith_index_u32(u_input.e.x, 22u)], u_input.d, Struct_2(u_input.a, 1000f, vec2<f32>(1628f, 677f)), global1[_wgslsmith_index_u32(1u, 9u)]))), countOneBits(vec4<u32>(u_input.b.x, 20386u, 1u, 40691u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, u_input.c, u_input.b.x), vec4<u32>(u_input.c, 95039u, u_input.a, u_input.b.x)) % vec4<u32>(32u))), vec4<i32>(u_input.d, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 652i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), _wgslsmith_sub_i32(19952i, 0i)), -u_input.d, _wgslsmith_clamp_i32(u_input.d, -61209i, u_input.d) << (firstTrailingBit(u_input.e.x) % 32u))), func_1(select(u_input.d, 2147483647i, all(func_6(global3[_wgslsmith_index_u32(u_input.c, 22u)], Struct_2(4294967295u, -187f, vec2<f32>(757f, 524f)), vec4<u32>(u_input.c, 1u, 35340u, 1u), vec4<i32>(-1i, 5575i, 24123i, 2147483647i)))), vec4<i32>(1i, ~(-2147483647i), -39754i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -2147483647i, u_input.d, u_input.d), abs(vec4<i32>(-42730i, u_input.d, u_input.d, -1i))))));
}

