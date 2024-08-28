struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), 474f, 1436f, true, vec2<f32>(-2761f, -1019f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(vec3<bool>(select(!all(vec3<bool>(arg_1.d, arg_1.a.x, global0.d)), ~arg_0.x < _wgslsmith_dot_vec4_u32(arg_0, arg_0), any(arg_1.a)), true, any(vec4<bool>(!global0.d, global0.d, false | arg_1.d, all(vec3<bool>(true, arg_1.d, true))))), 228f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), _wgslsmith_f_op_f32(select(arg_1.c, -1038f, true))), global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.c, -614f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.e, arg_1.e)))))));
    global0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, 1000f)), global0.c, true, arg_1.e);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1976f), _wgslsmith_f_op_f32(abs(-923f))))));
    var var_2 = arg_1;
    let var_3 = (1i & _wgslsmith_clamp_i32(53132i, abs(min(17749i, -25260i)), _wgslsmith_add_i32(max(21099i, 2147483647i), -1i))) != ~_wgslsmith_div_i32(reverseBits(firstLeadingBit(-1401i)), firstTrailingBit(1i));
    return all(vec4<bool>(var_3, true, true != any(!vec3<bool>(var_2.d, global0.a.x, true)), !all(vec3<bool>(arg_1.d, arg_1.d, true))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec3<bool>(!any(vec3<bool>(false, global0.d, global0.d)), _wgslsmith_div_f32(global0.b, global0.e.x) == 1372f, !func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), vec4<u32>(0u, 74657u, u_input.a.x, u_input.a.x)), Struct_1(global0.a, global0.e.x, global0.e.x, global0.d, global0.e))), global0.e.x, global0.e.x, true, global0.e);
    var var_0 = !select(!vec3<bool>(true, any(vec3<bool>(global0.a.x, global0.d, global0.a.x)), global0.d), vec3<bool>(all(!vec4<bool>(global0.d, true, global0.a.x, global0.a.x)), true, true), !global0.a);
    var var_1 = ~vec4<i32>(_wgslsmith_div_i32(-38360i, -15301i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(1i, -29394i, -26457i)), 1i, -6094i) << (vec4<u32>(~24994u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u));
    var_0 = global0.a;
    var var_2 = reverseBits(-25426i);
    return Struct_1(!select(global0.a, vec3<bool>(true || global0.a.x, true, false), all(vec3<bool>(false, global0.d, var_0.x))), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-732f + _wgslsmith_f_op_f32(-2342f - global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -959f)))), select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(select(global0.e.x, -183f, var_0.x))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), false != all(!vec4<bool>(var_0.x, false, global0.a.x, global0.a.x))), vec2<f32>(1804f, global0.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_2().a, global0.b, global0.c, arg_3.a.x, _wgslsmith_f_op_vec2_f32(-arg_0.e));
    return func_2();
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    global0 = func_4(func_2(), countOneBits(~vec3<u32>(~47191u, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~_wgslsmith_div_i32(36376i, -16458i), i32(-1i) * -18353i), ~countOneBits(abs(1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-2147483647i, 1i, 30800i, 0i))), Struct_1(vec3<bool>(false, !(!global0.a.x), !global0.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1438f, 411f))), global0.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - arg_0.x) - -179f), global0.b)), !(select(true, false, global0.d) || true), vec2<f32>(global0.b, 1f)));
    let var_0 = Struct_1(func_2().a, global0.c, _wgslsmith_f_op_f32(max(global0.c, -1163f)), !func_4(func_4(func_4(Struct_1(vec3<bool>(global0.d, false, global0.a.x), global0.e.x, -252f, false, vec2<f32>(arg_0.x, global0.c)), vec3<u32>(u_input.a.x, 58832u, 6742u), 0i, Struct_1(vec3<bool>(false, global0.d, global0.a.x), arg_0.x, arg_0.x, false, global0.e)), _wgslsmith_div_vec3_u32(vec3<u32>(98974u, 22546u, 5299u), vec3<u32>(4294967295u, u_input.a.x, 52786u)), ~2147483647i, Struct_1(global0.a, 888f, -597f, global0.d, vec2<f32>(global0.b, arg_0.x))), ~(~vec3<u32>(1u, u_input.a.x, 55169u)), 1i, Struct_1(func_2().a, _wgslsmith_f_op_f32(arg_0.x * 276f), _wgslsmith_f_op_f32(abs(-2283f)), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.x, arg_0.x), vec2<f32>(arg_0.x, 1000f), global0.a.x)))).a.x, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))))), arg_0.x));
    let var_1 = u_input.a;
    global0 = var_0;
    var var_2 = 1i;
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, -114f, true)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.e.x)))))));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(select(global0.a, !vec3<bool>(true, all(global0.a.zx), all(vec4<bool>(true, true, true, true))), false), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, 1515f, 1538f, global0.b), vec4<f32>(global0.e.x, -723f, global0.c, global0.e.x)), vec4<f32>(global0.b, -603f, global0.b, global0.c))))), -1318f, global0.a.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1212f), _wgslsmith_f_op_f32(select(1756f, global0.e.x, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.e.x, 1896f), vec2<f32>(global0.e.x, global0.b))) - _wgslsmith_f_op_vec2_f32(exp2(global0.e)))))));
    var var_3 = Struct_1(var_2.a, var_2.b, _wgslsmith_f_op_f32(func_1(vec4<f32>(func_2().e.x, 1008f, var_2.e.x, global0.e.x))), global0.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.e - vec2<f32>(695f, 895f)) * _wgslsmith_f_op_vec2_f32(select(global0.e, var_2.e, vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, 617f))))), _wgslsmith_f_op_vec2_f32(-global0.e), (abs(-12919i) << ((u_input.a.x << (8489u % 32u)) % 32u)) != firstTrailingBit(i32(-1i) * -27299i))));
    var var_4 = min(_wgslsmith_dot_vec4_u32(select(vec4<u32>(17362u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(56809u, 29482u, 15561u, 0u), vec4<bool>(var_3.a.x, var_3.d, var_2.a.x, var_2.a.x)) & ~firstLeadingBit(vec4<u32>(var_1, var_1, 0u, u_input.a.x)), ~min(vec4<u32>(var_1, 26880u, u_input.a.x, 6502u) & vec4<u32>(u_input.a.x, var_1, 14862u, u_input.a.x), ~vec4<u32>(0u, 0u, var_1, u_input.a.x))), 3632u);
    var_4 = 78699u & firstLeadingBit(~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(u_input.a.x, u_input.a.x >> (42582u % 32u), any(!vec3<bool>(var_2.d, true, false))), ~firstTrailingBit(_wgslsmith_mod_u32(1u, var_1)), firstLeadingBit(~max(0u, u_input.a.x))), _wgslsmith_add_u32(18442u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x | 0u, _wgslsmith_mult_u32(51155u, u_input.a.x), countOneBits(60150u), 4294967295u ^ var_1), vec4<u32>(u_input.a.x, var_1, u_input.a.x, 0u) & ~vec4<u32>(var_1, var_1, var_1, var_1))), -(~1i), 778f);
}

