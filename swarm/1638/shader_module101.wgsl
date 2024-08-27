struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: array<i32, 27> = array<i32, 27>(i32(-2147483648), -18483i, 12320i, 1i, -5255i, -12116i, 0i, -1i, 2147483647i, 36308i, 24830i, 1i, 1i, -21109i, -40084i, i32(-2147483648), 1i, -1856i, -9456i, -1i, 19198i, 31235i, 21281i, -17162i, -28232i, 1i, 31591i);

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(262f, 169f), 39340i, -49502i, vec3<u32>(4294967295u, 17373u, 4294967295u)), Struct_1(vec2<f32>(1710f, 214f), 23656i, -25963i, vec3<u32>(18231u, 33941u, 4294967295u)), Struct_1(vec2<f32>(-1073f, 288f), 32680i, 2147483647i, vec3<u32>(57823u, 4294967295u, 1u)), Struct_1(vec2<f32>(103f, -412f), 0i, 27290i, vec3<u32>(1650u, 9225u, 0u)), Struct_1(vec2<f32>(-1000f, 1305f), -1i, -87647i, vec3<u32>(0u, 15777u, 70173u)), Struct_1(vec2<f32>(216f, 983f), 0i, -1i, vec3<u32>(4294967295u, 0u, 2743u)), Struct_1(vec2<f32>(1000f, 326f), 0i, -44604i, vec3<u32>(12071u, 37200u, 51811u)), Struct_1(vec2<f32>(-948f, -1295f), 28152i, 1i, vec3<u32>(62915u, 4294967295u, 5963u)), Struct_1(vec2<f32>(-129f, 1596f), -50983i, 0i, vec3<u32>(25184u, 0u, 11746u)), Struct_1(vec2<f32>(-343f, 909f), i32(-2147483648), 0i, vec3<u32>(11467u, 4294967295u, 18912u)), Struct_1(vec2<f32>(-1263f, -1038f), 2869i, 0i, vec3<u32>(43243u, 12179u, 49158u)), Struct_1(vec2<f32>(637f, -585f), i32(-2147483648), -1i, vec3<u32>(45554u, 37337u, 23836u)), Struct_1(vec2<f32>(-962f, 1450f), 21627i, i32(-2147483648), vec3<u32>(1u, 71961u, 27852u)), Struct_1(vec2<f32>(-2192f, -984f), 63733i, 0i, vec3<u32>(4806u, 4294967295u, 4294967295u)));

