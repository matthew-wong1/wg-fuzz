struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_5;

var<private> global2: array<f32, 22>;

var<private> global3: array<bool, 6>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec2<u32> {
    let var_0 = firstTrailingBit(max(abs(countOneBits(abs(vec3<u32>(u_input.a, arg_1, u_input.a)))), ~(vec3<u32>(62851u, 27580u, 1u) << (vec3<u32>(arg_1, 37971u, u_input.a) % vec3<u32>(32u)))));
    var var_1 = 0u;
    global0 = Struct_3(global0.c.c, arg_2, global0.c, global0.d);
    let var_2 = global0.a;
    let var_3 = Struct_4(vec4<bool>(var_2.c.x, var_2.e, select(_wgslsmith_mult_i32(arg_0.b, 2147483647i) <= arg_0.a, var_2.c.x, true), arg_0.d.x), vec2<f32>(1663f, global2[_wgslsmith_index_u32(~arg_1, 22u)]), ~(~_wgslsmith_mod_u32(~44595u, max(u_input.a, var_0.x))));
    return max(var_0.zx, var_0.xz);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>) -> bool {
    global2 = array<f32, 22>();
    let var_0 = -2507f;
    let var_1 = ~_wgslsmith_add_vec4_u32(~abs(min(vec4<u32>(arg_1.x, 1u, 4294967295u, u_input.a), vec4<u32>(1u, 74934u, 0u, 1u))), abs(~vec4<u32>(64361u, 4294967295u, 4294967295u, u_input.a)));
    global3 = array<bool, 6>();
    var var_2 = reverseBits(func_3(global0.a, ~(~(var_1.x ^ 60425u)), 297f));
    return !any(global0.d.a.c);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_5(func_4(Struct_5(global0.d.d, -(~global1.b), -global1.c), _wgslsmith_clamp_vec2_u32(func_3(Struct_1(global0.d.a.b, -1i, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 6u)], false), global0.c.a.d, global3[_wgslsmith_index_u32(28133u, 6u)]), u_input.a, _wgslsmith_f_op_f32(trunc(-148f))), min(vec2<u32>(13495u, 26236u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 38110u), vec2<u32>(1u, 31971u))), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(18856u, u_input.a)))), ~(~vec4<i32>(1i, global1.b.x, global1.b.x | -1i, i32(-1i) * -2147483647i)), vec3<i32>(-17835i, 0i, _wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(-33640i), countOneBits(25i)), global1.c.x)));
    var_0 = Struct_5(global0.d.d || global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 5497u, 0u, u_input.a), min(vec4<u32>(u_input.a, 1u, u_input.a, 34593u), vec4<u32>(1u, u_input.a, 4294967295u, u_input.a))) & _wgslsmith_clamp_u32(~u_input.a, u_input.a, u_input.a), 6u)], _wgslsmith_add_vec4_i32(select(global1.b & global1.b, _wgslsmith_clamp_vec4_i32(var_0.b, global1.b, global1.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<bool>(global0.a.b < global0.d.a.a, all(vec4<bool>(global0.c.d, true, true, var_0.a)), -262f <= global0.c.b, !var_0.a)), global1.b), vec3<i32>(-(i32(-1i) * -var_0.b.x), _wgslsmith_div_i32(global1.c.x, -1i) & abs(var_0.b.x), var_0.c.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(min(global0.d.b, _wgslsmith_div_f32(arg_0, -514f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a) | abs(vec2<u32>(u_input.a, u_input.a))), 22u)], 473f)), 1115f);
    let var_2 = _wgslsmith_f_op_f32(545f + var_1.x);
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(27272i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, global1.c.x), var_0.b.x & -12871i)), var_0.c.x, var_0.c.x ^ _wgslsmith_dot_vec4_i32(firstLeadingBit(var_0.b), vec4<i32>(global1.c.x, global0.d.c.a, 2147483647i, global0.d.c.a)), i32(-1i) * -global0.d.c.a), global1.b);
    return true;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global2 = array<f32, 22>();
    let var_0 = Struct_3(Struct_1(1i, ~_wgslsmith_div_i32(43233i, _wgslsmith_div_i32(-51513i, global1.c.x)), vec2<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 37505u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 6163u, 17347u, 4022u)), 6u)]), arg_1.a.d, false), global0.b, global0.d, Struct_2(Struct_1(select(29757i, arg_1.d.a.a << (2629u % 32u), true), abs(global1.b.x), arg_1.a.c, !global0.d.a.d, global3[_wgslsmith_index_u32(u_input.a, 6u)]), -2046f, Struct_1(~select(global0.d.c.a, 14252i, global1.a), -29691i, select(arg_1.c.a.c, select(vec2<bool>(global0.a.c.x, arg_1.d.a.e), vec2<bool>(true, global1.a), arg_1.a.c), true), select(arg_1.d.a.d, !vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(1u, 6u)]), global0.a.c.x | global0.c.d), func_2(-210f) && !global1.a), true && !(u_input.a == u_input.a)));
    var var_1 = firstTrailingBit(~max(_wgslsmith_mod_vec3_u32(~vec3<u32>(14537u, u_input.a, 46398u), ~vec3<u32>(15008u, 54757u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, 1u), ~vec3<u32>(u_input.a, 31904u, 4294967295u), vec3<u32>(u_input.a, 38230u, u_input.a))));
    global0 = Struct_3(Struct_1(~(~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global1.b, vec4<i32>(global1.b.x, var_0.d.a.a, -2147483647i, 21427i)) & reverseBits(vec4<i32>(24314i, 2147483647i, var_0.d.a.a, 2147483647i)), -(~global1.b)), !select(select(vec2<bool>(arg_1.a.c.x, true), vec2<bool>(false, global0.d.d), vec2<bool>(true, true)), select(global0.a.d.xz, global0.d.c.d.zz, global0.d.a.c.x), any(vec2<bool>(arg_1.a.d.x, global3[_wgslsmith_index_u32(var_1.x, 6u)]))), !(!(!arg_1.a.d)), any(var_0.c.c.d.xyy)), 156f, arg_1.d, Struct_2(Struct_1(-(~(-5331i)), _wgslsmith_sub_i32(-20370i, arg_1.d.a.a), !arg_1.c.c.d.yw, select(var_0.a.d, vec4<bool>(arg_1.c.c.e, false, global1.a, global1.a), !vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 6u)], global1.a, true)), !any(vec2<bool>(global0.c.d, global0.a.d.x))), 1139f, var_0.d.a, !global1.a));
    var var_2 = all(select(vec4<bool>(select(!var_0.a.c.x, false, true), true, any(select(arg_1.c.a.d.xwz, arg_1.d.c.d.wzz, var_0.c.d)), !any(vec3<bool>(false, arg_1.c.c.e, global1.a))), !(!arg_1.d.a.d), select(select(arg_1.a.d, !var_0.c.c.d, select(var_0.a.d, vec4<bool>(global1.a, global1.a, true, true), true)), vec4<bool>(false, func_4(Struct_5(true, global1.b, global1.c), vec2<u32>(0u, 11960u)), any(vec2<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 6u)])), true), true)));
    return global0.d.a;
}

