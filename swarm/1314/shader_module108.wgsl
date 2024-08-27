struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-21950i, -15345i, 12323i, 2147483647i, 31115i, 750i, i32(-2147483648), 2147483647i, 2147483647i, 0i, -1161i, -1i, -1i, -20437i, -1i);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    let var_0 = arg_1.b;
    let var_1 = -209f;
    let var_2 = 1u;
    let var_3 = true;
    let var_4 = ~(~vec4<u32>(52379u, arg_1.b.b.c, 28396u, ~0u) | ~vec4<u32>(_wgslsmith_sub_u32(var_2, arg_1.b.c.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, var_0.b.c, arg_1.b.b.c, 29050u), vec4<u32>(489u, arg_1.b.b.b.x, 25826u, arg_1.b.c.b.x)), _wgslsmith_sub_u32(arg_1.b.b.c, var_2), ~4294967295u));
    return 46353u;
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_1(-2279f, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(~4294967295u, 1u, func_3(vec3<i32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(29448u, 15u)]), Struct_4(-1356f, Struct_2(vec4<f32>(-1258f, 618f, -1093f, -915f), Struct_1(-147f, vec3<u32>(15805u, 37501u, 17614u), 4294967295u, vec3<i32>(-50025i, 4891i, u_input.a), 2147483647i), Struct_1(-606f, vec3<u32>(0u, 26316u, 0u), 0u, vec3<i32>(u_input.a, arg_0.x, -24299i), global0[_wgslsmith_index_u32(60191u, 15u)])), vec4<f32>(1330f, -813f, 1558f, 1493f), -1791f))) ^ firstLeadingBit(vec3<u32>(4294967295u, 30859u, 57441u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(abs(6088u), _wgslsmith_clamp_u32(81486u, 65426u, 17372u), ~0u, 1u), vec4<bool>(global1.x, all(vec4<bool>(global1.x, global1.x, true, global1.x)), true, true)), abs(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_add_vec3_i32(vec3<i32>(min(-2147483647i, u_input.a), max(-8137i, arg_0.x), -2147483647i) | -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_0.x, 0i), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 15u)], -14602i)), countOneBits(abs(select(vec3<i32>(44648i, global0[_wgslsmith_index_u32(30855u, 15u)], -17752i), vec3<i32>(arg_0.x, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(20761u, 15u)]), vec3<bool>(global1.x, false, false))))), -11454i);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * 368f))), _wgslsmith_f_op_f32(f32(-1f) * -877f)) + -1000f));
    var var_3 = -var_0.e;
    var var_4 = 28092i;
    return Struct_4(var_0.a, Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a, -1469f, var_1.a, var_0.a), vec4<f32>(var_0.a, var_1.a, var_0.a, var_0.a)))))), var_0, Struct_1(1f, ~reverseBits(var_1.b), max(4294967295u, var_0.c), vec3<i32>(abs(var_1.e), _wgslsmith_div_i32(-26394i, -1i), _wgslsmith_mod_i32(31096i, 2147483647i)), -2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, var_0.a, var_0.a, 606f) * vec4<f32>(var_1.a, var_1.a, var_0.a, 1140f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, var_0.a, 939f, -1231f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 2575f, -105f, -1191f), vec4<f32>(524f, 358f, var_1.a, 686f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -658f, 273f, -131f) * vec4<f32>(var_1.a, var_1.a, 1729f, var_0.a)))))), 726f);
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    let var_0 = vec4<bool>(firstTrailingBit(~select(u_input.a, u_input.a, global1.x)) != ~(-7556i), true, arg_0, arg_1);
    var var_1 = 597f;
    let var_2 = ~(-_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.a, 2147483647i)) ^ vec2<i32>(u_input.a, u_input.a), max(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(-17599i, -34004i)), vec2<i32>(global0[_wgslsmith_index_u32(~23196u, 15u)], 6104i & u_input.a)));
    let var_3 = func_2(var_2);
    var var_4 = vec2<bool>(global1.x, firstTrailingBit(func_2(vec2<i32>(u_input.a, var_3.b.c.e)).b.c.c) <= ~_wgslsmith_mod_u32(var_3.b.c.b.x ^ 4294967295u, 0u));
    return func_2(-countOneBits(select(vec2<i32>(1i, -1i), ~var_3.b.c.d.zx, var_3.b.a.x >= var_3.a))).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<i32, 15>();
    var var_1 = vec4<u32>(11002u ^ ~abs(firstTrailingBit(66393u)), _wgslsmith_add_u32(1u, 0u), 14614u, _wgslsmith_add_u32(19173u, _wgslsmith_add_u32(max(1u, 7370u), _wgslsmith_dot_vec4_u32(vec4<u32>(17707u, 1u, 0u, 0u), vec4<u32>(4294967295u, 5074u, 4294967295u, 57346u))) << (~(~111956u) % 32u)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(4294967295u ^ var_1.x, 15u)] <= 0i, true))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2505f, 418f, 972f, 416f))))), func_2(vec2<i32>(u_input.a, 1i)).b.b, func_2(-vec2<i32>(2147483647i, 32207i)).b.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-762f, 2067f))), 837f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1355f) + 1327f), _wgslsmith_f_op_f32(sign(536f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(2513f, 588f, global1.x)), -357f, 1284f, _wgslsmith_div_f32(-870f, 221f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(500f, 899f, -215f, 416f) + vec4<f32>(189f, -2413f, -469f, 989f)))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-299f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1901f)))) + _wgslsmith_f_op_f32(abs(-780f))));
    var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32((vec4<u32>(78171u, var_1.x, 44213u, 0u) | vec4<u32>(var_2.b.b.c, 81335u, 0u, var_2.b.b.b.x)) << (~vec4<u32>(var_2.b.b.c, var_1.x, 0u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(var_2.b.b.b.x, 35761u, var_2.b.c.b.x, 30168u) | vec4<u32>(var_1.x, var_2.b.b.c, var_2.b.c.b.x, 16592u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 8400u, var_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.c.b.x, 4294967295u, var_2.b.c.c, 4294967295u), vec4<u32>(61821u, 102127u, var_2.b.b.c, 16692u), vec4<u32>(73425u, 27519u, 41233u, var_1.x)))) >> (~countOneBits(min(vec4<u32>(var_2.b.c.c, 84808u, var_1.x, 1u), ~vec4<u32>(var_2.b.c.c, 1u, var_1.x, 52139u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.c, 239f, vec4<u32>(var_1.x, _wgslsmith_mod_u32(~var_2.b.b.c, 83761u), ~firstLeadingBit(55718u), 35150u) >> (vec4<u32>(var_2.b.b.c, countOneBits(var_2.b.c.c), _wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(var_1.x, 0u)), abs(firstTrailingBit(var_2.b.c.b.x))) % vec4<u32>(32u)), 4294967295u);
}

