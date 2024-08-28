struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(42217u, -21640i, Struct_1(29796u, vec2<f32>(-285f, -1000f), vec2<bool>(true, true)), Struct_1(33009u, vec2<f32>(654f, -969f), vec2<bool>(true, false))), Struct_2(52693u, 57295i, Struct_1(9236u, vec2<f32>(672f, -300f), vec2<bool>(true, false)), Struct_1(4294967295u, vec2<f32>(1033f, 1000f), vec2<bool>(true, false))), Struct_2(65687u, 0i, Struct_1(82386u, vec2<f32>(-103f, 337f), vec2<bool>(true, false)), Struct_1(4265u, vec2<f32>(-747f, -891f), vec2<bool>(true, false))), Struct_2(54856u, 27681i, Struct_1(4294967295u, vec2<f32>(2121f, -1768f), vec2<bool>(false, false)), Struct_1(2911u, vec2<f32>(-136f, 542f), vec2<bool>(true, false))), Struct_2(0u, -17592i, Struct_1(161u, vec2<f32>(-1684f, 791f), vec2<bool>(false, true)), Struct_1(0u, vec2<f32>(-702f, -972f), vec2<bool>(false, false))), Struct_2(0u, -10895i, Struct_1(0u, vec2<f32>(-1264f, 123f), vec2<bool>(true, false)), Struct_1(12426u, vec2<f32>(-1178f, -185f), vec2<bool>(true, true))), Struct_2(1u, 4378i, Struct_1(72855u, vec2<f32>(803f, 802f), vec2<bool>(true, true)), Struct_1(59421u, vec2<f32>(1258f, 1222f), vec2<bool>(false, false))), Struct_2(0u, i32(-2147483648), Struct_1(46652u, vec2<f32>(-292f, -231f), vec2<bool>(true, false)), Struct_1(0u, vec2<f32>(-735f, -665f), vec2<bool>(false, false))), Struct_2(84u, 2147483647i, Struct_1(0u, vec2<f32>(322f, -1092f), vec2<bool>(true, false)), Struct_1(8199u, vec2<f32>(-960f, 1277f), vec2<bool>(false, true))), Struct_2(1u, 20427i, Struct_1(4294967295u, vec2<f32>(1000f, 401f), vec2<bool>(true, true)), Struct_1(76577u, vec2<f32>(1000f, 321f), vec2<bool>(true, true))), Struct_2(1u, i32(-2147483648), Struct_1(1u, vec2<f32>(1197f, 968f), vec2<bool>(true, false)), Struct_1(36781u, vec2<f32>(222f, -329f), vec2<bool>(true, true))));

var<private> global2: array<bool, 19>;

var<private> global3: Struct_2 = Struct_2(86067u, 2147483647i, Struct_1(78671u, vec2<f32>(-1075f, -2296f), vec2<bool>(true, true)), Struct_1(14718u, vec2<f32>(-633f, -1696f), vec2<bool>(false, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    global0 = false;
    global3 = Struct_2(65464u, global3.b, Struct_1(~(~(~arg_0.x)), _wgslsmith_f_op_vec2_f32(-global3.c.b), select(select(vec2<bool>(false, true), global3.d.c, select(vec2<bool>(global3.c.c.x, false), global3.d.c, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global3.c.c.x))), !vec2<bool>(global3.d.c.x, global2[_wgslsmith_index_u32(arg_0.x, 19u)]), global3.d.c)), global3.d);
    let var_0 = 1u;
    global3 = Struct_2(_wgslsmith_clamp_u32(~arg_0.x | (min(u_input.a, arg_1) >> (_wgslsmith_div_u32(1u, 51195u) % 32u)), 0u, 1u), ~global3.b, global3.c, Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(38629u, arg_1), vec2<u32>(1u, 1u)), global3.d.b, select(!global3.c.c, vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 19u)] || global3.d.c.x, false), !global3.d.c)));
    global0 = !global2[_wgslsmith_index_u32(42328u, 19u)];
    return 9438u;
}

