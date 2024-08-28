struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(281f, 632f, -154f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = ~(~41249u);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1484f)), _wgslsmith_f_op_f32(f32(-1f) * -729f))), arg_1.x));
    var var_1 = vec3<i32>(u_input.a, u_input.a, countOneBits(countOneBits(u_input.a)));
    var var_2 = ~var_1.x;
    let var_3 = Struct_1(false & all(vec2<bool>(true, arg_0.a)), all(vec4<bool>(arg_0.c, arg_0.a, false, true)), arg_0.c);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-970f, global0.x, global0.x) + vec3<f32>(-420f, global0.x, 544f)))) * vec3<f32>(320f, arg_1.x, _wgslsmith_f_op_f32(step(-1129f, arg_1.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, _wgslsmith_div_f32(global0.x, 407f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f)))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1659f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1357f - global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f + 445f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 116f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(select(global0.x, global0.x, true)))), 117f, global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f * -1000f)), global0.x));
    let var_0 = Struct_3(Struct_2(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)) | _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, 55228u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), false), firstTrailingBit(vec4<u32>(u_input.b, 35415u, 38723u, 4294967295u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, global0.x, -162f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, 545f, 1461f, -165f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0, select(arg_0, true, arg_0), select(false, arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(exp2(global0.zx))))));
    var var_1 = var_0.a.a.zwx ^ (_wgslsmith_add_vec3_u32(~(~vec3<u32>(41743u, u_input.b, 4294967295u)), ~abs(var_0.a.a.yyw)) | min(var_0.a.a.zyx, firstTrailingBit(var_0.a.a.yzw)));
    let var_2 = arg_0;
    return Struct_3(Struct_2(~var_0.a.a & vec4<u32>(1u, var_1.x, 1u, ~53916u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.b), vec4<f32>(1781f, 215f, global0.x, var_0.a.b.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.b)) + _wgslsmith_f_op_vec3_f32(select(var_0.a.b.xxy, var_0.a.b.wzx, vec3<bool>(var_2, false, var_2))))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_5) -> Struct_5 {
    let var_0 = 23843u;
    var var_1 = func_2(arg_1).a;
    var var_2 = var_1.b.x;
    var_1 = Struct_2((vec4<u32>(~1u, countOneBits(var_0), ~u_input.b, func_2(arg_1).a.a.x) ^ vec4<u32>(u_input.b, _wgslsmith_clamp_u32(arg_0.a.a.x, 49624u, 96186u), arg_0.a.a.x, _wgslsmith_mod_u32(4012u, arg_0.a.a.x))) << (vec4<u32>(abs(~arg_0.a.a.x), ~min(38314u, 59369u), var_1.a.x, ~1u) % vec4<u32>(32u)), var_1.b);
    let var_3 = (var_1.a.x >> (~(1u >> (arg_0.a.a.x % 32u)) % 32u)) <= min(var_1.a.x, abs(12986u));
    return Struct_5(_wgslsmith_f_op_f32(-278f + _wgslsmith_f_op_f32(global0.x + 935f)));
}

fn func_5(arg_0: Struct_5) -> i32 {
    var var_0 = -1233f;
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_0.a))) != arg_0.a).a;
    var var_2 = 911f;
    var var_3 = all(vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true));
    let var_4 = func_2(true);
    return 2147483647i;
}

