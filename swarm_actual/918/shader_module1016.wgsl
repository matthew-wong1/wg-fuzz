struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<i32, 5>;

var<private> global1: Struct_5 = Struct_5(Struct_1(-11055i, true, true), Struct_4(vec3<u32>(0u, 4294967295u, 5934u)), Struct_3(vec2<u32>(46975u, 50710u), vec4<f32>(1009f, 2419f, 380f, -455f)), vec3<i32>(2147483647i, i32(-2147483648), 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> bool {
    var var_0 = Struct_2(Struct_1(-6141i, _wgslsmith_div_i32(~20030i, abs(15708i)) >= global1.d.x, global1.a.c), 37841u, global1.a, Struct_1(-2147483647i, global1.a.b || all(!vec3<bool>(global1.a.b, false, false)), any(!vec3<bool>(true, false, global1.a.b)) & any(select(vec2<bool>(global1.a.b, false), vec2<bool>(false, false), global1.a.c))), vec3<u32>(~global1.b.a.x, (abs(88843u) & global1.b.a.x) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.b.a.xz, vec2<u32>(arg_0, 23978u)), arg_1.a) % 32u), 1u));
    var_0 = Struct_2(var_0.a, _wgslsmith_sub_u32(1u, firstLeadingBit(var_0.e.x)), Struct_1(33592i, !all(!vec2<bool>(true, var_0.d.c)), _wgslsmith_mod_i32(global1.d.x, arg_3) > arg_3), var_0.a, vec3<u32>(global1.b.a.x, ~45830u, _wgslsmith_div_u32(65721u, arg_1.a.x)));
    var var_1 = ~var_0.d.a;
    global0 = array<i32, 5>();
    var var_2 = false || !all(!vec3<bool>(false, global1.a.b, false));
    return true;
}