fn func_2() -> Struct_3 {
    global3 = Struct_2(func_3(countOneBits(vec4<u32>(u_input.a, u_input.a, 91151u, global3.c.a) << (vec4<u32>(25972u, 9558u, 10073u, global3.a) % vec4<u32>(32u))), global3.d.a) | global3.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-select(2147483647i, u_input.b, false), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -21361i), vec3<i32>(global3.b, u_input.b, global3.b))), max(vec2<i32>(u_input.b, ~u_input.b), _wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(1i, global3.b)), -vec2<i32>(global3.b, u_input.b)))), global3.c, global3.c);
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(firstTrailingBit(37803u) << (~global3.d.a % 32u), ~91058u << (global3.a % 32u), !any(vec4<bool>(global3.d.c.x, false, false, global3.c.c.x))), ~countOneBits(_wgslsmith_sub_u32(u_input.a & 4294967295u, _wgslsmith_clamp_u32(global3.a, u_input.a, 36283u)))), 19u)];
    var var_1 = Struct_4(vec4<bool>(all(select(vec4<bool>(true, global3.d.c.x, false, true), vec4<bool>(true, false, false, global3.c.c.x), true)) && any(!global3.c.c), _wgslsmith_dot_vec3_u32(max(vec3<u32>(global3.c.a, u_input.a, u_input.a), vec3<u32>(96547u, 36421u, global3.c.a)), vec3<u32>(u_input.a, 49232u, 20060u)) < countOneBits(func_3(vec4<u32>(u_input.a, u_input.a, 7542u, 70847u), 35951u)), global3.d.c.x, select(!all(vec4<bool>(false, global2[_wgslsmith_index_u32(global3.a, 19u)], true, global2[_wgslsmith_index_u32(46937u, 19u)])), true, false)), abs(abs(vec4<u32>(u_input.a, global3.c.a, _wgslsmith_mult_u32(u_input.a, global3.d.a), global3.d.a))), ~vec3<i32>(2147483647i, _wgslsmith_div_i32(firstLeadingBit(u_input.b), -1i), min(abs(-2147483647i), global3.b)), !global3.d.c.x, vec3<f32>(185f, 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3.d.b.x, 476f)), _wgslsmith_f_op_f32(round(-631f))) * _wgslsmith_f_op_f32(288f - global3.d.b.x))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.d.a, ~(u_input.a << (_wgslsmith_add_u32(global3.c.a, var_1.b.x) % 32u))), 11u)];
    global2 = array<bool, 19>();
    return Struct_3(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~var_1.b.x, u_input.a | 4086u))), var_2.d);
}

