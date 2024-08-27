struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(~firstLeadingBit(~100969u), vec2<bool>(!all(arg_0.b.b), true)), !vec3<bool>(true, true, any(arg_0.b.b)));
    var var_1 = Struct_5(arg_0, ~vec2<u32>(1u, _wgslsmith_div_u32(arg_0.b.a, 2328u) | _wgslsmith_dot_vec3_u32(arg_0.a, arg_0.a)), 57466u, Struct_3(Struct_1(reverseBits(~4294967295u), vec2<bool>(true, true)), select(vec3<bool>(4294967295u > var_0.a.a, arg_0.b.b.x, true), vec3<bool>(var_0.b.x | false, arg_0.b.b.x, true), all(vec4<bool>(false, arg_0.b.b.x, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1037f)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.e, -687f, var_1.e, var_1.e))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1630f, var_1.e, var_1.e, -185f) - vec4<f32>(1749f, var_1.e, -780f, var_1.e)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e, -333f, var_1.e, -817f), vec4<f32>(var_1.e, 1055f, -2170f, 1104f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2351f, var_1.e, var_1.e, 1879f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e, -530f, -487f, var_1.e))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.e, 1017f, var_1.e, var_1.e)))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -191f, _wgslsmith_f_op_f32(ceil(var_1.e)), _wgslsmith_f_op_f32(abs(-963f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(872f, var_1.e, var_1.e, var_1.e), vec4<f32>(var_1.e, var_1.e, var_1.e, -425f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e, var_1.e, var_1.e, var_1.e), vec4<f32>(var_1.e, var_1.e, 425f, 292f), var_1.d.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(930f, var_1.e, var_1.e, var_1.e)), arg_0.b.b.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, -895f, var_1.e, 1538f), vec4<f32>(var_2.x, 969f, var_2.x, -1078f)))) * vec4<f32>(var_1.e, 105f, _wgslsmith_f_op_f32(min(var_1.e, -810f)), _wgslsmith_f_op_f32(884f * -412f))))));
    var var_3 = -vec3<i32>(var_1.a.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1, arg_1, -4029i), max(vec3<i32>(-1i, u_input.b, arg_1), vec3<i32>(arg_0.c, 0i, arg_1))) & firstLeadingBit(select(arg_0.c, arg_0.c, false)), _wgslsmith_sub_i32(var_1.a.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -1i, -1i, var_1.a.c), -vec4<i32>(var_1.a.c, u_input.a, -1i, u_input.b))));
    return select(!select(var_0.b, var_1.d.b, !any(vec4<bool>(arg_0.b.b.x, true, true, var_0.b.x))), select(!var_0.b, var_1.d.b, all(vec3<bool>(false, any(vec4<bool>(var_1.d.b.x, false, var_1.a.b.b.x, arg_0.b.b.x)), true))), _wgslsmith_sub_i32(abs(-19155i), u_input.a) != (1i << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.b.a, var_1.a.a.x), 1u) % 32u)));
}

