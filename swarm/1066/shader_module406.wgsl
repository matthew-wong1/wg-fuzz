struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = Struct_3(arg_2, 35553i & arg_2.a.a);
    var_0 = Struct_3(Struct_2(Struct_1(arg_2.a.a, ~(~vec4<u32>(u_input.a.x, arg_2.a.b.x, 63027u, 4294967295u)), (0i | var_0.a.a.a) | abs(2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(273f, 1563f)) * arg_2.b))), _wgslsmith_f_op_f32(var_0.a.c - 1488f)), 42649i);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.a.b))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, -1255f, -1685f)) + vec3<f32>(-170f, -1000f, 1600f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-723f, var_0.a.c, 376f) - vec3<f32>(var_0.a.b, 1000f, 1402f)) - vec3<f32>(var_0.a.b, var_0.a.b, -849f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, -504f, var_1) + vec3<f32>(arg_2.b, var_1, arg_2.b)), vec3<f32>(var_1, var_0.a.c, -457f)))), vec3<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(1548f + -1077f)), var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(484f * var_1))))));
    var var_3 = 76901u;
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xy - var_2.yz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, arg_2.c)))), firstTrailingBit(vec4<u32>(9666u, arg_1, u_input.a.x, var_0.a.a.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.c * var_1), _wgslsmith_f_op_f32(-var_2.x))))), -1114f, (true || arg_0.x) || arg_0.x)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = !(!select(vec2<bool>(false, arg_0.a.a <= arg_0.a.a), arg_3.xz, true));
    global0 = !select(arg_3.zz, !vec2<bool>(!global0.x, arg_3.x || true), !arg_3.zy);
    let var_0 = arg_1;
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_i32(arg_0.a.a, arg_0.a.a), vec4<u32>(~u_input.a.x, 0u << (arg_0.a.b.x % 32u), ~4294967295u, u_input.a.x), _wgslsmith_div_i32(39251i, arg_0.a.c) | (arg_0.a.c >> (8505u % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1443f)))), _wgslsmith_f_op_f32(1172f * _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(sign(1299f))))), arg_0.a.a);
    let var_2 = 5253u;
    return Struct_1(_wgslsmith_div_i32(firstTrailingBit(min(_wgslsmith_clamp_i32(0i, arg_0.a.c, arg_0.a.a), ~var_1.b)), i32(-1i) * -arg_0.a.c), select(vec4<u32>(1u, 1u >> (0u % 32u), 0u, u_input.a.x), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a.a.b.x, 4294967295u, 1u, 4294967295u), var_1.a.a.b), vec4<bool>(!arg_3.x, true, all(arg_3), global0.x)) >> (reverseBits(~vec4<u32>(62011u, 62650u, var_2, 4294967295u)) % vec4<u32>(32u)), abs(~var_1.a.a.c));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(arg_2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.x)))), _wgslsmith_div_f32(268f, -1055f), -2105f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(507f)))))));
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1761f, -1901f, -2318f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1793f, arg_2.a.b, _wgslsmith_f_op_f32(-530f * 1028f)) - vec4<f32>(-469f, -768f, _wgslsmith_f_op_f32(-arg_3.x), -721f))));
    var var_3 = func_2(vec2<bool>(true, arg_1.x), ~_wgslsmith_div_u32(1u, arg_2.a.a.b.x), arg_2.a);
    var var_4 = select(true & (_wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_mod_u32(1u, max(var_3.b.x, firstLeadingBit(1u))) >= _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.a.a.b.x, u_input.a.x), vec2<u32>(var_3.b.x >> (arg_0.a.a.b.x % 32u), ~1u)), true);
    return arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = func_4(Struct_5(Struct_2(func_3(Struct_2(arg_0.a, 729f, arg_0.b), func_2(vec2<bool>(false, true), 4294967295u, Struct_2(arg_0.a, 2644f, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1246f, arg_0.c, -1985f, arg_0.c)), vec3<bool>(global0.x, false, true)), arg_0.c, 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1121f - arg_0.b), _wgslsmith_f_op_f32(-126f - arg_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(111f)), _wgslsmith_f_op_f32(-arg_0.b)))), Struct_3(arg_0, _wgslsmith_dot_vec2_i32(~vec2<i32>(22783i, arg_0.a.a), -vec2<i32>(arg_0.a.c, -2325i))), !select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), false), select(vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), !vec2<bool>(false, global0.x)), arg_0.a), select(vec2<bool>(global0.x, all(select(vec3<bool>(false, false, false), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true)))), !vec2<bool>(global0.x != true, global0.x), global0.x), Struct_3(Struct_2(arg_0.a, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1127f)))), arg_0.a.a), vec3<f32>(arg_0.c, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f))));
    let var_1 = Struct_5(func_4(Struct_5(Struct_2(Struct_1(arg_0.a.c, var_0.a.a.b, -2147483647i), -1232f, _wgslsmith_f_op_f32(arg_0.c - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -645f), var_0, vec2<bool>(var_0.a.a.a < var_0.b, all(vec4<bool>(true, false, false, false))), Struct_1(-8527i, ~arg_0.a.b, var_0.b)), vec2<bool>(all(vec2<bool>(global0.x, global0.x)), any(vec3<bool>(false, true, true))), var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c, 657f, 1981f) - vec3<f32>(819f, -262f, arg_0.c)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.c, var_0.a.c, -1610f))))).a, 380f, func_4(Struct_5(Struct_2(Struct_1(var_0.a.a.c, var_0.a.a.b, -2147483647i), _wgslsmith_f_op_f32(ceil(arg_0.b)), 234f), func_4(Struct_5(Struct_2(Struct_1(53632i, vec4<u32>(var_0.a.a.b.x, arg_0.a.b.x, u_input.a.x, 51994u), var_0.a.a.c), -144f, 722f), var_0.a.c, Struct_3(Struct_2(Struct_1(0i, var_0.a.a.b, -2147483647i), arg_0.c, arg_0.c), arg_0.a.a), vec2<bool>(global0.x, true), Struct_1(43434i, vec4<u32>(arg_0.a.b.x, u_input.a.x, arg_1.x, 44227u), 2147483647i)), vec2<bool>(false, global0.x), var_0, vec3<f32>(616f, -1093f, arg_0.c)).a.c, var_0, !(!vec2<bool>(global0.x, global0.x)), func_3(Struct_2(arg_0.a, 874f, 893f), func_2(vec2<bool>(true, false), 4294967295u, var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1316f, 415f, arg_0.b, arg_0.b)), vec3<bool>(false, global0.x, false))), select(vec2<bool>(true, true), vec2<bool>(global0.x & true, select(global0.x, global0.x, false)), !(!vec2<bool>(global0.x, false))), func_4(Struct_5(func_4(Struct_5(arg_0, var_0.a.c, Struct_3(var_0.a, arg_0.a.c), vec2<bool>(global0.x, true), arg_0.a), vec2<bool>(false, false), Struct_3(arg_0, var_0.b), vec3<f32>(-608f, 1914f, 627f)).a, -623f, Struct_3(var_0.a, arg_0.a.a), !vec2<bool>(global0.x, global0.x), func_3(Struct_2(Struct_1(18207i, vec4<u32>(1u, 0u, 4060u, arg_0.a.b.x), -8908i), var_0.a.b, arg_0.c), Struct_4(vec2<f32>(461f, arg_0.b), vec4<u32>(arg_0.a.b.x, var_0.a.a.b.x, 4294967295u, arg_1.x), var_0.a.b), vec4<f32>(var_0.a.b, var_0.a.b, -630f, 274f), vec3<bool>(true, global0.x, global0.x))), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), true)), func_4(Struct_5(arg_0, -917f, var_0, vec2<bool>(global0.x, true), arg_0.a), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, true)), Struct_3(arg_0, -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2622f, arg_0.b, 1102f) + vec3<f32>(arg_0.c, 1639f, var_0.a.b))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c, -1621f, -115f)))), vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) - 1124f), arg_0.c)), vec2<bool>(all(select(vec2<bool>(false, global0.x), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x))), global0.x), func_3(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * arg_0.c), 1622f)), _wgslsmith_f_op_f32(-var_0.a.b)), func_2(vec2<bool>(true, true), u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xx), var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(595f, 981f, -472f, var_0.a.b) * vec4<f32>(var_0.a.c, -446f, 248f, var_0.a.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1324f, arg_0.b, var_0.a.b, 1000f) + vec4<f32>(arg_0.b, 643f, arg_0.c, -791f)))), !select(!vec3<bool>(global0.x, global0.x, true), !vec3<bool>(true, true, global0.x), select(true, true, true))));
    global0 = select(!(!select(var_1.d, vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(false, !(!(!var_1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -415f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1173f))))));
    let var_2 = global0.x | ((-var_0.a.a.c > (firstLeadingBit(15462i) | (var_1.c.b ^ arg_0.a.c))) & false);
    global0 = !select(select(select(vec2<bool>(var_1.d.x, var_2), var_1.d, !var_1.d), vec2<bool>(true, select(true, var_2, false)), vec2<bool>(any(vec3<bool>(false, false, false)), any(vec2<bool>(var_2, true)))), vec2<bool>(_wgslsmith_f_op_f32(1098f * 752f) <= _wgslsmith_f_op_f32(sign(1118f)), false), vec2<bool>(~arg_0.a.a < _wgslsmith_mod_i32(var_0.a.a.a, -53517i), var_2));
    return _wgslsmith_f_op_f32(f32(-1f) * -824f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(false, true);
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(163f * _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(53293i, vec4<u32>(u_input.a.x, 17753u, 5814u, 1368u), -1i), 262f, -526f), u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, 0u)))), _wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(step(-1353f, -486f)), _wgslsmith_f_op_f32(-1f)));
    global0 = vec2<bool>(any(!select(select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, false), vec3<bool>(true, global0.x, true)), select(vec3<bool>(true, false, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x)), global0.x)), !(!any(vec2<bool>(true, global0.x))));
    let var_1 = Struct_5(Struct_2(func_4(Struct_5(Struct_2(Struct_1(2147483647i, vec4<u32>(4877u, u_input.a.x, 10243u, 6674u), -1i), -331f, var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), func_4(Struct_5(Struct_2(Struct_1(-2147483647i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19045u), -1i), var_0.x, -543f), var_0.x, Struct_3(Struct_2(Struct_1(1i, vec4<u32>(u_input.a.x, u_input.a.x, 16586u, u_input.a.x), -1i), var_0.x, var_0.x), -1i), vec2<bool>(false, global0.x), Struct_1(4984i, vec4<u32>(11445u, 4294967295u, u_input.a.x, 4294967295u), 1i)), vec2<bool>(global0.x, true), Struct_3(Struct_2(Struct_1(-2147483647i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), 1i), var_0.x, var_0.x), 0i), var_0.zzy), !vec2<bool>(global0.x, global0.x), func_3(Struct_2(Struct_1(-39892i, vec4<u32>(u_input.a.x, 1553u, 11296u, u_input.a.x), 29318i), 162f, var_0.x), Struct_4(vec2<f32>(1056f, var_0.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 26827u), -289f), vec4<f32>(var_0.x, 916f, var_0.x, -380f), vec3<bool>(global0.x, global0.x, global0.x))), vec2<bool>(!global0.x, true), Struct_3(Struct_2(Struct_1(1i, vec4<u32>(30565u, 0u, 4294967295u, u_input.a.x), 0i), var_0.x, var_0.x), ~(-1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-950f, 392f, var_0.x))).a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1948f, 1064f, global0.x == global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f - var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1363f)))))), 678f, Struct_3(func_4(Struct_5(func_4(Struct_5(Struct_2(Struct_1(-17937i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), 2147483647i), var_0.x, 1042f), 1252f, Struct_3(Struct_2(Struct_1(-1i, vec4<u32>(u_input.a.x, 20297u, u_input.a.x, 4294967295u), -57404i), -453f, var_0.x), -2147483647i), vec2<bool>(false, true), Struct_1(2147483647i, vec4<u32>(25270u, 1u, u_input.a.x, 1u), 1i)), vec2<bool>(false, true), Struct_3(Struct_2(Struct_1(-2147483647i, vec4<u32>(32950u, u_input.a.x, u_input.a.x, 1u), 21079i), 1747f, var_0.x), 16316i), vec3<f32>(var_0.x, var_0.x, var_0.x)).a, _wgslsmith_f_op_f32(round(1234f)), Struct_3(Struct_2(Struct_1(-27842i, vec4<u32>(20816u, u_input.a.x, 4294967295u, u_input.a.x), 15117i), -242f, var_0.x), 1i), !vec2<bool>(true, global0.x), func_4(Struct_5(Struct_2(Struct_1(-31375i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 1i), 931f, var_0.x), 1468f, Struct_3(Struct_2(Struct_1(-1i, vec4<u32>(15642u, 4294967295u, 0u, u_input.a.x), 2147483647i), var_0.x, 407f), 2781i), vec2<bool>(false, false), Struct_1(-2147483647i, vec4<u32>(u_input.a.x, u_input.a.x, 0u, 35730u), -24333i)), vec2<bool>(global0.x, false), Struct_3(Struct_2(Struct_1(34574i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -1187i), var_0.x, -142f), 2147483647i), var_0.wyz).a.a), select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), vec2<bool>(global0.x, false), true), Struct_3(func_4(Struct_5(Struct_2(Struct_1(0i, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), -7497i), 962f, var_0.x), 623f, Struct_3(Struct_2(Struct_1(-1i, vec4<u32>(u_input.a.x, 98585u, u_input.a.x, 84957u), 19627i), var_0.x, var_0.x), -2147483647i), vec2<bool>(global0.x, global0.x), Struct_1(-29545i, vec4<u32>(32735u, u_input.a.x, 0u, u_input.a.x), -1i)), vec2<bool>(true, global0.x), Struct_3(Struct_2(Struct_1(17233i, vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), -1i), var_0.x, 1067f), -12432i), var_0.wxy).a, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(288f, var_0.x, var_0.x), global0.x)))).a, abs(0i)), select(!(!vec2<bool>(global0.x, false)), !(!vec2<bool>(false, global0.x)), true), func_3(func_4(Struct_5(Struct_2(Struct_1(18147i, vec4<u32>(u_input.a.x, u_input.a.x, 25824u, u_input.a.x), 17757i), -178f, var_0.x), _wgslsmith_f_op_f32(var_0.x + -1706f), func_4(Struct_5(Struct_2(Struct_1(39302i, vec4<u32>(1u, u_input.a.x, u_input.a.x, 114642u), 1i), var_0.x, var_0.x), var_0.x, Struct_3(Struct_2(Struct_1(24815i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8279u), 1i), var_0.x, var_0.x), 14661i), vec2<bool>(global0.x, global0.x), Struct_1(2147483647i, vec4<u32>(85426u, u_input.a.x, 0u, u_input.a.x), 0i)), vec2<bool>(false, global0.x), Struct_3(Struct_2(Struct_1(-35140i, vec4<u32>(u_input.a.x, u_input.a.x, 29379u, u_input.a.x), 79117i), var_0.x, var_0.x), -1i), vec3<f32>(var_0.x, var_0.x, -820f)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(true, true)), func_4(Struct_5(Struct_2(Struct_1(0i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -3153i), 675f, var_0.x), -1785f, Struct_3(Struct_2(Struct_1(2147483647i, vec4<u32>(0u, u_input.a.x, 33711u, u_input.a.x), 2147483647i), var_0.x, var_0.x), -2147483647i), vec2<bool>(global0.x, true), Struct_1(-5948i, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), 31328i)), vec2<bool>(false, false), Struct_3(Struct_2(Struct_1(1i, vec4<u32>(u_input.a.x, u_input.a.x, 29080u, u_input.a.x), 55052i), var_0.x, -2275f), 1i), vec3<f32>(var_0.x, var_0.x, var_0.x)).a.a), select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), global0.x), vec2<bool>(false, global0.x), true), func_4(Struct_5(Struct_2(Struct_1(-29350i, vec4<u32>(u_input.a.x, 31986u, u_input.a.x, 4294967295u), -2147483647i), -1443f, 226f), var_0.x, Struct_3(Struct_2(Struct_1(-2147483647i, vec4<u32>(u_input.a.x, 15018u, 67458u, u_input.a.x), -1i), var_0.x, var_0.x), -38288i), vec2<bool>(global0.x, true), Struct_1(-2086i, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 41617u), 10373i)), vec2<bool>(global0.x, false), func_4(Struct_5(Struct_2(Struct_1(-17288i, vec4<u32>(u_input.a.x, 42147u, u_input.a.x, 2124u), -1i), 1151f, -436f), var_0.x, Struct_3(Struct_2(Struct_1(-60614i, vec4<u32>(143353u, u_input.a.x, u_input.a.x, 1u), 12750i), var_0.x, var_0.x), 28396i), vec2<bool>(false, global0.x), Struct_1(-6066i, vec4<u32>(12648u, 35590u, u_input.a.x, u_input.a.x), -41793i)), vec2<bool>(global0.x, true), Struct_3(Struct_2(Struct_1(0i, vec4<u32>(726u, 1u, u_input.a.x, 5575u), 1i), -307f, -392f), 2095i), vec3<f32>(var_0.x, var_0.x, var_0.x)), var_0.wxx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1055f, 1622f), vec3<f32>(-1515f, var_0.x, 1513f), global0.x))).a, Struct_4(_wgslsmith_f_op_vec2_f32(-var_0.yy), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 21017u, 9897u) ^ vec4<u32>(u_input.a.x, 7489u, u_input.a.x, 32665u)), -1161f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, -1363f, 642f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -718f), vec4<f32>(-1000f, var_0.x, 383f, -1314f), vec4<bool>(global0.x, true, true, global0.x))))), select(!select(vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), global0.x)));
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.a.c | ~var_1.c.a.a.a, var_1.c.a.a.a, var_1.e.c) & ~vec3<i32>(min(var_1.e.c, var_1.e.c), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 47877i, 12667i, -2147483647i), vec4<i32>(var_1.c.b, var_1.c.a.a.c, var_1.c.b, 0i)), -1i), vec3<i32>(5437i, _wgslsmith_mod_i32(var_1.e.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, var_1.a.a.c), vec2<i32>(var_1.e.c, 1924i) << (var_1.e.b.ww % vec2<u32>(32u)))), var_1.a.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 304f, -1779f, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2061f, var_1.c.a.c, -197f))))), vec2<i32>(_wgslsmith_add_i32(~(~var_2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.c.a.a.c, -1i, -484i, -9520i), vec4<i32>(var_2.x, var_2.x, 0i, -1i)), max(vec4<i32>(2147483647i, 0i, var_2.x, 0i), vec4<i32>(2147483647i, 2147483647i, 13176i, var_2.x)))), ~_wgslsmith_mult_i32(14595i, i32(-1i) * -34030i)), 4294967295u);
}

