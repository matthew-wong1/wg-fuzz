struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 18> = array<i32, 18>(-754i, i32(-2147483648), -1i, 0i, 1i, -1i, 2147483647i, 32316i, -34195i, -1i, 33822i, 2147483647i, i32(-2147483648), -21630i, -18643i, -14479i, 0i, -1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = vec4<i32>(global3[_wgslsmith_index_u32(max(3958u, 3335u), 18u)], u_input.c.x, -32594i, 15623i) >> (~select(vec4<u32>(select(u_input.a, arg_0.a, arg_1.x), reverseBits(54749u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 0u)), 4294967295u), ~vec4<u32>(arg_0.a, u_input.b, 4294967295u, u_input.b), !select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(false, true, true, arg_1.x), true)) % vec4<u32>(32u));
    let var_1 = Struct_3(arg_0, arg_0, arg_0);
    let var_2 = abs(global2.x);
    var var_3 = Struct_4(false, abs(_wgslsmith_clamp_vec4_i32(~var_0, vec4<i32>(var_2, var_1.a.e, 46320i, 31814i), vec4<i32>(global2.x, -6614i, global2.x, -2147483647i))) >> ((vec4<u32>(abs(arg_0.a), u_input.b ^ u_input.a, ~4294967295u, arg_0.a >> (u_input.b % 32u)) >> (~vec4<u32>(0u, 73122u, 4294967295u, var_1.c.a) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_1.a.a, u_input.a, var_1.c.a, 1u) & countOneBits(vec4<u32>(0u, arg_0.a, 27368u, var_1.b.a))) | countOneBits(min(abs(vec4<u32>(1u, arg_0.a, 1u, 7883u)), vec4<u32>(u_input.a, arg_0.a, var_1.c.a, var_1.a.a) ^ vec4<u32>(50795u, arg_0.a, 31465u, u_input.b))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.ww * vec2<f32>(540f, -1745f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1056f, 1601f, false)) * _wgslsmith_f_op_f32(-760f - -1433f)), -1528f)));
    return 762f;
}

