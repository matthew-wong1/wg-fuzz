struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: vec3<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(7559i, vec2<u32>(20561u, 2834u), -1257f, vec3<i32>(0i, -1282i, 2147483647i)), vec2<bool>(false, false));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(34524i, vec2<u32>(31927u, 48555u), -985f, vec3<i32>(25704i, -1i, -82478i)), Struct_1(0i, vec2<u32>(35583u, 4294967295u), -2444f, vec3<i32>(0i, -7799i, -3732i)), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 1u), 1000f, vec3<i32>(-1i, -1i, -84160i)), Struct_1(-2602i, vec2<u32>(5249u, 0u), 897f, vec3<i32>(2147483647i, 2147483647i, -5125i)), Struct_1(-895i, vec2<u32>(9737u, 80676u), -1154f, vec3<i32>(7479i, -12176i, -5740i)), Struct_1(-1i, vec2<u32>(19492u, 14443u), -2347f, vec3<i32>(2147483647i, 37348i, -34002i)), Struct_1(12492i, vec2<u32>(28291u, 26071u), 531f, vec3<i32>(47559i, -1163i, i32(-2147483648))), Struct_1(25899i, vec2<u32>(1u, 25981u), 1600f, vec3<i32>(-31082i, 0i, i32(-2147483648))), Struct_1(-31398i, vec2<u32>(4294967295u, 4294967295u), -306f, vec3<i32>(-38328i, 2147483647i, -21487i)), Struct_1(61873i, vec2<u32>(61869u, 2547u), -182f, vec3<i32>(1i, 0i, 35411i)), Struct_1(i32(-2147483648), vec2<u32>(1u, 1u), 1885f, vec3<i32>(0i, -3724i, 35093i)), Struct_1(48089i, vec2<u32>(1u, 4294967295u), 1000f, vec3<i32>(i32(-2147483648), -1i, 41195i)), Struct_1(56402i, vec2<u32>(4294967295u, 0u), -124f, vec3<i32>(2147483647i, -1i, 7825i)), Struct_1(-31700i, vec2<u32>(4294967295u, 22006u), -765f, vec3<i32>(i32(-2147483648), i32(-2147483648), 15215i)), Struct_1(2147483647i, vec2<u32>(5446u, 19935u), -537f, vec3<i32>(-33010i, 1i, 26023i)), Struct_1(-1i, vec2<u32>(1u, 1u), -187f, vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_1(34807i, vec2<u32>(11935u, 8794u), -715f, vec3<i32>(1i, -12506i, 2147483647i)), Struct_1(i32(-2147483648), vec2<u32>(1u, 1u), -578f, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_1(-20655i, vec2<u32>(4294967295u, 85872u), -132f, vec3<i32>(23273i, -5868i, 34954i)), Struct_1(-49402i, vec2<u32>(0u, 4294967295u), 473f, vec3<i32>(2147483647i, 1i, 50442i)));

var<private> global3: array<i32, 7> = array<i32, 7>(-38733i, i32(-2147483648), -51660i, 23749i, -10015i, 6527i, 2147483647i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> vec2<u32> {
    return ~global0.a.b;
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = !(!(!vec3<bool>(false, true, global1.x)));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.c)), _wgslsmith_f_op_f32(597f + global0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(529f)) - 192f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c * arg_0.b.x) - global0.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) * arg_0.b.x));
    global1 = vec4<bool>(47058i == firstLeadingBit(arg_0.a.a), 1i > -((arg_0.a.a & 1i) & abs(global3[_wgslsmith_index_u32(47181u, 7u)])), global0.b.x, any(select(global1.ww, !vec2<bool>(global1.x, global1.x), any(vec2<bool>(false, false)))));
    global1 = vec4<bool>(all(global1.zz), false, global0.b.x, global0.a.c > 434f);
    let var_2 = arg_0.a;
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> Struct_5 {
    let var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(~global0.a.b.x, countOneBits(global0.a.b.x), 0u, 6819u)), ~vec4<u32>(_wgslsmith_mult_u32(0u, 0u), ~4294967295u, _wgslsmith_clamp_u32(4538u, 1u, arg_0.b.x), arg_0.b.x) << (_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(43261u, 1u, 1u, 4294967295u), vec4<u32>(24164u, 53221u, 86619u, u_input.b.x)), abs(vec4<u32>(global0.a.b.x, u_input.b.x, 0u, 4294967295u) ^ vec4<u32>(arg_0.b.x, 0u, 4294967295u, 4294967295u))) % vec4<u32>(32u)));
    var var_1 = Struct_4(arg_0.c, Struct_3(Struct_1(_wgslsmith_mod_i32(firstLeadingBit(global0.a.d.x), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], arg_0.d.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.b.x, 0u, 0u, var_0.x), var_0), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c * -514f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -14915i, -8476i), ~vec3<i32>(global3[_wgslsmith_index_u32(70157u, 7u)], -45475i, arg_0.a), ~vec3<i32>(40859i, 0i, -2147483647i))), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.c))))), var_0.zyy, Struct_3(arg_0, arg_1));
    var var_2 = _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(~0u, _wgslsmith_sub_u32(var_0.x ^ 0u, global0.a.b.x), reverseBits(_wgslsmith_div_u32(45660u, u_input.b.x)))), ~var_0.yxw);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, -617f)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-478f, _wgslsmith_f_op_f32(trunc(var_1.a)))) * arg_0.c))), var_1.b, _wgslsmith_f_op_f32(-326f - 1183f), _wgslsmith_mod_vec3_u32(min(vec3<u32>(arg_0.b.x, ~0u, var_0.x), var_0.zyw), _wgslsmith_add_vec3_u32(var_1.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, u_input.b.x, 36816u), vec3<u32>(1u, 5255u, var_0.x), vec3<u32>(var_2.x, 4294967295u, 4294967295u)) | ~u_input.b)), Struct_3(Struct_1(_wgslsmith_div_i32(-arg_0.d.x, _wgslsmith_sub_i32(0i, global3[_wgslsmith_index_u32(var_2.x, 7u)])), firstLeadingBit(vec2<u32>(var_2.x, u_input.b.x)), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -6316i, 0i), var_1.e.a.d, -vec3<i32>(global3[_wgslsmith_index_u32(arg_0.b.x, 7u)], 11050i, global0.a.a))), vec2<bool>(all(!global1.yy), any(!vec4<bool>(var_1.e.b.x, global1.x, true, global0.b.x)))));
    return Struct_5(Struct_1(u_input.c, ~vec2<u32>(var_0.x, ~u_input.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.c, -1542f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(220f)))), abs(var_1.e.a.d)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(global0.a, vec2<f32>(arg_2, -144f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -376f)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.c, 26445i), max(-global0.a.d.x, -5233i)), ~func_2(Struct_4(global0.a.c, Struct_3(global0.a, vec2<bool>(global0.b.x, false)), arg_0.x, vec3<u32>(18723u, global0.a.b.x, global0.a.b.x), Struct_3(Struct_1(1i, u_input.b.xy, arg_0.x, vec3<i32>(80555i, u_input.c, 11379i)), vec2<bool>(global1.x, global1.x))), Struct_1(global0.a.a, u_input.b.zx, arg_0.x, global0.a.d)), _wgslsmith_f_op_f32(func_3(Struct_5(global0.a, _wgslsmith_f_op_vec2_f32(round(arg_0))))), select(_wgslsmith_mod_vec3_i32(global0.a.d, vec3<i32>(global3[_wgslsmith_index_u32(global0.a.b.x, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global0.a.a)), ~vec3<i32>(13072i, 32029i, u_input.c), global3[_wgslsmith_index_u32(1u, 7u)] == u_input.c) >> (~_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(global0.a.b.x, 30652u, 31118u), vec3<u32>(global0.a.b.x, global0.a.b.x, 28850u)) % vec3<u32>(32u))), !global0.b, _wgslsmith_f_op_f32(min(-554f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-global0.a.c), select(global1.x, global1.x, true))))))));
    var var_1 = !(!(!select(global1.x, global1.x, global1.x) && global1.x));
    global0 = Struct_3(var_0.a, !vec2<bool>(!any(vec4<bool>(global1.x, true, global1.x, false)), any(vec2<bool>(global1.x, global1.x))));
    var_0 = func_4(global2[_wgslsmith_index_u32(1u, 20u)], global1.yw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(683f)))) * _wgslsmith_f_op_f32(var_0.a.c + 1248f)));
    var_1 = global0.a.b.x == 0u;
    return global2[_wgslsmith_index_u32(13810u, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.c >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -986f)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -2147483647i, global3[_wgslsmith_index_u32(1u, 7u)]), global0.a.d)), global0.a.d), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-465f, global0.a.c), vec2<f32>(global0.a.c, global0.a.c)) * vec2<f32>(1000f, 409f)))), global0.a);
    global0 = Struct_3(var_1.c, vec2<bool>(true, true));
    var var_2 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, 723f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.c, var_1.c.c)))))), !(!global1.yz));
    var var_3 = var_2.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.c.c * -902f), -452f, _wgslsmith_div_f32(-1118f, var_2.a.c)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)), 1315f, var_2.a.c), abs(var_1.b.a), _wgslsmith_mult_vec4_i32(-(-vec4<i32>(40581i, 0i, global0.a.a, 35145i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(16195i, -1i, 1i, var_1.a), vec4<i32>(u_input.c, -1i, -2147483647i, -48088i), vec4<i32>(u_input.a, u_input.c, -24591i, global0.a.a))), countOneBits(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-7828i, var_2.a.a, var_1.a, 7744i), vec4<i32>(0i, var_1.b.d.x, var_2.a.d.x, global0.a.d.x))))));
}

