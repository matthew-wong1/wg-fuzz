struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4807i;

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: vec3<f32>;

var<private> global4: array<vec4<u32>, 12>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(-11775i, ~firstTrailingBit(74448u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global3.x, 469f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1422f - global3.x) * global3.x)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, -71533i, u_input.d | u_input.d), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(0i, u_input.d, u_input.d)), u_input.d, _wgslsmith_mod_i32(-23083i, -1i))));
    let var_2 = _wgslsmith_clamp_i32(-(var_1.e.x >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x >> (20290u % 32u), abs(var_1.b)) % 32u)), ~var_1.e.x >> (0u % 32u), _wgslsmith_dot_vec3_i32(countOneBits(var_1.e & _wgslsmith_div_vec3_i32(var_1.e, vec3<i32>(u_input.d, var_1.a, var_1.e.x))), var_1.e));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, 1356f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.x))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(f32(-1f) * -357f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, var_1.c.x))), -899f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.yzz))))))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f - global3.x) - var_1.d))), _wgslsmith_f_op_f32(1919f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * 106f)), _wgslsmith_f_op_f32(trunc(global3.x)))), global3.x);
    return _wgslsmith_f_op_f32(-var_1.d);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = vec3<bool>(true, true, 1606f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(348f, 387f) + 2100f)));
    let var_1 = arg_2.c;
    return var_0.x;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<f32> {
    global1 = func_4(1u, _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(ceil(-724f))), Struct_1(_wgslsmith_mult_i32(43080i, -2147483647i >> (arg_0 % 32u)), ~arg_1.x, _wgslsmith_f_op_vec4_f32(arg_2.c - vec4<f32>(-473f, -1887f, global3.x, 761f)), arg_2.c.x, arg_2.e), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-872f * _wgslsmith_f_op_f32(func_3()))))) | true;
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, _wgslsmith_f_op_f32(max(arg_2.c.x, -1377f)), _wgslsmith_f_op_f32(max(-677f, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(710f * arg_2.c.x) + _wgslsmith_div_f32(139f, -706f)) + _wgslsmith_f_op_f32(select(arg_2.c.x, -1079f, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_2.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, global3.x, arg_2.d, global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 731f, 420f, global3.x), arg_2.c, false)) - arg_2.c)))), true));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = firstTrailingBit(firstLeadingBit(-((vec4<i32>(-7846i, arg_0.a, 1i, -8799i) | vec4<i32>(-2147483647i, arg_1, -11035i, arg_1)) ^ select(vec4<i32>(arg_0.a, 2147483647i, 9688i, -3553i), vec4<i32>(-4647i, 0i, -3840i, 48909i), vec4<bool>(true, true, arg_2, true)))));
    var var_1 = select(!(!(!vec2<bool>(arg_2, true))), vec2<bool>(true, false), vec2<bool>(arg_2, false));
    global3 = vec3<f32>(_wgslsmith_div_f32(global3.x, global3.x), -1000f, _wgslsmith_f_op_f32(func_3()));
    var_1 = select(vec2<bool>(true, true), select(select(!(!vec2<bool>(arg_2, arg_2)), !select(vec2<bool>(arg_2, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, arg_2)), true), vec2<bool>(any(select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(arg_2, var_1.x))), !all(vec2<bool>(arg_2, false))), select(select(!vec2<bool>(var_1.x, arg_2), !vec2<bool>(true, var_1.x), !vec2<bool>(true, var_1.x)), !(!vec2<bool>(arg_2, false)), !arg_2 && !var_1.x)), false);
    global3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - arg_0.d), _wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(trunc(global3.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1120f, global3.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1071f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(953f, 1600f)))))))));
    return ~0i;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = vec3<i32>(max(firstTrailingBit(abs(_wgslsmith_mod_i32(-38599i, -1i))), u_input.d), func_5(Struct_1(firstLeadingBit(~55110i), ~(82197u >> (u_input.c.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(28480u, vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.b), Struct_1(2147483647i, 66160u, vec4<f32>(-1594f, 701f, global3.x, 703f), 685f, vec3<i32>(u_input.d, -5961i, u_input.d)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 1539f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -(~vec3<i32>(-2147483647i, -1i, 10761i))), ~abs(-u_input.d), false), abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 27105i, 45174i), vec4<i32>(0i, -31i, -25407i, u_input.d)) & _wgslsmith_add_i32(firstTrailingBit(40053i), 53873i)));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, _wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(global3.x + -523f), -316f)))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(min(arg_0.yy, u_input.a.xy), arg_1.wy, ~vec2<u32>(arg_1.x, ~4294967295u)), arg_1.zz);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, -221f) + vec2<f32>(global3.x, 1843f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1985f, global3.x), global3.xy))))));
    var var_2 = arg_3 | arg_3;
    let var_3 = reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10790i, i32(-1i) * -47447i), reverseBits(~vec2<i32>(-27031i, -2147483647i))), firstLeadingBit(_wgslsmith_mod_i32(arg_2.a, -28144i)), arg_2.a & _wgslsmith_mult_i32(u_input.d, abs(-35093i))));
    global4 = array<vec4<u32>, 12>();
    return all(vec3<bool>(all(vec4<bool>(!arg_3, arg_3, arg_3, !arg_3)), false, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.a.wxz & vec3<u32>(countOneBits(~u_input.a.x), 17294u, ~(~0u)), global4[_wgslsmith_index_u32(33997u, 12u)], Struct_1(u_input.d, u_input.c.x, _wgslsmith_f_op_vec4_f32(func_1(any(vec3<bool>(true, true, true)), -766f < _wgslsmith_f_op_f32(-global3.x), ~23761u <= _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_1(false, false, false, vec2<bool>(false, false))).x, _wgslsmith_f_op_f32(func_3())))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, min(1i, 22247i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, 42366i, 84363i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.d, 2147483647i), vec3<i32>(u_input.d, -2147483647i, 2147483647i), vec3<i32>(u_input.d, -1i, u_input.d)))), all(select(vec4<bool>(true, 41861u > u_input.b, true, true), vec4<bool>(true, true, true, true), !all(vec4<bool>(false, true, false, true)))));
    global2 = countOneBits(_wgslsmith_mod_i32(i32(-1i) * -(u_input.d >> (u_input.b % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.d, u_input.d, -18606i), vec3<i32>(u_input.d, -1i, u_input.d)), ~vec3<i32>(u_input.d, u_input.d, -1i)), -countOneBits(vec3<i32>(2147483647i, 28824i, u_input.d)))));
    var var_1 = ~(-(~(~vec4<i32>(11635i, 1i, 5070i, 1i))));
    global2 = u_input.d;
    global1 = !all(vec2<bool>(true, func_6(_wgslsmith_mod_vec3_u32(u_input.a.xzy, u_input.a.yzz), ~u_input.a, Struct_1(var_1.x, 76280u, vec4<f32>(1000f, 812f, -1000f, 585f), global3.x, var_1.yyz), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-24271i);
}