fn func_2(arg_0: bool) -> f32 {
    global1 = global3[_wgslsmith_index_u32(u_input.a, 18u)];
    let var_0 = Struct_3(Struct_2(_wgslsmith_clamp_u32(4294967295u, u_input.b, 56018u) ^ _wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(4294967295u, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, -795f, -1618f, -872f) + vec4<f32>(-1234f, -104f, 1000f, -483f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2258f), -120f, _wgslsmith_f_op_f32(693f + 487f), -870f)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(927f)), -1068f)), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(4294967295u, vec4<f32>(-1000f, -1000f, -672f, 416f), Struct_1(553f), Struct_1(-1021f), 35358i), vec2<bool>(true, arg_0)))), firstTrailingBit(global3[_wgslsmith_index_u32(17262u, 18u)])), Struct_2(select(u_input.b, ~_wgslsmith_mod_u32(u_input.b, 9485u), all(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), true))), _wgslsmith_div_vec4_f32(vec4<f32>(-692f, _wgslsmith_f_op_f32(min(301f, -1118f)), -1000f, _wgslsmith_f_op_f32(1545f * -1770f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(680f, 2489f, -908f, 1674f) + vec4<f32>(-664f, 1313f, 1000f, -1000f)))), Struct_1(_wgslsmith_f_op_f32(min(1317f, _wgslsmith_f_op_f32(1000f + -2906f)))), Struct_1(250f), -1i), Struct_2(0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(101f, _wgslsmith_f_op_f32(trunc(1254f)), _wgslsmith_f_op_f32(select(808f, -1360f, true)), _wgslsmith_f_op_f32(-104f * -272f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-875f, 141f, 1018f, -1366f))), Struct_1(2922f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(586f, 666f) - _wgslsmith_f_op_f32(trunc(728f)))), global2.x));
    let var_1 = vec4<bool>(any(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), true, arg_0, arg_0);
    global3 = array<i32, 18>();
    let var_2 = Struct_4(!var_1.x && (var_0.a.a <= 1u), vec4<i32>(_wgslsmith_mod_i32(-1i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 31378u), 18u)] << (min(63575u, u_input.b) % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(2147483647i, -16839i, -19963i, -28482i), vec4<i32>(-77110i, -18213i, -4646i, global3[_wgslsmith_index_u32(var_0.c.a, 18u)])), vec4<i32>(var_0.c.e, -1i, global2.x, 28870i)), firstTrailingBit(vec4<i32>(var_0.b.e, -61557i, 1i, -17945i) >> (vec4<u32>(u_input.b, 33404u, 62375u, var_0.b.a) % vec4<u32>(32u)))), countOneBits(_wgslsmith_clamp_i32(abs(15513i), -13707i, -global3[_wgslsmith_index_u32(var_0.a.a, 18u)])), -2147483647i), vec4<u32>(~_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, select(0u, ~4294967295u, !arg_0), var_0.b.a) >> (vec4<u32>(0u, select(var_0.c.a & 855u, var_0.a.a, var_1.x), _wgslsmith_div_u32(u_input.b, 12328u), _wgslsmith_sub_u32(var_0.a.a >> (u_input.a % 32u), 4294967295u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(abs(var_0.c.c.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_4(arg_0.x > _wgslsmith_f_op_f32(-arg_0.x), vec4<i32>(global3[_wgslsmith_index_u32(~((u_input.a | 1u) | 1u), 18u)], abs(~u_input.c.x), reverseBits(firstTrailingBit(firstLeadingBit(arg_1.a.e))), _wgslsmith_mod_i32(max(7100i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(34446u, 18u)], -1i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, global3[_wgslsmith_index_u32(28769u, 18u)], arg_1.b.e), vec4<i32>(arg_3.x, 7874i, -8430i, 2147483647i))))), ~vec4<u32>(arg_1.b.a, arg_2.x, _wgslsmith_add_u32(min(0u, arg_1.b.a), arg_1.b.a), firstLeadingBit(~arg_2.x)));
    let var_1 = Struct_4(false, var_0.b, ~max(var_0.c, vec4<u32>(4294967295u, min(arg_1.b.a, 4294967295u), _wgslsmith_add_u32(arg_1.b.a, 26147u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a, 27377u, arg_2.x, 1u), var_0.c))));
    global3 = array<i32, 18>();
    var var_2 = arg_2;
    global2 = _wgslsmith_add_vec2_i32(u_input.c.zy, _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -arg_1.a.e, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, 4757i, -2147483647i)), vec3<i32>(var_0.b.x, arg_1.c.e, 1i) >> (arg_2 % vec3<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, arg_3.x, -1i), -var_0.b), _wgslsmith_mult_i32(global2.x, ~var_1.b.x))));
    return var_1;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(any(vec2<bool>(true, false)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) * -1171f), _wgslsmith_div_f32(-1596f, -455f))), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 22u)], vec3<u32>(u_input.b, u_input.b, u_input.a), abs(vec3<i32>(2147483647i, -1i, -2147483647i)));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1326f, 176f, -1000f, 520f), vec4<f32>(-880f, -1699f, 335f, -1000f), vec4<bool>(var_0.a, true, var_0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, 1284f, 406f, 297f))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, _wgslsmith_div_f32(828f, 329f), _wgslsmith_f_op_f32(f32(-1f) * -854f), _wgslsmith_f_op_f32(665f * -1177f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(231f, -1000f, -315f, -241f), vec4<f32>(1098f, -756f, 665f, 374f)))))), global0[_wgslsmith_index_u32(~(~27337u), 22u)], ~(~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 45810u, 59747u), vec3<u32>(1u, 4294967295u, var_0.c.x)))), var_0.b.xww);
    let var_1 = any(select(vec3<bool>(!var_0.a, true, false), !select(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), false), select(vec3<bool>(false, false, false), vec3<bool>(true, var_0.a, var_0.a), true), false), select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, any(vec4<bool>(var_0.a, var_0.a, false, true))), func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1233f, -307f, 926f, 956f))), Struct_3(Struct_2(u_input.b, vec4<f32>(-325f, 1369f, 827f, -218f), Struct_1(1171f), Struct_1(169f), 1i), Struct_2(51899u, vec4<f32>(-137f, 294f, -437f, 1140f), Struct_1(1428f), Struct_1(-981f), -53612i), Struct_2(0u, vec4<f32>(-431f, -1307f, -740f, -1552f), Struct_1(-491f), Struct_1(1347f), 2147483647i)), vec3<u32>(4294967295u, 1u, u_input.b), firstTrailingBit(u_input.c)).a)));
    let var_2 = !var_0.a;
    var var_3 = !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1547f, -211f) + vec2<f32>(-401f, 1433f))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1278f, -620f) - vec2<f32>(399f, 1710f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1131f, -870f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(786f, 282f) * vec2<f32>(-520f, -902f)))))), _wgslsmith_div_f32(-172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(298f, -882f, true))) * -1000f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f * 1967f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f + -1285f))), -988f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_vec2_i32(~vec2<i32>(~(-41453i), 1i), u_input.c.zy >> (max(vec2<u32>(1u, u_input.a) & ~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 36266u) << (~vec2<u32>(4294967295u, 108536u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = func_1();
}

