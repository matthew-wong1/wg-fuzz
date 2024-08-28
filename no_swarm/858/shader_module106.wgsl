struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(i32(-2147483648), -55465i), vec2<i32>(i32(-2147483648), -23760i), vec2<i32>(1560i, 26257i), vec2<i32>(-34776i, 0i), vec2<i32>(1i, 0i), vec2<i32>(-26602i, -1i), vec2<i32>(-31052i, 0i), vec2<i32>(-1i, 8736i), vec2<i32>(0i, -51566i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -50656i), vec2<i32>(1i, 2147483647i), vec2<i32>(-25837i, i32(-2147483648)), vec2<i32>(-69423i, -8953i), vec2<i32>(-82953i, 7944i));

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_1(!arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(427f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x))), ~vec4<u32>(arg_1.c.x & 15689u, _wgslsmith_mod_u32(0u, arg_0.c.x), abs(arg_0.d.x), ~39731u) | ~(~arg_0.c), ~vec3<u32>(1u, 1u, max(1u, arg_1.d.x)) ^ abs(vec3<u32>(firstLeadingBit(0u), ~0u, 1u)));
    var var_1 = true;
    var var_2 = reverseBits(-firstTrailingBit(firstTrailingBit(-arg_2.x)));
    let var_3 = arg_0;
    var_1 = any(!vec3<bool>(all(arg_1.a), all(vec2<bool>(var_3.a.x, arg_1.a.x)) != all(arg_0.a), var_3.a.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(-1183f * 297f), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -344f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.b)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<vec2<bool>, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_3.b.x))));
    var var_1 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(1u, arg_3.d.x), 60363u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.d.xz, arg_2.c.xz), _wgslsmith_clamp_u32(reverseBits(29156u), _wgslsmith_mult_u32(arg_3.c.x, arg_3.d.x), abs(32589u)), arg_2.d.x));
    let var_2 = arg_3;
    var var_3 = arg_2;
    return !select(!(!vec4<bool>(false, arg_3.a.x, true, var_3.a.x)), !(!vec4<bool>(true, true, false, var_3.a.x)), true);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = select(!func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1433f, -1163f) + vec2<f32>(arg_0, -1003f)))), ~(u_input.a.x ^ u_input.b.x), Struct_1(!vec3<bool>(arg_2, arg_2, false), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_1, vec4<f32>(arg_0, arg_0, -453f, arg_0), vec4<u32>(1u, 50313u, 67345u, 1u), vec3<u32>(1u, 38119u, 4294967295u)), Struct_1(arg_1, vec4<f32>(808f, arg_0, arg_0, arg_0), vec4<u32>(2886u, 33433u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 30040u)), vec2<i32>(-1i, 13484i))), vec4<u32>(46991u, 37075u, 90804u, 31473u), ~vec3<u32>(48151u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(arg_1.x, arg_2, false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 1836f, arg_0, -1280f), vec4<f32>(arg_0, -1299f, arg_0, -533f))), countOneBits(vec4<u32>(53587u, 42206u, 1u, 30631u)), ~vec3<u32>(41917u, 64479u, 1u))), vec4<bool>(any(vec4<bool>(arg_2, true, true, false)), arg_1.x, select(true, arg_2, false && any(arg_1.yx)), arg_1.x), vec4<bool>(1i <= u_input.a.x, arg_2, _wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_1, vec4<f32>(arg_0, 417f, -1000f, -837f), vec4<u32>(51072u, 1u, 45160u, 84860u), vec3<u32>(0u, 54358u, 0u)), Struct_1(vec3<bool>(true, arg_1.x, arg_1.x), vec4<f32>(arg_0, arg_0, 607f, arg_0), vec4<u32>(0u, 4294967295u, 90611u, 20406u), vec3<u32>(0u, 0u, 36374u)), vec2<i32>(u_input.a.x, -30758i))).x, arg_0), true));
    let var_1 = vec2<f32>(1560f, arg_0);
    let var_2 = Struct_1(select(vec3<bool>(false, _wgslsmith_f_op_f32(sign(-2289f)) > var_1.x, true), select(arg_1, var_0.ywx, true), vec3<bool>(all(func_4(vec2<f32>(var_1.x, arg_0), u_input.b.x, Struct_1(vec3<bool>(true, arg_1.x, false), vec4<f32>(-1265f, var_1.x, var_1.x, -1000f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 2199u), vec3<u32>(1u, 1u, 0u)), Struct_1(arg_1, vec4<f32>(var_1.x, var_1.x, -1577f, -1410f), vec4<u32>(37532u, 94342u, 58495u, 24467u), vec3<u32>(12922u, 18971u, 24717u)))), arg_1.x, (true && arg_1.x) || true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_0, var_1.x, -509f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, var_1.x, 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-arg_0), var_1.x, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, arg_0, var_1.x, -649f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1.x, arg_0, 461f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, -354f, 619f, var_1.x) + vec4<f32>(arg_0, -532f, -633f, -283f))))), vec4<u32>(min(1u, reverseBits(41389u) << (min(0u, 4294967295u) % 32u)), 1u, ~1u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(~(~1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 69223u, 4294967295u, 1u), vec4<u32>(18737u, 0u, 1u, 0u)), 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 54036u, 0u), vec3<u32>(0u, 0u, 1u)) % 32u)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 26281u), vec3<u32>(1u, 61263u, 15876u))), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(1u, 12417u, 40064u)), min(vec3<u32>(0u, 4294967295u, 4362u), vec3<u32>(1u, 25350u, 40808u))))));
    var var_3 = Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_2.b, vec4<f32>(-850f, var_2.b.x, 318f, var_2.b.x)))), vec4<f32>(586f, _wgslsmith_f_op_f32(round(var_2.b.x)), 528f, var_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(830f)) * -1330f), _wgslsmith_f_op_f32(ceil(-953f)), -842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(991f, var_1.x)) * _wgslsmith_f_op_f32(876f - arg_0)))), ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(88812u, 0u, var_2.d.x, var_2.c.x), vec4<u32>(4294967295u, 0u, 38380u, var_2.c.x)) << (countOneBits(vec4<u32>(var_2.d.x, 14086u, var_2.d.x, var_2.d.x)) % vec4<u32>(32u)))), (firstTrailingBit(vec3<u32>(10536u, 81386u, var_2.c.x)) << ((abs(var_2.c.wzy) >> (firstLeadingBit(var_2.d) % vec3<u32>(32u))) % vec3<u32>(32u))) | firstLeadingBit(~(var_2.c.wzz >> (var_2.d % vec3<u32>(32u)))));
    global2 = array<vec2<i32>, 16>();
    return var_2;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global3 = ~(~firstLeadingBit(~arg_1.d.x));
    global2 = array<vec2<i32>, 16>();
    global2 = array<vec2<i32>, 16>();
    global3 = arg_1.d.x;
    let var_0 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    return func_2(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), !vec3<bool>(true, arg_1.a.x, false), false);
}

