struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec3<f32>(-278f, -514f, 1076f), 2147483647i, vec3<f32>(-412f, -1163f, -886f), vec4<i32>(-27427i, 68980i, 1i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = !vec4<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false, true || !all(vec3<bool>(false, true, true)), true || (global0.d.x != _wgslsmith_div_f32(-2124f, global0.b.x)));
    var var_1 = ~select(u_input.a, abs(global0.a << (global0.a % 32u)), !(global0.d.x > global0.d.x)) > 4294967295u;
    var var_2 = -((vec3<i32>(2147483647i, u_input.b.x << (3293u % 32u), ~u_input.b.x) | -firstTrailingBit(vec3<i32>(11448i, -17508i, 38865i))) | firstLeadingBit(vec3<i32>(global0.c >> (global0.a % 32u), ~global0.c, 1i)));
    global0 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + -1283f), global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + 1000f) + 1392f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1185f, -1000f, 483f)))))))), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(step(-126f, _wgslsmith_div_f32(global0.d.x, 649f))), -686f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(213f, 566f, true)))))), select(~(~(-global0.e)), select(vec4<i32>(max(1i, 41579i), -var_2.x, u_input.b.x, ~2147483647i), ~vec4<i32>(1i, global0.c, -2930i, 1i) & vec4<i32>(0i, var_2.x, 0i, 24585i), all(var_0.wxw) || true), (true || all(vec3<bool>(true, var_0.x, var_0.x))) | true));
    var_1 = !var_0.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d))))) + vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -591f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), 1684f), _wgslsmith_f_op_f32(func_3()))));
    global0 = Struct_1(~67594u, vec3<f32>(var_0.x, -1046f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0.x)), -2924f)))), firstLeadingBit(-1i), _wgslsmith_f_op_vec3_f32(exp2(global0.d)), _wgslsmith_sub_vec4_i32(firstLeadingBit(global0.e), vec4<i32>(1i, 12118i, (u_input.b.x & global0.c) >> (u_input.a % 32u), _wgslsmith_sub_i32(~global0.c, u_input.b.x | u_input.b.x))));
    var var_1 = var_0.x;
    var_1 = -874f;
    let var_2 = -global0.e;
    return Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, var_0.x) * vec3<f32>(global0.d.x, global0.d.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-229f, global0.d.x, var_0.x), vec3<f32>(global0.b.x, global0.d.x, -613f)))), global0.b)))), global0.e.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d - global0.b)))))), max(vec4<i32>(var_2.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-8986i, -13497i, var_2.x, var_2.x)), firstLeadingBit(global0.e)), abs(global0.c << (u_input.a % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, global0.c), u_input.b)), _wgslsmith_div_vec4_i32(-(var_2 ^ vec4<i32>(var_2.x, var_2.x, u_input.b.x, global0.c)), -firstLeadingBit(var_2))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), -615f >= _wgslsmith_f_op_f32(-1667f + arg_1.b.x)), vec2<bool>(all(vec4<bool>(true, true, true, true)), false), all(vec3<bool>(false, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, true))))));
    let var_1 = Struct_1(_wgslsmith_div_u32(min(_wgslsmith_mod_u32(68448u, 75805u), 1u), func_2(vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, false))).a) & ~_wgslsmith_mult_u32(0u, ~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.x, global0.b.x, 185f))))), 14604i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.d + _wgslsmith_f_op_vec3_f32(global0.d - vec3<f32>(arg_0.d.x, -1000f, global0.d.x)))))), arg_0.e);
    var var_2 = -2147483647i;
    var var_3 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(-arg_0.d), firstLeadingBit(-55267i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1.d.x, 1425f), _wgslsmith_f_op_f32(-var_1.b.x), global0.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(956f, arg_0.b.x, -1334f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-963f, var_1.b.x, 1000f)))) - _wgslsmith_f_op_vec3_f32(arg_1.b - arg_0.d)), vec4<i32>(-min(~(-95940i), 1i), -((arg_1.e.x << (var_1.a % 32u)) << (max(61892u, var_1.a) % 32u)), _wgslsmith_add_i32(-1i, -1i), ~1i));
    var_2 = abs(62876i);
    return 52963u;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = 37786u >= ~func_4(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true), Struct_1(_wgslsmith_sub_u32(4294967295u, global0.a), _wgslsmith_f_op_vec3_f32(select(global0.d, vec3<f32>(502f, global0.d.x, 525f), false)), _wgslsmith_div_i32(11274i, u_input.b.x), global0.d, _wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, 0i))));
    let var_1 = global0.c;
    global0 = Struct_1(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(538f, 2158f, -1040f) * vec3<f32>(-477f, -301f, global0.d.x))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(346f, global0.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x * -411f))), global0.d.x)), global0.c, _wgslsmith_div_vec3_f32(vec3<f32>(468f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1097f, 354f, _wgslsmith_f_op_f32(-691f + 1000f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(global0.d.x * -1093f), _wgslsmith_f_op_f32(ceil(global0.d.x))), vec3<bool>(true, true, true)))), global0.e);
    var var_2 = func_2(vec3<bool>(-624f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2242f)) + _wgslsmith_div_f32(global0.d.x, global0.b.x)), false, any(vec2<bool>(false, true))), all(!vec2<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, true)))));
    var var_3 = vec2<bool>(all(vec2<bool>(true, false)), (abs(_wgslsmith_sub_i32(22614i, arg_1.x)) << (~func_2(vec3<bool>(true, true, true), false).a % 32u)) < -1i);
    return func_2(select(!(!(!vec3<bool>(false, var_3.x, var_3.x))), select(vec3<bool>(true, var_3.x, any(vec4<bool>(var_3.x, var_3.x, false, false))), select(!vec3<bool>(var_3.x, var_3.x, true), !vec3<bool>(true, false, var_3.x), !vec3<bool>(var_3.x, true, var_3.x)), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), var_3.x)), vec3<bool>(any(vec3<bool>(var_3.x, var_3.x, var_3.x)), false, any(!vec4<bool>(var_3.x, true, false, var_3.x)))), any(select(vec2<bool>(any(vec2<bool>(var_3.x, true)), false), vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(false, var_3.x))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~vec2<u32>(~_wgslsmith_clamp_u32(global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45735u, arg_1, 0u), vec4<u32>(4295u, arg_0.a, 4294967295u, u_input.a)), 28578u), _wgslsmith_clamp_u32(4294967295u, min(34763u, arg_3.a), ~61205u) & 11160u);
    let var_1 = global0.b.zx;
    global0 = func_1(firstLeadingBit(var_0), select(vec4<i32>(~(-34171i), _wgslsmith_dot_vec3_i32(vec3<i32>(-13296i, u_input.b.x, -2147483647i), abs(vec3<i32>(global0.c, global0.c, u_input.b.x))), u_input.b.x, -_wgslsmith_add_i32(arg_3.e.x, u_input.b.x)), global0.e, false));
    global0 = arg_3;
    let var_2 = select(!select(vec3<bool>(all(vec2<bool>(true, false)), true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, select(true, false, false), true)), vec3<bool>(select(any(vec4<bool>(false, false, true, true)) & true, true, true), any(vec4<bool>(-2020f >= global0.b.x, any(vec3<bool>(true, false, true)), true, true)), true), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), false), true));
    return Struct_1(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, arg_2.x, -565f))))) - vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_3.b.x * arg_3.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -920f))), 0i, _wgslsmith_f_op_vec3_f32(-arg_0.b), ~arg_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yz;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, _wgslsmith_f_op_f32(f32(-1f) * -1137f), -667f)) * _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + global0.d.x), 680f, _wgslsmith_f_op_f32(f32(-1f) * -296f)))), -(~1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d - global0.b)), firstLeadingBit(_wgslsmith_mod_vec4_i32(global0.e, abs(vec4<i32>(u_input.b.x, -47560i, -1i, var_0.x)))));
    global0 = func_5(func_1(select(firstTrailingBit(~vec2<u32>(global0.a, 48956u)), abs(~vec2<u32>(0u, 30451u)), false), global0.e), 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -981f, global0.d.x, global0.d.x) * vec4<f32>(global0.d.x, 919f, global0.d.x, -1089f)))), vec4<f32>(func_2(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true).d.x, _wgslsmith_f_op_f32(exp2(global0.d.x)), -909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f + global0.d.x)))), Struct_1(u_input.a & 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1301f, global0.b.x, global0.b.x), vec3<f32>(global0.d.x, global0.b.x, 307f))), _wgslsmith_clamp_i32(var_0.x, ~var_0.x, -(global0.c & var_0.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(global0.d, vec3<f32>(global0.b.x, -299f, global0.d.x), true)))))), global0.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(693f * -502f))) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -323f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * -1000f), _wgslsmith_f_op_f32(820f + global0.b.x), _wgslsmith_f_op_f32(-global0.d.x)), vec3<f32>(-946f, _wgslsmith_f_op_f32(-613f - var_1.x), var_1.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(1000f, 441f), global0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1486f, 395f) * func_1(min(vec2<u32>(u_input.a, global0.a), vec2<u32>(4294967295u, u_input.a)), vec4<i32>(-30763i, global0.e.x, global0.e.x, var_0.x)).d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 669f, _wgslsmith_f_op_f32(f32(-1f) * -121f))))));
    global0 = Struct_1(~global0.a, _wgslsmith_f_op_vec3_f32(-var_1.yxy), _wgslsmith_clamp_i32(2147483647i, firstTrailingBit(36141i), (-1i >> (global0.a % 32u)) ^ u_input.b.x), var_1.yzy, vec4<i32>(abs(var_0.x), ~_wgslsmith_div_i32(var_0.x, i32(-1i) * -1914i), global0.c, -35403i));
    let x = u_input.a;
    s_output = StorageBuffer(393f, _wgslsmith_sub_vec4_u32(~vec4<u32>(abs(1u), 120751u, ~5625u, 4294967295u), ~countOneBits(~vec4<u32>(147713u, u_input.a, global0.a, u_input.a))), var_2.x, abs(vec2<u32>(max(global0.a, ~11770u), 4294967295u)), ~(~vec2<u32>(~u_input.a, func_5(Struct_1(global0.a, var_2, global0.e.x, vec3<f32>(var_2.x, 1000f, global0.b.x), global0.e), 1u, var_1, Struct_1(global0.a, vec3<f32>(var_2.x, -1644f, var_1.x), -2147483647i, vec3<f32>(379f, 1271f, 351f), global0.e)).a)));
}

