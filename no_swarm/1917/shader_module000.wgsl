struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec3<f32>(1984f, -1963f, -576f), Struct_2(Struct_1(true, -13094i, -360f, vec4<bool>(false, false, true, true)), 989f), 34242i, false, 9164u), Struct_4(vec3<f32>(-1152f, 618f, 1199f), Struct_2(Struct_1(true, 8559i, -1000f, vec4<bool>(false, true, false, true)), -1235f), 32374i, false, 4294967295u), Struct_4(vec3<f32>(-1230f, -323f, -647f), Struct_2(Struct_1(false, 1i, 292f, vec4<bool>(false, true, true, false)), -1306f), -18326i, false, 1u), Struct_4(vec3<f32>(544f, -1000f, -1286f), Struct_2(Struct_1(true, 1i, 394f, vec4<bool>(false, true, true, false)), -361f), -12364i, true, 46405u), Struct_4(vec3<f32>(-1355f, 1000f, -923f), Struct_2(Struct_1(false, -43570i, 345f, vec4<bool>(true, true, false, false)), 1056f), -38045i, true, 18564u), Struct_4(vec3<f32>(-1522f, 523f, 588f), Struct_2(Struct_1(false, 72290i, 326f, vec4<bool>(true, false, false, false)), 993f), 0i, true, 31234u), Struct_4(vec3<f32>(1928f, 115f, -1699f), Struct_2(Struct_1(false, 0i, 172f, vec4<bool>(true, true, false, false)), -2195f), 34059i, true, 24878u), Struct_4(vec3<f32>(215f, 679f, 1440f), Struct_2(Struct_1(false, i32(-2147483648), -736f, vec4<bool>(false, false, true, false)), 123f), 70270i, false, 4294967295u), Struct_4(vec3<f32>(-662f, 349f, -2623f), Struct_2(Struct_1(false, 2147483647i, -1000f, vec4<bool>(true, true, false, true)), -1577f), 8289i, true, 44773u), Struct_4(vec3<f32>(-215f, 317f, -1305f), Struct_2(Struct_1(false, 0i, 184f, vec4<bool>(false, false, false, true)), 346f), -1i, false, 109151u));

