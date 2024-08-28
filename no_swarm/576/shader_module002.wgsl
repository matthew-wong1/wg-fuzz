struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    var var_0 = 4186u;
    var_0 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 0u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(32683u, 29732u, 29708u), vec3<u32>(11723u, 0u, 4294967295u), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 39117u), vec3<u32>(16466u, 4294967295u, 1u), vec3<u32>(58059u, 0u, 6345u)))), ~(~1u));
    var var_1 = !(!any(vec3<bool>(true, true, true)));
    var var_2 = 4140u;
    var_1 = !(!all(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), all(vec3<bool>(true, false, true)))));
    return 930f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = !(!arg_0.c.a.x);
    var var_1 = -(vec4<i32>(u_input.a, 32421i, -44127i, _wgslsmith_div_i32(-55829i, abs(u_input.a))) | vec4<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i) >> (~arg_0.c.d.x % 32u), u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, 0i)), vec2<i32>(-27493i, 33150i) & vec2<i32>(u_input.a, u_input.a))));
    let var_2 = _wgslsmith_add_u32(32004u, arg_0.c.d.x);
    let var_3 = arg_0.a;
    var var_4 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, arg_1.x, 417f, -1495f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-922f, arg_1.x, 1000f, -181f), vec4<f32>(arg_0.b, 232f, arg_1.x, 903f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1807f, arg_0.b, arg_1.x, -1051f) * vec4<f32>(arg_1.x, -1391f, -1281f, arg_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, arg_0.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -480f) - _wgslsmith_div_f32(148f, 485f)))), _wgslsmith_f_op_f32(-arg_1.x)), select(select(arg_0.a.a.zy, select(arg_0.d.wy, !var_3.e.wx, vec2<bool>(false, true)), vec2<bool>(var_0, !var_3.b)), arg_0.a.c, vec2<bool>(any(arg_0.a.a.xy) | true, !(var_0 || false))));
    return select(select(arg_0.a.e, var_3.e, !select(vec4<bool>(true, var_4.c.x, arg_0.a.b, true), vec4<bool>(false, true, var_0, arg_0.d.x), var_0)), !var_3.e, vec4<bool>(true, _wgslsmith_f_op_f32(-var_4.b.x) > -2449f, var_3.a.x, false));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -693f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = Struct_1(vec4<bool>(all(vec4<bool>(true, true, any(vec2<bool>(false, false)), u_input.a > -1i)), _wgslsmith_f_op_f32(func_1()) == var_1, all(vec2<bool>(true, false)), func_2(Struct_2(Struct_1(vec4<bool>(false, false, false, true), true, vec2<bool>(false, true), vec2<u32>(1u, 32215u), vec4<bool>(false, true, true, false)), var_1, Struct_1(vec4<bool>(true, false, true, true), true, vec2<bool>(false, false), vec2<u32>(0u, 1u), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(170f, var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(1628f, arg_0.x) + arg_0.zz)))).x), false, !vec2<bool>(!(var_1 == -1081f), true), min(abs(~abs(vec2<u32>(4294967295u, 4294967295u))), max(vec2<u32>(1u, 49010u), ~vec2<u32>(1u, 1u))), select(vec4<bool>(~arg_1.x > min(arg_1.x, arg_1.x), true, !select(true, false, false), any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), all(select(vec4<bool>(false, false, true, false), func_2(Struct_2(Struct_1(vec4<bool>(true, false, true, false), true, vec2<bool>(false, false), vec2<u32>(1u, 20623u), vec4<bool>(true, false, false, false)), var_0.x, Struct_1(vec4<bool>(false, false, true, false), false, vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, false)), arg_0.zz), false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_1), -2368f))))));
    let var_4 = var_2;
    return abs(firstLeadingBit(vec2<u32>(~var_2.d.x, var_4.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-570f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-253f - -762f))), 459f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), 101f, _wgslsmith_f_op_f32(528f + -272f))), !select(vec2<bool>(-25028i >= u_input.a, true), vec2<bool>(select(true, true, true), true), true));
    let var_1 = Struct_2(Struct_1(select(!vec4<bool>(true, var_0.c.x, true, true), vec4<bool>(true, var_0.c.x, false, var_0.c.x), func_2(Struct_2(Struct_1(vec4<bool>(true, false, true, var_0.c.x), var_0.c.x, vec2<bool>(var_0.c.x, false), vec2<u32>(0u, 27379u), vec4<bool>(true, false, var_0.c.x, true)), var_0.a.x, Struct_1(vec4<bool>(var_0.c.x, var_0.c.x, false, false), true, var_0.c, vec2<u32>(1u, 17768u), vec4<bool>(var_0.c.x, false, true, var_0.c.x)), vec4<bool>(true, false, false, var_0.c.x)), vec2<f32>(var_0.a.x, -754f))), var_0.c.x, !vec2<bool>(var_0.c.x, !var_0.c.x), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.zzy) * vec3<f32>(-1646f, var_0.a.x, -703f)), reverseBits(~vec3<i32>(16789i, u_input.a, 1i))), vec4<bool>(all(func_2(Struct_2(Struct_1(vec4<bool>(false, var_0.c.x, true, true), var_0.c.x, var_0.c, vec2<u32>(0u, 2988u), vec4<bool>(true, true, var_0.c.x, var_0.c.x)), 1000f, Struct_1(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), var_0.c.x, vec2<bool>(false, var_0.c.x), vec2<u32>(1u, 4294967295u), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), vec4<bool>(var_0.c.x, false, true, var_0.c.x)), var_0.a.xw).zx), any(select(vec4<bool>(false, false, var_0.c.x, true), vec4<bool>(true, false, false, var_0.c.x), false)), any(select(var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, true))), false)), 103f, Struct_1(select(select(select(vec4<bool>(true, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), !vec4<bool>(var_0.c.x, true, false, var_0.c.x), all(vec2<bool>(true, var_0.c.x))), vec4<bool>(all(vec3<bool>(false, var_0.c.x, var_0.c.x)), true, true, var_0.c.x), var_0.c.x), var_0.c.x, select(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, var_0.c.x), var_0.c.x != var_0.c.x), !func_2(Struct_2(Struct_1(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x, var_0.c, vec2<u32>(1u, 4294967295u), vec4<bool>(false, var_0.c.x, true, var_0.c.x)), var_0.b.x, Struct_1(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x, vec2<bool>(true, var_0.c.x), vec2<u32>(7488u, 89296u), vec4<bool>(false, true, true, var_0.c.x)), vec4<bool>(var_0.c.x, false, var_0.c.x, false)), var_0.a.wx).wx, var_0.c), ~countOneBits(vec2<u32>(73594u, 0u)) ^ select(countOneBits(vec2<u32>(1u, 0u)), select(vec2<u32>(4294967295u, 33377u), vec2<u32>(4294967295u, 0u), vec2<bool>(var_0.c.x, false)), !var_0.c.x), vec4<bool>(all(!vec3<bool>(false, false, var_0.c.x)), var_0.c.x, var_0.c.x, select(true, true, false))), !(!func_2(Struct_2(Struct_1(vec4<bool>(false, false, true, var_0.c.x), false, var_0.c, vec2<u32>(41001u, 4294967295u), vec4<bool>(false, true, var_0.c.x, var_0.c.x)), 1579f, Struct_1(vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), true, vec2<bool>(true, var_0.c.x), vec2<u32>(62546u, 64975u), vec4<bool>(var_0.c.x, true, false, false)), vec4<bool>(true, false, true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_0.b.x), vec2<f32>(var_0.a.x, var_0.a.x)))));
    var var_2 = Struct_1(var_1.d, true, !vec2<bool>(true, var_1.d.x), vec2<u32>(abs(var_1.a.d.x), ~3788u << (var_1.a.d.x % 32u)) & ~vec2<u32>(var_1.a.d.x, ~35173u), vec4<bool>(all(var_1.d), _wgslsmith_mod_i32(-20883i, _wgslsmith_clamp_i32(u_input.a, 4319i, -28233i)) == 1i, true, false));
    var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.b.yy);
    let var_4 = Struct_1(func_2(var_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3) + vec2<f32>(var_1.b, 1466f)), vec2<f32>(_wgslsmith_f_op_f32(-907f + var_3.x), -708f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_1.b))) != _wgslsmith_f_op_f32(f32(-1f) * -642f), var_1.c.a.yx, var_1.a.d, !vec4<bool>(true, var_2.b, select(false, var_1.a.e.x, var_1.c.e.x), firstLeadingBit(var_2.d.x) >= 1u));
    var_2 = Struct_1(!(!(!(!var_1.c.e))), !(var_4.d.x == 1u), vec2<bool>(0u <= var_2.d.x, false), ~_wgslsmith_mod_vec2_u32(firstTrailingBit(var_1.c.d) & ~var_4.d, var_1.a.d), var_4.a);
    let var_5 = vec2<u32>(abs(_wgslsmith_dot_vec2_u32(func_3(var_0.b, -vec3<i32>(-56831i, u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(var_2.d, var_2.d) & ~vec2<u32>(4294967295u, var_4.d.x))), ~18554u);
    var var_6 = Struct_2(Struct_1(!(!var_1.c.e), all(vec4<bool>(var_0.c.x, select(var_4.e.x, true, false), !var_4.a.x, var_2.e.x)), !func_2(Struct_2(Struct_1(vec4<bool>(var_1.d.x, var_2.a.x, var_4.a.x, false), var_4.b, var_1.d.wy, vec2<u32>(var_5.x, var_5.x), var_2.e), -1419f, Struct_1(vec4<bool>(true, false, true, true), false, var_2.a.yz, vec2<u32>(var_5.x, var_1.c.d.x), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), var_1.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(796f, var_1.b)))).yw, abs(vec2<u32>(1u, var_4.d.x) >> (vec2<u32>(var_2.d.x, var_2.d.x) % vec2<u32>(32u))), vec4<bool>(true, all(var_2.a), select(true, true, !var_2.c.x), _wgslsmith_add_u32(var_4.d.x, var_2.d.x) < _wgslsmith_mod_u32(var_4.d.x, 32660u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)) + 1000f), var_1.a, select(var_2.a, !vec4<bool>(var_2.e.x, true, true, any(vec4<bool>(var_4.e.x, var_4.e.x, true, var_0.c.x))), func_2(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.zx, var_3, true)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_3.x), vec2<f32>(var_3.x, -340f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(-var_0.b), vec2<i32>(u_input.a, select(u_input.a, -u_input.a, var_4.a.x) | (max(u_input.a, u_input.a) >> (1u % 32u))));
}

