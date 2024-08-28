struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1265f, -1000f, 1014f, 103f), vec4<f32>(1627f, -282f, 1258f, 1104f), vec4<f32>(-1039f, -1924f, 857f, 1000f), vec4<f32>(-1818f, -1008f, -1515f, 928f), vec4<f32>(-219f, 156f, 1000f, -707f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    var var_0 = -firstLeadingBit(-vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-2147483647i, 0i), _wgslsmith_add_i32(1i, 0i)));
    var var_1 = -_wgslsmith_div_i32(var_0.x, var_0.x);
    var var_2 = vec3<i32>(51088i, -1i >> (max(arg_2, ~24087u) % 32u), -(~1036i));
    let var_3 = vec4<u32>(4294967295u, 1u, 2750u, _wgslsmith_clamp_u32(~min(~0u, ~arg_2), ~min(reverseBits(0u), 13169u), arg_2));
    var_1 = _wgslsmith_sub_i32(-1i, var_2.x | -1i);
    return arg_0.x;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 5u)], vec3<bool>(false, false, arg_1.b.x), 0u)) * _wgslsmith_f_op_f32(floor(arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * arg_3), _wgslsmith_f_op_f32(-arg_3))) + global1[_wgslsmith_index_u32(max(~reverseBits(u_input.a.x), arg_0) ^ _wgslsmith_div_u32(abs(~16305u), _wgslsmith_mult_u32(u_input.a.x >> (arg_1.a.b % 32u), 0u)), 5u)]);
    global0 = var_0.yxw;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-888f)), _wgslsmith_div_f32(1413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f - arg_1.c) + 1150f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + -1273f), _wgslsmith_f_op_f32(368f + global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f + _wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3)))));
    let var_1 = !select(select(!select(vec2<bool>(arg_1.b.x, false), arg_1.b, arg_1.b), select(arg_1.b, arg_1.b, arg_1.b.x), select(vec2<bool>(true, true), arg_1.b, 4294967295u < arg_2.x)), vec2<bool>(false, arg_1.b.x), vec2<bool>(_wgslsmith_f_op_f32(min(-656f, arg_1.c)) != -676f, arg_1.b.x));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(arg_1.a.a & (arg_1.a.a << (0u % 32u)), 45891i & abs(arg_1.a.a))), arg_1.a.a);
    return Struct_2(_wgslsmith_add_u32(30425u, arg_2.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_5) -> Struct_1 {
    global1 = array<vec4<f32>, 5>();
    var var_0 = vec3<i32>(_wgslsmith_div_i32(-abs(arg_3.a ^ arg_0), 0i), 0i, 2147483647i);
    let var_1 = select((abs(_wgslsmith_mult_i32(arg_3.a, 17851i)) < var_0.x) & any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))), true, !(!(!select(false, true, false))));
    let var_2 = Struct_4(~_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, 2147483647i), -(~vec2<i32>(var_0.x, 1i))), func_2(~arg_1.a, Struct_3(Struct_1(~(-2147483647i), 1u), !vec2<bool>(var_1, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-673f, global0.x))), vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(18535u, 46073u, 15266u, arg_2.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, 30998u, 4294967295u, 4294967295u), vec4<u32>(85625u, arg_2.x, arg_2.x, 0u), vec4<u32>(1u, 4294967295u, arg_2.x, arg_1.a))), ~u_input.a.x), 1f));
    var_0 = reverseBits(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -6748i, 1i) & vec3<i32>(2147483647i, arg_3.a, arg_3.a), -vec3<i32>(arg_3.a, var_0.x, var_2.a.x))));
    return Struct_1(~(-1i) & _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, -1i, -6837i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.a, var_2.a.x, var_0.x, arg_0), vec4<i32>(arg_0, 21131i, -34394i, var_0.x))), firstLeadingBit(1i)), arg_2.x);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(17195u, 108731u)), ~func_4(arg_0.a.a, Struct_2(0u), vec2<u32>(arg_0.a.b, arg_0.a.b), Struct_5(arg_0.a.a)).b >> (7068u % 32u)), 46287u);
    var var_1 = u_input.b.yx;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(228f, 1000f, -898f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1472f, arg_0.c)), all(vec4<bool>(true, true, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(-342f * -553f), 704f, _wgslsmith_f_op_f32(abs(arg_0.c))))))));
    var var_3 = Struct_2(~arg_0.a.b);
    var var_4 = vec3<u32>(_wgslsmith_sub_u32(((var_3.a << (var_1.x % 32u)) >> (_wgslsmith_div_u32(u_input.b.x, var_3.a) % 32u)) << (1u % 32u), abs(4294967295u >> (_wgslsmith_sub_u32(var_3.a, 71901u) % 32u))), 58350u, var_1.x);
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_5 {
    let var_0 = -arg_0.a.a;
    let var_1 = arg_0;
    let var_2 = 682f;
    let var_3 = _wgslsmith_f_op_f32(-global0.x);
    global1 = array<vec4<f32>, 5>();
    return Struct_5(firstLeadingBit(arg_0.a.a));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = ~4294967295u;
    global1 = array<vec4<f32>, 5>();
    var var_1 = Struct_5(~0i);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-134f, -2327f, 126f) * vec3<f32>(-1000f, arg_1, 372f)))))), vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(-2371f, arg_1, select(true, false, true)))), _wgslsmith_f_op_f32(-arg_1)));
    var var_2 = func_6(func_5(Struct_3(func_4(arg_0.x, func_2(1u, Struct_3(Struct_1(-1i, 10844u), vec2<bool>(true, false), 957f), vec2<u32>(var_0, u_input.a.x), arg_1), ~vec2<u32>(var_0, 0u), Struct_5(-1i)), vec2<bool>(false, false), _wgslsmith_f_op_f32(func_3(vec4<f32>(-915f, -1473f, -381f, 874f), vec3<bool>(true, true, true), ~var_0)))), func_2(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 27592u, 1u), vec3<u32>(var_0, 0u, u_input.a.x))), _wgslsmith_mod_u32(93343u, var_0 >> (u_input.b.x % 32u))), func_5(func_5(func_5(Struct_3(Struct_1(63957i, 0u), vec2<bool>(false, true), -916f)))), ~vec2<u32>(var_0, ~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), vec2<bool>(!((arg_2 >= -13529i) || true), true), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    return func_2(_wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(u_input.a.x, var_0)), ~u_input.a.zy), func_5(Struct_3(Struct_1(1i, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, u_input.a.x, 0u), vec4<u32>(24960u, 51668u, u_input.b.x, var_0))), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) + 831f))), u_input.b.xx, _wgslsmith_f_op_f32(f32(-1f) * -459f));
}