var<private> global1: array<i32, 23> = array<i32, 23>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i, 17257i, 22346i, -22495i, -1i, -3156i, 1281i, 0i, -13163i, 55530i, 1i, 0i, 2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, 1i, -15614i, 1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> i32 {
    let var_0 = i32(-1i) * -19861i;
    var var_1 = ~vec4<u32>(countOneBits(~u_input.a) >> (min(arg_1.e >> (arg_1.e % 32u), _wgslsmith_div_u32(u_input.b.x, arg_1.e)) % 32u), ~u_input.a, _wgslsmith_clamp_u32(~(arg_1.e ^ u_input.b.x), select(~4294967295u, arg_1.e, true), 1u), u_input.a);
    let var_2 = arg_1.b.b;
    var_1 = vec4<u32>(26036u, 13166u, ~var_1.x, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.a, countOneBits(var_1.x)), ~arg_1.e, 1u));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + -536f) - _wgslsmith_f_op_f32(trunc(-957f)))));
    return -49241i;
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_4, 10>();
    let var_0 = Struct_1(false, -46758i, -348f, !vec4<bool>(false, !any(vec3<bool>(false, false, false)), true, (u_input.c <= global1[_wgslsmith_index_u32(69953u, 23u)]) || true));
    var var_1 = vec2<i32>(func_3(!all(vec4<bool>(var_0.d.x, var_0.a, true, var_0.d.x)) != true, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 853f, var_0.c))), Struct_2(var_0, var_0.c), -global1[_wgslsmith_index_u32(1u, 23u)], u_input.a >= 870u, ~select(1u, 4294967295u, var_0.d.x))), ~u_input.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.c), var_0.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, -1000f, var_0.c), vec3<f32>(-776f, var_0.c, -365f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(315f, 472f, var_0.c))))));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_2.x, -2395f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f * var_2.x)), 515f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, 673f, -1632f))));
    return var_0.d;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.b;
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    var var_1 = Struct_1(!all(vec2<bool>(true, arg_1.x)), 2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1000f, false))) * 1449f))), select(!arg_1, select(select(select(vec4<bool>(true, arg_1.x, false, arg_1.x), arg_1, vec4<bool>(arg_1.x, false, true, arg_1.x)), select(arg_1, arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1), arg_1, !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(max(482f, 1126f)), arg_1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f * -1648f))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, var_1.c, 267f), vec3<f32>(626f, var_1.c, var_1.c)))), vec3<f32>(-624f, var_1.c, _wgslsmith_f_op_f32(-var_1.c))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -180f, 1972f) * vec3<f32>(593f, -850f, 988f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 666f, -902f))))), Struct_2(Struct_1(!any(vec4<bool>(true, false, var_1.d.x, true)), arg_0.x, 534f, vec4<bool>(select(arg_1.x, false, false), arg_1.x, var_1.d.x, var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c * 1040f), _wgslsmith_f_op_f32(trunc(var_1.c))))), u_input.c, any(!var_1.d.wz), 4294967295u);
    return Struct_1(all(var_1.d), firstLeadingBit(-37705i), _wgslsmith_f_op_f32(var_1.c - var_1.c), func_2());
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    return Struct_3(func_4(select(vec4<i32>(1i, -53863i, -6653i, 2147483647i) << ((vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.a) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-24359i, -2147483647i, global1[_wgslsmith_index_u32(1u, 23u)], -1i), vec4<i32>(-15993i, 6422i, u_input.c, global1[_wgslsmith_index_u32(39180u, 23u)]) >> (vec4<u32>(43870u, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u))), func_2()), vec4<bool>(true, true, true, true), vec3<i32>(_wgslsmith_add_i32(4037i, reverseBits(global1[_wgslsmith_index_u32(32976u, 23u)])), -64876i, ~countOneBits(-2147483647i))), Struct_2(Struct_1(3449u > u_input.a, abs(u_input.c), _wgslsmith_f_op_f32(-1173f + _wgslsmith_f_op_f32(-arg_0.x)), vec4<bool>(true, false, any(vec2<bool>(true, false)), true)), -391f), ~(~(~vec2<i32>(4462i, u_input.c))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = arg_0.c;
    global1 = array<i32, 23>();
    let var_1 = Struct_1(all(arg_0.b.a.d.wxz), -(~global1[_wgslsmith_index_u32(u_input.a, 23u)] >> (_wgslsmith_sub_u32(0u, ~4294967295u) % 32u)), arg_1.c, !vec4<bool>(false, all(arg_1.d) | !arg_0.a.d.x, !arg_1.a, _wgslsmith_f_op_f32(-arg_1.c) < _wgslsmith_f_op_f32(arg_1.c + arg_1.c)));
    let var_2 = _wgslsmith_clamp_vec2_i32(~var_0, var_0, var_0);
    global1 = array<i32, 23>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.c, 1652f), vec2<f32>(-254f, arg_0.a.c)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1284f, -1000f) + vec2<f32>(876f, -1000f))))) * vec2<f32>(657f, 549f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1.c), _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(floor(1197f)))));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    let var_0 = func_1(arg_3);
    var var_1 = -vec4<i32>(u_input.c, ~23225i, _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(~30324u, 23u)], 14949i), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-45108i, var_0.b.a.b, u_input.c), vec3<i32>(1i, global1[_wgslsmith_index_u32(arg_2, 23u)], var_0.b.a.b)), -23015i, firstLeadingBit(_wgslsmith_mult_i32(-2147483647i, u_input.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), _wgslsmith_f_op_f32(trunc(-542f)), 876f, arg_3.x))));
    return -var_1.x ^ global1[_wgslsmith_index_u32(~arg_1 ^ 8972u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 23>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-countOneBits(~41257i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(u_input.a), 0u), 23u)], global1[_wgslsmith_index_u32(0u, 23u)], u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-6566i, 2147483647i, u_input.c, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -2147483647i, global1[_wgslsmith_index_u32(9142u, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), vec4<i32>(u_input.c >> (u_input.a % 32u), _wgslsmith_sub_i32(11859i, -51948i), -10406i, -1i), _wgslsmith_div_vec4_i32(abs(vec4<i32>(35041i, 22109i, global1[_wgslsmith_index_u32(32433u, 23u)], u_input.c) >> (vec4<u32>(u_input.b.x, 1u, u_input.a, 55129u) % vec4<u32>(32u))), ~min(vec4<i32>(2147483647i, 24319i, 17990i, -102i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], 2147483647i, u_input.c, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])))));
    var var_1 = 0u;
    global0 = array<Struct_4, 10>();
    var var_2 = Struct_1(!any(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true))), func_6(!((4592u & u_input.b.x) < ~73770u), select(abs(u_input.b.x), countOneBits(abs(10572u)), true), _wgslsmith_mult_u32(u_input.a, u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(func_5(func_1(vec2<f32>(-441f, 1703f)), Struct_1(true, 45132i, -1000f, vec4<bool>(true, false, true, true)))))), 772f, vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), false)), !all(vec2<bool>(false, false)), false, false));
    var_1 = countOneBits(~u_input.a);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, var_2.c) + vec3<f32>(-2825f, -180f, var_2.c)))))), Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(var_2.c * 708f), _wgslsmith_f_op_f32(abs(-529f)))).a, 1000f), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, var_2.b, min(7736i, 32012i)) | -global1[_wgslsmith_index_u32(~1u, 23u)], ~func_4(-vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 0i, -2147483647i), func_2(), -vec3<i32>(-20571i, var_2.b, 43331i)).b), true, select(u_input.b.x, _wgslsmith_div_u32(135479u, 24438u), select(false, false, true)));
    let var_4 = ~vec4<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 49829u, 126339u, 0u), firstTrailingBit(vec4<u32>(4294967295u, var_3.e, 27542u, var_3.e)))), abs(select(~u_input.b.x, _wgslsmith_mod_u32(82728u, 38790u), !var_3.b.a.a)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(41448u, var_3.e, 0u, var_3.e) << (vec4<u32>(46415u, var_3.e, u_input.a, var_3.e) % vec4<u32>(32u)), vec4<u32>(4294967295u, 1u, var_3.e, 4294967295u))), ~(~(~u_input.a)));
    var var_5 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_5.c)), var_2.c, func_2().x)), _wgslsmith_f_op_f32(-var_2.c)))));
}

