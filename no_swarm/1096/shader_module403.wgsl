struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: array<Struct_1, 13>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<f32>(944f, -870f, 1419f)), Struct_2(vec3<f32>(2271f, -2057f, -1656f)), Struct_2(vec3<f32>(430f, 515f, -374f)), Struct_2(vec3<f32>(962f, -720f, 1858f)), Struct_2(vec3<f32>(1439f, -998f, -2576f)), Struct_2(vec3<f32>(-1206f, -311f, -671f)), Struct_2(vec3<f32>(-1099f, -576f, -233f)), Struct_2(vec3<f32>(-931f, -521f, 1234f)), Struct_2(vec3<f32>(1000f, -2067f, -1000f)), Struct_2(vec3<f32>(1493f, -617f, 1000f)), Struct_2(vec3<f32>(-404f, 130f, 242f)), Struct_2(vec3<f32>(1000f, 1174f, -1112f)), Struct_2(vec3<f32>(645f, -189f, 1514f)), Struct_2(vec3<f32>(204f, 405f, 413f)), Struct_2(vec3<f32>(-164f, 747f, -1601f)));

var<private> global3: array<f32, 4>;

var<private> global4: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec3<f32> {
    global1 = 340i;
    global2 = array<Struct_2, 15>();
    let var_0 = arg_1.x;
    global4 = all(select(vec2<bool>(true, true), vec2<bool>((var_0 >= 130f) | false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)))), vec2<bool>(!any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 828f, -1787f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.wzw * vec3<f32>(967f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 905f))))));
}

fn func_2() -> Struct_2 {
    global1 = -39491i << (u_input.c.x % 32u);
    global1 = ~min(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-88890i, _wgslsmith_div_i32(-24070i, 1i)), -1i, 1i), firstTrailingBit(~1i));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(740f, -505f, -736f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, -264f, -1541f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, 1715f, 162f)) * vec3<f32>(195f, 1722f, global3[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 459f, global3[_wgslsmith_index_u32(11323u, 4u)])) - _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(global3[_wgslsmith_index_u32(23291u, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(u_input.c.x, 4u)], global3[_wgslsmith_index_u32(u_input.c.x, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)])))), vec3<bool>(any(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, true, true)), true)))));
    global3 = array<f32, 4>();
    var var_1 = vec4<i32>(reverseBits(2147483647i), 2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -2147483647i), _wgslsmith_sub_i32(countOneBits(-2147483647i), _wgslsmith_div_i32(0i, 12234i))), min(0i >> (u_input.a.x % 32u), 1i << (u_input.b.x % 32u))) ^ vec4<i32>(1i & (_wgslsmith_add_i32(-23819i, -15192i) << (_wgslsmith_mult_u32(u_input.d, 100964u) % 32u)), _wgslsmith_sub_i32(-1i, 1i), 1i, ~_wgslsmith_sub_i32(-16534i, -19542i));
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(-354f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1059f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(8033u, 4u)], -345f), 458f)), var_0.a.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = !(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.a.zx);
    let var_2 = u_input.d;
    let var_3 = global3[_wgslsmith_index_u32(1u, 4u)];
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a * vec3<f32>(global3[_wgslsmith_index_u32(26968u, 4u)], -614f, -1212f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(453f, 219f, var_1.x) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 104f, arg_1.a.x))))));
    return func_2();
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global3 = array<f32, 4>();
    global4 = !all(select(vec2<bool>(1u != u_input.d, true), vec2<bool>(true, true), true));
    global3 = array<f32, 4>();
    var var_0 = u_input.a.yz;
    global0 = array<Struct_1, 13>();
    return func_4(vec4<i32>(_wgslsmith_clamp_i32(~arg_1, max(arg_1, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-19839i, -2147483647i, arg_1, 74i), vec4<i32>(arg_1, arg_1, arg_1, arg_1)) ^ ~1i), -6145i, -41714i, arg_1), Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -503f, -1668f)))))), -28748i);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 13>();
    global3 = array<f32, 4>();
    let var_0 = _wgslsmith_div_vec2_u32(~reverseBits(arg_1.yy), vec2<u32>(~max(30943u, u_input.d), firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))) & select(u_input.c.zy, _wgslsmith_mod_vec2_u32(arg_1.zz, countOneBits(vec2<u32>(u_input.d, 51853u))), true));
    global2 = array<Struct_2, 15>();
    global2 = array<Struct_2, 15>();
    return func_5(839f, _wgslsmith_div_i32(_wgslsmith_mult_i32(min(1i, -1i), 2466i), arg_2.c ^ -arg_2.c), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.d, 4u)])), _wgslsmith_f_op_f32(abs(arg_2.d))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-arg_1.a, i32(-1i) * -(~29691i), max(-(~arg_1.c), arg_1.a), _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(-10380i, arg_1.a)), -69818i)), vec4<i32>(_wgslsmith_mult_i32((0i >> (u_input.d % 32u)) >> (arg_1.b % 32u), arg_1.a), arg_1.c ^ -_wgslsmith_div_i32(-1i, arg_1.c), i32(-1i) * -abs(-1409i), 5170i));
    let var_1 = i32(-1i) * -6757i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.a));
    global0 = array<Struct_1, 13>();
    let var_3 = func_6(func_5(_wgslsmith_f_op_f32(-var_2.a.x), -19600i, func_4(~vec4<i32>(var_0.x, 17075i, var_1, 21508i), func_2(), var_1 | -76481i)), u_input.c, Struct_1(~2147483647i, arg_1.b & u_input.b.x, var_1, _wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_div_f32(arg_0.a.x, global3[_wgslsmith_index_u32(105569u, 4u)])))), func_2());
    return _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(884f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i << (~(u_input.d >> (u_input.b.x % 32u)) % 32u);
    var var_1 = select(vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, false)), -1635f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 4u)])), vec4<bool>(true, true, true, select((global3[_wgslsmith_index_u32(u_input.a.x, 4u)] != global3[_wgslsmith_index_u32(53985u, 4u)]) | true, any(vec4<bool>(false, false, false, true)), !any(vec3<bool>(false, false, false)))), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), !any(vec3<bool>(false, false, true)), all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(-4373i, 2147483647i, 1i, 0i), ~vec4<i32>(-11660i, 0i, -38579i, 58344i)));
}