fn func_1(arg_0: bool, arg_1: i32) -> vec4<u32> {
    let var_0 = 2147483647i;
    var var_1 = Struct_1(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(arg_0, true, false), vec3<bool>(false, false, arg_0), arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0), true), select(!vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(true, arg_0, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0))), false), arg_0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1252f * 701f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1531f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1512f - 232f) - _wgslsmith_f_op_f32(732f - 319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(394f + 1000f) - _wgslsmith_div_f32(1000f, 1078f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2655f, _wgslsmith_f_op_f32(round(1422f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f * 1302f) + _wgslsmith_f_op_f32(step(562f, -268f)))), -909f), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u) & _wgslsmith_sub_u32(20722u, 1u), abs(1u)), countOneBits(0u), ~1u, _wgslsmith_div_u32(~17529u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(36334u, 4294967295u)) & (0u >> (1u % 32u)))), reverseBits(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(80459u, 56649u, 47436u), vec3<u32>(4294967295u, 86309u, 1u), vec3<bool>(arg_0, arg_0, true)), ~vec3<u32>(74924u, 0u, 52195u))));
    var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.b)))) * var_1.b), func_2(-878f, var_1.a, 0i < u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -187f, var_1.b.x, 145f))));
    global1 = array<vec2<bool>, 13>();
    global3 = ~(~_wgslsmith_mult_u32(~var_1.d.x, ~(~var_1.c.x)));
    return ~_wgslsmith_mult_vec4_u32(~var_1.c, var_1.c);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.b))))), Struct_1(vec3<bool>((arg_2 >= 0u) || true, any(vec2<bool>(true, true)), arg_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.b)), _wgslsmith_f_op_vec4_f32(-arg_0.b)) * arg_0.b), arg_0.c, arg_0.d), vec4<f32>(1243f, arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(705f + arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), arg_0.a.x & false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.c, vec3<u32>(46581u, 4294967295u, 58133u)), vec2<i32>(96668i, 2147483647i))).x - _wgslsmith_f_op_f32(-925f + -287f))), arg_0.b.x));
    let var_1 = arg_0;
    global3 = 40294u;
    global1 = array<vec2<bool>, 13>();
    var_0 = func_5(var_1.b, arg_0, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -402f), 2036f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - 985f) + arg_0.b.x)), -1702f));
    return func_2(var_1.b.x, !func_4(_wgslsmith_f_op_vec2_f32(max(var_0.b.ww, _wgslsmith_f_op_vec2_f32(var_1.b.xw - vec2<f32>(var_1.b.x, var_1.b.x)))), reverseBits(1i), var_1, arg_0).xxw, false & (_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(-1i, arg_1.x, u_input.b.x)) >= u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, select(true, true, false))), vec4<f32>(_wgslsmith_f_op_f32(round(477f)), _wgslsmith_f_op_f32(f32(-1f) * -1152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f * 2104f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-236f, 1197f)), -392f)), func_1(select(true, true, true), 2147483647i), ~vec3<u32>(1u, 1u, 1u)), ~(-u_input.a), 1u);
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1802f, _wgslsmith_f_op_f32(var_0.b.x * 1000f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))))), 1i, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_0.b.x), _wgslsmith_f_op_f32(ceil(var_0.b.x)), -1211f, 333f)), _wgslsmith_div_vec4_u32(var_0.c >> (var_0.c % vec4<u32>(32u)), ~var_0.c) ^ vec4<u32>(~47077u, 52265u, var_0.c.x, ~var_0.c.x), var_0.d), Struct_1(vec3<bool>(select(!var_0.a.x, true, var_0.a.x), false, var_0.a.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -312f, 741f, -1246f) - vec4<f32>(988f, var_0.b.x, 838f, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, 1822f, var_0.b.x, var_0.b.x) + vec4<f32>(var_0.b.x, var_0.b.x, 1000f, var_0.b.x)))), vec4<u32>(firstLeadingBit(~33443u), var_0.d.x, ~1u, _wgslsmith_dot_vec2_u32(~var_0.c.wz, vec2<u32>(1u, 8405u))), max(~_wgslsmith_mult_vec3_u32(var_0.c.xwz, var_0.d), vec3<u32>(select(42873u, var_0.d.x, var_0.a.x), ~4294967295u, var_0.c.x))));
    var var_2 = ~((reverseBits(var_0.d.zz) << (~vec2<u32>(var_0.d.x, var_0.c.x) % vec2<u32>(32u))) & func_1(true, u_input.a.x).xy) >> (var_0.c.xy % vec2<u32>(32u));
    var_1 = !vec4<bool>(all(var_0.a), var_1.x, !var_0.a.x, true | var_0.a.x);
    var var_3 = 1u & _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, func_5(vec4<f32>(2322f, -268f, -2119f, var_0.b.x), Struct_1(vec3<bool>(false, var_0.a.x, true), vec4<f32>(var_0.b.x, var_0.b.x, 1000f, var_0.b.x), var_0.c, vec3<u32>(0u, var_2.x, var_0.d.x)), var_0.b).d.x), var_0.d.x), var_0.c.x);
    var var_4 = countOneBits(_wgslsmith_mult_u32(var_0.c.x, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, var_2.x), ~47907u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_dot_vec2_u32(~var_0.c.wx, vec2<u32>(var_2.x, var_2.x) ^ var_0.c.wz));
}

