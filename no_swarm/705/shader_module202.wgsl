struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> bool {
    return arg_0 & !any(vec3<bool>(any(vec4<bool>(arg_0, true, arg_0, arg_0)), !arg_0, arg_0));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(~vec3<u32>(_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(0u)), 1u, abs(~u_input.c.x)), Struct_1(vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2574f * -348f)), _wgslsmith_f_op_f32(561f * -1610f))), Struct_1(select(~_wgslsmith_sub_vec2_i32(vec2<i32>(-13009i, -4043i), vec2<i32>(u_input.b, -40421i)), ~(-vec2<i32>(u_input.b, u_input.b)), func_3(all(vec2<bool>(true, false)), Struct_3(vec3<u32>(0u, 5950u, u_input.a), Struct_1(vec2<i32>(u_input.b, 58861i)), 982f, Struct_1(vec2<i32>(1i, u_input.b))), _wgslsmith_f_op_f32(sign(-713f))))));
    var_0 = Struct_3(var_0.a, Struct_1(~var_0.d.a), _wgslsmith_f_op_f32(ceil(var_0.c)), var_0.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(556f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(198f + -2108f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-620f * var_0.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c * 862f))))), !(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))));
    var var_2 = true;
    let var_3 = 4294967295u;
    return Struct_2(true, all(vec4<bool>(false, true, true, true)), abs(~1u), Struct_1(vec2<i32>(1i, u_input.b)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-624f * -1059f))), _wgslsmith_div_f32(-270f, _wgslsmith_f_op_f32(select(1000f, 663f, arg_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-772f, 836f))))));
    let var_1 = Struct_2(arg_0.a, arg_1 <= ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c), ~vec3<u32>(arg_1, arg_1, arg_0.c)), _wgslsmith_add_u32(~50005u, ~(~u_input.c.x) & abs(u_input.a)), func_2().d);
    let var_2 = false && (u_input.c.x <= countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 87207u), abs(u_input.c.yz))));
    var var_3 = ~(~1151u);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1691f, var_0.x, 116f, var_0.x))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1291f, var_0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -695f, var_0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -137f), vec4<f32>(250f, 1000f, var_0.x, -209f))), vec4<f32>(var_0.x, var_0.x, 1639f, 2304f)))));
    return Struct_3(vec3<u32>(min(_wgslsmith_mult_u32(select(u_input.c.x, 9301u, true), var_1.c), 1u), 1u >> (~4294967295u % 32u), max(~arg_0.c, 1u)), func_2().d, var_0.x, func_2().d);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, reverseBits(arg_2.a.x), ~1u >> (~arg_2.a.x % 32u), (u_input.a & u_input.c.x) ^ (27912u >> (arg_2.a.x % 32u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 43115u, u_input.a, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.a, 63231u)))), _wgslsmith_mod_vec4_u32(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(58657u, u_input.c.x, 25788u, arg_2.a.x), vec4<u32>(0u, 0u, 0u, arg_2.a.x)), reverseBits(~vec4<u32>(arg_2.a.x, arg_0.a.x, 1u, arg_2.a.x)), true), vec4<u32>(43187u, _wgslsmith_mod_u32(arg_2.a.x ^ arg_2.a.x, _wgslsmith_div_u32(53744u, 88064u)), select(~33669u, _wgslsmith_div_u32(8461u, u_input.a), true), 48566u)));
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(51892u, ~_wgslsmith_sub_u32(max(arg_0.a.x, 44717u), 72381u), func_2().c, arg_0.a.x), ~vec4<u32>(u_input.a, 4294967295u, var_0, 0u));
    let var_2 = Struct_2(true, any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)), var_1.x, arg_2.d);
    var_1 = _wgslsmith_div_vec4_u32(max(abs(vec4<u32>(select(var_1.x, 0u, false), _wgslsmith_div_u32(arg_2.a.x, arg_0.a.x), ~arg_2.a.x, u_input.a)), ~vec4<u32>(23724u, arg_2.a.x, _wgslsmith_dot_vec2_u32(arg_2.a.yz, var_1.zx), _wgslsmith_div_u32(arg_2.a.x, arg_0.a.x))), min(vec4<u32>(select(var_2.c, 1u, true), 0u, 1u, 2867u) << (min(vec4<u32>(17361u, var_0, var_0, 0u) ^ vec4<u32>(u_input.c.x, 0u, 1u, 18883u), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_2.a.x, 4294967295u)) % vec4<u32>(32u)), ~countOneBits(~vec4<u32>(arg_2.a.x, 4294967295u, arg_2.a.x, arg_2.a.x))));
    return _wgslsmith_dot_vec4_u32(abs(max(~(vec4<u32>(78141u, var_1.x, var_1.x, var_2.c) & vec4<u32>(var_1.x, arg_2.a.x, 124732u, 0u)), vec4<u32>(0u, reverseBits(arg_2.a.x), func_2().c, 0u))), (vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 5283u), vec2<u32>(var_0, 0u)), var_2.c >> (11620u % 32u), var_2.c) >> (~vec4<u32>(9886u, 26838u, 8482u, 48912u) % vec4<u32>(32u))) & ~(~vec4<u32>(var_0, var_2.c, 4294967295u, 1u) ^ (vec4<u32>(92227u, var_1.x, 77687u, arg_2.a.x) ^ vec4<u32>(1u, 27904u, 12546u, var_1.x))));
}

fn func_1() -> vec3<f32> {
    let var_0 = vec4<u32>(u_input.a, func_5(func_4(func_2(), select(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 94730u, 4294967295u), vec4<u32>(8318u, u_input.a, 1u, u_input.c.x)), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(409f, -1008f), vec2<f32>(1566f, -897f), vec2<bool>(false, false))))), Struct_3(~vec3<u32>(39663u, u_input.a, u_input.a), func_2().d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1205f - 1634f))), func_2().d)), u_input.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 38676u, 0u)), 15365u), _wgslsmith_add_u32(u_input.c.x, ~1u)));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(399f)))), -435f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(666f, 305f, 1227f), vec3<f32>(-281f, -1356f, -3589f), true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, 1f, 1f)))));
    var var_1 = func_4(func_2(), abs(~u_input.c.x)).b;
    var_1 = Struct_1(func_2().d.a);
    let var_2 = ~(vec3<u32>(1u, ~10697u, (u_input.c.x ^ u_input.a) ^ _wgslsmith_sub_u32(0u, u_input.c.x)) ^ (_wgslsmith_add_vec3_u32(u_input.c, u_input.c) | u_input.c));
    let var_3 = !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_4 = Struct_1(abs(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, vec2<u32>(1u, _wgslsmith_mult_u32(~u_input.c.x, 1u)) << (var_2.xx % vec2<u32>(32u)), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)) - var_0.x), _wgslsmith_f_op_vec3_f32(min(var_0, _wgslsmith_f_op_vec3_f32(step(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1241f, 1179f, -879f), vec3<f32>(-406f, var_0.x, 1558f), var_3.wxy))))))));
}

