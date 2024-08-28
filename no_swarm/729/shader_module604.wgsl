struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(70870u, 4294967295u), vec2<u32>(44644u, 8754u), vec2<u32>(0u, 52482u), vec2<u32>(0u, 4294967295u), vec2<u32>(44426u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 56800u), vec2<u32>(0u, 8364u), vec2<u32>(27931u, 1u), vec2<u32>(25849u, 4294967295u), vec2<u32>(0u, 53967u), vec2<u32>(1u, 1u), vec2<u32>(0u, 11015u), vec2<u32>(1u, 9451u), vec2<u32>(60749u, 37706u), vec2<u32>(11272u, 4294967295u), vec2<u32>(44441u, 4294967295u), vec2<u32>(3056u, 0u), vec2<u32>(1u, 1u), vec2<u32>(28410u, 4294967295u), vec2<u32>(1u, 49809u), vec2<u32>(4294967295u, 0u), vec2<u32>(36508u, 1u), vec2<u32>(4294967295u, 23537u), vec2<u32>(6709u, 0u), vec2<u32>(46750u, 16215u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1816u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u));

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<u32> {
    global2 = array<vec2<u32>, 32>();
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(949f, 686f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), -1466f));
    global2 = array<vec2<u32>, 32>();
    let var_0 = Struct_1(all(vec4<bool>(true, true, true, true)));
    global1 = Struct_1(true);
    return countOneBits(~vec3<u32>(u_input.b.x, ~abs(u_input.a), u_input.b.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(sign(1348f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 1000f) + _wgslsmith_div_f32(arg_0.x, arg_0.x))), !all(vec4<bool>(!global3.a, global3.a, any(vec2<bool>(global1.a, global3.a)), global1.a)));
    global3 = Struct_1(global3.a);
    let var_1 = Struct_1(false);
    var var_2 = all(var_0.xz);
    var var_3 = arg_0.zzy;
    return _wgslsmith_add_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c, 20309u, u_input.b.x), vec3<u32>(4294967295u, u_input.a, u_input.a)), func_3())), _wgslsmith_div_u32(~u_input.c, (u_input.d ^ 10715u) & 0u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_2.zy;
    var_0 = !arg_2.zx;
    var var_1 = select(arg_1.a, arg_1.a, arg_2.x || true);
    let var_2 = max(_wgslsmith_add_u32(~(~arg_0), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(450f, 292f, -1311f, -1469f))), abs(vec2<i32>(1i, -1i))) >> (~u_input.a % 32u)), (~arg_0 << (countOneBits(arg_0) % 32u)) ^ arg_0);
    global3 = arg_1;
    return Struct_1(global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = firstTrailingBit(func_3().x);
    var var_1 = Struct_2(Struct_1(global3.a), -1574i);
    var var_2 = global2[_wgslsmith_index_u32(var_0, 32u)];
    var_1 = arg_0;
    var var_3 = Struct_2(Struct_1(true), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], var_1.b, -2147483647i)), -vec3<i32>(2147483647i, arg_3.b, -2147483647i))), _wgslsmith_sub_i32(1i, arg_3.b)));
    return Struct_2(func_1(50435u, func_1(1u, func_1(~var_0, Struct_1(true), vec3<bool>(arg_0.a.a, true, false)), select(select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(true, false, global3.a), vec3<bool>(false, true, false)), !vec3<bool>(arg_1.a.a, global1.a, arg_3.a.a), select(var_3.a.a, arg_1.a.a, arg_1.a.a))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_3.a.a, var_1.a.a, var_1.a.a), false), vec3<bool>(var_3.a.a, false, arg_0.a.a), !arg_1.a.a), vec3<bool>(global1.a, arg_0.a.a, true), select(select(vec3<bool>(arg_3.a.a, var_3.a.a, true), vec3<bool>(arg_1.a.a, true, true), global3.a), select(vec3<bool>(global3.a, true, true), vec3<bool>(var_3.a.a, true, false), vec3<bool>(true, true, false)), true))), _wgslsmith_div_i32(~40440i, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-65188i, 1i), vec2<i32>(arg_3.b, global0[_wgslsmith_index_u32(0u, 18u)])))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(round(-878f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)));
    global3 = func_1(~func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 469f, 136f, -697f) * vec4<f32>(516f, 249f, 687f, 878f))), vec2<i32>(-1i) * -vec2<i32>(-1i, -46841i)), Struct_1(!(!global1.a)), select(vec3<bool>(true, global3.a, any(vec2<bool>(arg_0.a.a, global3.a))), select(select(vec3<bool>(true, arg_0.a.a, true), !vec3<bool>(arg_0.a.a, global3.a, global3.a), select(vec3<bool>(arg_0.a.a, true, false), vec3<bool>(arg_0.a.a, global3.a, arg_0.a.a), false)), !select(vec3<bool>(global1.a, arg_0.a.a, true), vec3<bool>(global3.a, true, global3.a), vec3<bool>(global3.a, false, global3.a)), vec3<bool>(!global3.a, !arg_0.a.a, !arg_0.a.a)), true));
    var var_0 = global3.a;
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 49133u, u_input.c, u_input.d), vec4<u32>(55187u, u_input.d, u_input.c, u_input.c)), 0u) | u_input.c, ~1u, firstTrailingBit(_wgslsmith_mod_u32(1u, ~0u))) << (_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.b.x, 0u, u_input.c) | abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), ~abs(vec3<u32>(u_input.d, u_input.a, 11582u))) % vec3<u32>(32u));
    let var_2 = vec4<u32>(36072u, ~48655u, 4294967295u, 27943u);
    return arg_0.a;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = array<i32, 18>();
    var var_0 = max(vec3<i32>(global0[_wgslsmith_index_u32(8673u, 18u)], _wgslsmith_div_i32(~2147483647i, global0[_wgslsmith_index_u32(select(arg_3, 52456u, true), 18u)]), -2147483647i), vec3<i32>(28859i, global0[_wgslsmith_index_u32(u_input.d, 18u)] & countOneBits(global0[_wgslsmith_index_u32(arg_3 << (0u % 32u), 18u)]), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(global0[_wgslsmith_index_u32(35246u, 18u)], 8946i, global0[_wgslsmith_index_u32(arg_0.x, 18u)], 1i)), vec4<i32>(-44561i, ~global0[_wgslsmith_index_u32(1u, 18u)], 1i, global0[_wgslsmith_index_u32(~8611u, 18u)]))));
    var var_1 = select(~vec4<u32>(reverseBits(arg_3) << (arg_3 % 32u), 4294967295u, ~u_input.d & (arg_0.x << (arg_0.x % 32u)), arg_3), abs(vec4<u32>(arg_3, 4294967295u, ~func_3().x, _wgslsmith_mult_u32(arg_0.x, abs(arg_3)))), !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, arg_1.a), vec2<bool>(true, false))), arg_2.a, all(select(vec4<bool>(true, arg_1.a, arg_1.a, arg_2.a), vec4<bool>(false, arg_1.a, global3.a, arg_1.a), global3.a)), true));
    let var_2 = global1.a;
    var var_3 = func_4(Struct_2(Struct_1(any(!vec2<bool>(true, global1.a))), _wgslsmith_clamp_i32(-var_0.x, (-2147483647i & var_0.x) >> (~arg_3 % 32u), var_0.x)), func_4(func_4(Struct_2(arg_1, var_0.x), func_4(Struct_2(arg_1, 23133i), Struct_2(arg_2, var_0.x), vec2<f32>(-1100f, 340f), Struct_2(arg_2, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1677f, 1364f)), Struct_2(func_1(10394u, Struct_1(false), vec3<bool>(global1.a, global3.a, global3.a)), 1i)), Struct_2(Struct_1(true), 1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), -591f), vec2<f32>(-1028f, _wgslsmith_f_op_f32(max(2121f, -839f)))), func_4(func_4(Struct_2(arg_1, -1i), func_4(Struct_2(Struct_1(global1.a), var_0.x), Struct_2(arg_2, -23654i), vec2<f32>(-753f, -748f), Struct_2(arg_2, -48485i)), vec2<f32>(-1000f, 544f), Struct_2(Struct_1(false), 0i)), Struct_2(Struct_1(true), i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1237f, 1000f) - vec2<f32>(1f, 1f)), Struct_2(func_5(Struct_2(Struct_1(false), var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), var_0.yy)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-389f, -827f)))), vec2<f32>(_wgslsmith_div_f32(124f, -204f), 1088f), select(!vec2<bool>(true, arg_1.a), vec2<bool>(false, true), func_5(Struct_2(Struct_1(true), 7320i)).a))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-381f)), _wgslsmith_f_op_f32(2245f * -844f)), 1f))), func_4(func_4(Struct_2(Struct_1(arg_1.a), global0[_wgslsmith_index_u32(arg_0.x, 18u)]), func_4(func_4(Struct_2(arg_1, global0[_wgslsmith_index_u32(23176u, 18u)]), Struct_2(Struct_1(arg_1.a), var_0.x), vec2<f32>(1111f, -621f), Struct_2(arg_1, var_0.x)), Struct_2(arg_1, global0[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-328f, 1000f) - vec2<f32>(-922f, 971f)), Struct_2(Struct_1(arg_2.a), global0[_wgslsmith_index_u32(9771u, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, -446f)), Struct_2(func_5(Struct_2(Struct_1(global3.a), var_0.x)), 28963i)), Struct_2(Struct_1(func_5(Struct_2(arg_2, var_0.x)).a), -(~23702i)), vec2<f32>(-495f, _wgslsmith_f_op_f32(-290f + -1000f)), func_4(Struct_2(arg_1, 2147483647i), Struct_2(arg_2, ~(-1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1198f, -423f)), func_4(func_4(Struct_2(arg_2, -11368i), Struct_2(arg_2, 47775i), vec2<f32>(315f, 1071f), Struct_2(Struct_1(true), global0[_wgslsmith_index_u32(3983u, 18u)])), Struct_2(arg_2, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1386f) - vec2<f32>(-1037f, -676f)), func_4(Struct_2(arg_2, var_0.x), Struct_2(arg_1, global0[_wgslsmith_index_u32(arg_3, 18u)]), vec2<f32>(-434f, 559f), Struct_2(Struct_1(arg_1.a), -2147483647i))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 153f)), _wgslsmith_f_op_f32(f32(-1f) * -591f)))))));
    let var_1 = 2147483647i;
    global3 = func_6(firstLeadingBit(select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 41178u, 38468u, 4294967295u), vec4<u32>(u_input.c, 71804u, u_input.a, 4294967295u), vec4<u32>(u_input.c, u_input.b.x, u_input.a, 0u)), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 7732u)), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 0u), _wgslsmith_mod_u32(4294967295u, u_input.d), firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.c, u_input.a)), !(!global1.a))), func_5(func_4(Struct_2(func_1(40732u, Struct_1(global1.a), vec3<bool>(global3.a, global1.a, global1.a)), global0[_wgslsmith_index_u32(1u, 18u)]), Struct_2(Struct_1(global1.a), -7380i), vec2<f32>(_wgslsmith_div_f32(var_0.x, -650f), _wgslsmith_f_op_f32(1330f - var_0.x)), Struct_2(Struct_1(false), -var_1))), func_4(Struct_2(Struct_1(any(vec2<bool>(false, global1.a))), -var_1), Struct_2(func_1(u_input.c, Struct_1(true), !vec3<bool>(false, global3.a, true)), _wgslsmith_mod_i32(min(19344i, global0[_wgslsmith_index_u32(106563u, 18u)]), _wgslsmith_add_i32(var_1, 2147483647i))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -710f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, var_0.x)))))), Struct_2(func_1(1u, Struct_1(global1.a), !vec3<bool>(global1.a, global3.a, global1.a)), global0[_wgslsmith_index_u32(4294967295u, 18u)] << (~u_input.d % 32u))).a, ~firstTrailingBit(u_input.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(884f - 1000f), _wgslsmith_f_op_f32(select(-774f, var_0.x, global3.a)), _wgslsmith_f_op_f32(623f - -533f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1055f) - vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    let var_3 = Struct_2(func_4(Struct_2(func_4(func_4(Struct_2(Struct_1(global1.a), -5496i), Struct_2(Struct_1(global1.a), global0[_wgslsmith_index_u32(1u, 18u)]), vec2<f32>(var_0.x, -1000f), Struct_2(Struct_1(global1.a), global0[_wgslsmith_index_u32(22765u, 18u)])), func_4(Struct_2(Struct_1(false), 20712i), Struct_2(Struct_1(true), var_1), var_2.zz, Struct_2(Struct_1(false), global0[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1248f, 1192f)), Struct_2(Struct_1(global1.a), 2147483647i)).a, ~(-27667i)), Struct_2(Struct_1(false & global1.a), var_1), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), 458f), Struct_2(Struct_1(all(vec2<bool>(true, true))), ~var_1)).a, _wgslsmith_dot_vec3_i32(vec3<i32>(14169i, -1i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], var_1, var_1) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, 2147483647i, 10743i), vec3<i32>(var_1, -25427i, 1i))) ^ ~(abs(var_1) ^ _wgslsmith_sub_i32(0i, var_1)));
    let var_4 = var_2;
    var var_5 = ~vec3<i32>(9016i, 58088i, i32(-1i) * -reverseBits(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~func_3().x), ~(-select(var_5.zx, var_5.xx, func_1(u_input.c, var_3.a, vec3<bool>(true, global3.a, global1.a)).a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.x, -642f, var_4.x, -1067f), vec4<f32>(var_4.x, 644f, 106f, var_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, 1000f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1665f, var_4.x, var_4.x, -1301f))))))), ~abs(firstTrailingBit(~vec4<i32>(21378i, 1i, 0i, var_5.x))));
}

