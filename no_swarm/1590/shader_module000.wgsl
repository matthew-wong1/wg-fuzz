struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: array<vec2<bool>, 13>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = 105948u;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, -944f, -252f), vec3<f32>(arg_1, arg_1, -375f))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1914f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, -273f)) * _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1)), arg_1))))));
    global1 = array<vec2<bool>, 13>();
    let var_2 = Struct_1(vec3<i32>(-26851i, reverseBits(arg_0.b.x), 2147483647i), arg_0.b, arg_0.c, vec3<bool>(countOneBits(1u) > ~u_input.a.x, !(abs(25472u) == reverseBits(u_input.b.x)), arg_0.d.x), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(~u_input.b.x, 13u)], 0i));
    var_0 = ~(~arg_0.c);
    return u_input.b.zz;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = arg_3;
    let var_1 = Struct_1(-abs(~arg_1.yyx), vec4<i32>(74241i, _wgslsmith_mult_i32(i32(-1i) * -arg_2.x, 24319i), select(min(2147483647i >> (u_input.c % 32u), -49368i), 1i, true), arg_2.x), ~(_wgslsmith_mod_u32(4185u | u_input.b.x, ~22901u) ^ reverseBits(~arg_3.b.x)), select(vec3<bool>(true, true, any(vec3<bool>(true, true, false)) != all(vec2<bool>(true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 1u < _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_3.b.x, arg_3.b.x, u_input.e)))), global0[_wgslsmith_index_u32(0u, 13u)]);
    global1 = array<vec2<bool>, 13>();
    var var_2 = var_1;
    let var_3 = arg_3.b.x;
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1777f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + arg_3.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -1450f))))), true)), _wgslsmith_f_op_f32(select(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(171f, arg_3.a))), var_1.d.x)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(trunc(837f)))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec3<u32> {
    global1 = array<vec2<bool>, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-1216f - _wgslsmith_f_op_f32(step(1000f, 426f))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(83597u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], 55430i, -16005i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.e, 13u)], global0[_wgslsmith_index_u32(u_input.e, 13u)], -7892i), vec4<i32>(2385i, -13510i, global0[_wgslsmith_index_u32(u_input.c, 13u)], -58700i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-13565i, 0i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)], 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 13u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<i32>(-58614i, -15513i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))), Struct_3(_wgslsmith_div_f32(-1000f, 332f), func_3(Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(22999u, 13u)], -1162i, 15183i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 13u)], 2147483647i, 58412i, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), 3816u, vec3<bool>(arg_1.x, false, false), -1i), 388f, vec2<bool>(false, false)))))));
    var var_1 = Struct_2(Struct_1(-(vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 13u)], 1322i, -2147483647i) | vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(51325u, 13u)], -22098i)) >> (firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.b, u_input.d)) % vec3<u32>(32u)), _wgslsmith_div_vec4_i32(select(select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 4510i, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(43221u, 13u)]), vec4<i32>(-20592i, -45276i, global0[_wgslsmith_index_u32(u_input.c, 13u)], 2147483647i), arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(17117i, 2147483647i, global0[_wgslsmith_index_u32(0u, 13u)], 0i), vec4<i32>(1i, 8778i, global0[_wgslsmith_index_u32(u_input.e, 13u)], 0i)), u_input.b.x > 24065u), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-15765i, global0[_wgslsmith_index_u32(u_input.c, 13u)], 34266i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(20958u, 13u)], 20251i, global0[_wgslsmith_index_u32(u_input.e, 13u)], global0[_wgslsmith_index_u32(46149u, 13u)]))), u_input.e, !vec3<bool>(all(arg_1), false | arg_0, !arg_0), -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(1u, 13u)], -33785i), abs(global0[_wgslsmith_index_u32(8483u, 13u)]), abs(2147483647i))), Struct_1(-_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(6220i, global0[_wgslsmith_index_u32(0u, 13u)], -1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 13u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(u_input.e, 13u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], 2147483647i, -2147483647i), vec3<i32>(1i, -1i, global0[_wgslsmith_index_u32(u_input.c, 13u)]))), vec4<i32>(-1i, ~max(global0[_wgslsmith_index_u32(u_input.e, 13u)], 40556i), ~global0[_wgslsmith_index_u32(u_input.e, 13u)], select(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], -global0[_wgslsmith_index_u32(21271u, 13u)], all(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)))), _wgslsmith_div_u32(u_input.e << (u_input.a.x % 32u), u_input.e), !(!(!vec3<bool>(false, arg_1.x, false))), ~(-(global0[_wgslsmith_index_u32(11629u, 13u)] >> (u_input.b.x % 32u)))));
    var var_2 = var_1.a.d;
    var var_3 = var_1.a;
    return u_input.d;
}

