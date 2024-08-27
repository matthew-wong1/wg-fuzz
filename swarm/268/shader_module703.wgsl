struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_4,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(562f, -2369f), Struct_2(34987i, vec4<u32>(1u, 0u, 4294967295u, 17414u), -680f, Struct_1(false, vec4<f32>(546f, -1268f, 599f, 689f), 0u, vec3<i32>(-49210i, 1i, 1i), 4294967295u), 1695f), Struct_1(false, vec4<f32>(-1000f, 1997f, 594f, 179f), 4294967295u, vec3<i32>(-23785i, 7491i, 0i), 0u), Struct_3(-1i)));

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 14> = array<u32, 14>(0u, 40318u, 4294967295u, 4294967295u, 4294967295u, 32544u, 28651u, 47521u, 1u, 45828u, 152943u, 4294967295u, 22u, 0u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_5) -> vec4<u32> {
    global1 = vec3<u32>(abs(4294967295u), abs(0u), global2[_wgslsmith_index_u32(abs(~(~(~49989u))), 14u)]);
    let var_0 = ~(vec3<i32>(-1i) * -abs(vec3<i32>(arg_2.a.a, u_input.a, 1i)));
    let var_1 = select(vec3<bool>(arg_2.c.c.d.a, !(!all(vec4<bool>(arg_2.a.d.a, arg_2.c.d.a, arg_2.c.d.a, true))), arg_2.c.b.x < -1481f), select(select(vec3<bool>(false, all(vec3<bool>(arg_2.a.d.a, arg_2.c.c.d.a, false)), false), !(!vec3<bool>(arg_2.a.d.a, false, true)), !arg_2.a.d.a), !vec3<bool>(false, arg_2.a.d.a & false, !arg_2.c.c.d.a), true), select(select(vec3<bool>(!arg_2.a.d.a, false, arg_2.a.d.a & false), !vec3<bool>(arg_2.a.d.a, true, false), select(select(vec3<bool>(false, arg_2.a.d.a, arg_2.a.d.a), vec3<bool>(arg_2.c.c.d.a, false, true), vec3<bool>(arg_2.c.c.d.a, false, true)), vec3<bool>(arg_2.c.c.d.a, false, arg_2.c.c.d.a), !vec3<bool>(arg_2.a.d.a, false, arg_2.c.c.d.a))), select(vec3<bool>(arg_2.c.c.d.a && false, true, 1027f < arg_2.a.e), select(!vec3<bool>(arg_2.c.d.a, true, arg_2.c.c.d.a), vec3<bool>(arg_2.a.d.a, arg_2.c.d.a, false), all(vec4<bool>(arg_2.c.c.d.a, arg_2.c.c.d.a, arg_2.a.d.a, arg_2.a.d.a))), vec3<bool>(true, false, true)), false));
    var var_2 = select(arg_2.d, global2[_wgslsmith_index_u32(3166u, 14u)], any(vec4<bool>(var_1.x, var_1.x, !(-1754f <= arg_1), (arg_2.a.d.d.x >= var_0.x) && (10442i >= u_input.a))));
    var var_3 = _wgslsmith_f_op_f32(-951f - -1000f);
    return min(~vec4<u32>(1u, 44132u | max(global2[_wgslsmith_index_u32(arg_0, 14u)], 56882u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 0u, 116887u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(97371u, 14u)], 14u)], 0u, global2[_wgslsmith_index_u32(0u, 14u)])), abs(arg_2.c.c.b.zyw)), min(arg_2.c.c.d.c, global2[_wgslsmith_index_u32(91418u, 14u)])), ~vec4<u32>(4294967295u, 4294967295u, _wgslsmith_clamp_u32(global1.x, ~arg_0, ~arg_2.d), 38910u));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_3 {
    var var_0 = vec4<u32>(1u, global1.x, global2[_wgslsmith_index_u32(4294967295u, 14u)] & 0u, 64071u) | firstTrailingBit(max(~(vec4<u32>(13891u, global1.x, global1.x, 8054u) << (vec4<u32>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(10970u, 14u)], global1.x, 56178u) % vec4<u32>(32u))), func_3(_wgslsmith_add_u32(105385u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -550f), Struct_5(Struct_2(u_input.a, vec4<u32>(31434u, 52556u, global2[_wgslsmith_index_u32(0u, 14u)], 82040u), arg_1, Struct_1(arg_0, vec4<f32>(231f, arg_1, 320f, -1432f), 47784u, vec3<i32>(-1i, u_input.a, 2147483647i), 0u), arg_1), vec4<i32>(u_input.a, u_input.a, 32602i, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 1u)], global1.x, vec4<u32>(global1.x, 1u, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)])))));
    var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global1.x), var_0.yy), 4294967295u) | func_3(1u, arg_1, Struct_5(Struct_2(u_input.a, vec4<u32>(1u, 4294967295u, 0u, var_0.x), -1110f, Struct_1(arg_0, vec4<f32>(arg_1, -1085f, -733f, 1116f), var_0.x, vec3<i32>(u_input.a, u_input.a, u_input.a), 27631u), -1032f), vec4<i32>(-1i, 56505i, -2147483647i, u_input.a), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68636u, 14u)], 1u)], 73045u, vec4<u32>(1u, 23955u, 0u, global2[_wgslsmith_index_u32(38403u, 14u)]))).x, ~(~21638u), global1.x, 112750u) | (vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], func_3(min(global1.x, 8896u), _wgslsmith_f_op_f32(804f + 887f), Struct_5(Struct_2(28530i, vec4<u32>(71841u, 0u, global1.x, 4294967295u), arg_1, Struct_1(arg_0, vec4<f32>(arg_1, 1130f, arg_1, arg_1), 4294967295u, vec3<i32>(u_input.a, 0i, 47477i), var_0.x), 895f), vec4<i32>(0i, 1i, -23379i, u_input.a), Struct_4(vec2<i32>(-5458i, u_input.a), vec2<f32>(886f, -506f), Struct_2(13307i, vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], global1.x, 1u), -573f, Struct_1(arg_0, vec4<f32>(arg_1, -1071f, arg_1, -1556f), 92903u, vec3<i32>(u_input.a, u_input.a, 14610i), global1.x), arg_1), Struct_1(true, vec4<f32>(592f, 201f, 789f, arg_1), 20084u, vec3<i32>(u_input.a, u_input.a, u_input.a), global1.x), Struct_3(u_input.a)), 36133u, vec4<u32>(global1.x, global2[_wgslsmith_index_u32(0u, 14u)], 4294967295u, 15584u))).x, global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(~0u, 14u)], max(1u, 4294967295u)), 14u)], ~4294967295u) & abs(vec4<u32>(_wgslsmith_clamp_u32(48028u, global2[_wgslsmith_index_u32(1u, 14u)], 13770u), ~4294967295u, 18644u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global1.x, 14u)], 1u))));
    var var_1 = _wgslsmith_mod_vec2_i32(abs(min(vec2<i32>(~u_input.a, ~u_input.a), vec2<i32>(_wgslsmith_mult_i32(30576i, 30539i), u_input.a >> (var_0.x % 32u)))), firstTrailingBit(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-10324i, 28642i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)), 1i))));
    global2 = array<u32, 14>();
    let var_2 = Struct_5(Struct_2(_wgslsmith_mod_i32(-1i, u_input.a ^ 5343i) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(42795u, 14u)])) % 32u), vec4<u32>(~firstLeadingBit(32306u), ~_wgslsmith_mult_u32(43523u, global2[_wgslsmith_index_u32(4294967295u, 14u)]), 44164u, max(global1.x, global1.x)), arg_1, Struct_1(true, vec4<f32>(274f, arg_1, _wgslsmith_f_op_f32(trunc(-978f)), -2475f), global1.x, ~(vec3<i32>(0i, u_input.a, u_input.a) >> (var_0.yxz % vec3<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_0.xyz, var_0.zxx), 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, 250f, arg_0)) + 753f))), -vec4<i32>(min(i32(-1i) * -1i, -780i), u_input.a, _wgslsmith_add_i32(u_input.a, var_1.x), ~u_input.a ^ _wgslsmith_clamp_i32(u_input.a, 31187i, 15216i)), Struct_4(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.x), vec2<i32>(0i, u_input.a)) << (_wgslsmith_div_vec2_u32(~var_0.yw, func_3(7790u, arg_1, Struct_5(Struct_2(u_input.a, vec4<u32>(global1.x, global2[_wgslsmith_index_u32(var_0.x, 14u)], 0u, 1u), 1461f, Struct_1(arg_0, vec4<f32>(arg_1, 1697f, arg_1, arg_1), 0u, vec3<i32>(44847i, -1i, var_1.x), var_0.x), -256f), vec4<i32>(-1i, var_1.x, u_input.a, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u, vec4<u32>(40466u, var_0.x, 67516u, var_0.x))).xx) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-744f, arg_1) - vec2<f32>(1000f, -1079f)))), Struct_2(1i, max(~vec4<u32>(var_0.x, var_0.x, 2875u, 4514u), ~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)), arg_1, Struct_1(arg_0 | arg_0, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -734f, -1529f, arg_1))), _wgslsmith_dot_vec3_u32(var_0.yzw, var_0.yxy), vec3<i32>(37227i, var_1.x, u_input.a) ^ vec3<i32>(var_1.x, var_1.x, u_input.a), _wgslsmith_div_u32(0u, 15234u)), _wgslsmith_f_op_f32(sign(546f))), Struct_1(-34588i > var_1.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1332f, arg_1, -425f, arg_1) + vec4<f32>(arg_1, -633f, -2171f, -516f)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 22331u, global1.x, 9899u), vec4<u32>(0u, var_0.x, 4294967295u, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 17564u, var_0.x, global2[_wgslsmith_index_u32(13203u, 14u)]), vec4<u32>(var_0.x, 1u, 1782u, 48796u))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, u_input.a, var_1.x), vec3<i32>(-53607i, u_input.a, 1i)), _wgslsmith_sub_u32(global1.x, var_0.x)), Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.a, 7225i), _wgslsmith_mod_vec3_i32(vec3<i32>(12586i, var_1.x, 0i), vec3<i32>(2147483647i, -3009i, 7626i))))), _wgslsmith_dot_vec4_u32(vec4<u32>(max(_wgslsmith_sub_u32(47866u, 24950u), 28459u), abs(global2[_wgslsmith_index_u32(64169u, 14u)] >> (54104u % 32u)), var_0.x, 59716u), max(~(~vec4<u32>(1u, global1.x, 1u, global1.x)), vec4<u32>(91610u, func_3(20565u, 1721f, Struct_5(Struct_2(43729i, vec4<u32>(0u, global2[_wgslsmith_index_u32(global1.x, 14u)], 0u, 57966u), 853f, Struct_1(true, vec4<f32>(-238f, arg_1, arg_1, arg_1), 65179u, vec3<i32>(var_1.x, u_input.a, -1i), global2[_wgslsmith_index_u32(29802u, 14u)]), arg_1), vec4<i32>(var_1.x, var_1.x, -6790i, 2147483647i), Struct_4(vec2<i32>(-1i, 24218i), vec2<f32>(arg_1, arg_1), Struct_2(u_input.a, vec4<u32>(var_0.x, var_0.x, 0u, 0u), -1148f, Struct_1(false, vec4<f32>(1092f, arg_1, arg_1, 1292f), 24686u, vec3<i32>(u_input.a, u_input.a, 0i), global2[_wgslsmith_index_u32(26817u, 14u)]), arg_1), Struct_1(arg_0, vec4<f32>(arg_1, arg_1, 444f, 383f), 30082u, vec3<i32>(u_input.a, 12793i, 1i), var_0.x), Struct_3(var_1.x)), 1u, vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 14u)], 14u)], global2[_wgslsmith_index_u32(84490u, 14u)], global1.x))).x, ~var_0.x, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global1.x, 14u)], 14u)]))), vec4<u32>(max(reverseBits(~48846u), _wgslsmith_dot_vec2_u32(vec2<u32>(19973u, 4294967295u), var_0.yx) << (global1.x % 32u)), func_3(func_3(~global1.x, _wgslsmith_f_op_f32(-arg_1), Struct_5(Struct_2(var_1.x, vec4<u32>(24711u, global1.x, global1.x, 0u), arg_1, Struct_1(true, vec4<f32>(arg_1, 604f, arg_1, -2432f), global1.x, vec3<i32>(4625i, -7217i, u_input.a), global2[_wgslsmith_index_u32(global1.x, 14u)]), -298f), vec4<i32>(1i, 4775i, 1i, u_input.a), Struct_4(vec2<i32>(-1i, -1i), vec2<f32>(819f, arg_1), Struct_2(12996i, vec4<u32>(0u, 51489u, global2[_wgslsmith_index_u32(4294967295u, 14u)], var_0.x), 449f, Struct_1(false, vec4<f32>(arg_1, 411f, -896f, arg_1), 1464u, vec3<i32>(u_input.a, u_input.a, var_1.x), 4294967295u), arg_1), Struct_1(arg_0, vec4<f32>(arg_1, arg_1, 986f, 1000f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12734u, 14u)], 14u)], vec3<i32>(20250i, -2147483647i, -2147483647i), var_0.x), Struct_3(var_1.x)), global1.x, vec4<u32>(var_0.x, global1.x, 4294967295u, 92626u))).x, 1489f, Struct_5(Struct_2(2147483647i, vec4<u32>(var_0.x, 6451u, 13923u, 1u), 771f, Struct_1(false, vec4<f32>(-923f, arg_1, arg_1, arg_1), 7497u, vec3<i32>(var_1.x, u_input.a, -15473i), global2[_wgslsmith_index_u32(4294967295u, 14u)]), arg_1), vec4<i32>(u_input.a, -16701i, u_input.a, u_input.a), global0[_wgslsmith_index_u32(reverseBits(0u), 1u)], global2[_wgslsmith_index_u32(~0u, 14u)], _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 14u)], 14u)], 14u)], 14u)], 14u)], 31134u, var_0.x, 1u), vec4<u32>(82u, 68685u, 3917u, global2[_wgslsmith_index_u32(44220u, 14u)])))).x, 0u, ~_wgslsmith_add_u32(var_0.x, 45804u) & 1u));
    return Struct_3(-var_1.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_4, 1>();
    global2 = array<u32, 14>();
    var var_0 = ~abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 14u)], global1.x, global2[_wgslsmith_index_u32(global1.x, 14u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], 64723u, global2[_wgslsmith_index_u32(65368u, 14u)]))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(0u, 52631u), max(firstLeadingBit(0u), global1.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, global1.x), 76103u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, 1u), min(vec3<u32>(global1.x, 4294967295u, 0u), vec3<u32>(global1.x, 22856u, global1.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global2[_wgslsmith_index_u32(70446u, 14u)], 6448u), vec3<u32>(1u, 1u, 81329u)))) % vec3<u32>(32u));
    let var_1 = true;
    var_0 = select(abs(select(~(~vec3<u32>(var_0.x, 23889u, global2[_wgslsmith_index_u32(7085u, 14u)])), ~vec3<u32>(var_0.x, 38697u, 4294967295u), var_1)), max(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 14u)], 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 14u)], 14u)], 46024u), ~firstTrailingBit(vec3<u32>(0u, global2[_wgslsmith_index_u32(9976u, 14u)], 6894u))) & ~max(max(vec3<u32>(4294967295u, var_0.x, global2[_wgslsmith_index_u32(var_0.x, 14u)]), vec3<u32>(var_0.x, 4294967295u, var_0.x)), ~vec3<u32>(4294967295u, var_0.x, global2[_wgslsmith_index_u32(var_0.x, 14u)])), var_1);
    return func_2(true, -1000f);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = vec4<i32>(-2147483647i, u_input.a, min(_wgslsmith_sub_i32(~min(-2147483647i, -16313i), _wgslsmith_dot_vec4_i32(vec4<i32>(-3758i, arg_1.d.d.x, -1i, arg_1.e.a), ~vec4<i32>(u_input.a, -2147483647i, arg_3.a, 33833i))), abs(countOneBits(0i))), -40918i);
    var_0 = vec4<i32>(arg_3.a ^ 4723i, max(u_input.a, ~(i32(-1i) * -u_input.a)), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(-arg_1.a.x, func_1(vec2<i32>(u_input.a, -39557i), vec2<i32>(1i, u_input.a)).a), arg_1.a.x), 37813i);
    global0 = array<Struct_4, 1>();
    var var_1 = arg_3;
    let var_2 = arg_1.c;
    return vec3<bool>(true, !arg_1.d.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    var var_0 = global2[_wgslsmith_index_u32(~global1.x, 14u)];
    var var_1 = Struct_1(any(select(vec3<bool>(all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, false)), true), func_4(_wgslsmith_f_op_f32(1367f * -1000f), global0[_wgslsmith_index_u32(~5885u, 1u)], _wgslsmith_f_op_f32(-791f + -1000f), func_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a))), vec3<bool>(true, true, any(vec2<bool>(false, true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(901f, -2436f), 1f, _wgslsmith_f_op_f32(1065f - -1726f), 517f)))), ~_wgslsmith_sub_u32(~0u, select(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 14u)], true)) >> ((abs(max(global2[_wgslsmith_index_u32(51828u, 14u)], global1.x)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26812u), _wgslsmith_sub_vec2_u32(global1.yx, global1.xz))) % 32u), _wgslsmith_div_vec3_i32(select(-(~vec3<i32>(-2147483647i, -69797i, u_input.a)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -9841i, u_input.a), vec3<i32>(25480i, 29812i, u_input.a))), u_input.a <= ~1i), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, u_input.a))), _wgslsmith_mod_u32(global1.x, global1.x));
    global2 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, 48067i, 0i), vec4<i32>(0i, -2147483647i, u_input.a, 26446i), vec4<i32>(u_input.a, 0i, u_input.a, var_1.d.x)), vec4<i32>(-1i) * -vec4<i32>(-29000i, var_1.d.x, u_input.a, 17833i))), var_1.b.xw, vec4<u32>(123303u, 33471u, ~var_1.e, 1u & reverseBits(_wgslsmith_clamp_u32(4294967295u, 781u, 1u))));
}