var<private> global4: vec4<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    global4 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0, global4.x, arg_0), vec4<u32>(0u, arg_0, 4294967295u, 0u), vec4<u32>(1u, 29510u, arg_0, 0u)), ~(vec4<u32>(27234u, u_input.a.x, arg_0, 4294967295u) ^ vec4<u32>(arg_0, 1u, 55428u, 12100u))), ~4294967295u, ~9570u, global4.x);
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~(vec4<u32>(arg_0, arg_0, 9116u, 33759u) ^ vec4<u32>(54922u, global4.x, 4294967295u, global4.x))), vec4<u32>(global4.x, _wgslsmith_dot_vec3_u32(global4.zxx, global4.yzx) >> (~9799u % 32u), arg_0, ~4294967295u)), 1u, arg_0), 14u)];
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) + _wgslsmith_f_op_f32(ceil(414f)))), var_0.a.x));
    global3 = array<Struct_1, 14>();
    return var_0.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_3(global4.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(step(-301f, _wgslsmith_f_op_f32(127f * -1000f)))), global2.x, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x >> (u_input.a.x % 32u), arg_1.x, arg_1.x), 27u)], vec3<u32>((global4.x ^ 4294967295u) >> ((u_input.a.x << (arg_1.x % 32u)) % 32u), global4.x, select(~arg_1.x, 4530u >> (arg_1.x % 32u), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-265f * 993f), _wgslsmith_f_op_f32(f32(-1f) * -193f))) - 917f) > _wgslsmith_f_op_f32(523f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global4.x)), _wgslsmith_div_f32(-1034f, 423f))), global3[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1093f))), _wgslsmith_f_op_f32(select(142f, _wgslsmith_f_op_f32(f32(-1f) * -1271f), !arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1488f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.d, abs(-abs(-vec4<i32>(10883i, global2.x, 2147483647i, global2.x))), global3[_wgslsmith_index_u32(0u, 14u)], var_0.d.c);
    var_0 = Struct_3(var_0.e.x, global3[_wgslsmith_index_u32(max(1u, countOneBits(1223u) >> (abs(_wgslsmith_add_u32(var_0.b.d.x, arg_1.x)) % 32u)), 14u)], true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a, var_1.b.d.xz), 14u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.e)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-569f, var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, var_1.b.a.x)))), var_0.e.yx, any(vec2<bool>(false, arg_0.x)))), _wgslsmith_div_i32(-97827i, i32(-1i) * -2147483647i), 0i, var_0.d.d);
    var_2 = Struct_1(vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -275f))), ~(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_div_i32(-85566i, var_0.d.b), ~_wgslsmith_dot_vec2_i32(max(var_1.c.xy, vec2<i32>(var_1.d.c, -12527i)), var_1.c.zy >> (var_2.d.zz % vec2<u32>(32u)))), ~var_2.d);
    return !any(!select(select(vec4<bool>(var_0.c, var_0.c, true, arg_0.x), vec4<bool>(arg_0.x, var_0.c, var_0.c, false), vec4<bool>(false, false, false, true)), vec4<bool>(arg_0.x, true, false, false), any(arg_0.yxy)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_3(-341f, arg_0.d, func_2(vec4<bool>(!arg_3.x, arg_2.x, false, arg_3.x || arg_2.x), vec2<u32>(arg_1, abs(80716u)) << (vec2<u32>(~25148u, arg_0.b.d.x ^ 0u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(240f, 373f), vec2<f32>(1161f, arg_0.d.a.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(435f, arg_0.b.a.x))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b.a.x, arg_0.a), vec2<f32>(-764f, 243f)))))), firstTrailingBit(global1[_wgslsmith_index_u32(1u, 27u)]), -2227i, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.d.d.x, 4294967295u) | vec3<u32>(arg_0.d.d.x, 54147u, u_input.a.x), select(arg_0.b.d, global4.wzy, vec3<bool>(false, arg_2.x, false))), ~arg_1, _wgslsmith_mult_u32(u_input.a.x << (arg_1 % 32u), firstLeadingBit(arg_1)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.a.x))), arg_0.d.a.x, arg_0.b.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(246f + -1512f), arg_0.a, _wgslsmith_f_op_f32(-arg_0.d.a.x)))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-190f, -107f) - var_0.d.a.x))), firstLeadingBit(max(-10043i, global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(var_0.b.d.x, arg_1)), 27u)])), firstTrailingBit(global2.x << (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 321u), _wgslsmith_add_u32(43294u, arg_0.d.d.x)) % 32u)), min(select(global4.wyz >> ((vec3<u32>(13687u, 31692u, u_input.a.x) | vec3<u32>(arg_0.d.d.x, u_input.a.x, arg_0.d.d.x)) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, arg_1, 47800u)), select(global0[_wgslsmith_index_u32(arg_0.d.d.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 28u)], true)), vec3<u32>(5445u, 2334u, global4.x)));
    var var_2 = arg_0;
    global0 = array<vec3<bool>, 28>();
    global4 = ~firstLeadingBit(vec4<u32>(select(12264u, var_1.d.x | 2187u, var_0.c), firstLeadingBit(~48005u), select(u_input.a.x, abs(742u), true), _wgslsmith_dot_vec4_u32(vec4<u32>(48026u, 0u, arg_0.d.d.x, arg_0.b.d.x), vec4<u32>(40305u, 1u, 44685u, var_1.d.x) & vec4<u32>(4294967295u, 44056u, 4294967295u, u_input.a.x))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(global4.x, global4.x, 4294967295u);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~global4.x, firstTrailingBit(0u), 49170u, 0u) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, global4.x, 31354u, 4294967295u), vec4<u32>(global4.x, 1u, 9601u, 0u) >> (vec4<u32>(27677u, u_input.a.x, 16078u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(global4.x, global4.x, 4294967295u, global4.x))), reverseBits(vec4<u32>(0u, 41172u, 12101u, 87973u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global4.x, global4.x, 100713u), _wgslsmith_add_vec4_u32(vec4<u32>(66321u, 38144u, 52166u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 0u)), ~(global4.xww ^ vec3<u32>(4294967295u, global4.x, 0u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.a.x, global4.x), ~vec3<u32>(36445u, 1u, u_input.a.x)), func_1(Struct_2(-648f, Struct_1(vec2<f32>(-698f, 816f), -27773i, 31289i, vec3<u32>(0u, global4.x, 7668u)), vec4<i32>(global2.x, global2.x, 63095i, 1i), Struct_1(vec2<f32>(-712f, -1000f), global2.x, -29377i, vec3<u32>(global4.x, global4.x, 4294967295u)), 2147483647i), ~0u, select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), _wgslsmith_dot_vec3_u32(~abs(min(global4.zwx, global4.xyw)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(71685u, global4.x, global4.x), ~vec3<u32>(global4.x, 4294967295u, u_input.a.x)), firstLeadingBit(vec3<u32>(0u, 26112u, global4.x)) | vec3<u32>(28005u, 0u, global4.x))), ~(~func_1(Struct_2(446f, Struct_1(vec2<f32>(-604f, 653f), global1[_wgslsmith_index_u32(global4.x, 27u)], 15665i, vec3<u32>(u_input.a.x, global4.x, u_input.a.x)), vec4<i32>(0i, 1i, global2.x, global2.x), global3[_wgslsmith_index_u32(0u, 14u)], global2.x), _wgslsmith_sub_u32(global4.x, u_input.a.x), vec2<bool>(true, true), vec2<bool>(true, false)).x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-229f, -801f), vec2<f32>(-828f, -632f)), vec2<f32>(-257f, -1460f)))))), _wgslsmith_mod_i32(1i, global2.x), global2.x & 1i, ~vec3<u32>(global4.x, u_input.a.x, countOneBits(19904u)));
    var var_3 = global3[_wgslsmith_index_u32(var_1.x, 14u)];
    let var_4 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-537f * var_2.a.x), -428f, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.a)))), ~17312i, global2.x, var_2.d), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_3.a.x)))), _wgslsmith_sub_i32(-17235i, -(~(-2147483647i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, var_3.b) & 1i, _wgslsmith_sub_i32(~global2.x, 1i)), vec3<u32>(u_input.a.x, reverseBits(9745u), _wgslsmith_dot_vec3_u32(~global4.xwx, abs(vec3<u32>(4294967295u, var_3.d.x, global4.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-109f, _wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(-var_2.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, -809f, var_2.a.x)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_3.a.x) + vec3<f32>(-1457f, var_3.a.x, var_2.a.x)))))));
    global4 = countOneBits(~vec4<u32>(~var_3.d.x, 9678u, var_3.d.x, ~(~51074u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.a.x)), -1424f, var_2.a.x, -577f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-425f, 466f, 1000f, -658f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.a.x, var_3.a.x, var_3.a.x, 1334f) - vec4<f32>(-339f, var_4.e.x, var_3.a.x, var_4.b.a.x)))))), _wgslsmith_clamp_u32(u_input.a.x, reverseBits(~38883u) >> (~max(u_input.a.x, global4.x) % 32u), 2905u >> (~var_1.x % 32u)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(25787i, 2147483647i, 1i), vec3<i32>(2147483647i, -2147483647i, 1i), vec3<i32>(0i, global2.x, 0i)) | abs(vec3<i32>(global2.x, -56810i, 2147483647i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-5592i, 2147483647i, -1i), vec3<i32>(-1i, var_3.c, -2147483647i)), vec3<i32>(global2.x, -1i, var_2.c) >> (var_3.d % vec3<u32>(32u))), ~select(vec3<i32>(-27329i, var_3.c, -1i), vec3<i32>(58354i, 35217i, 30916i), var_4.c), select(-vec3<i32>(var_3.c, global2.x, var_2.b), ~vec3<i32>(-4132i, 42907i, 5915i), select(global0[_wgslsmith_index_u32(29790u, 28u)], global0[_wgslsmith_index_u32(20240u, 28u)], vec3<bool>(false, var_4.c, true)))), ~vec3<i32>(2147483647i, 30847i, var_2.c)));
}

