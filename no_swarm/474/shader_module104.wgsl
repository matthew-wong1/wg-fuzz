struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-497i, 31026i);

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-2057f, -529f), vec2<f32>(499f, -1000f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = ~countOneBits(~(~(vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, u_input.e) >> (vec3<u32>(arg_0.c.a.x, u_input.c, arg_0.b.a.x) % vec3<u32>(32u)))));
    return ~(~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_0.b.a.x, 93088u, 29253u, var_0.x), vec4<u32>(42101u, 2209u, 1u, var_0.x), arg_1.a.b), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(47533u, 1u, arg_0.c.a.x, arg_0.c.a.x)), vec4<u32>(1u, var_0.x, 14909u, 4294967295u))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> vec2<i32> {
    global0 = vec2<i32>(abs(global0.x), global0.x & (i32(-1i) * -10756i));
    let var_0 = -2147483647i;
    let var_1 = Struct_1(arg_0.b.a.a, any(vec2<bool>(!any(vec2<bool>(true, true)), any(vec4<bool>(arg_1, arg_0.b.a.b, true, true)))), -646f);
    var var_2 = Struct_4(arg_3.a.c.b, arg_3.a.c, arg_0, arg_3.a.c.b, vec2<f32>(_wgslsmith_f_op_f32(ceil(-748f)), 1028f));
    global1 = array<vec2<f32>, 2>();
    return abs(-vec2<i32>(var_0, -1i));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-775f))), _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(ceil(arg_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(510f, 984f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(149f + arg_1.x))));
    global0 = _wgslsmith_sub_vec2_i32(func_3(Struct_3(~(~vec2<u32>(1u, 421u)), Struct_2(Struct_1(arg_1.x, true, 207f))), true & arg_2, -259f, Struct_5(Struct_4(Struct_2(Struct_1(487f, true, -481f)), Struct_3(vec2<u32>(1u, 4638u), Struct_2(Struct_1(-1085f, true, arg_1.x))), Struct_3(vec2<u32>(4294967295u, 0u), Struct_2(Struct_1(arg_1.x, false, -936f))), Struct_2(Struct_1(-1000f, false, 1495f)), arg_1.wy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1541f, 136f)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32((vec2<i32>(-24516i, 2147483647i) ^ vec2<i32>(u_input.d, global0.x)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 4404i), vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 11932i), vec2<i32>(-2147483647i, arg_0) | vec2<i32>(global0.x, u_input.b))), vec2<i32>(u_input.a, abs(arg_0))));
    let var_1 = 1172f;
    global1 = array<vec2<f32>, 2>();
    let var_2 = Struct_2(Struct_1(var_0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) - var_0.x))));
    return Struct_4(Struct_2(var_2.a), Struct_3(~select(vec2<u32>(0u, 50810u), vec2<u32>(1252u, u_input.e), all(vec3<bool>(var_2.a.b, var_2.a.b, true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.x), false, _wgslsmith_f_op_f32(1168f - -190f)))), Struct_3(_wgslsmith_add_vec2_u32(~reverseBits(vec2<u32>(u_input.c, 0u)), select(~vec2<u32>(4294967295u, 64611u), vec2<u32>(53558u, 17551u) >> (vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u)), vec2<bool>(true, arg_2))), Struct_2(var_2.a)), Struct_2(Struct_1(-468f, 28702u != u_input.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(397f)))))), vec2<f32>(-116f, 1184f));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> bool {
    global1 = array<vec2<f32>, 2>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(143f, arg_0.c.b.a.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.b.a.c)) * arg_0.c.b.a.a)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.b.a.c), _wgslsmith_f_op_f32(-arg_0.a.a.c)));
    var var_2 = vec3<f32>(334f, _wgslsmith_f_op_f32(min(arg_0.a.a.a, 587f)), 1000f);
    var var_3 = ~firstLeadingBit(vec3<u32>(1u, 1u, 1u) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, arg_1, 4294967295u), vec3<u32>(arg_1, u_input.e, arg_0.b.a.x))) >> (vec3<u32>(55239u, reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, u_input.e, arg_0.c.a.x, arg_0.c.a.x), vec4<u32>(u_input.e, 2472u, 0u, 53461u), vec4<bool>(arg_0.d.a.b, false, true, true)), vec4<u32>(u_input.e, arg_0.b.a.x, 1u, u_input.e))), ~1u ^ ~u_input.c) % vec3<u32>(32u));
    return all(!select(!vec3<bool>(false, arg_0.b.b.a.b, arg_0.a.a.b), !vec3<bool>(arg_0.c.b.a.b, true, var_0), arg_0.c.a.x <= _wgslsmith_sub_u32(arg_1, var_3.x)));
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0.a.b.b.a;
    let var_1 = func_3(Struct_3(_wgslsmith_div_vec2_u32(min(vec2<u32>(1u, 4294967295u) | arg_0.a.c.a, arg_0.a.c.a & vec2<u32>(arg_0.a.c.a.x, 29396u)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.a.b.a, arg_0.a.b.a), _wgslsmith_mod_vec2_u32(arg_0.a.b.a, vec2<u32>(0u, u_input.c)))), arg_0.a.c.b), (var_0.b & select(arg_2, func_2(global0.x, vec4<f32>(594f, -1282f, 904f, var_0.c), var_0.b).c.b.a.b, arg_0.a.a.a.b)) == arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.a.d.a.a), _wgslsmith_f_op_f32(var_0.c - -335f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(352f + var_0.a)) + _wgslsmith_f_op_f32(f32(-1f) * -846f))), arg_0);
    var var_2 = vec2<bool>(select(true, var_0.b, any(!(!vec4<bool>(var_0.b, true, arg_0.a.c.b.a.b, true)))), u_input.c != arg_0.a.b.a.x);
    var var_3 = !(!(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -59205i, -58858i), vec3<i32>(11230i, var_1.x, u_input.a)) > (-global0.x & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_3, 0i, -2147483647i), vec4<i32>(-1i, 13874i, arg_3, 2147483647i)))));
    global1 = array<vec2<f32>, 2>();
    return func_2(-arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, 655f, -301f, arg_0.a.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(582f, arg_0.b.x, 857f, var_0.a) * vec4<f32>(-1759f, var_0.a, var_0.a, var_0.c)), arg_1 != arg_0.a.c.a.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(686f)), var_0.c, 333f, _wgslsmith_f_op_f32(var_0.c + 236f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -408f, -1901f, arg_0.a.e.x)))), true).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(u_input.c ^ u_input.c, _wgslsmith_sub_u32(1u, ~select(4294967295u, reverseBits(4294967295u), all(vec2<bool>(true, true)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.e, 135108u, 29900u), func_1(Struct_4(Struct_2(Struct_1(718f, false, -163f)), Struct_3(vec2<u32>(0u, u_input.c), Struct_2(Struct_1(-1461f, false, 1783f))), Struct_3(vec2<u32>(u_input.e, u_input.e), Struct_2(Struct_1(-1363f, true, 1657f))), Struct_2(Struct_1(-262f, true, 213f)), global1[_wgslsmith_index_u32(u_input.c, 2u)]), Struct_2(Struct_1(120f, true, -387f)), vec4<f32>(-485f, -163f, 710f, 321f)), 6834u), ~vec3<u32>(17710u, u_input.e, u_input.e)));
    let var_1 = Struct_3(~(~(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(19893u, 77638u), vec2<bool>(true, false)) | ~vec2<u32>(1u, u_input.c))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(false, false, true, true)) && all(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(284f, 634f) - _wgslsmith_f_op_f32(min(1438f, -568f))))));
    var var_2 = Struct_4(func_5(Struct_5(Struct_4(var_1.b, var_1, var_1, Struct_2(var_1.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.c, 1267f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, -199f, var_1.b.a.c))))), var_1.a.x, func_4(func_2(global0.x, vec4<f32>(-592f, 604f, var_1.b.a.c, var_1.b.a.c), var_1.b.a.b | var_1.b.a.b), 26436u), ~(-func_3(var_1, true, var_1.b.a.c, Struct_5(Struct_4(var_1.b, var_1, var_1, var_1.b, global1[_wgslsmith_index_u32(var_1.a.x, 2u)]), vec3<f32>(var_1.b.a.a, 410f, var_1.b.a.c))).x)), var_1, Struct_3(vec2<u32>(var_1.a.x, var_1.a.x) & var_1.a, Struct_2(var_1.b.a)), var_1.b, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(10079u, 2u)]));
    var var_3 = Struct_2(var_1.b.a);
    let var_4 = Struct_3(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_0, 1u, 0u)), vec4<u32>(var_2.b.a.x, 0u, 0u, 4294967295u))), _wgslsmith_mod_u32(65257u, 91031u)), func_2(_wgslsmith_div_i32(-31081i, -58639i), vec4<f32>(-102f, var_1.b.a.a, 1000f, 1077f), true).c.b);
    global0 = ~(~(-(vec2<i32>(-1i) * -vec2<i32>(global0.x, global0.x))));
    let var_5 = Struct_4(func_2(reverseBits(_wgslsmith_sub_i32(u_input.d | global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.a.c, 191f, var_1.b.a.a, var_3.a.a) + vec4<f32>(var_2.e.x, 715f, 1000f, -473f))))), true).d, Struct_3(var_4.a, func_2(_wgslsmith_add_i32(u_input.b, global0.x) ^ (u_input.a ^ -42987i), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.a.c, var_2.a.a.a, var_4.b.a.c, var_4.b.a.c))), var_2.c.b.a.b).d), var_1, var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~1u, 2u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.e) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.b.a.c, 772f)) * _wgslsmith_f_op_vec2_f32(step(var_2.e, var_2.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~firstLeadingBit(~vec4<u32>(24349u, 4294967295u, var_4.a.x, var_0)), vec4<u32>(~48566u, ~var_4.a.x, 4294967295u, var_1.a.x >> (u_input.c % 32u)) | vec4<u32>(firstLeadingBit(1u), 1u, ~23770u, _wgslsmith_clamp_u32(0u, var_2.b.a.x, 39955u))), abs(vec4<i32>(-firstLeadingBit(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -22580i, global0.x), vec3<i32>(u_input.d, 31549i, global0.x)) << (1u % 32u), ~countOneBits(-19987i), u_input.a)));
}

