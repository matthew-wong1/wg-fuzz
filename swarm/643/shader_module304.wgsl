struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 19306u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>) -> i32 {
    global1 = u_input.b.yxx | vec3<u32>(abs(u_input.a) | u_input.b.x, u_input.b.x, u_input.a);
    let var_0 = 1f;
    let var_1 = Struct_2(abs(vec2<u32>(17749u, _wgslsmith_dot_vec3_u32(vec3<u32>(136062u, 40213u, 23851u), min(u_input.b.zyz, vec3<u32>(global1.x, 4077u, 56915u))))), true);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -251f)));
    var var_3 = -619f;
    return _wgslsmith_mod_i32(arg_1.x, -18378i);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    let var_0 = u_input.b.yx;
    let var_1 = Struct_1(select(vec2<bool>(true, all(vec2<bool>(false, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), true), ~vec3<i32>(abs(0i), _wgslsmith_add_i32(1i, arg_0), ~(-17188i)), max(~(func_3(vec3<f32>(-123f, 851f, -427f), vec2<i32>(global0.x, arg_0)) << (~u_input.b.x % 32u)), ~(~1i)));
    let var_2 = select(var_1.a.x && false, select(var_1.a.x, false, !var_1.a.x & var_1.a.x), !var_1.a.x);
    let var_3 = Struct_1(var_1.a, vec3<i32>(~arg_0, -8940i, 0i), -63049i);
    var var_4 = 85410i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1317f, -1658f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -230f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(922f * 152f), _wgslsmith_div_f32(-432f, -167f), var_3.a.x)) + 608f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(global0.x, vec2<u32>(global1.x, u_input.a), 15141u)))))))));
    var var_1 = -16202i;
    var var_2 = vec2<bool>(any(!vec4<bool>(arg_1, arg_0.x, 53442u <= u_input.b.x, false)), !all(arg_0));
    global1 = vec3<u32>(u_input.a, min(u_input.b.x, 1u), ~global1.x);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.x, 4294967295u, u_input.b.x)), firstTrailingBit(u_input.b.zww)), global1.x, ~6842u);
    return Struct_2(u_input.b.wy, all(!select(select(vec4<bool>(var_2.x, false, arg_1, false), vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, false, false, arg_0.x)), select(vec4<bool>(arg_1, true, arg_1, arg_0.x), vec4<bool>(false, true, true, true), vec4<bool>(false, arg_1, false, var_2.x)), !vec4<bool>(false, arg_1, false, var_2.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1005f, _wgslsmith_f_op_f32(-558f + -1014f), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-651f)) * -1887f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) + _wgslsmith_div_f32(-562f, 262f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 285f)))));
    let var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_1.b), -vec3<i32>(~(-2147483647i), _wgslsmith_div_i32(arg_1.b.x, -1i), i32(-1i) * -50024i)) | firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.b.x, global0.x, 0i), vec3<i32>(arg_1.c, select(arg_1.c, -9284i, true), 1i)));
    global0 = vec2<i32>(-1i, firstTrailingBit(firstTrailingBit(arg_1.c))) | _wgslsmith_add_vec2_i32(vec2<i32>(abs(countOneBits(-2147483647i)), var_2 ^ (20097i | arg_1.b.x)), vec2<i32>(~global0.x, reverseBits(0i)));
    global1 = vec3<u32>(_wgslsmith_sub_u32(func_1(vec2<bool>(false, true), !arg_1.a.x).a.x, ~global1.x), 4294967295u, max(_wgslsmith_dot_vec2_u32(select(reverseBits(arg_0.a), reverseBits(u_input.b.zw), !arg_0.b), vec2<u32>(u_input.b.x, 1u)), ~9650u));
    return select(!vec3<bool>(!arg_1.a.x, !any(vec4<bool>(arg_1.a.x, arg_0.b, false, arg_2)), arg_0.b), vec3<bool>(0u > ~global1.x, arg_1.a.x, any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, arg_2, true), vec3<bool>(true, true, true), !(!vec3<bool>(arg_1.a.x, arg_2, false))), !(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_0.b)), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1486f) >= var_0.x, func_1(arg_1.a, !arg_2).b, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_4(func_1(vec2<bool>(true, false), false), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x) << (u_input.b.zzz % vec3<u32>(32u))), -12746i), true));
    global0 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-24390i, -47189i), vec2<i32>(-2147483647i, global0.x), true), _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, -5010i), vec2<i32>(global0.x, global0.x))), _wgslsmith_mod_i32(~global0.x, -3791i))), select(_wgslsmith_div_vec2_i32(~(-vec2<i32>(1i, -3473i)), vec2<i32>(-global0.x, min(global0.x, global0.x))), max(_wgslsmith_div_vec2_i32(~vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, -22032i)), vec2<i32>(-40373i, global0.x) & _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, -5980i), vec2<i32>(global0.x, 2147483647i))), func_1(func_4(Struct_2(u_input.b.zy, var_0), Struct_1(vec2<bool>(false, var_0), vec3<i32>(global0.x, 19482i, global0.x), -10508i), var_0).xy, global0.x <= _wgslsmith_mod_i32(-1i, global0.x)).b));
    var var_1 = Struct_2(vec2<u32>(53847u, _wgslsmith_add_u32(21814u, ~u_input.a)), true);
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_1.a, abs(func_1(vec2<bool>(true, true), false).a)), select(global1.xy, countOneBits(u_input.b.ww), false)), var_1.b);
    var var_3 = func_1(!vec2<bool>(var_0, true), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1282f, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1190f, -1000f), vec2<f32>(-470f, -464f), var_1.b))))), global0.x, -1406f);
}

