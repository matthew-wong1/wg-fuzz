struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 16880i)), ~vec3<i32>(u_input.a, -1i, u_input.a)), abs(-vec3<i32>(-9153i, 2147483647i, 47357i)), -select(select(vec3<i32>(-44269i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, 0i), vec3<bool>(false, false, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(27018i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)), false)), _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.a, ~0i) | -44388i, -1i), vec3<u32>(~1u, arg_1, min(_wgslsmith_sub_u32(arg_1, 4927u), _wgslsmith_dot_vec4_u32(vec4<u32>(25147u, arg_1, arg_1, arg_1), vec4<u32>(0u, arg_1, 0u, arg_1))) & ~(arg_1 | 14601u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, -221f, 621f, arg_2))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_2, arg_2, -182f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1457f, arg_2, -996f, arg_2)))));
    let var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(round(202f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-902f))))))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(var_2.x != 929f, select(true, true, true)), vec2<bool>(arg_2 > -1423f, false)), any(vec3<bool>(true, false, true))));
    var_0 = _wgslsmith_f_op_f32(trunc(var_2.x));
    return i32(-1i) * -10046i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.a, u_input.a, ~26336i), vec3<i32>(func_3(1u, 1u, -3249f, Struct_1(25658u)), u_input.a << (0u % 32u), 3149i)), -select(select(vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(1i, u_input.a, 0i), vec3<bool>(false, arg_0.x, true)), vec3<i32>(-8774i, -16899i, u_input.a), all(vec3<bool>(arg_0.x, false, arg_0.x)))), _wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, -1i), ~u_input.a, -44444i), select(select(i32(-1i) * -13650i, -17185i, false), _wgslsmith_mod_i32(~(-71870i), i32(-1i) * -10340i), false)), ~vec3<u32>(1u, firstTrailingBit(4294967295u), max(63957u, 1u)) >> (~abs(~vec3<u32>(0u, 97305u, 0u)) % vec3<u32>(32u)));
    let var_1 = -(~abs(max(vec4<i32>(2147483647i, 10341i, var_0.a.x, -30744i), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(586f + 289f)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-244f, 1f), 549f));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) * _wgslsmith_f_op_f32(ceil(118f)))), vec2<bool>(true, arg_0.x));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(566f, _wgslsmith_div_f32(var_3.a, 1000f)))), Struct_1(1u), Struct_1(var_0.c.x), !(!vec4<bool>(true, true, !arg_0.x, select(true, true, true))), Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_0.c.zz, vec2<u32>(var_0.c.x, var_0.c.x)), 110128u)));
    return Struct_1(67826u);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> Struct_5 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1264f, 1313f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(989f, arg_3.a)))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(arg_3.a, arg_3.a)), -641f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(860f, arg_3.a), vec2<f32>(2146f, arg_3.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, arg_3.a)))), select(vec2<bool>(true, false), !vec2<bool>(true, arg_3.b.x), select(vec2<bool>(arg_0, true), arg_3.b, arg_3.b))))), Struct_1(~_wgslsmith_mult_u32(func_2(arg_3.b).a, max(arg_1.a, 0u))), func_2(arg_3.b), !vec4<bool>(all(!vec4<bool>(true, arg_0, false, true)), any(arg_3.b), any(select(vec3<bool>(arg_3.b.x, false, arg_0), vec3<bool>(arg_3.b.x, arg_0, arg_3.b.x), vec3<bool>(true, true, arg_0))), any(vec4<bool>(true, false, false, arg_3.b.x))), Struct_1(countOneBits(~arg_1.a)));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2))))), arg_1, Struct_1(countOneBits(var_0.e.a)), select(!select(select(var_0.d, vec4<bool>(true, false, false, true), true), var_0.d, select(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, false), vec4<bool>(arg_0, arg_0, var_0.d.x, var_0.d.x), true)), var_0.d, _wgslsmith_mult_i32(2147483647i, u_input.a) <= -(u_input.a << (var_0.b.a % 32u))), arg_1);
    var_0 = Struct_2(vec2<f32>(arg_3.a, -1436f), arg_1, Struct_1(firstTrailingBit(~arg_1.a)), vec4<bool>(var_0.d.x, true, arg_3.b.x, true), func_2(vec2<bool>(!arg_0, _wgslsmith_mod_i32(-30903i, -1i) < abs(u_input.a))));
    var_0 = Struct_2(vec2<f32>(-808f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(f32(-1f) * -896f))), var_0.e, Struct_1(4294967295u), select(vec4<bool>(all(select(var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.d.x), var_0.d)), true, arg_1.a > ~0u, var_0.d.x), vec4<bool>(true, !all(var_0.d.www), true, false), true), arg_1);
    var_0 = Struct_2(var_0.a, Struct_1(~min(~1u, 17124u)), var_0.b, var_0.d, Struct_1(~1u));
    return Struct_5(abs(~(-u_input.a)), vec4<u32>(_wgslsmith_sub_u32(~0u, 0u) >> (arg_1.a % 32u), firstLeadingBit(func_2(vec2<bool>(var_0.d.x, true)).a ^ 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(25035u, arg_1.a), reverseBits(vec2<u32>(arg_1.a, 61313u))), ~(~(~arg_1.a))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.a, arg_3.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -811f) + var_0.a))), func_2(vec2<bool>(all(var_0.d.yz), any(vec4<bool>(arg_3.b.x, arg_0, var_0.d.x, false)))), Struct_1(~25882u), !(!select(vec4<bool>(var_0.d.x, true, false, true), vec4<bool>(var_0.d.x, arg_0, arg_3.b.x, true), false)), func_2(vec2<bool>(false, arg_3.a <= 286f))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1741f);
    let var_1 = func_4(!all(vec3<bool>(true, true, false)) | false, func_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(321f + 2754f), Struct_4(_wgslsmith_f_op_f32(-var_0), vec2<bool>(true, true)));
    let var_2 = Struct_2(var_1.c.a, Struct_1(4294967295u), func_4(func_4(false, Struct_1(4294967295u), 1074f, Struct_4(_wgslsmith_f_op_f32(round(-1000f)), !var_1.c.d.zx)).c.d.x, func_2(vec2<bool>(func_4(var_1.c.d.x, var_1.c.e, -221f, Struct_4(var_1.c.a.x, var_1.c.d.ww)).c.d.x, var_1.c.e.a != var_1.c.b.a)), 655f, Struct_4(-1000f, !select(vec2<bool>(var_1.c.d.x, true), var_1.c.d.ww, true))).c.e, vec4<bool>(any(!var_1.c.d.zw), true, any(vec4<bool>(var_1.c.b.a != 4294967295u, select(true, false, false), func_4(false, Struct_1(var_1.c.e.a), var_1.c.a.x, Struct_4(-886f, var_1.c.d.wx)).c.d.x, any(vec4<bool>(var_1.c.d.x, true, false, var_1.c.d.x)))), any(var_1.c.d.wx)), var_1.c.c);
    let var_3 = ~(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.a, u_input.a) & 27272i, 22625i));
    var var_4 = Struct_4(-1796f, var_2.d.yw);
    return var_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = ~4294967295u;
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2372i, 18096i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(1i, u_input.a)), countOneBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2432i, u_input.a, -12240i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, -10599i))), firstLeadingBit(min(vec3<i32>(30642i, u_input.a, -2223i), vec3<i32>(u_input.a, u_input.a, 13023i)))), vec3<i32>(-u_input.a ^ ~u_input.a, ~(-u_input.a), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 609i), vec2<i32>(0i, u_input.a)))), ~(min(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-10405i, 33516i, -1i)), -vec3<i32>(-1i, u_input.a, u_input.a)) & vec3<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), i32(-1i) * -38317i)));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(7952u, 0u), select(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 66805u), vec2<u32>(13846u, 4294967295u))), vec2<u32>(reverseBits(1u), func_4(any(vec4<bool>(true, true, false, true)), Struct_1(1u), _wgslsmith_f_op_f32(sign(492f)), Struct_4(930f, vec2<bool>(true, true))).b.x), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    var var_3 = vec2<i32>(var_1.x, reverseBits(-1i));
    var var_4 = !any(vec3<bool>(any(vec4<bool>(true, false, false, false)) & true, true, var_1.x == ~u_input.a));
    var_4 = true;
    var var_5 = _wgslsmith_clamp_u32(~var_2.x << (var_2.x % 32u), ~(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(56527u, 16606u, var_2.x, 5307u), vec4<u32>(var_2.x, var_2.x, 0u, 14609u))) | 4294967295u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~(~vec3<i32>(u_input.a, 2147483647i, -15503i)))));
}