fn func_2() -> Struct_5 {
    let var_0 = global1.c;
    let var_1 = ~global1.d;
    global1 = Struct_5(Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 5u)], func_3(_wgslsmith_mult_u32(u_input.a & 63772u, ~1u), Struct_3(global1.c.a, _wgslsmith_f_op_vec4_f32(global1.c.b - vec4<f32>(1396f, 1261f, var_0.b.x, 696f))), global1.b, -_wgslsmith_dot_vec3_i32(global1.d, global1.d)), global1.a.a > 17256i), global1.b, global1.c, var_1 >> (~(~vec3<u32>(u_input.a, 0u, 1u) & vec3<u32>(u_input.a, 11986u, 13705u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_vec2_u32(select(vec2<u32>(1u, u_input.a), vec2<u32>(var_0.a.x, ~global1.c.a.x), all(select(vec2<bool>(global1.a.c, true), vec2<bool>(global1.a.c, false), global1.a.c))), vec2<u32>(~4294967295u << (~u_input.a % 32u), global1.c.a.x)) & var_0.a;
    var_2 = global1.c.a;
    return Struct_5(global1.a, global1.b, global1.c, vec3<i32>(-40711i, 9332i, firstTrailingBit(firstLeadingBit(global1.a.a))));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    global1 = func_2();
    global1 = Struct_5(global1.a, Struct_4(~(vec3<u32>(0u, 11666u, arg_0.a.x) & ~vec3<u32>(20910u, 46699u, 29760u))), global1.c, arg_2.yww);
    global0 = array<i32, 5>();
    return Struct_2(global1.a, _wgslsmith_div_u32(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 64143u, 47085u), vec3<u32>(u_input.a, 0u, u_input.a))), 98365u), Struct_1(1i, global1.a.c, all(!(!vec2<bool>(global1.a.c, false)))), func_2().a, vec3<u32>(108323u | ~_wgslsmith_add_u32(u_input.a, u_input.a), (_wgslsmith_clamp_u32(56137u, arg_0.a.x, global1.c.a.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.a.x, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) << (countOneBits(arg_0.a.x) % 32u), _wgslsmith_add_u32(~arg_0.a.x, 49550u)));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1037u, 30694u, global1.c.a.x, 0u), firstLeadingBit(vec4<u32>(global1.c.a.x, u_input.a, global1.b.a.x, arg_2.b)))) >> (global1.c.a.x % 32u);
    var var_1 = !arg_2.c.b;
    var var_2 = _wgslsmith_f_op_f32(-global1.c.b.x);
    let var_3 = func_2().c;
    return Struct_5(global1.a, global1.b, Struct_3(func_2().b.a.yz, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.b.x, global1.c.b.x, var_3.b.x, var_3.b.x))))))), countOneBits(vec3<i32>(global1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_3.a.x, 5u)], global1.a.a, arg_2.a.a, global1.d.x), ~vec4<i32>(1910i, arg_0, 10956i, arg_1.x)), firstLeadingBit(reverseBits(global1.d.x)))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    global0 = array<i32, 5>();
    var var_0 = true;
    global0 = array<i32, 5>();
    var_0 = false;
    var var_1 = func_1(global1.b, max(func_2().d.x, arg_0.a.a ^ global1.d.x), ~vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(u_input.a, global1.b.a.x), 60894u), 5u)], 38141i, _wgslsmith_add_i32(-1i, -1i) | select(global0[_wgslsmith_index_u32(1u, 5u)], arg_0.d.x, arg_0.a.c), -(~1i)));
    return Struct_1(1i | arg_0.d.x, arg_0.a.b, global1.a.b);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = countOneBits(-min(-31578i, -2147483647i));
    global0 = array<i32, 5>();
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global1.a.c, Struct_2(global1.a, 4294967295u, global1.a, func_5(func_4(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global1.c.a.x, 5u)], global0[_wgslsmith_index_u32(11224u, 5u)]), global1.d, func_1(Struct_4(global1.b.a), global0[_wgslsmith_index_u32(global1.b.a.x, 5u)], vec4<i32>(global1.a.a, global1.d.x, global1.d.x, global1.a.a))), Struct_4(vec3<u32>(global1.c.a.x, u_input.a, 4811u)), -529f), vec3<u32>((4294967295u | global1.c.a.x) >> (abs(3084u) % 32u), 4294967295u, global1.c.a.x)), select(vec4<i32>(-1371i, global1.a.a, 1i, min(-global0[_wgslsmith_index_u32(81595u, 5u)], _wgslsmith_clamp_i32(-1i, 31948i, global0[_wgslsmith_index_u32(global1.b.a.x, 5u)]))), -(max(vec4<i32>(global1.a.a, global1.a.a, -40912i, global1.d.x), vec4<i32>(global0[_wgslsmith_index_u32(0u, 5u)], 0i, -16857i, -53774i)) ^ abs(vec4<i32>(global1.a.a, global0[_wgslsmith_index_u32(4294967295u, 5u)], 22363i, 1i))), _wgslsmith_sub_u32(4294967295u, func_4(2868i, vec3<i32>(1i, global1.a.a, -19259i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], global1.a.b, true), global1.b.a.x, Struct_1(8778i, global1.a.b, global1.a.b), global1.a, global1.b.a)).c.a.x) < 0u), !any(!vec4<bool>(true, global1.a.b, false, global1.a.b)));
    global1 = Struct_5(func_5(func_2(), Struct_4(_wgslsmith_sub_vec3_u32(select(global1.b.a, global1.b.a, true), vec3<u32>(u_input.a, 14439u, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -196f)), func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~global1.d.xy, func_2().d.xz), vec2<i32>(45354i, -38400i << (global1.b.a.x % 32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-8051i, global1.a.a, 48453i), global1.d), vec3<i32>(global1.a.a, firstTrailingBit(global1.a.a), global0[_wgslsmith_index_u32(countOneBits(global1.b.a.x), 5u)])), Struct_2(global1.a, global1.c.a.x, Struct_1(global1.d.x, !global1.a.b, false & global1.a.b), Struct_1(global0[_wgslsmith_index_u32(var_0.a.x, 5u)], global1.a.c || true, true), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(33326u, u_input.a, global1.b.a.x), vec3<u32>(1u, var_0.a.x, 0u), vec3<u32>(0u, 141703u, global1.b.a.x)), _wgslsmith_mult_vec3_u32(global1.b.a, vec3<u32>(var_0.a.x, 102605u, 0u))))).b, Struct_3(firstTrailingBit(~_wgslsmith_add_vec2_u32(global1.b.a.xz, global1.c.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-987f, 728f, global1.c.b.x, global1.c.b.x))) * vec4<f32>(global1.c.b.x, 1161f, global1.c.b.x, global1.c.b.x)), global1.c.b)), vec3<i32>(-2147483647i, ~2147483647i, func_4(global0[_wgslsmith_index_u32(~0u, 5u)], vec3<i32>(-2147483647i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 5u)], 10486i), select(-2147483647i, global0[_wgslsmith_index_u32(46643u, 5u)], false)), Struct_2(global1.a, select(7611u, var_0.a.x, global1.a.b), Struct_1(34669i, global1.a.c, true), global1.a, firstTrailingBit(vec3<u32>(4294967295u, 0u, 0u)))).d.x));
    var var_1 = 1u;
    let var_2 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(global1.b.a.zz, global1.c.a), _wgslsmith_dot_vec2_u32(var_0.a.zz, vec2<u32>(var_0.a.x, 1u)), func_4(-(~_wgslsmith_sub_i32(global1.a.a, -32416i)), vec3<i32>(global0[_wgslsmith_index_u32(~(~1u), 5u)], -global1.d.x, -global0[_wgslsmith_index_u32(var_0.a.x, 5u)] ^ global1.d.x), func_1(func_6(all(vec4<bool>(global1.a.b, false, global1.a.c, false)), func_1(Struct_4(global1.b.a), 1i, vec4<i32>(-7493i, global1.d.x, global1.d.x, global0[_wgslsmith_index_u32(global1.b.a.x, 5u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(-16767i, global1.a.a, 2147483647i, global1.d.x), vec4<i32>(-2147483647i, global1.d.x, 1i, 37521i)), true), reverseBits(2147483647i), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(52884i, global1.a.a, -1i, -25147i), vec4<i32>(-28923i, global1.a.a, 1i, -1i), vec4<bool>(global1.a.b, global1.a.b, global1.a.c, true)), vec4<i32>(27409i, -1i, global0[_wgslsmith_index_u32(4294967295u, 5u)], 2147483647i), ~vec4<i32>(-4119i, global1.a.a, -9593i, 1i)))).b.a.x);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x)))))));
    let var_4 = func_1(func_4(~global0[_wgslsmith_index_u32(~1u, 5u)], firstLeadingBit(~global1.d >> ((global1.b.a | global1.b.a) % vec3<u32>(32u))), Struct_2(func_1(global1.b, -global1.d.x, vec4<i32>(global1.d.x, -7442i, -2147483647i, global0[_wgslsmith_index_u32(var_2.x, 5u)])).a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u) ^ vec3<u32>(var_2.x, 4294967295u, var_2.x), var_0.a), func_5(func_4(global0[_wgslsmith_index_u32(22354u, 5u)], global1.d, Struct_2(global1.a, 8025u, global1.a, global1.a, var_0.a)), func_2().b, _wgslsmith_f_op_f32(select(-171f, global1.c.b.x, global1.a.c))), Struct_1(global0[_wgslsmith_index_u32(select(var_2.x, 34843u, true), 5u)], !global1.a.b, true), var_2.zyy)).b, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 2147483647i), min(reverseBits(-vec4<i32>(1i, -2147483647i, global0[_wgslsmith_index_u32(global1.b.a.x, 5u)], 1i)), firstTrailingBit(vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 5u)], -9744i, global1.a.a))) ^ _wgslsmith_add_vec4_i32(~(~vec4<i32>(global0[_wgslsmith_index_u32(85364u, 5u)], global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(var_0.a.x, 5u)], global1.a.a)), ~(vec4<i32>(-18340i, global0[_wgslsmith_index_u32(21207u, 5u)], global1.a.a, global1.d.x) >> (var_2 % vec4<u32>(32u)))));
    let var_5 = 1413f;
    global1 = Struct_5(func_1(Struct_4(global1.b.a), func_2().d.x, vec4<i32>(47304i, -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_0.a.x, 5u)], global1.d.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c.a, 0i, -22982i, -34840i), vec4<i32>(35640i, 1i, 47767i, -28907i)), countOneBits(19016i)), -29045i)).d, var_0, func_4(1i, ~firstTrailingBit(vec3<i32>(-28038i, var_4.d.a, -2147483647i)), var_4).c, global1.d);
    let var_6 = global1.a.c | true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~select(vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 5u)], 0i, global1.d.x, -1i), vec4<i32>(-1i, var_4.d.a, 2147483647i, -2147483647i) ^ vec4<i32>(global0[_wgslsmith_index_u32(4833u, 5u)], -2147483647i, 52112i, global0[_wgslsmith_index_u32(var_4.e.x, 5u)]), true)));
}

