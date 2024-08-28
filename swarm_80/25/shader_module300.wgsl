struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32) -> vec3<i32> {
    global1 = Struct_1(~_wgslsmith_clamp_u32(max(21847u, 1u), global1.a, _wgslsmith_mult_u32(select(31813u, arg_0.x, true), abs(global1.a))));
    var var_0 = global1.a;
    let var_1 = Struct_2(vec2<i32>(~(0i << (global1.a % 32u)) << (u_input.a % 32u), 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(749f, _wgslsmith_div_f32(arg_1.x, -158f), 581f, _wgslsmith_f_op_f32(exp2(arg_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(arg_1.x, 652f)), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))));
    var_0 = 81641u;
    global0 = -924f;
    return countOneBits(-(vec3<i32>(0i, ~8125i, ~var_1.a.x) & ~(vec3<i32>(arg_2, arg_2, var_1.a.x) << (vec3<u32>(arg_0.x, u_input.a, 4294967295u) % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_5) -> i32 {
    global1 = Struct_1(~61289u);
    var var_0 = _wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(f32(-1f) * -1529f));
    global1 = Struct_1(_wgslsmith_dot_vec4_u32(~(~arg_0), countOneBits(abs(vec4<u32>(global1.a, global1.a, arg_0.x, u_input.a)))) | ~global1.a);
    let var_1 = arg_0.x;
    let var_2 = Struct_3(-arg_3.a.a);
    return _wgslsmith_add_i32(firstTrailingBit(~var_2.a.x), _wgslsmith_clamp_i32(~arg_3.a.a.x, countOneBits(arg_3.a.a.x), -_wgslsmith_add_i32(firstTrailingBit(-2504i), ~(-1i))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f - _wgslsmith_f_op_f32(599f + 2099f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-494f + -759f), _wgslsmith_f_op_f32(-831f - 1000f)))));
    let var_0 = -(~(-arg_2.x));
    var var_1 = abs(vec3<i32>(2979i | var_0, var_0, var_0 & -6885i) | vec3<i32>(i32(-1i) * -1772i, -2147483647i, arg_2.x | 39096i)) ^ vec3<i32>(reverseBits(0i), func_4(vec4<u32>(_wgslsmith_add_u32(11163u, 75864u), ~global1.a, firstLeadingBit(1u), 1u), func_3(vec4<u32>(3542u, u_input.a, 106898u, 2608u), vec3<f32>(-169f, 2040f, 307f), 70292i) << (abs(vec3<u32>(1601u, 58761u, u_input.a)) % vec3<u32>(32u)), Struct_5(Struct_3(vec4<i32>(var_0, 0i, -1i, var_0)), arg_0), Struct_5(Struct_3(vec4<i32>(var_0, arg_2.x, arg_2.x, var_0)), arg_0)), func_4(countOneBits(~vec4<u32>(arg_1, 0u, 46778u, 4294967295u)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -35025i, arg_2.x)), vec3<i32>(-12148i, -13431i, arg_2.x)), Struct_5(Struct_3(vec4<i32>(0i, -42085i, 1i, 0i)), arg_0), Struct_5(Struct_3(vec4<i32>(var_0, 2147483647i, var_0, arg_2.x)), arg_0 & false)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-356f)) * _wgslsmith_f_op_f32(-1497f - 815f)) - 1f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1207f + -1242f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1696f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1484f))))) * _wgslsmith_f_op_f32(min(173f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1217f, 1120f)) * -700f), 886f))));
    return select(select(vec2<bool>(all(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, false, true, arg_0), true)), true), !vec2<bool>(any(vec4<bool>(true, arg_0, false, arg_0)), true), select(select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(true, false)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false), vec2<bool>(false, arg_0)), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), vec2<bool>(true, false)))), !(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)), vec2<bool>(arg_0, arg_0), false)), true);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = func_2(false, abs(global1.a) << (0u % 32u), ~(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 10836i))));
    var_0 = func_2(true, _wgslsmith_add_u32(~global1.a, global1.a), select(vec2<i32>(20219i, _wgslsmith_clamp_i32(-41982i >> (u_input.a % 32u), -38363i, ~(-1i))), func_3(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4864u, u_input.a, 0u, global1.a), vec4<u32>(4294967295u, 0u, global1.a, 59736u))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(333f, 1044f))), -reverseBits(-62394i)).zz, all(func_2(true, reverseBits(global1.a), vec2<i32>(27954i, 33914i)))));
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 75984u), vec2<u32>(u_input.a, u_input.a)) | u_input.a, ~(~u_input.a)), 85764u));
    var_0 = select(select(!func_2(!var_0.x, countOneBits(40530u), vec2<i32>(1i, 1i)), vec2<bool>(func_2(var_0.x, ~global1.a, vec2<i32>(-2147483647i, -5153i)).x, var_0.x), vec2<bool>(!any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x)), !vec2<bool>(!func_2(var_0.x, u_input.a, vec2<i32>(29130i, -1i)).x, false), vec2<bool>(true, all(vec4<bool>(!var_0.x, !var_0.x, var_0.x, false))));
    global1 = Struct_1(~select(35367u, select(firstLeadingBit(var_1.a), 4294967295u, !var_0.x), true));
    return Struct_2(_wgslsmith_clamp_vec2_i32(max(-_wgslsmith_add_vec2_i32(vec2<i32>(-6791i, 0i), vec2<i32>(-1i, 2147483647i)), vec2<i32>(2147483647i, 1i) >> (~vec2<u32>(25502u, u_input.a) % vec2<u32>(32u))), vec2<i32>(max(2147483647i, 2281i), 1i) << ((~vec2<u32>(global1.a, 13764u) ^ ~vec2<u32>(4294967295u, 26573u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-46903i, i32(-1i) * -1i), vec2<i32>(~1i, 1i))), vec4<f32>(_wgslsmith_f_op_f32(460f * arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-381f + arg_0), any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 + arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(727f, -651f)))));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~global1.a << (8396u % 32u), abs(~u_input.a)), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.a) << (u_input.a % 32u), ~max(u_input.a, 4294967295u))), vec2<u32>(u_input.a, abs(_wgslsmith_div_u32(~u_input.a, max(40316u, global1.a)))));
    let var_2 = Struct_5(Struct_3(vec4<i32>(-2147483647i, var_0.a.x, abs(-41879i), var_0.a.x)), func_2(any(vec4<bool>(true, true, true, func_2(true, u_input.a, var_0.a).x)), 75035u, vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-6428i, 56329i), vec2<i32>(9003i, var_0.a.x)) ^ -11842i)).x);
    var var_3 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(12447u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global1.a, u_input.a), vec3<u32>(30129u, 0u, global1.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, var_1.x), vec2<u32>(u_input.a, 4294967295u)), var_1.x), ~(~vec4<u32>(u_input.a, 75106u, 4084u, var_1.x))));
    var var_4 = -var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, var_0.b.yzy, ~vec4<u32>(var_3.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(47749u, var_3.a), min(var_1.x, var_1.x), global1.a), var_1.x, _wgslsmith_clamp_u32(~u_input.a, ~0u, _wgslsmith_mod_u32(4294967295u, var_3.a))));
}

