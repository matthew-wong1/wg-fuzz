struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 22> = array<f32, 22>(-246f, 1353f, -1545f, 216f, -1572f, 880f, 1975f, -2219f, 672f, -537f, -189f, -1427f, 1835f, -2141f, -1000f, 575f, -226f, -665f, -128f, -1000f, -703f, 920f);

var<private> global2: array<Struct_2, 30>;

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(94034u, 76664u), vec2<u32>(45798u, 72378u), vec2<u32>(0u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = vec2<u32>(1u, u_input.b);
    let var_1 = Struct_2(!vec2<bool>(arg_0, !any(vec4<bool>(false, false, arg_0, true))), 13560i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(var_0.x, _wgslsmith_sub_u32(u_input.b, 0u), false), 22u)])));
    var var_2 = Struct_3(var_1);
    var var_3 = select(vec3<bool>(_wgslsmith_f_op_f32(round(-230f)) == var_2.a.c, true, true), !(!vec3<bool>(false, true, -2147483647i < global0.a)), _wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(23763i, 0i)), var_1.b) > (2147483647i ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, u_input.a), vec3<i32>(var_1.b, var_1.b, u_input.a))));
    global0 = Struct_1(var_2.a.b);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(218f, var_2.a.c, var_2.a.c, var_2.a.c) + vec4<f32>(var_1.c, -232f, global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], -1435f, var_1.c, -122f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(120f, 338f, var_1.c, 864f) - vec4<f32>(var_2.a.c, -1000f, var_1.c, 1000f))), select(vec4<bool>(true, true, true, true), vec4<bool>(var_3.x, var_2.a.a.x, false, var_2.a.a.x), select(vec4<bool>(true, var_2.a.a.x, false, var_2.a.a.x), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, true, true, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.c, var_1.c, -658f, 796f), vec4<f32>(488f, 2159f, -1899f, 1116f), vec4<bool>(var_3.x, false, var_1.a.x, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, global1[_wgslsmith_index_u32(var_0.x, 22u)], var_2.a.c, var_2.a.c) + vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b, 22u)], -119f, 522f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, var_1.c, var_2.a.c, global1[_wgslsmith_index_u32(36933u, 22u)]) + vec4<f32>(var_2.a.c, -210f, -1000f, -135f)))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec3<f32> {
    var var_0 = -max(firstLeadingBit(-countOneBits(vec3<i32>(arg_0.x, arg_0.x, 1i))), abs(reverseBits(~vec3<i32>(-2613i, 0i, 48304i))));
    global0 = Struct_1(arg_0.x | _wgslsmith_mult_i32(_wgslsmith_sub_i32(max(var_0.x, arg_0.x), 2147483647i), _wgslsmith_div_i32(-2147483647i, 1i)));
    var var_1 = ~(firstLeadingBit(var_0.zz) ^ vec2<i32>(u_input.a, 1i)) >> (max(global3[_wgslsmith_index_u32(firstTrailingBit(min(31912u, u_input.b) | reverseBits(1u)), 3u)], vec2<u32>(~_wgslsmith_div_u32(4294967295u, u_input.b), _wgslsmith_mod_u32(~u_input.b, _wgslsmith_mod_u32(u_input.b, 0u)))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1389f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)] * -376f), _wgslsmith_f_op_f32(abs(-1491f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 22u)]), -1937f), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, abs(0u)), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(46067u, 22u)])), any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(3434u, 22u)], -163f, 1753f, global1[_wgslsmith_index_u32(4294967295u, 22u)])))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1 && arg_1)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -409f), global1[_wgslsmith_index_u32(countOneBits(44519u), 22u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 22u)], 990f), -655f))));
    var var_3 = vec2<bool>(true, true);
    return vec3<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-569f + _wgslsmith_f_op_f32(var_2.x + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -708f)), _wgslsmith_f_op_f32(f32(-1f) * -295f));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_3 {
    global3 = array<vec2<u32>, 3>();
    var var_0 = vec4<bool>(arg_1.a.a.x, true, arg_1.a.a.x, any(select(arg_1.a.a, !(!arg_1.a.a), vec2<bool>(any(vec2<bool>(true, true)), arg_1.a.a.x || true))));
    var var_1 = 41504u ^ _wgslsmith_mult_u32(arg_3.x, ~select(arg_3.x, arg_3.x, false) | ~60151u);
    var_1 = ~(~u_input.b | firstTrailingBit(1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b, 22u)], 1784f))), _wgslsmith_f_op_f32(f32(-1f) * -280f), -623f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.c, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x - 179f), 1999f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1.a.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-416f, 1000f, 680f, arg_2.x))))));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = !arg_0.a.a.x;
    let var_1 = ~(~(~firstTrailingBit(vec3<u32>(15652u, u_input.b, 0u))));
    let var_2 = arg_3.a.a.x;
    return vec3<u32>(~(~_wgslsmith_add_u32(4151u, 1u)), ~(~(~u_input.b)), 0u) & var_1;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global2 = array<Struct_2, 30>();
    var var_0 = func_5(func_4(_wgslsmith_clamp_i32(u_input.a, -select(30318i, 7655i, arg_0.a.a.x), (1i >> (u_input.b % 32u)) << (~u_input.b % 32u)), Struct_3(Struct_2(select(vec2<bool>(arg_0.a.a.x, true), vec2<bool>(arg_0.a.a.x, arg_0.a.a.x), true), _wgslsmith_mult_i32(-76056i, -26788i), _wgslsmith_f_op_f32(412f + -327f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(12591u, 22u)], -1311f, 886f) + vec3<f32>(625f, arg_0.a.c, arg_0.a.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, -2344f, global1[_wgslsmith_index_u32(48868u, 22u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(arg_0.a.b, 34441i), false)))), ~firstLeadingBit(min(vec4<u32>(u_input.b, u_input.b, 48455u, 4294967295u), vec4<u32>(14808u, u_input.b, u_input.b, u_input.b)))), ~(-global0.a) >= 37963i, _wgslsmith_sub_vec2_i32(reverseBits(reverseBits(vec2<i32>(arg_0.a.b, u_input.a))) >> (firstLeadingBit(vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)), vec2<i32>(-82888i, i32(-1i) * -7379i)), func_4(func_4(global0.a ^ 2147483647i, func_4(u_input.a, arg_0, vec3<f32>(-406f, 141f, 229f), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, arg_0.a.c, -229f)), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 106283u))).a.b ^ -arg_0.a.b, Struct_3(Struct_2(!arg_0.a.a, _wgslsmith_sub_i32(arg_0.a.b, u_input.a), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 22u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1717f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) * _wgslsmith_f_op_f32(select(arg_0.a.c, arg_0.a.c, false))), global1[_wgslsmith_index_u32(u_input.b, 22u)]), ~vec4<u32>(45714u >> (u_input.b % 32u), 1u << (u_input.b % 32u), 0u, ~u_input.b)));
    global0 = Struct_1(global0.a);
    var var_1 = ~_wgslsmith_mod_vec4_u32(~firstTrailingBit(~vec4<u32>(2025u, var_0.x, var_0.x, 22100u)), reverseBits(vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), ~var_0.x, abs(u_input.b), var_0.x)));
    let var_2 = vec4<f32>(global1[_wgslsmith_index_u32(~(~(~firstLeadingBit(var_0.x))), 22u)], 365f, global1[_wgslsmith_index_u32(u_input.b, 22u)], _wgslsmith_div_f32(645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(20327u, 22u)], -950f, false)) * -534f) + global1[_wgslsmith_index_u32(select(~var_0.x, firstLeadingBit(4294967295u), true), 22u)])));
    return func_4(44338i, func_4(func_4(_wgslsmith_sub_i32(-2147483647i, global0.a), func_4(global0.a, Struct_3(arg_0.a), var_2.xwz, vec4<u32>(var_1.x, 48896u, 71439u, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, -1837f, 906f)), vec4<u32>(59023u, 83248u, u_input.b, var_1.x)).a.b >> (_wgslsmith_sub_u32(1u, ~4294967295u) % 32u), func_4(-1i, arg_0, vec3<f32>(arg_0.a.c, global1[_wgslsmith_index_u32(19841u, 22u)], _wgslsmith_f_op_vec4_f32(func_3(true)).x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_1.x, u_input.b, u_input.b), vec4<u32>(1u, 31913u, u_input.b, 0u)) & ~vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), vec3<f32>(-1000f, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-2869i, arg_0.a.b)), var_1.x < 4294967295u)).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.a.c, var_2.x))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, var_0.x), vec4<u32>(34842u, 59574u, 0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.yxy)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(global0.a, -2147483647i) ^ vec2<i32>(-22605i, 2147483647i), true && arg_0.a.a.x)), _wgslsmith_f_op_vec3_f32(exp2(var_2.xyy)))), vec4<u32>(var_1.x, 0u, abs(102246u), var_1.x)).a;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(0u, abs(~u_input.b), _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(arg_2, arg_2, u_input.b) & vec3<u32>(arg_2, 0u, 0u)), vec3<u32>(func_5(arg_1, func_1(Struct_3(arg_3)).a.x, vec2<i32>(-32548i, 1i), Struct_3(arg_1.a)).x, u_input.b, 78094u)));
    var var_1 = func_4(18851i, func_4(func_1(arg_1).b, Struct_3(arg_3), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(24249u & arg_2, 22u)], _wgslsmith_f_op_f32(select(910f, 410f, arg_0.x)), arg_3.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-726f, global1[_wgslsmith_index_u32(7064u, 22u)], global1[_wgslsmith_index_u32(arg_2, 22u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-621f, -1854f, 436f)))))), vec4<u32>(4616u, 68441u, _wgslsmith_add_u32(81576u, var_0.x) << ((16223u << (u_input.b % 32u)) % 32u), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(u_input.a, u_input.a), true)).x)), -942f, arg_0.x)), 1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.x, 22u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)))), abs(~(~vec4<u32>(25884u, 1u, var_0.x, 1u) ^ ~vec4<u32>(15949u, 6109u, arg_2, var_0.x)))).a;
    global2 = array<Struct_2, 30>();
    global3 = array<vec2<u32>, 3>();
    let var_2 = vec2<f32>(-224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 22u)]))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, ~(~_wgslsmith_add_u32(~u_input.b, 80927u))), 22u)];
    global0 = Struct_1(u_input.a);
    let var_1 = Struct_3(func_6(vec3<bool>(true || (u_input.a == -2147483647i), true, !all(vec4<bool>(false, true, true, true))), Struct_3(func_1(Struct_3(Struct_2(vec2<bool>(true, true), -22981i, 751f)))), ~(u_input.b | 31135u), Struct_2(vec2<bool>(true, all(vec2<bool>(false, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(8499i, -30013i, -1i, -2147483647i), vec4<i32>(global0.a, -5265i, u_input.a, global0.a)) | 0i, -1396f)));
    let var_2 = -16449i;
    var var_3 = -1i;
    let var_4 = func_1(Struct_3(func_6(select(!vec3<bool>(true, false, var_1.a.a.x), vec3<bool>(true, true, true), all(vec3<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x))), var_1, u_input.b >> (max(u_input.b, 18175u) % 32u), func_6(vec3<bool>(true, var_1.a.a.x, var_1.a.a.x), Struct_3(Struct_2(vec2<bool>(var_1.a.a.x, var_1.a.a.x), var_2, -218f)), u_input.b, Struct_2(vec2<bool>(var_1.a.a.x, true), var_2, -1060f))))).b;
    global1 = array<f32, 22>();
    let var_5 = Struct_1(1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-25955i, var_5.a, var_2), vec3<i32>(u_input.a, var_4, 2147483647i)), 1i, var_1.a.b, abs(1i)) ^ (vec4<i32>(global0.a, 1i, 0i, var_5.a) ^ ~vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -15050i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.c, _wgslsmith_f_op_f32(-var_1.a.c)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.c, -644f)), 1662f)));
}

