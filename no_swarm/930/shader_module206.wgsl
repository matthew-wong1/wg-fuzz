struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(1u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: f32) -> vec4<bool> {
    let var_0 = abs(19750u) > firstTrailingBit(~global0.a.x);
    var var_1 = false;
    var var_2 = Struct_3(Struct_2(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, false))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2, arg_3, false)), _wgslsmith_f_op_f32(f32(-1f) * -190f))), u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_3), vec2<f32>(-1000f, arg_2))), vec3<i32>(-6222i, _wgslsmith_mod_i32(-16291i, 2147483647i), u_input.c.x), false)), !vec4<bool>(arg_3 <= 427f, var_0, false, var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1836f)))), var_0, firstLeadingBit(~(~vec2<u32>(u_input.a.x, u_input.a.x)) >> (vec2<u32>(global0.a.x, 1u) % vec2<u32>(32u))));
    var_1 = var_0;
    let var_3 = firstLeadingBit(~firstLeadingBit(vec4<u32>(arg_0.x, 1u, 35724u, 4294967295u) >> (vec4<u32>(23787u, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u))) & countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 67899u, arg_0.x, arg_1), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.x, arg_0.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1, 1u, var_2.e.x), vec4<u32>(89784u, var_2.e.x, global0.a.x, 0u), vec4<u32>(4294967295u, 22270u, 52976u, 15364u))));
    return var_2.b;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_mult_vec2_u32(global0.a, ~(~global0.a)));
    global0 = Struct_4(firstTrailingBit(~(~vec2<u32>(4294967295u, global0.a.x))));
    var var_1 = !select(select(vec4<bool>(false, true, true, global0.a.x > 53937u), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_3(vec2<u32>(36495u, 12506u), var_0.a.x, 470f, 1000f), true)), vec4<bool>(true, true, false, true), !(true | (u_input.b.x <= -1i)));
    let var_2 = vec3<u32>(8678u, max(~69272u, 30803u), _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.x, 1u) ^ _wgslsmith_mult_u32(40768u, 1u), ~_wgslsmith_sub_u32(countOneBits(u_input.a.x), u_input.a.x)));
    var var_3 = var_0;
    return Struct_4(~var_0.a >> (global0.a % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    global0 = Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(abs(0u), 23696u), global0.a));
    global0 = func_2();
    global0 = func_2();
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 0i)));
    let var_1 = Struct_4(vec2<u32>(0u, 4294967295u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1729f)), _wgslsmith_f_op_f32(round(711f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1951f, 686f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1100f)) * _wgslsmith_f_op_f32(-239f + 1804f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1073f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1172f - -1760f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(f32(-1f) * -602f)), _wgslsmith_f_op_f32(1151f * -107f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-462f))), 742f)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)) + -270f), _wgslsmith_div_f32(-339f, var_0.x)), u_input.c.x, vec2<f32>(_wgslsmith_div_f32(var_0.x, -535f), _wgslsmith_f_op_f32(func_1())), ~vec3<i32>(~u_input.b.x, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), u_input.b)) & u_input.c.yzy, true);
    let var_2 = Struct_1(var_0.x, 1i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), u_input.b, !var_1.e);
    var_1 = Struct_1(_wgslsmith_f_op_f32(1000f * var_1.c.x), ~_wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.c.x, -1i), -var_2.b), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, var_1.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1330f, _wgslsmith_f_op_f32(477f - var_2.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 328f))) - var_1.c))), var_2.d, var_2.e);
    global0 = Struct_4(~vec2<u32>(_wgslsmith_mod_u32(57544u, func_2().a.x), ~0u));
    var var_3 = func_2();
    let var_4 = Struct_3(Struct_2(!select(select(vec3<bool>(var_2.e, var_2.e, var_2.e), vec3<bool>(var_2.e, true, true), true), vec3<bool>(true, true, true), global0.a.x < 16395u), var_2), !vec4<bool>(true, var_1.e, any(vec4<bool>(true, var_1.e, false, true)), var_1.e), 1616f, true, abs(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27959u, var_3.a.x, 4294967295u), vec3<u32>(4294967295u, 1u, global0.a.x)), select(global0.a.x, global0.a.x, true)), global0.a.x)));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.c, 1438f, var_2.a), vec3<f32>(var_0.x, 413f, 1000f), var_1.e))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1761f, 477f, 290f)), vec3<f32>(350f, var_1.a, var_2.a))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, -1251f, !var_1.e))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))) + var_4.a.b.c.x)));
    var_5 = var_0.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_i32(_wgslsmith_add_i32(74514i, var_2.d.x), 1i) & -70310i, -countOneBits(-var_2.d.x)), -(~(~(~(-1i)))), vec4<u32>(4294967295u, func_2().a.x, ~global0.a.x, 0u) >> (vec4<u32>(~(var_4.e.x << (var_3.a.x % 32u)), func_2().a.x, _wgslsmith_mod_u32(global0.a.x, 4294967295u), max(u_input.a.x, ~global0.a.x)) % vec4<u32>(32u)), vec4<i32>(-1994i, _wgslsmith_sub_i32(reverseBits(var_4.a.b.b), -1i), -var_2.b, u_input.c.x), var_5.yy);
}