fn func_5(arg_0: u32) -> vec2<bool> {
    return select(vec2<bool>(select(all(!global1[_wgslsmith_index_u32(arg_0, 13u)]), true, true), -2147483647i <= _wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 13u)], global0[_wgslsmith_index_u32(arg_0, 13u)], global0[_wgslsmith_index_u32(arg_0, 13u)]), vec3<i32>(52794i, 26576i, global0[_wgslsmith_index_u32(2809u, 13u)]))), select(global1[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(arg_0, 4294967295u, 4294967295u), 17804u, false), 13u)], global1[_wgslsmith_index_u32(1u, 13u)], (select(false, false, false) == true) || false), vec2<bool>(all(global1[_wgslsmith_index_u32(~(~105503u), 13u)]), all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(39653u, 16070u, 1u, 4294967295u), vec4<u32>(u_input.a.x, arg_0, arg_0, 69868u))), 13u)])));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 27161u) | vec3<u32>(0u, 36567u, 0u), func_2(true, select(arg_1.xy, global1[_wgslsmith_index_u32(84548u, 13u)], arg_1.x))) & ~u_input.a.x);
    let var_1 = ~vec3<u32>(arg_0.b.x, 52121u, abs(max(_wgslsmith_div_u32(arg_0.b.x, 1u), arg_0.b.x >> (28649u % 32u))));
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    global1 = array<vec2<bool>, 13>();
    var var_0 = vec3<u32>(arg_1.a, 5026u, abs(_wgslsmith_sub_u32(1u << (arg_0.b.x % 32u), ~(~4294967295u))));
    var var_1 = 6247i;
    let var_2 = Struct_4(~67020u, func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_0.a, vec4<i32>(global0[_wgslsmith_index_u32(arg_1.b.b.x, 13u)], 1i, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(arg_0.b.x, 13u)]), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.x, 13u)], arg_1.c.x, -7760i), Struct_3(arg_0.a, var_0.xy))).x), ~vec2<u32>(arg_1.b.b.x, arg_1.a) & vec2<u32>(1u, 77121u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), -(~_wgslsmith_sub_vec2_i32(arg_1.c, abs(vec2<i32>(-2147483647i, 44588i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(step(712f, -492f)), _wgslsmith_f_op_f32(max(arg_1.b.a, 1397f)), arg_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1528f, arg_1.d.x, -170f, 406f)))));
    var_0 = countOneBits(func_2(select(false, all(global1[_wgslsmith_index_u32(u_input.c, 13u)]) | true, any(vec4<bool>(true, true, true, false)) & true), vec2<bool>(false, false)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(773f, _wgslsmith_f_op_f32(min(var_2.b.a, 177f))) * -349f);
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = select(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, u_input.e), ~0u, u_input.a.x))), 13u)], select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), !global1[_wgslsmith_index_u32(u_input.c, 13u)], all(vec4<bool>(true, false, false, false))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), func_5(~abs(u_input.d.x)), !(!(253f == arg_2))), global1[_wgslsmith_index_u32((_wgslsmith_add_u32(max(u_input.e, 29008u), _wgslsmith_add_u32(u_input.e, 0u)) ^ _wgslsmith_add_u32(_wgslsmith_add_u32(35624u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.b.zy))) | _wgslsmith_sub_u32(0u, u_input.c), 13u)]);
    var var_1 = var_0.x;
    let var_2 = Struct_4(func_3(Struct_1(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i), vec2<i32>(-60201i, 2147483647i)), global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(reverseBits(16898u), 13u)], -2107i, -2147483647i, global0[_wgslsmith_index_u32(min(u_input.a.x, 1u), 13u)]), reverseBits(u_input.e), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), true), !vec3<bool>(var_0.x, false, false), true), ~(global0[_wgslsmith_index_u32(22423u, 13u)] ^ global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), -1000f, var_0).x, func_1(func_1(Struct_3(_wgslsmith_f_op_f32(-arg_1), vec2<u32>(43465u, u_input.d.x)), vec3<bool>(func_5(u_input.e).x, true, any(vec2<bool>(true, true)))), vec3<bool>(true, false, -171f == _wgslsmith_f_op_f32(arg_2 * 807f))), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.e, 13u)]), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, 1000f, 780f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_0, arg_0, 1000f)))))))));
    global1 = array<vec2<bool>, 13>();
    global1 = array<vec2<bool>, 13>();
    return var_2;
}

