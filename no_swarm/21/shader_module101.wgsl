struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, vec4<f32>(2546f, 304f, 822f, 1096f), vec4<i32>(23456i, 0i, 2147483647i, -25848i)), Struct_1(true, vec4<f32>(1038f, 1070f, 262f, -220f), vec4<i32>(29679i, 28816i, 1i, 1i)), Struct_1(true, vec4<f32>(2392f, -698f, 864f, -702f), vec4<i32>(-1i, 1i, 4880i, 28143i)), Struct_1(false, vec4<f32>(-540f, 547f, -1379f, 1614f), vec4<i32>(-19814i, 1i, 0i, 48245i)), Struct_1(false, vec4<f32>(-1180f, -827f, -1484f, -944f), vec4<i32>(2147483647i, 2147483647i, -22333i, 13692i)), Struct_1(false, vec4<f32>(259f, 131f, 617f, 1610f), vec4<i32>(27950i, -1i, i32(-2147483648), 54531i)), Struct_1(false, vec4<f32>(-596f, -2606f, 800f, 1197f), vec4<i32>(34934i, -1i, 1i, i32(-2147483648))), Struct_1(true, vec4<f32>(365f, -856f, 1264f, -2109f), vec4<i32>(-21258i, 56398i, 0i, -52211i)), Struct_1(false, vec4<f32>(-554f, 1027f, 426f, -652f), vec4<i32>(-58789i, -1i, 1i, 2147483647i)), Struct_1(true, vec4<f32>(-1169f, 223f, 576f, 648f), vec4<i32>(18534i, 2147483647i, 0i, 15931i)), Struct_1(true, vec4<f32>(-318f, -1259f, -1000f, -499f), vec4<i32>(1i, -1i, 1i, -42447i)), Struct_1(false, vec4<f32>(-1194f, 782f, 489f, 1111f), vec4<i32>(-20421i, 51826i, 37827i, -77828i)), Struct_1(true, vec4<f32>(-333f, -610f, -439f, 513f), vec4<i32>(i32(-2147483648), 30539i, i32(-2147483648), 0i)), Struct_1(true, vec4<f32>(1000f, 1247f, 268f, 552f), vec4<i32>(-1i, 0i, 1i, -1i)), Struct_1(true, vec4<f32>(-596f, 1080f, 1792f, 1000f), vec4<i32>(49999i, 0i, -37860i, -7605i)), Struct_1(true, vec4<f32>(820f, -1212f, -139f, 652f), vec4<i32>(84726i, 25467i, 1i, -1i)), Struct_1(true, vec4<f32>(-376f, -259f, -1000f, -1360f), vec4<i32>(18678i, 2147483647i, 1i, 0i)), Struct_1(false, vec4<f32>(-559f, 1658f, -1000f, 2040f), vec4<i32>(2147483647i, 1i, -47358i, -6592i)), Struct_1(true, vec4<f32>(804f, 368f, -318f, -161f), vec4<i32>(16463i, 14597i, 24174i, 17299i)), Struct_1(false, vec4<f32>(-857f, -1864f, 159f, 439f), vec4<i32>(1i, -18212i, i32(-2147483648), 0i)), Struct_1(false, vec4<f32>(-358f, 1524f, 192f, -345f), vec4<i32>(13811i, i32(-2147483648), 0i, 1i)), Struct_1(true, vec4<f32>(247f, 1000f, -809f, 516f), vec4<i32>(14064i, 1i, 31265i, i32(-2147483648))), Struct_1(false, vec4<f32>(-2312f, -599f, 843f, -979f), vec4<i32>(2147483647i, 456i, 2147483647i, 36004i)), Struct_1(true, vec4<f32>(-1272f, 131f, 294f, -1965f), vec4<i32>(i32(-2147483648), 2147483647i, 31414i, -28883i)), Struct_1(true, vec4<f32>(-276f, 744f, -928f, 308f), vec4<i32>(i32(-2147483648), 36546i, 60464i, -1i)), Struct_1(true, vec4<f32>(977f, -615f, 564f, -950f), vec4<i32>(1i, 2147483647i, 19506i, -1i)));

