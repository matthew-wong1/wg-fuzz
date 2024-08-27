struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-38092i, 2147483647i, 2147483647i), vec3<i32>(14570i, 0i, 14569i), vec3<i32>(14934i, 60957i, 2147483647i), vec3<i32>(-14489i, 1i, -4293i), vec3<i32>(-49584i, 8171i, -9161i), vec3<i32>(-1453i, i32(-2147483648), -14953i), vec3<i32>(63028i, 0i, 7405i), vec3<i32>(-1i, 49513i, -79362i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_1;
    global0 = array<vec3<i32>, 9>();
    var var_1 = ~firstLeadingBit(vec2<u32>(30514u, ~(~14895u)));
    return true;
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<vec3<i32>, 9>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, 21573u), vec3<u32>(56093u, u_input.a.x, 41269u), vec3<u32>(0u, u_input.a.x, 68672u)) & abs(vec3<u32>(82803u, 4294967295u, 4294967295u))) ^ ~(~vec3<u32>(51511u, 30584u, 4294967295u)), select(~vec3<u32>(0u, 35198u, u_input.a.x), ~vec3<u32>(u_input.a.x, 1u, 4294967295u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 11592u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), arg_0.x)), select(~_wgslsmith_add_vec3_u32(~vec3<u32>(41380u, 85734u, u_input.a.x), ~vec3<u32>(5833u, 0u, 0u)), reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), ~vec3<u32>(1u, u_input.a.x, u_input.a.x))), select(vec3<bool>(arg_0.x, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x)), arg_0.x)));
    var var_1 = ~(~vec4<u32>(~u_input.a.x, var_0, ~firstLeadingBit(0u), firstLeadingBit(firstLeadingBit(u_input.a.x))));
    var var_2 = 1u;
    let var_3 = Struct_1(466f, abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(519i, 1i), vec2<i32>(-27799i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -17653i), vec2<i32>(2147483647i, -1i))) & vec2<i32>(_wgslsmith_mult_i32(-38974i, 1i), -600i)), 1140f, !(!(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))));
    return select(vec3<bool>(arg_0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x), -vec4<i32>(var_3.b.x, 0i, -2147483647i, var_3.b.x)) < -17118i, true), !vec3<bool>(false, any(select(var_3.d.zz, arg_0.zy, arg_0.x)), arg_0.x), var_3.d.wzx);
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec3<bool>(1i != select(-37661i >> (u_input.a.x % 32u), 0i, true), 1u >= (u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)), false), select(vec3<bool>(abs(-16454i) > (-1976i << (u_input.a.x % 32u)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(ceil(-2720f)) > _wgslsmith_f_op_f32(1502f - -1000f)), vec3<bool>(!any(vec2<bool>(true, false)), !func_2(vec2<i32>(13934i, -2147483647i), false, Struct_2(2267u, false, Struct_1(119f, vec2<i32>(-1i, -2147483647i), 303f, vec4<bool>(false, false, false, false)), Struct_1(-102f, vec2<i32>(31544i, 9026i), 1171f, vec4<bool>(true, true, true, false)), vec4<i32>(2147483647i, -2147483647i, 11643i, -37974i)), vec3<i32>(-45995i, 2147483647i, -64178i)), !select(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), func_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true)));
    let var_1 = true;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(_wgslsmith_sub_u32(28005u, u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(47257u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u)), countOneBits(u_input.a.x), firstLeadingBit(~1u), 4294967295u), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, ~1u), 0u, _wgslsmith_add_u32(~0u, abs(u_input.a.x)), u_input.a.x));
    var_2 = _wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    global0 = array<vec3<i32>, 9>();
    return Struct_2(_wgslsmith_clamp_u32(u_input.a.x, 1u, abs(~min(u_input.a.x, 4294967295u))), any(vec2<bool>(all(vec4<bool>(false, var_1, true, false)), all(!vec4<bool>(true, false, var_0.x, var_1)))), Struct_1(_wgslsmith_f_op_f32(min(1358f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1290f))))), vec2<i32>(-1i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-967f - 985f))), !vec4<bool>(!var_1, var_1, func_2(vec2<i32>(2147483647i, -68890i), var_0.x, Struct_2(1u, var_1, Struct_1(-991f, vec2<i32>(-2467i, 1i), -544f, vec4<bool>(true, var_1, true, false)), Struct_1(-709f, vec2<i32>(3464i, -27900i), -143f, vec4<bool>(var_0.x, var_1, var_1, var_1)), vec4<i32>(2147483647i, 0i, -2158i, 2147483647i)), global0[_wgslsmith_index_u32(1u, 9u)]), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(451f))), abs((vec2<i32>(2112i, 22414i) >> (u_input.a % vec2<u32>(32u))) ^ vec2<i32>(-2147483647i, 51226i)), _wgslsmith_f_op_f32(select(-732f, -3778f, all(vec2<bool>(var_1, var_1)))), !select(!vec4<bool>(var_0.x, true, true, true), !vec4<bool>(false, true, var_1, var_0.x), true)), vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(0i, -25227i)) >> (_wgslsmith_mod_u32(u_input.a.x, 34084u) % 32u)), i32(-1i) * -27402i, -abs(-60997i), -23117i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = func_1().c;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(225f, arg_1.d.c, _wgslsmith_div_f32(arg_0.c.c, arg_1.d.a)))));
    let var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c) + _wgslsmith_f_op_f32(trunc(1000f)))) - var_2.d.c), ~arg_0.e.zw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -192f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a) + arg_1.d.c)))), var_0.d);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - arg_1.c.a) - _wgslsmith_f_op_f32(floor(arg_1.c.c))))), 1000f, (-892f > var_2.d.c) && all(func_1().c.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1473f)) - arg_0.d.a))), -469f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-100f, _wgslsmith_f_op_f32(var_4.x * 134f)) - _wgslsmith_f_op_f32(-arg_1.c.c)) * -576f), _wgslsmith_f_op_f32(-620f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3019f, -1000f)), -1759f, -517f, _wgslsmith_f_op_f32(func_4(Struct_2(6716u, true, Struct_1(1572f, vec2<i32>(572i, -2147483647i), 1349f, vec4<bool>(false, true, true, false)), Struct_1(2187f, vec2<i32>(2147483647i, 34010i), -1049f, vec4<bool>(false, false, false, false)), vec4<i32>(-1i, -1i, 39177i, 3296i)), func_1()))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2024f, 1345f, 1059f, 2060f) - vec4<f32>(-1196f, 1595f, -1887f, 171f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(548f, -395f, 2506f, 2075f)))))))));
    var var_1 = !(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(u_input.a.x), u_input.a.x), max(u_input.a.x, u_input.a.x) ^ ~1u, u_input.a.x | 4294967295u) < _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1221f)))), vec2<i32>(-(~(-1i)) >> (u_input.a.x % 32u), reverseBits(i32(-1i) * -2440i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 139f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-931f)), _wgslsmith_f_op_f32(step(-217f, 2550f)), -777f > var_0.x)))), !(!vec4<bool>(true, true, true, func_3(vec4<bool>(false, true, true, false)).x)));
    let var_3 = i32(-1i) * -(~((i32(-1i) * -2147483647i) ^ _wgslsmith_mod_i32(var_2.b.x, var_2.b.x)));
    global0 = array<vec3<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_3, var_2.b.x, 280i), vec4<i32>(var_2.b.x, var_2.b.x, 82526i, var_2.b.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_2.b, vec2<i32>(var_3, 46820i)), var_2.b), -abs(-8917i)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 4294967295u) << (~u_input.a % vec2<u32>(32u))), ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f), _wgslsmith_f_op_f32(var_2.c * var_2.a)) * var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(116f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1606f * var_0.x))))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<u32>(u_input.a.x, 68746u, 2323u)))));
}

