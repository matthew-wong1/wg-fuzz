struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(957f + -986f), _wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(1489f - 2306f), _wgslsmith_f_op_f32(min(2976f, -883f))))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, 39395i), vec3<i32>(-5880i, -1i, -1i)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(-8163i, _wgslsmith_sub_i32(22358i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -35366i, -1i, 0i), vec4<i32>(0i, 32127i, 1i, -19547i)))), abs(-1i), _wgslsmith_clamp_u32(25753u, 4294967295u, _wgslsmith_mult_u32(1u, arg_0 >> (arg_0 % 32u)))), abs(arg_0) < u_input.a.x, select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, false), all(vec3<bool>(false, true, true))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(false, false))))));
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1689f - var_0.a.a.x) * _wgslsmith_f_op_f32(trunc(-431f))), _wgslsmith_f_op_f32(919f * _wgslsmith_f_op_f32(var_0.a.a.x * var_0.a.a.x)))))));
    return _wgslsmith_mod_i32(var_0.a.c, var_0.a.b.x);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = Struct_2(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.a.x), 153f)) * _wgslsmith_f_op_f32(-arg_2.a.a.x)), select(!vec4<bool>(arg_0, arg_2.c.x & false, !arg_0, arg_0), arg_2.c, !select(vec4<bool>(true, false, false, arg_2.b), !arg_2.c, all(vec2<bool>(arg_0, true)))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.a.x, -432f, arg_2.a.a.x, arg_2.a.a.x), arg_2.a.a, false)))))), abs(~(-vec3<i32>(0i, arg_2.a.c, -70152i))), select(arg_1, arg_1, true) | countOneBits(_wgslsmith_add_i32(-36701i, 2147483647i)), ~9109u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.d.a, var_0.d.a))), vec4<f32>(_wgslsmith_div_f32(-1775f, arg_2.a.a.x), _wgslsmith_f_op_f32(690f + -1852f), _wgslsmith_f_op_f32(-725f - -731f), -871f))))) - _wgslsmith_f_op_vec4_f32(sign(var_0.a.a)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a.x, 1000f, var_0.a.a.x, -377f)) - _wgslsmith_f_op_vec4_f32(-var_0.a.a)), max(var_0.d.b, vec3<i32>(arg_2.a.b.x, 37796i ^ var_0.a.b.x, arg_1)), _wgslsmith_mult_i32(arg_1, -77403i), 0u), -636f, select(var_0.c, arg_2.c, var_0.c.x), var_0.d);
    var var_3 = global0[_wgslsmith_index_u32(1u, 25u)];
    var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.a.x, 669f)), _wgslsmith_f_op_f32(-var_0.b)), arg_2.a.b, countOneBits(arg_2.a.c) >> (25612u % 32u), u_input.a.x), -1155f, arg_2.c, Struct_1(var_2.d.a, var_0.d.b, -abs(_wgslsmith_mult_i32(-7706i, -29910i)), _wgslsmith_clamp_u32(1u, abs(min(arg_2.a.d, 6984u)), 22906u)));
    return !(true || any(!select(var_2.c.xww, vec3<bool>(true, false, true), var_0.c.xyx)));
}