var<private> global1: Struct_1 = Struct_1(true, vec4<f32>(-1049f, 805f, 640f, 449f), vec4<i32>(38423i, -912i, 29130i, 1i));

var<private> global2: Struct_1 = Struct_1(true, vec4<f32>(303f, -1000f, 290f, -962f), vec4<i32>(0i, 21539i, 54144i, 0i));

var<private> global3: array<vec4<f32>, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: u32) -> vec2<f32> {
    var var_0 = vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(723f + global2.b.x))) + _wgslsmith_f_op_f32(ceil(-1000f))), -1064f);
    var var_1 = _wgslsmith_div_f32(var_0.x, 553f);
    let var_2 = !select(!(!vec3<bool>(false, global2.a, arg_0)), select(select(vec3<bool>(global1.a, false, arg_0), !vec3<bool>(global1.a, arg_0, global1.a), select(vec3<bool>(false, global2.a, true), vec3<bool>(arg_0, arg_0, arg_0), global1.a)), vec3<bool>(false, all(vec2<bool>(global1.a, arg_0)), global2.a), global2.a), !arg_0);
    global1 = global0[_wgslsmith_index_u32(arg_2, 26u)];
    let var_3 = vec2<i32>(~51110i, ~u_input.d);
    return global1.b.yx;
}