fn func_8(arg_0: Struct_4) -> Struct_3 {
    var var_0 = 582f;
    global0 = array<i32, 13>();
    let var_1 = -min(~(-vec4<i32>(arg_0.c.x, -2147483647i, arg_0.c.x, -30990i)) & firstLeadingBit(~vec4<i32>(-28090i, -2147483647i, arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-6589i, arg_0.c.x, -10580i, 0i)), ~vec4<i32>(-2147483647i, -41934i, arg_0.c.x, arg_0.c.x)), vec4<i32>(abs(arg_0.c.x), global0[_wgslsmith_index_u32(arg_0.b.b.x, 13u)] | 2147483647i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], arg_0.c.x), arg_0.c.x)));
    let var_2 = -13678i;
    var var_3 = vec3<bool>(func_5(1u).x, any(vec3<bool>(true, false, false)), select(any(vec3<bool>(true, true, true)), !(!(arg_0.b.a > -460f)), any(global1[_wgslsmith_index_u32(u_input.e, 13u)]) | (-global0[_wgslsmith_index_u32(0u, 13u)] != 3189i)));
    return func_1(arg_0.b, vec3<bool>((var_1.x & (var_1.x | -1i)) != var_2, all(vec2<bool>(var_3.x | var_3.x, true)), reverseBits(_wgslsmith_add_i32(var_1.x, -2147483647i)) != 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(_wgslsmith_f_op_f32(trunc(-631f)), _wgslsmith_f_op_f32(func_6(func_1(Struct_3(230f, u_input.d.yx), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), Struct_4(28861u, func_1(Struct_3(358f, vec2<u32>(76493u, u_input.a.x)), vec3<bool>(false, true, false)), min(vec2<i32>(-24775i, 2147483647i), vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2062f, -996f, -683f, -729f))))), -1247f));
    global0 = array<i32, 13>();
    let var_1 = vec3<bool>(all(!vec2<bool>(select(false, false, true), true)), func_5(4294967295u).x, func_1(var_0, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).b.x < _wgslsmith_mult_u32(_wgslsmith_div_u32(0u << (0u % 32u), u_input.c), 23465u));
    var var_2 = 1f;
    var_2 = _wgslsmith_div_f32(-164f, _wgslsmith_f_op_f32(func_8(Struct_4(1u, var_0, firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(u_input.e, 13u)], -2147483647i)), vec4<f32>(var_0.a, var_0.a, 168f, 1292f))).a + func_7(_wgslsmith_f_op_f32(func_7(var_0.a, -1094f, var_0.a).b.a * _wgslsmith_f_op_f32(f32(-1f) * -412f)), _wgslsmith_div_f32(var_0.a, -1666f), var_0.a).b.a));
    let var_3 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), u_input.d.zy), vec3<bool>(var_1.x & any(vec4<bool>(false, true, var_1.x, var_1.x)), false, !(var_0.a > _wgslsmith_f_op_vec4_f32(func_4(var_0.a, vec4<i32>(global0[_wgslsmith_index_u32(37141u, 13u)], global0[_wgslsmith_index_u32(24397u, 13u)], global0[_wgslsmith_index_u32(var_0.b.x, 13u)], global0[_wgslsmith_index_u32(17345u, 13u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 0i, global0[_wgslsmith_index_u32(0u, 13u)]), Struct_3(var_0.a, var_0.b))).x)));
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_3.a)), ~0i);
}