fn func_2() -> Struct_4 {
    let var_0 = !func_3(Struct_2(vec3<u32>(~17524u, abs(47734u), 62492u), Struct_1(select(121491u, 51086u, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), -46525i >> (1u % 32u)), _wgslsmith_add_i32(u_input.b, i32(-1i) * -u_input.a));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mod_u32(~(~53714u), ~(~68105u)), var_0.yy), vec3<bool>(true, var_0.x, all(vec2<bool>(any(vec2<bool>(false, var_0.x)), true))));
    return Struct_4(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(ceil(515f)))), -1019f, _wgslsmith_f_op_f32(round(-1000f))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(~0u, arg_1.zx), arg_1);
    var var_1 = arg_1.x;
    var_1 = true;
    var_1 = false;
    var var_2 = select(!(!(!vec3<bool>(true, var_0.a.b.x, false))), var_0.b, all(!arg_1.yy));
    return Struct_3(var_0.a, vec3<bool>(false, !all(select(vec4<bool>(true, arg_1.x, var_2.x, arg_1.x), vec4<bool>(var_2.x, false, arg_1.x, var_0.a.b.x), vec4<bool>(arg_1.x, false, var_0.a.b.x, true))), select(var_0.a.a <= 1u, !(!var_0.a.b.x), var_0.b.x && select(var_0.a.b.x, arg_1.x, var_2.x))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> i32 {
    var var_0 = ~arg_0.a.a;
    var_0 = arg_2;
    var_0 = arg_0.a.a;
    var_0 = 39442u;
    var_0 = arg_0.a.a | arg_0.a.a;
    return u_input.a;
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_mod_i32(~59396i, u_input.a) <= func_5(func_4(func_2(), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true)), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1724f, 1737f, 654f, 2075f) + vec4<f32>(-642f, -1099f, 1000f, 771f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-259f, 1000f, 1177f, 465f), vec4<f32>(-903f, 558f, 1146f, -165f))))), ~firstTrailingBit(~25108u));
    let var_1 = vec2<i32>(~u_input.a, u_input.a);
    var var_2 = vec2<bool>(!(0u != reverseBits(_wgslsmith_clamp_u32(0u, 0u, 0u))), all(select(vec2<bool>(true, any(vec3<bool>(var_0, var_0, true))), vec2<bool>(-39249i >= var_1.x, true), !(2147483647i >= var_1.x))));
    var_2 = func_3(Struct_2(countOneBits(countOneBits(vec3<u32>(74604u, 30896u, 1u))), func_4(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-981f, 496f, -2288f, -358f) + vec4<f32>(-1168f, -256f, -115f, 867f))), !select(vec3<bool>(true, false, false), vec3<bool>(var_0, true, false), false)).a, var_1.x), max(countOneBits(var_1.x << (0u % 32u)) >> (0u % 32u), u_input.a)).yy;
    let var_3 = 5710u;
    return _wgslsmith_add_vec2_i32((var_1 << (select(~vec2<u32>(16980u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(35113u, 1u), vec2<u32>(47994u, 88717u)), select(vec2<bool>(var_2.x, var_0), vec2<bool>(var_2.x, false), vec2<bool>(var_0, true))) % vec2<u32>(32u))) ^ -abs(var_1), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_mod_vec2_i32(var_1 << (vec2<u32>(4294967295u, 22585u) % vec2<u32>(32u)), vec2<i32>(var_1.x, var_1.x) ^ var_1)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 1i, var_1.x) >> (vec3<u32>(var_3, 4294967295u, 92689u) % vec3<u32>(32u)), vec3<i32>(0i, u_input.a, var_1.x)), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(1u, vec2<bool>(!any(vec2<bool>(true, true)), any(!func_3(Struct_2(vec3<u32>(1828u, 4294967295u, 7044u), Struct_1(0u, vec2<bool>(true, false)), 15850i), var_0.x))));
    var var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1598f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f), -897f)), _wgslsmith_f_op_f32(ceil(1550f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(764f, _wgslsmith_f_op_f32(round(-1166f)), var_1.b.x)) * 1766f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2636f)), _wgslsmith_f_op_f32(-1f), -1997f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -668f))));
    let var_4 = false;
    let var_5 = ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.a, 1u, var_1.a), vec3<u32>(var_1.a, 1u, 1495u) >> (vec3<u32>(var_1.a, 1u, 4683u) % vec3<u32>(32u))) >> (vec3<u32>(~18567u, 76171u | var_1.a, ~var_1.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(47964u, var_1.a, var_1.a), var_1.a, var_1.a ^ 6894u), _wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 47448u, var_1.a), vec3<u32>(34685u, 13223u, var_1.a)), firstLeadingBit(vec3<u32>(var_1.a, 4294967295u, 1u)))));
    let var_6 = Struct_1(var_1.a, !select(var_1.b, !func_3(Struct_2(var_5, Struct_1(0u, vec2<bool>(false, false)), var_0.x), -29189i).xx, select(var_1.b, !var_1.b, var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(var_5), countOneBits(~(-9587i)), _wgslsmith_f_op_f32(f32(-1f) * -830f), var_3.x);
}

