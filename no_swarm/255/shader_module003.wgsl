struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-751f, -1112f, 1781f, 995f, 2084f, 1579f, 330f, 1878f, 1091f, -1141f, -582f, -930f, 1000f, -1416f, -1296f, -436f, -1000f, -1047f, -606f, -417f, 1635f, 925f);

var<private> global1: Struct_3 = Struct_3(true, Struct_2(false), -933f, 19107u, false);

var<private> global2: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(4294967295u, 8194u, 24781u), vec3<u32>(51098u, 4294967295u, 12892u), vec3<u32>(7025u, 19102u, 33627u), vec3<u32>(4294967295u, 1u, 86332u), vec3<u32>(1u, 4294967295u, 10159u), vec3<u32>(4294967295u, 83814u, 1u), vec3<u32>(50044u, 41854u, 31832u), vec3<u32>(4294967295u, 27886u, 4294967295u), vec3<u32>(1u, 4294967295u, 14352u), vec3<u32>(35733u, 92060u, 14172u), vec3<u32>(4294967295u, 17978u, 2885u), vec3<u32>(4294967295u, 0u, 7173u), vec3<u32>(0u, 0u, 1u), vec3<u32>(56746u, 66558u, 1u), vec3<u32>(44997u, 39483u, 0u), vec3<u32>(55491u, 1u, 4294967295u), vec3<u32>(0u, 43188u, 1u), vec3<u32>(6965u, 5280u, 0u), vec3<u32>(1u, 4294967295u, 49301u), vec3<u32>(1u, 1u, 104428u), vec3<u32>(12539u, 4294967295u, 72220u), vec3<u32>(4294967295u, 0u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(71122u, 22u)], _wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(8334u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), 26969u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-598f, global1.c, global0[_wgslsmith_index_u32(3351u, 22u)], 664f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c, -451f, global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(50518u, 22u)])))))))), Struct_1(_wgslsmith_sub_u32(global1.d, _wgslsmith_add_u32(countOneBits(global1.d), 41094u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 22u)], -1461f, -395f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.c, -567f, 986f))))))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(firstLeadingBit(1i), reverseBits(-21757i >> (var_0.b.x % 32u)))), 2147483647i, ~u_input.a.x, 2147483647i);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(global2[_wgslsmith_index_u32(reverseBits(~(u_input.e ^ 64167u)), 22u)]), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.x, -1527f, -1241f, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(var_0.d, var_0.d))))))), var_0.e);
    var var_3 = var_0.d;
    var var_4 = select(abs(u_input.c.x), _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(-vec2<i32>(13400i, u_input.a.x), var_1.zx), u_input.a.yz), false);
    return _wgslsmith_f_op_vec2_f32(trunc(var_2.e.b.zx));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3((_wgslsmith_mult_u32(~u_input.e, _wgslsmith_mod_u32(u_input.b, 1u)) <= ~(~global1.d)) & global1.b.a, Struct_2(false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c - 307f))), ~global1.d, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_2 = Struct_3(global1.e, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(112f, global1.c)) - _wgslsmith_f_op_f32(f32(-1f) * -999f)) + var_0.c), u_input.b, select(true & (~var_0.d > ~var_0.d), var_0.a, true));
    let var_3 = -vec2<i32>(~abs(u_input.c.x) ^ u_input.a.x, u_input.a.x);
    let var_4 = Struct_1(_wgslsmith_add_u32(~(~select(16488u, 1u, true)), var_0.d), vec3<f32>(global1.c, _wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(ceil(594f)))))), _wgslsmith_f_op_f32(-var_1.x)));
    return Struct_1(_wgslsmith_sub_u32(abs(max(74329u, global1.d)), reverseBits(18491u)) ^ ~u_input.e, vec3<f32>(var_1.x, 194f, var_0.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(select(arg_3.a, 385f, global1.a == !(!global1.a))));
    let var_1 = global1.b;
    global1 = Struct_3(any(select(select(vec2<bool>(true, true), !vec2<bool>(true, global1.b.a), global1.b.a), vec2<bool>(true, true), false)), global1.b, func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(246f, arg_3.a, var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1459f)) + arg_3.d.x))).b.x, u_input.d, all(!(!select(vec3<bool>(global1.e, true, global1.b.a), vec3<bool>(global1.e, var_1.a, var_1.a), var_1.a))));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, select(0i & -u_input.a.x, _wgslsmith_sub_i32(~(-2147483647i), i32(-1i) * -13743i), false), min(42484i, u_input.c.x), u_input.a.x), vec4<i32>(-66049i, u_input.a.x, -764i, _wgslsmith_add_i32(-46478i, select(-1i, u_input.c.x, var_1.a) >> (max(global1.d, 0u) % 32u))));
    global0 = array<f32, 22>();
    return select(vec2<bool>(all(!vec3<bool>(global1.b.a, false, global1.a)), false), vec2<bool>(var_1.a | any(!vec3<bool>(true, var_1.a, true)), select(global1.b.a, var_1.a, true) && all(select(vec2<bool>(global1.e, var_1.a), vec2<bool>(true, var_1.a), vec2<bool>(true, false)))), global1.a);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global1 = Struct_3(max(~u_input.d, 4294967295u) == 1u, global1.b, global1.c, countOneBits(17386u), true);
    let var_0 = Struct_3(any(vec3<bool>(!arg_1.a || (u_input.d <= 0u), !arg_2, global1.a)), Struct_2(arg_1.a & (arg_1.a | (u_input.a.x <= 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(261f - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(26628u, 22u)], vec3<u32>(0u, 1u, global1.d)), 22u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(58578u, 22u)], _wgslsmith_f_op_f32(floor(-1446f)))))), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(66038u | u_input.b, ~u_input.b), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, u_input.e, 1u)), vec3<u32>(30293u, u_input.d, global1.d)) >> (1u % 32u), 4102u), global1.b.a);
    let var_1 = arg_1;
    var var_2 = 41583i;
    var var_3 = all(!vec2<bool>(arg_2, arg_1.a));
    return Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(firstTrailingBit(global1.d), 1u), global1.d, ~global1.d & ~37724u), 22u)], global2[_wgslsmith_index_u32((select(_wgslsmith_mult_u32(u_input.d, 35186u), ~1u, any(vec2<bool>(global1.b.a, true))) >> (reverseBits(42147u) % 32u)) ^ 4294967295u, 22u)], firstTrailingBit(u_input.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(var_0.c - 669f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(618f + var_0.c)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d, 22u)]), global0[_wgslsmith_index_u32(65049u, 22u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-702f, global0[_wgslsmith_index_u32(var_0.d, 22u)], var_0.c, global0[_wgslsmith_index_u32(u_input.d, 22u)])))))), !vec4<bool>(any(vec4<bool>(arg_2, arg_2, var_0.a, arg_0)), true, func_4(Struct_1(global1.d, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 839f, -272f)), vec4<f32>(-582f, -1263f, -3112f, global0[_wgslsmith_index_u32(u_input.e, 22u)]), global2[_wgslsmith_index_u32(var_0.d, 22u)], Struct_4(-600f, vec3<u32>(global1.d, 48123u, 49752u), var_0.d, vec4<f32>(global0[_wgslsmith_index_u32(var_0.d, 22u)], 643f, -437f, global0[_wgslsmith_index_u32(var_0.d, 22u)]), Struct_1(u_input.b, vec3<f32>(global1.c, 133f, 595f)))).x, true))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 22u)], 2236f) + vec2<f32>(var_0.c, global0[_wgslsmith_index_u32(101501u, 22u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, global0[_wgslsmith_index_u32(1u, 22u)]) + vec2<f32>(2063f, global1.c)), var_0.b.a)) * vec2<f32>(var_0.c, func_2(vec2<f32>(-1565f, 1372f)).b.x))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    global0 = array<f32, 22>();
    global2 = array<vec3<u32>, 22>();
    var var_0 = Struct_1(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f * -149f))), arg_1, -417f));
    let var_1 = func_5(any(func_4(func_2(_wgslsmith_f_op_vec2_f32(var_0.b.yx * var_0.b.zy)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(195f, global1.c, global0[_wgslsmith_index_u32(var_0.a, 22u)], 448f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, var_0.b.x, arg_0, global0[_wgslsmith_index_u32(1u, 22u)]))), false)), global2[_wgslsmith_index_u32(u_input.b, 22u)], Struct_4(-470f, global2[_wgslsmith_index_u32(4247u << (arg_2 % 32u), 22u)], arg_2 & 6002u, vec4<f32>(480f, global1.c, 258f, global1.c), func_2(vec2<f32>(var_0.b.x, global1.c))))), Struct_2(any(!vec2<bool>(global1.a, global1.e))), select(all(!vec2<bool>(false, global1.e)), true, select(true, all(vec4<bool>(global1.e, false, true, global1.b.a)) | true, global1.a && false)));
    global2 = array<vec3<u32>, 22>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global1.d, global1.d, global1.d), global2[_wgslsmith_index_u32(func_1(global1.c, _wgslsmith_f_op_f32(-global1.c), ~global1.d, vec4<u32>(1u, u_input.d, global1.d, 4294967295u)), 22u)]) >> (global2[_wgslsmith_index_u32(4294967295u, 22u)] % vec3<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(0u, u_input.b, u_input.d, 35500u)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(global1.d, 4294967295u, global1.d, 0u), vec4<u32>(u_input.b, global1.d, u_input.d, 71046u)), vec4<u32>(global1.d, 4294967295u, 1u, u_input.e) << (vec4<u32>(7417u, u_input.b, global1.d, u_input.e) % vec4<u32>(32u)), vec4<u32>(4294967295u, 829u, 66272u, 80255u) << (vec4<u32>(43493u, u_input.b, 30214u, u_input.b) % vec4<u32>(32u)))), vec4<u32>(96523u, u_input.b, _wgslsmith_clamp_u32(~global1.d, ~global1.d, global1.d), abs(~35841u))), 22u)]);
    global2 = array<vec3<u32>, 22>();
    global1 = Struct_3(true, Struct_2(true), -1000f, var_0.x, select(all(vec4<bool>(false, true, true, false)), false, true) && global1.b.a);
    global1 = Struct_3(true, Struct_2(global1.e && global1.b.a), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-2169f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)] * -1054f)), global0[_wgslsmith_index_u32(var_0.x, 22u)]), -2012f), 15657u, !any(!select(vec4<bool>(true, false, true, global1.e), vec4<bool>(global1.b.a, global1.e, global1.e, global1.b.a), vec4<bool>(true, global1.e, false, true))));
    global1 = Struct_3(any(select(select(vec3<bool>(true, global1.b.a, false), select(vec3<bool>(global1.e, global1.e, false), vec3<bool>(true, false, global1.e), vec3<bool>(global1.a, false, global1.e)), u_input.c.x == -2147483647i), select(!vec3<bool>(global1.a, true, true), vec3<bool>(false, true, global1.e), false), !all(vec2<bool>(false, false)))), Struct_2(true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) + 676f) - -939f), _wgslsmith_f_op_f32(-295f - _wgslsmith_f_op_f32(floor(-1387f)))), ~_wgslsmith_clamp_u32(~1u, 1u, ~global1.d) << (~(~(global1.d & 102821u)) % 32u), _wgslsmith_f_op_f32(max(-626f, _wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(f32(-1f) * -1606f)))) <= _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(-1295f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 22u)]))));
    global1 = Struct_3(~u_input.c.x <= _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.a.x, ~2147483647i)), Struct_2(func_4(Struct_1(_wgslsmith_mult_u32(global1.d, 53110u), vec3<f32>(global0[_wgslsmith_index_u32(global1.d, 22u)], -721f, 1000f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global0[_wgslsmith_index_u32(var_0.x, 22u)], global1.c, 340f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, 558f, global0[_wgslsmith_index_u32(0u, 22u)], global1.c), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 22u)], global1.c, -763f, 660f), true)), global1.e)), vec3<u32>(4294967295u, var_0.x, global1.d) | vec3<u32>(u_input.d, global1.d, u_input.e), func_5(global1.a, Struct_2(true), !global1.a)).x), _wgslsmith_f_op_f32(-func_5(true, Struct_2(all(vec4<bool>(true, true, false, true))), any(!vec4<bool>(true, true, global1.a, global1.a))).e.b.x), _wgslsmith_div_u32(~(~1u), 1u), any(select(func_4(func_5(false, Struct_2(true), true).e, _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 22u)], global1.c, global1.c, -298f), vec4<f32>(1428f, global0[_wgslsmith_index_u32(2984u, 22u)], global1.c, global1.c)), vec3<u32>(4294967295u, 55084u, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, 20424u), Struct_4(global0[_wgslsmith_index_u32(0u, 22u)], vec3<u32>(10396u, global1.d, u_input.d), u_input.e, vec4<f32>(1000f, 337f, global0[_wgslsmith_index_u32(21966u, 22u)], global1.c), Struct_1(global1.d, vec3<f32>(922f, 768f, global0[_wgslsmith_index_u32(global1.d, 22u)])))), vec2<bool>(any(vec3<bool>(true, global1.e, global1.b.a)), false), !(!vec2<bool>(global1.e, global1.b.a)))));
    let var_1 = global1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~select(countOneBits(vec4<u32>(u_input.d, u_input.d, 0u, 0u)), vec4<u32>(global1.d, var_0.x, u_input.b, global1.d), vec4<bool>(global1.e, global1.b.a, true, true))), vec2<u32>(_wgslsmith_mult_u32(global1.d, ~var_0.x), ~(_wgslsmith_div_u32(global1.d, var_0.x) ^ global1.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2170f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 22u)] * global0[_wgslsmith_index_u32(global1.d, 22u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3()).x)), 890f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, global0[_wgslsmith_index_u32(0u, 22u)], -392f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(710f, -1299f, -832f))))))), min(countOneBits(~global2[_wgslsmith_index_u32(27502u, 22u)]), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 17892u, var_0.x), global2[_wgslsmith_index_u32(40209u, 22u)])) ^ global2[_wgslsmith_index_u32(24638u, 22u)], -601f);
}