fn func_2() -> vec4<f32> {
    global0 = array<Struct_4, 25>();
    let var_0 = select(vec4<bool>(true, true, true, true), select(!vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), true), func_4(true, -1i, Struct_3(Struct_1(vec4<f32>(-533f, -1000f, -831f, 396f), vec3<i32>(-74692i, 2147483647i, 4732i), func_3(u_input.a.x), u_input.a.x), false, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(round(1075f)) >= -367f;
    let var_2 = 4294967295u;
    var_1 = true;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-894f, 612f, -450f, -353f))), _wgslsmith_div_vec4_f32(vec4<f32>(-421f, 986f, -1000f, 305f), vec4<f32>(1651f, -518f, -1000f, -201f)))), vec4<f32>(_wgslsmith_f_op_f32(-298f * 476f), 179f, _wgslsmith_f_op_f32(select(-1346f, -1250f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1132f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, -2652f, 1120f, 496f)) * _wgslsmith_div_vec4_f32(vec4<f32>(848f, -920f, 1024f, -2468f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1433f, 1000f, 1000f))))) - vec4<f32>(1f, 1f, 1f, 1f));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), vec3<i32>(1i, 1i, 1i), countOneBits(abs(2147483647i)), _wgslsmith_add_u32(u_input.a.x, 4294967295u | _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)))), _wgslsmith_f_op_vec4_f32(func_2()).x, select(vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), any(vec2<bool>(true, true)), any(vec4<bool>(false, false, true, false)), !any(vec3<bool>(true, false, false))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), true, 1639i >= _wgslsmith_clamp_i32(2147483647i, 2147483647i, -31522i), true), vec4<bool>(!select(false, true, true), false, true, all(vec3<bool>(true, true, true)) || (1878u > u_input.a.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-870f, _wgslsmith_f_op_vec4_f32(func_2()).x)), _wgslsmith_div_f32(281f, _wgslsmith_f_op_f32(arg_0 * arg_0)), 483f, -413f), select(abs(vec3<i32>(2147483647i, -7266i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 44393i), vec3<i32>(9744i, 33479i, -20674i)) >> (u_input.a.yxy % vec3<u32>(32u)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), -1i, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, u_input.a.x), ~u_input.a.xyw)));
    let var_1 = vec4<i32>(-_wgslsmith_clamp_i32(var_0.d.c, _wgslsmith_mod_i32(var_0.a.b.x, _wgslsmith_mult_i32(var_0.a.c, 1i)), _wgslsmith_mult_i32(var_0.a.c ^ var_0.a.c, -2147483647i)), ~countOneBits(-53437i), _wgslsmith_sub_i32(~(min(var_0.d.b.x, 69081i) | var_0.a.b.x), 50251i), ~(~(~var_0.a.c)));
    return _wgslsmith_f_op_vec4_f32(round(var_0.d.a));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.x)))))), -141f);
    var var_1 = !vec4<bool>(all(select(select(vec3<bool>(arg_2.x, arg_1, false), vec3<bool>(true, false, false), vec3<bool>(arg_1, arg_2.x, arg_2.x)), select(vec3<bool>(false, true, arg_2.x), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_2.x, arg_2.x)), true)), arg_1, any(select(!vec4<bool>(true, arg_2.x, false, true), vec4<bool>(arg_1, arg_2.x, arg_1, true), false)), (u_input.a.x | 4294967295u) <= _wgslsmith_add_u32(27476u, _wgslsmith_clamp_u32(u_input.a.x, 96u, u_input.a.x)));
    var var_2 = global0[_wgslsmith_index_u32(~u_input.a.x, 25u)];
    let var_3 = var_2.a;
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(107542u, var_3.d))) | 8073u, ~(~u_input.a.x), 9335u << (u_input.a.x % 32u), 1u), countOneBits(_wgslsmith_mult_vec4_u32(u_input.a, reverseBits(vec4<u32>(var_2.d.a.d, var_2.d.a.d, 428u, u_input.a.x)))) >> (vec4<u32>(reverseBits(var_3.d), firstLeadingBit(var_3.d | var_2.d.a.d), 0u, ~var_2.a.d) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-360f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-999f, _wgslsmith_f_op_f32(round(726f))) + arg_3.x)) * _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) * _wgslsmith_f_op_vec4_f32(func_1(var_0.x)).x), -746f)))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) - _wgslsmith_f_op_f32(func_5(vec2<i32>(2147483647i, 0i), false, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(func_1(-1857f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2()).x))));
    let var_2 = !any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, any(vec3<bool>(true, false, false))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) + vec4<f32>(-1185f, var_1.x, var_1.x, -1771f)))))), -(~vec3<i32>(13925i, -3416i, -25301i)), 26118i >> (1u % 32u), 17972u), !any(vec3<bool>(var_2, true, var_2)), select(select(select(select(vec4<bool>(var_2, var_2, true, true), vec4<bool>(var_2, true, false, true), true), vec4<bool>(var_2, true, true, false), vec4<bool>(var_2, false, true, var_2)), select(!vec4<bool>(var_2, var_2, var_2, true), select(vec4<bool>(true, false, var_2, var_2), vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, var_2, var_2, true)), true), var_2), vec4<bool>(any(select(vec4<bool>(false, var_2, false, var_2), vec4<bool>(var_2, false, false, var_2), vec4<bool>(var_2, false, var_2, false))), select(var_2 | var_2, var_2, false), true, !any(vec2<bool>(true, var_2))), vec4<bool>(!var_2, var_1.x >= var_1.x, false, var_2)));
    var_1 = var_3.a.a.zxy;
    let var_4 = !select(select(var_3.c, !(!vec4<bool>(true, var_3.c.x, var_3.b, true)), var_3.c), var_3.c, u_input.a.x <= 51423u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.yx, vec4<f32>(1278f, -1050f, _wgslsmith_f_op_f32(func_5(countOneBits(abs(var_3.a.b.zx)), false, !var_4.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, var_1.x, 1176f, -1379f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -200f) + _wgslsmith_f_op_f32(f32(-1f) * -339f)), true))), vec3<u32>(reverseBits(~(~40638u)), reverseBits(abs(_wgslsmith_clamp_u32(var_3.a.d, var_3.a.d, var_3.a.d))), _wgslsmith_div_u32(~4294967295u, (u_input.a.x & var_3.a.d) | abs(0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a.x, var_1.x, var_1.x, 625f)) * var_3.a.a) + vec4<f32>(var_1.x, -1017f, _wgslsmith_f_op_f32(842f * var_1.x), -472f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, var_1.x, var_3.a.a.x, var_1.x))))));
}

