struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    return vec3<i32>(arg_0.e, -2147483647i, 2147483647i);
}

fn func_3() -> vec3<i32> {
    let var_0 = -select(~select(-vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.e.x, -2434i) | u_input.e.wz, true), vec2<i32>(u_input.e.x, i32(-1i) * -u_input.c), vec2<bool>(any(vec2<bool>(false, true)) & (u_input.a > u_input.b), any(vec4<bool>(false, true, false, true))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    return ~vec3<i32>(select(var_0.x, ~var_0.x, firstLeadingBit(u_input.e.x) != var_0.x), u_input.e.x, var_0.x);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = min(_wgslsmith_dot_vec3_i32(firstTrailingBit(func_2(Struct_1(vec4<u32>(u_input.a, u_input.d.x, 96062u, 13222u), arg_1, arg_0, 1000f, u_input.c))), _wgslsmith_mult_vec3_i32(func_3(), u_input.e.zwy)), u_input.e.x & abs(_wgslsmith_add_i32(u_input.c, -u_input.c)));
    let var_1 = abs(48958i);
    var_0 = _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(-3685i, 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(48874u, u_input.b, 1u), vec3<u32>(u_input.d.x, u_input.a, 1u)) % 32u))));
    var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-(~u_input.e.x), 0i, countOneBits(-u_input.e.x)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -52037i), vec3<i32>(u_input.e.x, var_1, u_input.c)) & vec3<i32>(-2147483647i, 39572i, var_1)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1570f, -628f)) + 1f)));
    return Struct_1(vec4<u32>(u_input.a, 70658u, reverseBits(1u), u_input.a & ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), false, arg_0 && (arg_1 | all(vec4<bool>(arg_1, arg_1, true, true))), -159f, -1i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = !(any(select(select(vec4<bool>(true, arg_0, arg_1.c, arg_2.c), vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.c), vec4<bool>(true, arg_2.c, false, arg_1.c)), !vec4<bool>(false, false, true, arg_1.b), vec4<bool>(false, true, false, true))) || arg_1.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-402f, _wgslsmith_f_op_f32(f32(-1f) * -286f), -838f, _wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, -191f, arg_1.d, -139f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-417f, 1799f, arg_1.d, arg_1.d)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-977f, 414f), -287f, _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-566f * -1253f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(597f, -947f, arg_1.d, -443f) - vec4<f32>(arg_2.d, -625f, -2749f, 347f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, 851f, arg_2.d, 468f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-482f, arg_2.d, -736f, arg_1.d) * vec4<f32>(-2656f, 404f, arg_2.d, arg_2.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, 687f, arg_2.d, arg_2.d)) * vec4<f32>(-895f, arg_1.d, arg_2.d, -815f))))));
    let var_2 = Struct_1(arg_2.a, all(!(!select(vec4<bool>(false, arg_1.c, true, arg_1.b), vec4<bool>(false, arg_2.b, arg_0, false), vec4<bool>(false, false, true, arg_2.c)))), any(!vec3<bool>(arg_1.b & false, !arg_2.b, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(185f)) * _wgslsmith_f_op_f32(round(-866f))), arg_2.e);
    var var_3 = arg_2;
    var_3 = func_1((arg_2.e == u_input.c) || select(!var_3.b, any(vec4<bool>(var_2.b, arg_2.b, true, true)), true), arg_0);
    return _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) * arg_1.d), -666f)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = u_input.e;
    var_0 = -(vec4<i32>(var_0.x, _wgslsmith_clamp_i32(var_0.x, -1i, arg_2.x), arg_2.x, 17225i & var_0.x) ^ ~vec4<i32>(14372i, -1i, -1i, var_0.x)) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(34955u, 4294967295u, u_input.a, 22809u)), vec4<u32>(19224u, u_input.b ^ ~u_input.b, func_1(true, true).a.x, ~47729u)) % vec4<u32>(32u));
    let var_1 = func_1(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), any(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), false)));
    var_0 = -max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.e, -29960i, 2147483647i, arg_2.x) | ~vec4<i32>(var_1.e, var_0.x, u_input.c, -1i), u_input.e), vec4<i32>(arg_2.x, -70516i, _wgslsmith_mult_i32(-33747i, countOneBits(-1i)), -2147483647i));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1092f * arg_0.a), 360f)));
    return -10289i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(17940u & u_input.b);
    var var_1 = func_5(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1894f)) - 1000f), _wgslsmith_f_op_f32(func_4(true, Struct_1(vec4<u32>(41280u, 0u, 12311u, 1u), true, true, -491f, u_input.e.x), func_1(false, true)))))), _wgslsmith_f_op_f32(f32(-1f) * -2421f), u_input.e.wyw, Struct_2(340f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(784f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = 3610i << (~select(_wgslsmith_sub_u32(1u, var_0), max(~u_input.d.x, _wgslsmith_sub_u32(59575u, 7525u)), !any(vec2<bool>(false, false))) % 32u);
    var var_3 = select(0i, ~(~u_input.e.x >> (abs(19549u) % 32u)), func_1(u_input.c == u_input.e.x, true).b) <= _wgslsmith_mult_i32(min(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, u_input.e.x), 7953i), u_input.e.x), -25415i);
    var var_4 = _wgslsmith_mult_u32(~77685u & (var_0 >> (_wgslsmith_sub_u32(0u, u_input.b) % 32u)), firstLeadingBit(~(~select(u_input.a, 4294967295u, false))));
    var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xw >> (~min(~u_input.d, ~vec2<u32>(var_0, u_input.d.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1611f, 792f, 847f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1071f, 1323f) + vec3<f32>(246f, var_2.a, -492f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-809f, 1757f, var_2.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * var_2.a)))));
}