fn func_3() -> i32 {
    global1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(638f, global2.b.x, global2.b.x, global2.b.x) * vec4<f32>(global1.b.x, -1000f, global2.b.x, -855f)))) + global3[_wgslsmith_index_u32(_wgslsmith_div_u32(22461u, u_input.a), 21u)]), vec4<i32>(u_input.d, countOneBits(-1i), 1i, 31134i) | global2.c);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))) * _wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(955f - 285f)))), _wgslsmith_f_op_f32(375f + _wgslsmith_f_op_f32(trunc(-1046f))));
    let var_1 = global1.b.yyy;
    var var_2 = vec3<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.c.x, 1u, u_input.a)), reverseBits(select(vec4<u32>(u_input.c.x, 0u, 29652u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.a, u_input.b, 34110u), vec4<bool>(global1.a, global1.a, global1.a, global2.a)))), ~_wgslsmith_div_u32(53811u, 25736u)), _wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(23662u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), ~u_input.b), ~countOneBits(1u))));
    global1 = global0[_wgslsmith_index_u32(abs(var_2.x & ~_wgslsmith_clamp_u32(1u ^ u_input.b, ~var_2.x, 40272u)), 26u)];
    return -1i;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(456f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * arg_0.b.x)), arg_2.b.zx);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true, vec3<u32>(u_input.a, u_input.a, ~u_input.c.x), firstLeadingBit(u_input.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b.wy)))));
    var var_1 = any(!(!(!select(vec3<bool>(true, arg_2.a, false), vec3<bool>(arg_0.a, global1.a, global2.a), arg_2.a))));
    global2 = Struct_1(-max(arg_0.c.x ^ u_input.d, _wgslsmith_mod_i32(47441i, arg_0.c.x)) <= (select(func_3(), max(-44936i, -17783i), 1u != u_input.b) ^ -32740i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(582f, arg_0.b.x, -1136f, arg_0.b.x), global1.b) * vec4<f32>(199f, arg_2.b.x, -329f, -2248f))) + vec4<f32>(global2.b.x, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.x + -447f), 1259f, !global2.a)), 350f)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_2.c.yxz, global2.c.wwx), 21391i), 10512i, abs(-global2.c.x)), arg_0.c & abs(-global1.c)));
    var_1 = false;
    return Struct_1(any(!select(vec3<bool>(true, false, arg_2.a), vec3<bool>(false, global1.a, global1.a), true)) != !(!any(vec3<bool>(arg_2.a, true, false))), arg_0.b, -(arg_0.c | _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.x, arg_2.c.x, global2.c.x, arg_0.c.x), vec4<i32>(arg_0.c.x, u_input.d, global2.c.x, arg_2.c.x)), global2.c)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~vec4<u32>(~1042u, ~u_input.c.x, u_input.c.x, reverseBits(u_input.a));
    var var_1 = ~global2.c.x;
    let var_2 = min(global2.c.wyx, -(global2.c.zwy | vec3<i32>(-4849i, 45348i, i32(-1i) * -2147483647i)));
    var_1 = 15003i;
    let var_3 = _wgslsmith_mod_i32(var_2.x, func_3());
    return firstLeadingBit(abs(120274u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 31729u, u_input.a), vec3<u32>(4294967295u, u_input.b, 82299u) ^ vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(u_input.a, 0u, 4294967295u) ^ vec3<u32>(u_input.c.x, 87192u, u_input.b)), vec3<u32>(u_input.c.x ^ u_input.a, 0u, select(u_input.b, u_input.b, global2.a))) & ~(~vec3<u32>(u_input.b, 1u, 4294967295u)), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(max(u_input.c.x, u_input.a), firstLeadingBit(18141u), _wgslsmith_sub_u32(u_input.a, 16060u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4331u, u_input.c.x), vec4<u32>(34480u, u_input.c.x, 23080u, 0u)), ~0u, u_input.c.x))), !(!global1.a));
    global1 = global0[_wgslsmith_index_u32(func_4(func_1(global0[_wgslsmith_index_u32(abs(~38274u), 26u)], 0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~4294967295u, u_input.c.x, ~7992u), vec4<u32>(var_0.x, u_input.c.x, select(34831u, var_0.x, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 14814u, 4294967295u, 76765u), vec4<u32>(1u, 4294967295u, 8777u, u_input.a)))), 26u)])), 26u)];
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(~4294967295u), countOneBits(countOneBits(_wgslsmith_mod_u32(0u, 25865u))), 1u), ~_wgslsmith_mod_vec3_u32(max(~vec3<u32>(u_input.c.x, var_0.x, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(64498u, 4294967295u, var_0.x))), select(vec3<u32>(u_input.a, var_0.x, 4001u), min(vec3<u32>(var_0.x, 69357u, 51557u), vec3<u32>(50579u, u_input.b, u_input.c.x)), 7774u <= u_input.c.x)));
    global1 = func_1(Struct_1(_wgslsmith_add_u32(var_0.x, 26140u) != ~var_0.x, global3[_wgslsmith_index_u32(4294967295u, 21u)], global2.c), _wgslsmith_clamp_u32(24245u, u_input.a, u_input.c.x), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global2.b.x, global2.b.x) + _wgslsmith_f_op_vec4_f32(-global1.b))), -(countOneBits(vec4<i32>(global2.c.x, global2.c.x, -3583i, 369i)) ^ ~global2.c)));
    var var_1 = global1.c;
    var_1 = -((countOneBits(~vec4<i32>(global1.c.x, global2.c.x, global2.c.x, global1.c.x)) >> (vec4<u32>(~u_input.b, var_0.x, 4294967295u, u_input.b) % vec4<u32>(32u))) | -(vec4<i32>(u_input.d, var_1.x, u_input.d, -51414i) | _wgslsmith_add_vec4_i32(global1.c, global2.c)));
    var var_2 = !(!select(select(vec3<bool>(global2.a, global2.a, false), !vec3<bool>(global2.a, global1.a, global1.a), !global2.a), vec3<bool>(all(vec4<bool>(global1.a, global1.a, global1.a, false)), select(false, global1.a, true), false), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_1.x, global1.c.x), -global1.c.x, u_input.d, -1i), vec4<i32>(~24772i, reverseBits(var_1.x), u_input.d, global1.c.x))));
}

