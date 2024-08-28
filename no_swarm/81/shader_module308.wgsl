struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(2147483647i, 2005i, -6802i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), -1000f, vec3<f32>(-391f, -456f, 1258f), vec3<u32>(46897u, 4294967295u, 19627u));

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = -898f;
    var var_1 = Struct_4(Struct_1(countOneBits(vec4<i32>(u_input.a, abs(2147483647i), global0.a.x, 20320i >> (global1.e.x % 32u))), ~_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-13909i, -1i)), abs(u_input.e.yy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.d)) + _wgslsmith_f_op_vec3_f32(step(global1.d, vec3<f32>(-553f, 1770f, -967f)))), vec3<f32>(237f, _wgslsmith_f_op_f32(-1647f * 499f), _wgslsmith_f_op_f32(abs(277f))), vec3<bool>(true, true, true))), global1.e | (vec3<u32>(global1.e.x, 1u, 4294967295u) >> (global1.e % vec3<u32>(32u)))), Struct_2(vec3<i32>(global0.a.x, ~global1.a.x, global0.a.x)), vec3<f32>(global1.c, global1.c, _wgslsmith_f_op_f32(global1.d.x + global1.d.x)), reverseBits(-global0.a), Struct_1(firstLeadingBit(~global1.a) & u_input.e, max(select(firstTrailingBit(vec2<i32>(global0.a.x, -16828i)), vec2<i32>(u_input.e.x, 7594i), vec2<bool>(true, true)), vec2<i32>(24674i, ~1i)), global1.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.c)), _wgslsmith_f_op_f32(global1.d.x - global1.c), 928f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.d, vec3<f32>(-436f, -1000f, global1.d.x))))), _wgslsmith_sub_vec3_u32(~global1.e, global1.e)));
    var var_2 = Struct_3(global1.c, var_1.e);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(global1.c)), var_2.b.d.x);
    var var_4 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 48037i), max(var_2.b.b, vec2<i32>(var_2.b.b.x, 41295i))), ~countOneBits(-13899i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_2.b.a.wzx, vec3<i32>(-9369i, global0.a.x, global0.a.x)), _wgslsmith_mod_vec3_i32(global1.a.zxx, vec3<i32>(-4564i, -1i, var_2.b.b.x))), var_1.d.x), u_input.e >> (countOneBits(vec4<u32>(80058u, 0u, 1u, arg_0)) % vec4<u32>(32u))), vec2<i32>(10515i, 999i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.d.x)), 294f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.c * var_2.b.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-323f + var_2.a) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_2.a))), _wgslsmith_f_op_f32(round(212f))), global1.e);
    return 4294967295u;
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(4294967295u, 4294967295u) | (~func_3(u_input.d.x) >> (firstLeadingBit(u_input.d.x) % 32u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global1.d.x) + _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c)) - _wgslsmith_f_op_f32(f32(-1f) * -346f)))), Struct_1(-(-vec4<i32>(17092i, global0.a.x, global1.b.x, global1.a.x) | ~global1.a), firstLeadingBit(~vec2<i32>(global0.a.x, -47437i)), 1000f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(828f + -1085f)), _wgslsmith_f_op_f32(min(570f, _wgslsmith_div_f32(global1.c, global1.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(435f)), _wgslsmith_f_op_f32(-global1.c), all(vec3<bool>(true, true, false))))), global1.e));
    var var_2 = select(vec4<bool>(!(!all(vec2<bool>(false, true))), all(vec2<bool>(select(true, true, false), false)), true, all(vec4<bool>(false, u_input.d.x < u_input.d.x, true, true))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(true, true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true))));
    let var_3 = u_input.d.x;
    let var_4 = _wgslsmith_mod_i32(abs(~0i) ^ -u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-13814i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.a.x, u_input.c), vec3<i32>(-2147483647i, 1i, var_1.b.a.x))), vec2<i32>(firstLeadingBit(global1.b.x), ~0i) ^ _wgslsmith_mult_vec2_i32(global0.a.zz, u_input.e.zz)));
    return var_1.b.d.zx;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(Struct_1(global1.a, vec2<i32>(11122i, -_wgslsmith_div_i32(-2147483647i, 3383i)), 2029f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(max(global1.d, vec3<f32>(1000f, arg_0.x, global1.d.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.d + global1.d), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 476f, global1.c), vec3<f32>(1341f, arg_0.x, global1.d.x)), true)))), global1.e), Struct_2(_wgslsmith_add_vec3_i32(global1.a.xwy, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(global0.a, vec3<i32>(global0.a.x, global1.a.x, u_input.a)), global1.a.yxy))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1168f), -1588f, 1146f), -_wgslsmith_sub_vec3_i32(vec3<i32>(~global1.b.x, _wgslsmith_sub_i32(u_input.c, -41793i), ~u_input.c), countOneBits(min(u_input.e.xwx, vec3<i32>(u_input.b, global1.a.x, 0i)))), Struct_1(-max(u_input.e, u_input.e) << ((~vec4<u32>(48u, arg_1, 66290u, 11108u) << (~vec4<u32>(6904u, global1.e.x, 47308u, 13364u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<i32>(select(-global1.b.x, _wgslsmith_sub_i32(11214i, -1i), false), (2147483647i | global1.a.x) << (min(4294967295u, 39456u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1470f + _wgslsmith_f_op_f32(205f - 655f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1326f, arg_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, -1359f, _wgslsmith_f_op_f32(trunc(-1088f))) * _wgslsmith_div_vec3_f32(global1.d, _wgslsmith_f_op_vec3_f32(-global1.d))), vec3<u32>(46486u, _wgslsmith_div_u32(global1.e.x, 1u), arg_1 << (1u % 32u)) >> (vec3<u32>(4294967295u ^ global1.e.x, func_3(4294967295u), arg_1) % vec3<u32>(32u))));
    let var_1 = var_0;
    let var_2 = Struct_2(vec3<i32>(-abs(-35641i), 1i, _wgslsmith_dot_vec4_i32(u_input.e & vec4<i32>(2147483647i, 2147483647i, 12558i, u_input.e.x), var_1.e.a ^ var_1.a.a)) >> (~(~select(vec3<u32>(arg_1, u_input.d.x, 3203u), var_1.e.e, true)) % vec3<u32>(32u)));
    var var_3 = var_0.a;
    let var_4 = abs(_wgslsmith_add_vec4_i32(global1.a, var_0.a.a));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x * global1.c)), var_1.e);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.d.zx, vec2<f32>(global1.d.x, -1000f), true)) - _wgslsmith_f_op_vec2_f32(func_2())))), _wgslsmith_div_u32(~abs(~37280u), 80070u));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(arg_0.b, Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(~global1.a.x, -30488i, abs(global0.a.x)), global1.a.yyw, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(9493i, arg_0.b.b.x, global0.a.x), u_input.e.xzy), reverseBits(arg_0.b.a.wzx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.d) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -961f, 860f) - global1.d))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.d.x, 1000f)), _wgslsmith_div_f32(-538f, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -408f)), -(~(~vec3<i32>(-42309i, -21472i, u_input.c) & _wgslsmith_div_vec3_i32(vec3<i32>(-34185i, arg_0.b.a.x, 2147483647i), arg_0.b.a.ywy))), func_4(vec2<f32>(_wgslsmith_f_op_f32(2002f - _wgslsmith_f_op_f32(exp2(global1.d.x))), global1.c), ~(0u ^ func_1(63682i, global1.a).b.e.x)).b);
    var var_1 = Struct_2(~arg_0.b.a.zxy);
    global2 = array<vec3<bool>, 17>();
    let var_2 = Struct_2(~(~vec3<i32>(~8027i, _wgslsmith_dot_vec4_i32(arg_0.b.a, vec4<i32>(-35749i, 5149i, var_1.a.x, 6635i)), 2147483647i)));
    let var_3 = 1u;
    return func_4(global1.d.zy, firstTrailingBit(var_3)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1(0i, firstLeadingBit(_wgslsmith_add_vec4_i32(abs(u_input.e), vec4<i32>(-1i, 58877i, global0.a.x, 1i)))));
    var var_0 = ~abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c, 1i, _wgslsmith_div_i32(-16771i, u_input.c)), ~_wgslsmith_mult_vec3_i32(global1.a.zww, global0.a), -countOneBits(global0.a)));
    var_0 = vec3<i32>(~u_input.b, -(~(-21021i)), -2147483647i >> (global1.e.x % 32u)) << (global1.e % vec3<u32>(32u));
    let var_1 = firstTrailingBit(countOneBits(select(min(vec4<u32>(33828u, u_input.d.x, 0u, 0u), vec4<u32>(4294967295u, global1.e.x, u_input.d.x, 4294967295u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(global1.e.x, 28130u, 0u, u_input.d.x), vec4<u32>(0u, u_input.d.x, 117397u, global1.e.x)), vec4<u32>(u_input.d.x, 18690u, global1.e.x, global1.e.x)), false)));
    let var_2 = ~abs(var_1.x);
    let var_3 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec2_f32(global1.d.zz - global1.d.yy), firstLeadingBit(0u)).b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f) * _wgslsmith_div_f32(func_5(Struct_3(367f, Struct_1(vec4<i32>(1i, -2147483647i, var_0.x, var_0.x), global1.b, 780f, global1.d, global1.e))).d.x, global1.d.x))), 4294967295u).b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x, 653f, countOneBits(global1.e.xz), firstTrailingBit(vec2<u32>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c)), u_input.d.x ^ 0u).b.e.x, 1u)));
}

