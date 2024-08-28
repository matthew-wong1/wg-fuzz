struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, false, false, false, true, true);

var<private> global1: array<i32, 5>;

var<private> global2: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(1000f, vec2<f32>(378f, 1153f)), Struct_4(1367f, vec2<f32>(-1586f, 132f)), Struct_4(-315f, vec2<f32>(-209f, 1521f)), Struct_4(323f, vec2<f32>(1000f, -1220f)), Struct_4(-735f, vec2<f32>(-909f, -1791f)), Struct_4(1315f, vec2<f32>(199f, -710f)), Struct_4(1154f, vec2<f32>(287f, 2187f)), Struct_4(1000f, vec2<f32>(1431f, -158f)), Struct_4(2683f, vec2<f32>(636f, -1601f)), Struct_4(209f, vec2<f32>(3155f, -261f)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = ~(~arg_1.x);
    let var_1 = u_input.b.xzz;
    let var_2 = u_input.c.x ^ ~countOneBits(~(~25419u));
    var var_3 = global2[_wgslsmith_index_u32(arg_1.x, 10u)];
    global2 = array<Struct_4, 10>();
    return Struct_4(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_3.b)))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.b);
    var var_1 = vec4<i32>(~select(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 1i), arg_1.c.c)), abs(1i), all(!arg_1.a.b)), 0i, ~33974i, -3385i);
    return _wgslsmith_clamp_vec4_u32(select(vec4<u32>(~_wgslsmith_mult_u32(11370u, u_input.d.x), arg_2.e.x, firstLeadingBit(49438u | arg_1.c.e.x), 86099u), u_input.d | _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), vec4<u32>(u_input.d.x, 78873u, 1u, arg_2.e.x)), false), vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c.x & arg_2.e.x, 1u), ~(~66u)), ~(~_wgslsmith_mod_u32(1u, 64231u)), ~1u), max(u_input.d, u_input.d));
}