fn func_7(arg_0: Struct_2) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global0.x)), global0.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(-1000f, global0.x, 579f)), vec3<f32>(global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(605f, global0.x), global0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 128f, func_5(func_5(Struct_3(Struct_1(-36898i, 32864u), vec2<bool>(true, false), 1343f))).c))));
    let var_0 = 1u;
    var var_1 = func_1(vec3<i32>(~_wgslsmith_add_i32(func_4(1i, Struct_2(var_0), u_input.b.yx, Struct_5(-1i)).a, ~(-1i)), ~func_5(Struct_3(Struct_1(-5092i, 69403u), vec2<bool>(false, false), 345f)).a.a, ~0i), _wgslsmith_f_op_f32(f32(-1f) * -1450f), firstLeadingBit(countOneBits(2147483647i))).a;
    var var_2 = 29333i;
    return firstLeadingBit(min(reverseBits(countOneBits(countOneBits(vec2<i32>(-45241i, 23188i)))), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-18829i, -90159i)), ~vec2<i32>(0i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 57511i), vec2<i32>(21937i, -2147483647i)), _wgslsmith_sub_i32(37932i, 2147483647i))), countOneBits(vec3<i32>(abs(-10663i), reverseBits(43824i), ~(-13200i))) | ~vec3<i32>(2147483647i >> (u_input.a.x % 32u), 1i, 0i));
    let var_1 = _wgslsmith_sub_vec2_i32(abs(func_7(func_1(-vec3<i32>(-5976i, -16214i, -21564i), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_mod_i32(-33134i, var_0.x)))), var_0.zy);
    global0 = vec3<f32>(-498f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(740f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -846f)));
    let var_2 = vec4<u32>(~(min(func_1(vec3<i32>(var_0.x, var_1.x, var_0.x), -171f, -1i).a, u_input.b.x & u_input.b.x) >> (u_input.a.x % 32u)), func_4(select(-1i, var_0.x, true), Struct_2(4294967295u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 41220u), u_input.a), reverseBits(abs(83518u))), func_6(Struct_3(func_5(Struct_3(Struct_1(22676i, u_input.b.x), vec2<bool>(true, true), 419f)).a, select(vec2<bool>(true, true), vec2<bool>(true, false), false), global0.x), Struct_2(abs(u_input.a.x)), vec2<bool>(true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false)))).b, 0u, u_input.b.x);
    global1 = array<vec4<f32>, 5>();
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1821f, 740f) * vec3<f32>(global0.x, global0.x, -100f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, 214f, true)), 126f, _wgslsmith_f_op_f32(global0.x + global0.x)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1045f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) + vec3<f32>(global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))))))));
    let var_3 = var_2.x;
    let var_4 = global0.x;
    let var_5 = _wgslsmith_dot_vec3_u32(countOneBits(var_2.yxy), select(min(firstTrailingBit(~u_input.a), select(u_input.b, var_2.wxz, select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), vec3<u32>(abs(30770u), func_5(Struct_3(Struct_1(var_0.x, var_3), vec2<bool>(false, true), 793f)).a.b, func_5(Struct_3(Struct_1(1i, 1u), vec2<bool>(false, false), 1000f)).a.b), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), all(vec4<bool>(false, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

