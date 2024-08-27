struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_2(-1431f);
    var var_1 = any(vec3<bool>(!(max(arg_0, 13015u) <= 50989u), false, all(arg_2.zz)));
    var_1 = any(select(!(!(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x))), !(!vec4<bool>(false, arg_2.x, true, true)), all(vec2<bool>(true, arg_2.x))));
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -1i, arg_1), select(-u_input.d.xyw, max(u_input.a.ywz, u_input.d.xwy), vec3<bool>(20391u <= u_input.b, !arg_2.x, arg_2.x))), vec3<f32>(2230f, var_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(215f))), _wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(-var_0.a), 57971u < arg_0))))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, ~43975u, ~1u), _wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 21795u, u_input.b), vec3<u32>(u_input.b, arg_0, 4294967295u), vec3<u32>(4341u, u_input.b, 1u)), ~vec3<u32>(arg_0, 20609u, 17388u), !vec3<bool>(false, arg_2.x, false)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, 21536u), vec3<u32>(arg_0, 2465u, 0u)), ~vec3<u32>(0u, 1u, arg_0), true))), select(53308u, ~(~arg_0 & _wgslsmith_sub_u32(85112u, u_input.b)), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 783f, var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, -392f, var_2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_2.a) - vec3<f32>(526f, var_2.a, var_0.a)) * vec3<f32>(var_0.a, -918f, 2609f)), arg_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 643f, var_0.a))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-683f)), _wgslsmith_f_op_f32(-var_2.a), 809f)), false)));
    return ~u_input.a.zyx;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1827i, 0i, 63745i), u_input.a.ywx), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -1i), vec3<i32>(0i, -2147483647i, u_input.c)), func_3(u_input.b, 0i, vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(808f, -1621f)) - _wgslsmith_div_f32(1336f, 274f)), _wgslsmith_f_op_f32(-1f), 1f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1860f, 1404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-657f, -1484f)) * _wgslsmith_f_op_f32(1249f + 1472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(265f)) * _wgslsmith_f_op_f32(-1182f * 1415f)))), abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 85888u, u_input.b), select(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.b, 4294967295u, 1u), vec3<bool>(true, true, true))), vec3<u32>(select(u_input.b, u_input.b, false), 99351u, u_input.b))), 37291u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(606f, -1649f, -700f) - vec3<f32>(-235f, 2044f, -1520f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1283f, 2869f) - vec3<f32>(-303f, -1778f, -2300f)) * vec3<f32>(625f, -453f, -282f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2748f, 1664f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(795f, -880f, 1230f), vec3<f32>(-1713f, -554f, 463f)))))))));
    var var_1 = all(!vec2<bool>(true, min(var_0.a, u_input.a.x) >= ~14224i));
    var_1 = !(!(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, u_input.c), vec2<i32>(u_input.a.x, u_input.c)) <= -var_0.a));
    let var_2 = Struct_2(var_0.e.x);
    let var_3 = var_2;
    return var_2;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(-272f);
    var_0 = func_2();
    var var_1 = select(vec2<bool>(true, reverseBits(_wgslsmith_add_i32(-2147483647i, u_input.d.x)) != reverseBits(u_input.c)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_sub_u32(96771u, u_input.b) < ~18576u), vec2<bool>(select(true, true, false), true), vec2<bool>(true, true)), !all(vec2<bool>(true, true)));
    let var_2 = func_3(u_input.b, -u_input.a.x, vec4<bool>(false, all(vec3<bool>(true, var_1.x, false)), true, any(select(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, true), true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, true, true, var_1.x), var_1.x))))).xx;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0.a)))), false)));
    return Struct_2(_wgslsmith_div_f32(1520f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(-var_3.a)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -371f) + _wgslsmith_f_op_f32(abs(var_3.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(8093i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(705f, 509f, arg_0.a) - vec3<f32>(-358f, arg_0.a, -202f)), vec3<f32>(arg_0.a, -376f, 480f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1483f, -160f, -1923f) - vec3<f32>(994f, -720f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-404f, -2574f, arg_0.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-906f, arg_0.a, 1000f)))), !any(vec3<bool>(true, false, false))))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(49856u, u_input.b, u_input.b), vec3<u32>(17240u, 1u, 47435u)) << (~vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u)), vec3<u32>(~4294967295u, 67257u, abs(4294967295u))), reverseBits(vec3<u32>(~u_input.b, 22437u, u_input.b))), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a, -2576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-824f))), -960f));
    var var_1 = arg_0;
    var var_2 = Struct_1(countOneBits(var_0.a), vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(948f + var_1.a)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~1u, u_input.b), 28329u), ~(abs(u_input.b) >> (~u_input.b % 32u)), _wgslsmith_mult_u32(var_0.d, ~var_0.d | (u_input.b >> (u_input.b % 32u)))), ~_wgslsmith_mult_u32(var_0.d | ~var_0.c.x, max(~u_input.b, 1u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(sign(303f)), _wgslsmith_f_op_f32(sign(arg_0.a)))))));
    var_2 = Struct_1(~(-55324i), vec3<f32>(-591f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-634f - 1175f), -1000f)))), _wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a - var_1.a))))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~53642u, select(4294967295u, u_input.b, true)), 56752u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, 37798u, var_2.c.x, 1u), vec4<u32>(1u, 39297u, 1u, 37164u))), vec3<u32>(4294967295u, 27702u, firstTrailingBit(~4294967295u))), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-461f - -1492f), _wgslsmith_div_f32(-505f, var_2.e.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-150f - arg_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -698f))))));
    var var_3 = u_input.a.ww;
    return Struct_1(min(var_3.x, -var_0.a), vec3<f32>(_wgslsmith_f_op_f32(var_1.a + var_1.a), arg_0.a, _wgslsmith_f_op_f32(-var_0.b.x)), ~(select(select(var_2.c, vec3<u32>(80995u, u_input.b, 71143u), true), vec3<u32>(64191u, var_0.d, var_0.d), var_2.a > 2147483647i) >> (~(~vec3<u32>(var_0.d, 0u, var_2.c.x)) % vec3<u32>(32u))), abs(~1u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(var_2.e.x, -1341f), _wgslsmith_f_op_f32(max(1000f, var_1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e)) - var_0.b))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(423f - _wgslsmith_div_f32(arg_2.b.x, 1755f)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_3.a + func_2().a));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = i32(-1i) * -2147483647i;
    var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1440f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 795f) * _wgslsmith_f_op_f32(select(1868f, 1000f, arg_1))))))));
    var_1 = _wgslsmith_f_op_f32(-arg_0.e.x);
    let var_2 = arg_0.c.x;
    return Struct_2(_wgslsmith_f_op_f32(exp2(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec3<bool>(true, true, true), func_4(func_1(), select(min(-2147483647i, u_input.a.x), 2147483647i, true)), func_4(func_1(), u_input.c), func_1()), !((1u >> (u_input.b % 32u)) > ~(u_input.b ^ u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().a - func_5(vec3<bool>(true, true, false), func_5(vec3<bool>(false, false, false), Struct_1(-43560i, vec3<f32>(111f, -1000f, 263f), vec3<u32>(4294967295u, 54996u, 63722u), 25381u, vec3<f32>(780f, -821f, -1509f)), Struct_1(0i, vec3<f32>(1000f, 299f, 539f), vec3<u32>(u_input.b, u_input.b, 4294967295u), 32662u, vec3<f32>(-2138f, 271f, -607f)), Struct_2(1046f)), func_4(Struct_2(-1000f), u_input.c), func_1()).b.x)));
    let var_1 = func_6(func_4(func_2(), ~firstTrailingBit(~u_input.c)), true, 1000f);
    let var_2 = func_5(!(!vec3<bool>(4294967295u > u_input.b, u_input.d.x < u_input.a.x, true)), func_5(vec3<bool>(true, all(vec3<bool>(true, true, true)), true), func_4(Struct_2(1000f), max(~u_input.d.x, u_input.d.x)), func_5(vec3<bool>(u_input.a.x > u_input.c, true, true), Struct_1(_wgslsmith_dot_vec3_i32(u_input.d.yxy, vec3<i32>(u_input.d.x, u_input.c, u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(var_0.a, var_0.a, var_0.a)), vec3<u32>(4294967295u, u_input.b, 87832u), 4294967295u, vec3<f32>(-1587f, 555f, -556f)), func_5(vec3<bool>(true, true, true), func_5(vec3<bool>(false, false, false), Struct_1(u_input.d.x, vec3<f32>(888f, var_1.a, var_0.a), vec3<u32>(u_input.b, 4294967295u, u_input.b), 1u, vec3<f32>(121f, 1000f, var_0.a)), Struct_1(2147483647i, vec3<f32>(var_0.a, -579f, var_1.a), vec3<u32>(u_input.b, 31775u, u_input.b), u_input.b, vec3<f32>(469f, 283f, var_1.a)), var_1), Struct_1(u_input.d.x, vec3<f32>(117f, -1047f, -1000f), vec3<u32>(4294967295u, u_input.b, 1u), u_input.b, vec3<f32>(var_1.a, var_0.a, -1000f)), Struct_2(var_0.a)), Struct_2(_wgslsmith_f_op_f32(-287f + 716f))), Struct_2(var_1.a)), func_4(var_1, ~(_wgslsmith_dot_vec3_i32(u_input.d.wzw, vec3<i32>(0i, 22685i, u_input.d.x)) << (func_5(vec3<bool>(true, true, true), Struct_1(u_input.c, vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<u32>(u_input.b, u_input.b, 0u), 0u, vec3<f32>(-854f, 466f, -207f)), Struct_1(u_input.c, vec3<f32>(var_1.a, 1125f, var_1.a), vec3<u32>(u_input.b, 41954u, u_input.b), u_input.b, vec3<f32>(331f, 429f, -131f)), Struct_2(var_1.a)).d % 32u))), var_0);
    var var_3 = Struct_2(-521f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -_wgslsmith_sub_i32(-9770i, u_input.a.x), 22193i, var_2.a, ~func_4(func_6(var_2, true, var_0.a), -1i).a), ~_wgslsmith_sub_vec2_u32(~var_2.c.xy, ~vec2<u32>(var_2.d, u_input.b)) ^ func_5(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), Struct_1(u_input.d.x, var_2.b, ~vec3<u32>(var_2.c.x, 4294967295u, 0u), var_2.d, func_5(vec3<bool>(false, false, false), Struct_1(36959i, var_2.b, var_2.c, u_input.b, vec3<f32>(-1275f, var_0.a, -181f)), Struct_1(var_2.a, var_2.e, var_2.c, var_2.c.x, vec3<f32>(-150f, var_2.b.x, var_0.a)), Struct_2(715f)).b), Struct_1(_wgslsmith_dot_vec3_i32(u_input.d.xzx, vec3<i32>(u_input.a.x, -1i, u_input.d.x)), _wgslsmith_f_op_vec3_f32(var_2.b * vec3<f32>(var_3.a, -580f, var_0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 61861u), vec3<u32>(var_2.d, 34918u, 1u)), select(4294967295u, var_2.c.x, false), var_2.e), var_1).c.xy, _wgslsmith_f_op_vec3_f32(var_2.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-636f, var_3.a, -1062f) - var_2.b))), u_input.a.yy);
}

