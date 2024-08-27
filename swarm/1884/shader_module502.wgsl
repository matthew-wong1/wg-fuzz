struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec2_i32(select(~vec2<i32>(14736i, -5046i), reverseBits(vec2<i32>(14607i, 0i)), true), u_input.b.yy) > (i32(-1i) * -1i), -(select(8987i, global0.b, true) & -9668i) < -53020i, all(!vec4<bool>(true, false, any(vec3<bool>(false, true, false)), 4294967295u <= arg_0)));
    let var_1 = Struct_3(vec4<i32>(select(u_input.b.x, -_wgslsmith_div_i32(-36557i, global0.b), !any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), firstLeadingBit(-17866i), ~global0.b, 20534i), Struct_1(1000f, ~global0.b >> (max(~34874u, ~arg_0) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-834f, -899f, global0.c.x, 1029f), global0.c)) - _wgslsmith_f_op_vec4_f32(-global0.c))));
    global0 = var_1.b;
    global0 = Struct_1(_wgslsmith_f_op_f32(-904f - var_1.b.a), var_1.b.b, vec4<f32>(global0.c.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), global0.a));
    var var_2 = global0.b;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.c.x - _wgslsmith_f_op_f32(global0.c.x + -1000f))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_5 {
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(4294967295u)))))), select(u_input.b.x | -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, global0.b)), ~_wgslsmith_div_i32(u_input.b.x, u_input.b.x) >> (arg_0.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, 446f) - global0.a) == _wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(-803f + global0.c.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-539f, global0.a, _wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(136f, -1279f)), 608f))), global0.c)));
    let var_0 = Struct_2(~1i, global0.c.xxz);
    let var_1 = 0i;
    let var_2 = firstTrailingBit(~(vec4<i32>(_wgslsmith_mult_i32(global0.b, var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 75644i, var_0.a, global0.b), vec4<i32>(19672i, 2147483647i, u_input.b.x, var_0.a)), 20342i, 1i) << (vec4<u32>(21467u, firstLeadingBit(arg_0.x), _wgslsmith_mult_u32(16240u, u_input.a), 43636u) % vec4<u32>(32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f))), _wgslsmith_clamp_i32(var_1, global0.b, -2147483647i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, 563f, -811f, -1831f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + var_0.b.x), var_0.b.x, -467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.c.x))))));
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(select(var_3.a, -585f, true)), abs(14386i), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1236f * -1742f))), _wgslsmith_f_op_f32(step(414f, _wgslsmith_f_op_f32(var_3.c.x - -611f))), _wgslsmith_f_op_f32(286f + var_0.b.x))));
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1801f, arg_0.a.a)))))), 1000f, _wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, 0u)).a.c.x * _wgslsmith_f_op_f32(global0.a * global0.a))))));
    global0 = func_2(~min(vec2<u32>(u_input.a, u_input.c) | vec2<u32>(1u, 1u), ~select(vec2<u32>(u_input.a, 43637u), vec2<u32>(34514u, 1u), vec2<bool>(true, true)))).a;
    let var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, true, true))));
    global0 = func_2(abs(~abs(vec2<u32>(u_input.c, 24176u)))).a;
    var var_2 = Struct_5(func_2(select(~_wgslsmith_div_vec2_u32(vec2<u32>(53941u, u_input.a), vec2<u32>(9811u, u_input.c)), _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.a, 73446u), vec2<u32>(u_input.c, u_input.a)), ~vec2<u32>(u_input.a, u_input.c)), var_1)).a);
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = func_4(func_2(vec2<u32>(abs(u_input.c), firstLeadingBit(1u))));
    let var_1 = 1i > global0.b;
    var var_2 = func_2(vec2<u32>(u_input.c >> (reverseBits(0u | u_input.a) % 32u), ~(~u_input.c) << ((~0u | abs(u_input.c)) % 32u)));
    var_2 = func_4(func_4(func_4(func_2(~vec2<u32>(0u, 0u)))));
    var var_3 = !(!vec3<bool>(var_1, false, var_1));
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(-1247f * _wgslsmith_f_op_f32(exp2(global0.a)))), 5857i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.c.x, 1010f) * vec4<f32>(global0.a, 192f, -204f, -1899f))))));
    let var_1 = !select(vec2<bool>(true, true | all(vec4<bool>(false, false, false, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.a >= 13262u), vec2<bool>(true, false));
    let var_2 = vec4<i32>(~(-(func_2(vec2<u32>(0u, u_input.a)).a.b & _wgslsmith_add_i32(var_0.a.b, 1i))), _wgslsmith_mod_i32(global0.b, i32(-1i) * -1112i), -860i | (min(global0.b, ~(-1i)) | 34703i), abs(var_0.a.b));
    global0 = func_2(firstTrailingBit(~vec2<u32>(u_input.c, select(u_input.a, 38328u, var_1.x)))).a;
    global0 = Struct_1(1267f, var_0.a.b, vec4<f32>(_wgslsmith_f_op_f32(-global0.a), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-953f, -1440f, var_1.x)) * 405f) + _wgslsmith_f_op_f32(-1457f - _wgslsmith_f_op_f32(global0.a - var_0.a.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + var_0.a.c.x) * -1301f)))));
    var var_3 = var_0;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(243f, _wgslsmith_div_f32(-1522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1108f, -426f, false)))) - _wgslsmith_f_op_f32(var_3.a.c.x * -865f))), var_4.a.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_0.a.c.wxz)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(var_3.a.c.yxx)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.c.x, global0.a, var_0.a.a), vec3<f32>(520f, global0.c.x, 415f))))), true)), var_2 ^ -vec4<i32>(var_0.a.b, i32(-1i) * -39190i, global0.b, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)));
}