fn func_1() -> i32 {
    var var_0 = global3.d.a;
    var var_1 = global3.c.c.x;
    var var_2 = func_2();
    var var_3 = Struct_3(global3.d.a & firstLeadingBit(var_2.a & ~4294967295u), func_2().b);
    var var_4 = ~global3.b;
    return reverseBits(~1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_1(arg_2.b.x, global3.c.b, global3.c.c);
    let var_1 = arg_2.c.x;
    let var_2 = arg_2.b;
    var_0 = global3.d;
    global1 = array<Struct_2, 11>();
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_4 {
    let var_0 = min(~select(-abs(vec2<i32>(1i, u_input.b)), ~(~vec2<i32>(0i, 75922i)), func_2().b.c.x), vec2<i32>(0i, _wgslsmith_mod_i32(global3.b, global3.b)) | -reverseBits(reverseBits(vec2<i32>(global3.b, global3.b))));
    global1 = array<Struct_2, 11>();
    global0 = true | arg_0.b.c.x;
    var var_1 = false;
    var var_2 = ~countOneBits(select(vec4<i32>(-1i) * -vec4<i32>(global3.b, 48149i, u_input.b, var_0.x), vec4<i32>(1i, 9382i, global3.b, var_0.x) | _wgslsmith_add_vec4_i32(vec4<i32>(-8058i, var_0.x, u_input.b, var_0.x), vec4<i32>(1i, -38092i, global3.b, -27916i)), true));
    return Struct_4(select(vec4<bool>(!global3.c.c.x, firstTrailingBit(var_0.x) >= countOneBits(u_input.b), arg_1.b.c.x, func_2().b.c.x), vec4<bool>(true, func_2().b.c.x, all(select(vec3<bool>(false, arg_1.b.c.x, true), vec3<bool>(global3.d.c.x, true, false), true)), -u_input.b <= ~global3.b), select(select(vec4<bool>(true, true, false, true), !vec4<bool>(global3.d.c.x, arg_1.b.c.x, global3.c.c.x, false), any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 19u)], true, true))), vec4<bool>(!global2[_wgslsmith_index_u32(arg_0.a, 19u)], true, any(arg_1.b.c), global3.c.c.x), vec4<bool>(!arg_0.b.c.x, arg_0.b.c.x, true, true != global2[_wgslsmith_index_u32(10853u, 19u)]))), ~(~vec4<u32>(4294967295u, arg_1.a, arg_1.b.a, global3.a) ^ ~(~vec4<u32>(4294967295u, 0u, 24640u, 84523u))), vec3<i32>(reverseBits(59229i), global3.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, var_0.x, var_2.x, var_0.x) ^ vec4<i32>(var_0.x, 27354i, var_0.x, global3.b), ~reverseBits(vec4<i32>(global3.b, 1i, global3.b, global3.b)))), arg_0.b.c.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.b.x, arg_0.b.b.x, arg_1.b.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(vec3<i32>(func_1(), ~(-28159i), global3.b) | ~min(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(2147483647i, -9039i, 1i)), 1u, Struct_4(select(vec4<bool>(false, false, global3.d.c.x, global3.c.c.x), select(vec4<bool>(global3.d.c.x, global2[_wgslsmith_index_u32(u_input.a, 19u)], global3.c.c.x, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], true, true, true), global2[_wgslsmith_index_u32(global3.d.a, 19u)]), !global3.d.c.x), abs(vec4<u32>(u_input.a, global3.c.a, 4294967295u, global3.a)), ~min(vec3<i32>(-2147483647i, 25249i, u_input.b), vec3<i32>(global3.b, u_input.b, u_input.b)), func_2().b.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.b.x, global3.d.b.x, global3.c.b.x) * vec3<f32>(global3.c.b.x, global3.d.b.x, global3.c.b.x)))), ~countOneBits(1i) >> (u_input.a % 32u)), func_2());
    var var_1 = vec4<f32>(293f, _wgslsmith_f_op_f32(var_0.e.x * -1261f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-795f)) - -1026f), var_0.e.x);
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, global3.c.b.x, var_1.x, -1072f), vec4<f32>(259f, 1372f, var_1.x, 2490f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, var_0.e.x, global3.d.b.x, -747f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.b.x, var_0.e.x, var_1.x, var_0.e.x) - vec4<f32>(var_1.x, 778f, 1020f, 1000f))))), vec4<f32>(-1514f, _wgslsmith_f_op_f32(abs(var_0.e.x)), _wgslsmith_f_op_f32(-797f + func_5(Struct_3(u_input.a, global3.d), Struct_3(83695u, Struct_1(var_0.b.x, vec2<f32>(global3.c.b.x, 1372f), var_0.a.wz))).e.x), _wgslsmith_f_op_f32(f32(-1f) * -426f)))));
    var var_2 = global3.c;
    var var_3 = func_5(Struct_3(~abs(~var_2.a), global3.d), func_4(-var_0.c, _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(u_input.a, 0u)), ~min(global3.a, u_input.a)), Struct_4(var_0.a, ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 12614u, var_2.a, 0u), vec4<u32>(4294967295u, 45620u, 7878u, 25056u)), ~firstTrailingBit(var_0.c), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.zyx, var_0.e)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-746f, 1000f, -1206f), var_0.e)))), func_1()));
    var var_4 = var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-140f, -120f, var_3.e.x, var_3.e.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, 144f, -822f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1106f, var_3.e.x, 423f) * vec4<f32>(538f, global3.d.b.x, 429f, var_2.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1732f, -1488f, 344f, var_1.x) * vec4<f32>(var_0.e.x, var_0.e.x, 1000f, 740f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(357f, -962f, 570f, global3.c.b.x)))))), u_input.b, select(-2147483647i, func_5(Struct_3(var_3.b.x, global3.c), func_2()).c.x, true) >> (~13497u % 32u));
}

