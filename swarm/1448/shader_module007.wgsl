struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1533f, -27181i, vec4<bool>(true, false, false, true), vec4<i32>(0i, -1i, -63616i, 4344i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_i32(~u_input.a, _wgslsmith_mult_i32(6564i, -29101i)) >> (~u_input.c.x % 32u);
    global0 = Struct_1(_wgslsmith_f_op_f32(-521f * -2159f), 26978i, !select(global0.c, vec4<bool>(false, global0.c.x, u_input.a == 2147483647i, u_input.a > global0.b), global0.c), countOneBits(max(abs(global0.d), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-28528i, global0.b, -2147483647i, 8687i), vec4<i32>(u_input.a, -2147483647i, u_input.a, global0.d.x)), vec4<i32>(1i, global0.b, u_input.a, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-473f, global0.a), -1943f) * vec2<f32>(-1045f, _wgslsmith_f_op_f32(-arg_0)))));
    var var_2 = _wgslsmith_sub_i32(global0.d.x, ~((2147483647i << (~u_input.c.x % 32u)) << (~(~19313u) % 32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), -_wgslsmith_add_i32(global0.d.x, -4271i) << (~1u % 32u), select(global0.c, select(global0.c, select(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), select(vec4<bool>(global0.c.x, global0.c.x, false, false), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, false, true, global0.c.x)), vec4<bool>(false, true, global0.c.x, false)), false), false), firstLeadingBit(global0.d));
    return select(global0.c, vec4<bool>(min(-71342i, i32(-1i) * -36775i) < _wgslsmith_clamp_i32(6499i, _wgslsmith_dot_vec3_i32(global0.d.wxx, global0.d.xyy), ~(-26993i)), !(u_input.c.x <= 0u), all(select(vec4<bool>(global0.c.x, true, true, false), vec4<bool>(false, false, global0.c.x, false), !global0.c.x)), any(global0.c.yzx)), global0.c);
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(222f, global0.a) + _wgslsmith_f_op_f32(abs(786f)))))), _wgslsmith_clamp_i32(firstLeadingBit(reverseBits(u_input.a)), -u_input.a, firstTrailingBit(countOneBits(-18270i))), vec4<bool>(!select(arg_0.x, global0.c.x, global0.c.x) || false, global0.c.x, true, ((global0.d.x << (1u % 32u)) < _wgslsmith_div_i32(-46343i, -16658i)) & false), max(global0.d, ~firstLeadingBit(vec4<i32>(-1i, 0i, 6136i, global0.b))));
    let var_0 = true;
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f - global0.a)))), _wgslsmith_f_op_f32(-global0.a))), ~(~min(_wgslsmith_mod_i32(-1i, 56891i), _wgslsmith_dot_vec4_i32(global0.d, vec4<i32>(1i, -20830i, -61198i, global0.b)))), !vec4<bool>(false, !global0.c.x, false, true), vec4<i32>(-1i) * -vec4<i32>(global0.d.x, 33925i, -global0.b, -2147483647i));
    var var_1 = Struct_1(-1182f, abs(_wgslsmith_dot_vec3_i32(global0.d.zzw ^ global0.d.zxy, global0.d.wxx) ^ global0.b), select(vec4<bool>(global0.d.x > -u_input.a, true, !global0.c.x, arg_0.x), select(!vec4<bool>(var_0, global0.c.x, global0.c.x, var_0), global0.c, arg_0), func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))).x), _wgslsmith_add_vec4_i32(vec4<i32>(35654i << (_wgslsmith_div_u32(u_input.b, 4294967295u) % 32u), -33083i, u_input.a, _wgslsmith_dot_vec4_i32(~global0.d, -vec4<i32>(1i, u_input.a, u_input.a, 84031i))), -_wgslsmith_mod_vec4_i32(~vec4<i32>(46442i, u_input.a, -1i, u_input.a), global0.d << (vec4<u32>(0u, 4294967295u, 21016u, 0u) % vec4<u32>(32u)))));
    return max(-var_1.d.x, -_wgslsmith_mult_i32(var_1.b, ~abs(u_input.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    global0 = Struct_1(-2222f, func_4(func_3(global0.a)), vec4<bool>(true, true, 722u >= (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10342u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 33877u, 3040u, u_input.c.x)) >> (select(u_input.d, 0u, false) % 32u)), global0.c.x || any(vec3<bool>(global0.c.x, false, global0.c.x))), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, -53881i), abs(vec2<i32>(2147483647i, u_input.a))), 17522i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, -1i, ~var_0), ~2147483647i ^ var_0, ~(-var_0)), firstTrailingBit(~(i32(-1i) * -1i))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1000f - 739f), ~11681i, !(!(!vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x))), select(vec4<i32>(_wgslsmith_clamp_i32(-var_0, min(-31308i, u_input.a), var_0), 0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(20533i, 0i), _wgslsmith_mult_i32(-1i, u_input.a)), u_input.a), -vec4<i32>(global0.b, u_input.a | global0.b, var_0, var_0), select(func_3(global0.a), !vec4<bool>(global0.c.x, global0.c.x, true, true), global0.c.x)));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, -290f, _wgslsmith_f_op_f32(ceil(1939f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1527f)))), _wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_div_f32(-1386f, var_2.a))), -894f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, global0.a, 248f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_2.a, 533f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1105f, global0.a, -545f))))))));
    return var_1;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2();
    global0 = Struct_1(-1200f, 20296i, var_0.c, ~(-(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, -34635i), vec4<i32>(1i, u_input.a, 0i, -1i)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-726f + -323f))) == global0.a;
    var var_2 = _wgslsmith_f_op_f32(trunc(-363f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_div_f32(global0.a, var_0.a)))), _wgslsmith_clamp_i32(2147483647i & _wgslsmith_mult_i32(global0.d.x | 1i, ~1i), _wgslsmith_mult_i32(global0.d.x, ~(i32(-1i) * -2147483647i)), -28409i), vec4<bool>(!var_0.c.x, any(global0.c), var_0.c.x, u_input.a == select(1453i, _wgslsmith_sub_i32(0i, 1i), !global0.c.x)), vec4<i32>(-select(_wgslsmith_mod_i32(46477i, u_input.a), global0.d.x, !var_0.c.x), -min(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, -849i, -2147483647i, global0.b), var_0.d), -global0.b), global0.d.x, -u_input.a));
    return vec4<bool>(true, false, func_3(var_3.a).x, any(var_0.c.wz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i | -(~(-_wgslsmith_dot_vec3_i32(global0.d.yww, vec3<i32>(1i, u_input.a, 1i))));
    let var_1 = !global0.c.x;
    var var_2 = Struct_1(342f, ~(-u_input.a), !global0.c, abs(vec4<i32>(global0.b, 1i, global0.d.x, 19015i)));
    let var_3 = Struct_1(-895f, 0i, select(!select(!vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), global0.c, 4294967295u == u_input.b), vec4<bool>(var_2.c.x, true, false, var_2.c.x), func_1()), min(select(~var_2.d, firstTrailingBit(global0.d), true), global0.d) & (_wgslsmith_mod_vec4_i32(~global0.d, vec4<i32>(12172i, 1i, -1i, 43775i)) << (vec4<u32>(_wgslsmith_div_u32(63532u, u_input.d), select(47142u, u_input.d, var_2.c.x), ~4294967295u, u_input.b) % vec4<u32>(32u))));
    global0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec4<bool>(false, !func_1().x, any(var_3.c) | true, true)), u_input.b, var_2.a, _wgslsmith_mult_i32(22032i, -(~var_3.b >> (u_input.d % 32u))), global0.d);
}