fn func_6(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(ceil(433f)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(925f, -596f, var_0.a)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-349f, 245f, -699f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2274f, var_0.a, -876f))))))), vec3<f32>(-830f, var_0.a, global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(func_2(any(vec3<bool>(arg_1, true, true))).b)));
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(max(_wgslsmith_add_u32(u_input.b << (4294967295u % 32u), 1u), _wgslsmith_div_u32(37738u, u_input.b) ^ u_input.b), u_input.b, max(u_input.b, ~(~u_input.b))), ~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, u_input.b) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 51412u), vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.b | 63934u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 47943u), vec3<u32>(0u, u_input.b, 0u)), ~10678u), firstLeadingBit(41881u))));
    let var_2 = any(select(!select(!vec4<bool>(arg_1, false, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, true, false, arg_1), false), true), !(!vec4<bool>(true, arg_1, true, arg_1)), vec4<bool>(all(vec3<bool>(arg_1, true, arg_1)), all(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)), any(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), false)), false)));
    return Struct_1(arg_1, all(select(vec3<bool>(all(vec4<bool>(false, var_2, arg_1, arg_1)), var_2, false), select(select(vec3<bool>(var_2, var_2, true), vec3<bool>(arg_1, true, false), true), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, arg_1, false), var_2), true), vec3<bool>(true, true, true))), any(!(!(!vec4<bool>(arg_1, false, false, true)))));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    let var_0 = func_6(arg_0.x, func_5(func_4(func_2(true), true, Struct_5(-1000f))) <= -2147483647i);
    let var_1 = false;
    var var_2 = func_2(all(vec4<bool>(!var_1, !var_1, true, all(vec2<bool>(var_0.c, var_1)))) & all(select(!vec4<bool>(true, var_1, var_0.c, var_1), vec4<bool>(var_0.a, var_0.b, true, var_1), vec4<bool>(var_1, true, var_0.a, false)))).a;
    var var_3 = var_0;
    var var_4 = arg_0;
    return !all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, var_1, var_3.b), false), !vec3<bool>(var_3.b, var_3.b, false), u_input.a != -30147i));
}

fn func_7(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = firstLeadingBit(~(~u_input.a)) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(1i, firstTrailingBit(0i)) | -u_input.a, 2147483647i);
    var var_1 = -u_input.a;
    let var_2 = select(vec4<bool>(any(vec4<bool>(arg_3, !arg_2.c, true, arg_3)), arg_1.x < -1186f, !(all(vec4<bool>(arg_3, arg_2.c, arg_3, arg_3)) && true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, arg_3, true, all(vec2<bool>(arg_3, arg_2.a))), true), !select(!vec4<bool>(true, false, arg_2.a, true), select(vec4<bool>(false, false, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_2.c, false), vec4<bool>(arg_2.b, arg_3, false, true)), vec4<bool>(arg_2.c, true, arg_3, arg_3)), vec4<bool>(arg_3 && true, -2147483647i > u_input.a, func_6(u_input.a, true).b, true)), select(vec4<bool>(select(arg_3, true, global0.x >= arg_1.x), arg_3, u_input.a < _wgslsmith_clamp_i32(u_input.a, -2147483647i, 1i), arg_2.a), !(!(!vec4<bool>(arg_2.b, true, arg_3, arg_2.b))), arg_2.c));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(min(~vec4<i32>(u_input.a, -38246i, 0i, u_input.a), vec4<i32>(-2147483647i, 29299i, u_input.a, u_input.a))), abs(-vec4<i32>(u_input.a, u_input.a, 0i, 2147483647i))), -2147483647i);
    var_1 = u_input.a | var_3;
    return _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(1086f - 684f), -1073f, _wgslsmith_f_op_f32(func_7(~vec3<u32>(88443u, u_input.b, ~1u), vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1571f), Struct_1(func_1(vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i)), u_input.b < (4294967295u | u_input.b), abs(u_input.b) != u_input.b), u_input.a <= 0i)));
    var var_0 = -209f;
    let var_1 = vec3<u32>(4294967295u, 1u, u_input.b);
    var var_2 = any(vec3<bool>(true, !(false | any(vec2<bool>(true, true))), true));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(min(11115i, u_input.a << (4294967295u % 32u)), u_input.a) & -1i, _wgslsmith_clamp_i32(u_input.a >> ((1u | func_2(true).a.a.x) % 32u), reverseBits(u_input.a), -u_input.a | -1i));
    var var_4 = all(vec4<bool>(any(vec2<bool>(any(vec3<bool>(true, false, false)), func_6(var_3, true).a)), any(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, global0.x))), all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-290f, global0.x);
}