fn func_1() -> Struct_5 {
    global2 = array<Struct_4, 10>();
    let var_0 = select(vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(43283u, 5u)] != 2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], true)), false), select(!vec2<bool>(0u == u_input.d.x, global0[_wgslsmith_index_u32(4294967295u << (u_input.c.x % 32u), 8u)]), !select(!vec2<bool>(global0[_wgslsmith_index_u32(62125u, 8u)], true), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], false)), true), false);
    global0 = array<bool, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(466f, 1722f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1463f, -723f) + vec2<f32>(-498f, 261f))))))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(func_3(func_2(vec3<i32>(0i, -5015i, global1[_wgslsmith_index_u32(42973u, 5u)]), vec4<u32>(4294967295u, 40167u, 1u, 0u), u_input.b.ywz), Struct_3(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(75710u, 8u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(13396u, 8u)], var_0.x, var_0.x), u_input.b.wwy, u_input.b.wy, u_input.c.wy), global0[_wgslsmith_index_u32(u_input.d.x, 8u)], Struct_1(var_0, vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], true, true, false), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], 0i, -4538i), vec2<i32>(0i, -35447i), u_input.c.yz), -3446i), Struct_1(var_0, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], false, var_0.x), vec3<i32>(45426i, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(11653u, 5u)]), u_input.b.xx, vec2<u32>(u_input.c.x, 17892u))), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 22387u)), vec4<u32>(~17724u | u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 1u), u_input.d.x, ~55756u)), vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 39641u, u_input.c.x, 0u)), u_input.c), u_input.d.x, _wgslsmith_div_u32(u_input.d.x, 1u), 20258u));
    return Struct_5(~((vec4<u32>(4294967295u, u_input.d.x, 59980u, var_2.x) | func_3(Struct_4(var_1.x, vec2<f32>(730f, -1000f)), Struct_3(Struct_1(vec2<bool>(false, true), vec4<bool>(global0[_wgslsmith_index_u32(101573u, 8u)], var_0.x, global0[_wgslsmith_index_u32(10482u, 8u)], true), vec3<i32>(u_input.a, u_input.b.x, global1[_wgslsmith_index_u32(var_2.x, 5u)]), vec2<i32>(-47969i, -1i), u_input.c.xw), false, Struct_1(var_0, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_0.x, true, global0[_wgslsmith_index_u32(var_2.x, 8u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 17481i, 1726i), u_input.b.zw, vec2<u32>(4294967295u, 57638u)), -2147483647i), Struct_1(vec2<bool>(var_0.x, true), vec4<bool>(false, true, true, true), u_input.b.xxz, vec2<i32>(u_input.b.x, 0i), vec2<u32>(u_input.c.x, var_2.x)))) | abs(vec4<u32>(u_input.d.x, 6794u, 0u, var_2.x))), !(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36352u, 31271u), firstLeadingBit(u_input.c.xz)), 8u)]));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, !global0[_wgslsmith_index_u32(arg_0.a.x, 8u)]), !vec4<bool>(global0[_wgslsmith_index_u32(57255u, 8u)], 1i != u_input.b.x, global0[_wgslsmith_index_u32(0u, 8u)] & true, true || global0[_wgslsmith_index_u32(1757u, 8u)]), u_input.b.yzz, -firstTrailingBit(min(vec2<i32>(-44565i, 71664i), u_input.b.ww)), _wgslsmith_mod_vec2_u32(vec2<u32>(~40904u, ~0u), _wgslsmith_sub_vec2_u32(arg_0.a.xx, vec2<u32>(0u, 6288u)) << (vec2<u32>(arg_0.a.x, 44278u) % vec2<u32>(32u)))), Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(28053u, 8u)], global0[_wgslsmith_index_u32(50360u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], arg_0.b), arg_0.b), !vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(u_input.c.x, 8u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(11882u, 8u)], global0[_wgslsmith_index_u32(76184u, 8u)]), vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)])), vec2<bool>(global0[_wgslsmith_index_u32(53850u, 8u)], false), false), !(!vec2<bool>(arg_0.b, arg_0.b))), !vec4<bool>(true, !arg_0.b, arg_0.b | arg_0.b, false == arg_0.b), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(11268i, -40926i), min(global1[_wgslsmith_index_u32(arg_0.a.x, 5u)], 1i), _wgslsmith_mult_i32(0i, -2147483647i)), reverseBits(max(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(24858u, 5u)], u_input.a), vec3<i32>(0i, global1[_wgslsmith_index_u32(16119u, 5u)], -1i)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(26744i, 7046i, 31026i, u_input.a), vec4<i32>(41292i, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], -2049i, u_input.b.x))), -u_input.b.wx, u_input.b.yx), ~arg_0.a.zw), ~func_1().a.xxw);
    var var_1 = Struct_2(var_0.b, Struct_1(var_0.a.b.wy, select(vec4<bool>(global0[_wgslsmith_index_u32(~1u, 8u)], arg_0.b, any(vec2<bool>(var_0.b.a.x, true)), false), vec4<bool>(any(var_0.a.b), all(var_0.a.b.wz), true, true), var_0.b.b), vec3<i32>(-1i) * -max(u_input.b.yyx, vec3<i32>(0i, var_0.a.d.x, u_input.a)), vec2<i32>(abs(1i), global1[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec2<u32>(1u, _wgslsmith_add_u32(u_input.c.x, u_input.d.x) & arg_0.a.x)), vec3<u32>(func_1().a.x, var_0.c.x, _wgslsmith_add_u32(141u, max(~var_0.c.x, ~u_input.c.x))));
    global0 = array<bool, 8>();
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(var_1.b.e.x ^ 42638u), 10u)];
    var var_3 = select(vec2<i32>(_wgslsmith_sub_i32(~var_1.b.c.x, -u_input.b.x), -(var_1.a.c.x & 19799i)) | ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 7696i), var_0.a.c.xx)), _wgslsmith_clamp_vec2_i32(-var_1.a.c.xy, u_input.b.ww, var_0.b.c.yx), select(select(vec2<bool>(false, !var_1.b.a.x), var_0.a.b.zw, var_1.b.b.xy), select(var_0.b.a, select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.e.x, 8u)], true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(41387u, 8u)]), vec2<bool>(var_0.a.a.x, false), global0[_wgslsmith_index_u32(var_1.a.e.x, 8u)]), var_0.b.b.x && false), var_1.a.a), var_0.b.a));
    return Struct_3(Struct_1(vec2<bool>(false, !var_1.a.b.x != arg_0.b), vec4<bool>(true, true, true, true), var_0.a.c, u_input.b.wy | var_0.a.c.zz, ~abs(vec2<u32>(var_1.b.e.x, 315u))), true, Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(10856u, 8u)]), !var_1.a.b.x), select(var_0.b.b, vec4<bool>(false, arg_0.a.x > 1u, all(var_0.a.b), var_0.a.a.x), true), vec3<i32>(2147483647i, ~(-16014i), -2147483647i), vec2<i32>(-1i) * -var_1.b.d, ~max(vec2<u32>(var_0.b.e.x, var_1.c.x) | vec2<u32>(u_input.d.x, var_1.a.e.x), reverseBits(vec2<u32>(24530u, 40135u)))), 53731i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 10>();
    let var_0 = vec3<bool>(any(vec4<bool>(max(105169u, u_input.d.x) < ~4294967295u, true, true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, u_input.c.x), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 8u)])), false, all(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(52u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)])), select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(55342u, 8u)], false, global0[_wgslsmith_index_u32(89029u, 8u)]), global0[_wgslsmith_index_u32(0u, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], true, false))));
    global2 = array<Struct_4, 10>();
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    global2 = array<Struct_4, 10>();
    var var_1 = func_4(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(285f, -u_input.b.wzw);
}