fn func_1(arg_0: u32) -> u32 {
    global1 = Struct_5(global1.a, ~global1.b, vec3<i32>(_wgslsmith_clamp_i32(-abs(global0.d.c.b), -39325i ^ global1.c.x, global1.c.x), _wgslsmith_dot_vec3_i32(abs(global1.c), -global1.c) << (firstTrailingBit(1u) % 32u), -30406i));
    var var_0 = func_5(global2[_wgslsmith_index_u32(arg_0, 22u)], Struct_3(Struct_1(global1.b.x, global0.c.c.b, !(!vec2<bool>(true, global3[_wgslsmith_index_u32(37970u, 6u)])), global0.c.a.d, func_2(-1917f)), 730f, global0.c, Struct_2(global0.a, 1000f, Struct_1(select(-1i, global1.b.x, true), -1686i, select(vec2<bool>(global1.a, true), global0.c.c.c, false), select(vec4<bool>(true, false, global1.a, true), global0.c.a.d, global0.a.d), global0.c.a.d.x), select(all(global0.c.a.d), global0.c.a.c.x && global3[_wgslsmith_index_u32(arg_0, 6u)], global0.a.d.x))));
    let var_1 = Struct_3(Struct_1(var_0.b, 40699i, func_5(_wgslsmith_div_f32(1422f, global2[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_3(global0.c.c, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 22u)]), Struct_2(Struct_1(global0.d.a.a, -1i, vec2<bool>(global1.a, true), var_0.d, true), global2[_wgslsmith_index_u32(0u, 22u)], Struct_1(var_0.a, global0.c.c.a, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 6u)], global1.a), vec4<bool>(true, global1.a, var_0.c.x, false), false), global0.a.e), Struct_2(global0.d.c, 475f, Struct_1(global0.c.a.b, var_0.b, global0.d.a.c, global0.a.d, false), false))).c, global0.c.c.d, select(true && global3[_wgslsmith_index_u32(u_input.a, 6u)], !global3[_wgslsmith_index_u32(u_input.a, 6u)], func_5(global0.c.b, Struct_3(Struct_1(-2147483647i, global1.c.x, var_0.c, global0.a.d, var_0.d.x), -1267f, global0.d, Struct_2(global0.d.c, global2[_wgslsmith_index_u32(55564u, 22u)], Struct_1(var_0.a, var_0.a, vec2<bool>(true, true), vec4<bool>(global1.a, false, var_0.d.x, global1.a), true), global3[_wgslsmith_index_u32(60870u, 6u)]))).c.x) == !(-4081i >= var_0.b)), _wgslsmith_div_f32(-363f, _wgslsmith_div_f32(global0.b, 668f)), global0.d, Struct_2(Struct_1(2147483647i, ~(-var_0.a), func_5(global0.c.b, Struct_3(Struct_1(-2147483647i, -12673i, vec2<bool>(true, false), global0.a.d, false), global2[_wgslsmith_index_u32(u_input.a, 22u)], Struct_2(Struct_1(-46456i, global1.b.x, global0.c.a.d.yx, var_0.d, global3[_wgslsmith_index_u32(u_input.a, 6u)]), 750f, global0.a, global0.d.c.c.x), Struct_2(Struct_1(-23593i, 6548i, var_0.c, vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 6u)], false, true, true), false), -211f, global0.a, global3[_wgslsmith_index_u32(0u, 6u)]))).d.zy, func_5(_wgslsmith_f_op_f32(select(1456f, global0.b, global1.a)), Struct_3(global0.c.a, 1053f, global0.c, global0.c)).d, global0.d.c.c.x), global0.d.b, func_5(_wgslsmith_f_op_f32(810f + global0.b), Struct_3(global0.d.c, global2[_wgslsmith_index_u32(reverseBits(12176u), 22u)], global0.d, Struct_2(Struct_1(-2147483647i, global0.c.c.a, global0.d.a.c, global0.a.d, global1.a), -1011f, Struct_1(var_0.b, 25510i, var_0.c, vec4<bool>(global1.a, true, true, true), true), global1.a))), 1714f <= _wgslsmith_f_op_f32(max(global0.d.b, -726f))));
    global2 = array<f32, 22>();
    let var_2 = var_1;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~4294967295u, ~(~1u), ~func_1(u_input.a ^ ~18332u));
    let var_1 = global0.d;
    var var_2 = Struct_3(Struct_1(i32(-1i) * -1i, ~_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b, global0.c.a.a), vec2<i32>(global0.a.a, 0i)), -global1.c.x), vec2<bool>(!any(var_1.a.c), !all(vec4<bool>(true, global0.d.a.c.x, var_1.a.d.x, global1.a))), !select(!var_1.c.d, select(global0.c.c.d, vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.a, 6u)]), true), global2[_wgslsmith_index_u32(u_input.a, 22u)] > var_1.b), false), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 22u)])), global0.d, Struct_2(Struct_1(~(~(-2147483647i)), -1i, !vec2<bool>(global3[_wgslsmith_index_u32(44835u, 6u)], global1.a), !vec4<bool>(false, var_1.d, true, global1.a), select(var_1.d, true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * var_1.b))), Struct_1(select(_wgslsmith_add_i32(global1.c.x, -17881i), var_1.c.b, var_1.a.d.x), max(_wgslsmith_clamp_i32(-8169i, 0i, 9176i), min(global1.c.x, global1.c.x)), global0.a.d.xx, !var_1.a.d, false), false));
    let var_3 = select(func_5(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), Struct_3(global0.d.c, -1000f, Struct_2(global0.c.a, 1321f, global0.a, false), global0.c)).d, func_5(684f, Struct_3(var_1.c, global0.c.b, Struct_2(Struct_1(78771i, var_2.d.c.a, vec2<bool>(var_1.a.e, false), var_2.d.a.d, global1.a), _wgslsmith_div_f32(global0.c.b, global0.d.b), func_5(global0.b, Struct_3(global0.c.a, -1118f, Struct_2(global0.c.a, -491f, Struct_1(var_1.c.b, var_2.c.c.b, global0.c.c.c, vec4<bool>(false, true, global0.d.d, false), global1.a), global1.a), global0.d)), var_1.c.e), var_2.c)).d, !(!(_wgslsmith_add_i32(-1i, var_2.d.a.a) == firstTrailingBit(global1.c.x))));
    var var_4 = vec2<bool>(any(!select(select(vec4<bool>(true, var_3.x, global1.a, false), vec4<bool>(var_3.x, global1.a, var_1.a.c.x, var_2.c.c.c.x), vec4<bool>(false, false, var_1.a.e, true)), var_2.a.d, select(global0.a.d, vec4<bool>(true, var_2.d.c.c.x, false, var_3.x), var_2.d.d))), true);
    var var_5 = global1.c;
    var_5 = -(~(global1.c >> (~_wgslsmith_div_vec3_u32(vec3<u32>(135572u, 1u, 27458u), vec3<u32>(33700u, 4294967295u, 1u)) % vec3<u32>(32u))));
    var var_6 = true;
    var var_7 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_vec3_u32(vec3<u32>(54357u, var_0.x, 33442u), vec3<u32>(u_input.a, var_0.x, 67974u)) & max(vec3<u32>(u_input.a, 0u, var_0.x), vec3<u32>(var_0.x, var_0.x, 37272u))) ^ select(~vec3<u32>(13756u, u_input.a, var_0.x), vec3<u32>(max(62269u, 10454u), ~u_input.a, 40136u), true & all(vec2<bool>(var_1.a.e, true))));
}

