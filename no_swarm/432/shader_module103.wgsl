struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<u32>) -> bool {
    let var_0 = vec4<bool>(all(!vec2<bool>(global0.x > 3167u, false)), all(vec2<bool>(arg_0.a, all(select(vec4<bool>(false, true, arg_1.a, false), vec4<bool>(arg_0.a, arg_1.a, true, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, false))))), any(!vec2<bool>(any(vec4<bool>(arg_1.a, arg_0.a, arg_1.a, false)), true)), select(true, arg_0.a, true) | !select(true, true, !arg_0.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 843f, -508f, 407f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1985f, -1327f, 1736f, 1652f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f) + -485f), -1664f, -299f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(924f, 743f, 1215f, 1107f) - vec4<f32>(-1000f, 1000f, 779f, 1360f)), vec4<f32>(-1619f, -224f, -912f, 318f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(1438f)), -1098f, _wgslsmith_f_op_f32(-694f * 1248f), _wgslsmith_f_op_f32(sign(356f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-659f, -795f, -1035f, -660f), vec4<f32>(-2077f, -320f, 991f, 981f), vec4<bool>(var_0.x, false, false, arg_0.a))), true)), _wgslsmith_div_vec4_f32(vec4<f32>(-1833f, 1002f, 930f, 1449f), _wgslsmith_div_vec4_f32(vec4<f32>(-988f, 345f, 1493f, 2501f), vec4<f32>(1186f, 1000f, 118f, -803f))), arg_1.a))));
    global0 = ~vec2<u32>(~arg_2.x, global0.x);
    global0 = vec2<u32>(select(~_wgslsmith_dot_vec4_u32(abs(arg_2), reverseBits(arg_2)), _wgslsmith_div_u32(0u, ~arg_2.x), arg_0.a), ~arg_2.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f + _wgslsmith_f_op_f32(var_1.x + var_1.x)))), Struct_1(~_wgslsmith_clamp_u32(0u, 4294967295u, ~0u)), ~u_input.c.x, Struct_1(~u_input.a), 1i);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(false);
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(select(~0u, u_input.a | global0.x, true)), 1u & (~u_input.a | _wgslsmith_div_u32(u_input.c.x, 49259u))), u_input.b);
    let var_1 = !vec4<bool>(true, func_3(Struct_3(false), var_0, ~vec4<u32>(100941u, global0.x, 0u, u_input.b.x)), !(!(!var_0.a)), !(true == (var_0.a | var_0.a)));
    global0 = u_input.b;
    var var_2 = vec3<f32>(1f, 1f, 1f);
    return Struct_1(_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(~4294967295u, u_input.c.x, abs(_wgslsmith_mult_u32(global0.x, 4294967295u)))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2020f * 1f))), _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f + 339f) + _wgslsmith_f_op_f32(round(872f))) - -1562f)));
    let var_1 = ~global0.x;
    let var_2 = !vec3<bool>(true, true, !(func_3(Struct_3(false), Struct_3(false), vec4<u32>(u_input.a, 45266u, 34536u, u_input.c.x)) && func_3(Struct_3(true), Struct_3(true), vec4<u32>(global0.x, var_1, u_input.b.x, 25048u))));
    let var_3 = var_0 > 1000f;
    var var_4 = firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(28849u, arg_0.a, _wgslsmith_div_u32(53997u, var_1)) | global0.x, arg_0.a, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1, 28560u, 58810u, 0u)), vec4<u32>(1u, 1u, 37398u, 49346u))));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-368f))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-305f)))))), arg_0, 75342u, arg_0, firstLeadingBit(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, -2147483647i), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)) | firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)), firstLeadingBit(vec2<i32>(1i, 1i)))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_2.a, arg_2.a));
    var var_1 = global0.x;
    let var_2 = true;
    let var_3 = vec4<u32>(countOneBits(0u), 48006u, func_4(arg_2.b).c, _wgslsmith_add_u32(_wgslsmith_sub_u32(~global0.x, firstLeadingBit(5086u) & (global0.x << (4294967295u % 32u))), global0.x));
    let var_4 = var_3.wxy;
    return arg_2.a;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(func_5(arg_1, firstTrailingBit(countOneBits(~arg_2.x)), func_4(func_2()), arg_0)));
    let var_1 = 2202f;
    let var_2 = Struct_1(~min(~113853u, 31775u));
    return arg_3;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = abs(u_input.c.yz) | _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~(~u_input.c.zx), vec2<u32>(global0.x, global0.x)), u_input.b);
    var var_1 = vec3<bool>(arg_1.a, !arg_1.a, true);
    global0 = vec2<u32>(var_0.x, ~0u);
    global0 = var_0;
    var_1 = select(!vec3<bool>(!any(vec4<bool>(false, arg_1.a, true, true)), arg_1.a | any(var_1.xx), func_1(Struct_4(arg_1.a, vec4<bool>(var_1.x, true, arg_1.a, var_1.x)), true, vec3<i32>(1i, 1i, 1i), arg_1).a), !select(vec3<bool>(true, true, true), !(!vec3<bool>(false, arg_1.a, false)), select(vec3<bool>(var_1.x, arg_1.a, var_1.x), vec3<bool>(false, false, var_1.x), !vec3<bool>(arg_1.a, false, true))), vec3<bool>(arg_1.a, all(select(!vec2<bool>(arg_1.a, false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x))), any(var_1.zx) & var_1.x));
    return ~(~(~_wgslsmith_sub_u32(var_0.x, u_input.a))) & select(u_input.b.x, 1u, select(true, false, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 993f, -770f, 1118f)), func_1(Struct_4(false, vec4<bool>(true, false, false, false)), true, vec3<i32>(-59389i, -1i, 27314i), Struct_3(true))) >> (min(47738u, _wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yy)) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(67220u, u_input.b.x, u_input.a, 35990u)), ~vec4<u32>(1u, 0u, u_input.c.x, 4294967295u)), select(vec4<u32>(77830u, 1u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, global0.x, 45068u) ^ vec4<u32>(global0.x, global0.x, global0.x, 31900u), true))) ^ vec2<u32>(~0u, 0u);
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 965f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(1000f - -708f)))), vec2<f32>(1f, -574f), vec2<bool>(select(false, true, false), select(func_1(Struct_4(false, vec4<bool>(false, true, true, false)), false, vec3<i32>(-2147483647i, -79595i, -8928i), Struct_3(false)).a, func_3(Struct_3(false), Struct_3(true), vec4<u32>(561u, 0u, global0.x, 4294967295u)), true))))));
    let var_1 = Struct_4(any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), false)), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true), true));
    var var_2 = Struct_2(var_0.x, Struct_1(0u), _wgslsmith_clamp_u32(7299u, global0.x, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(0u, global0.x) >> (4294967295u % 32u))), func_2(), 1i);
    let var_3 = vec2<u32>(countOneBits(0u), 54378u);
    let var_4 = !(!select(vec3<bool>(!var_1.b.x, false, var_1.b.x), !var_1.b.yzz, var_1.b.xyw));
    let var_5 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17718u, global0.x, u_input.b.x, var_3.x), vec4<u32>(7630u, var_5.a, var_5.a, var_3.x)), 91012u), 77348u) & ~select(countOneBits(vec2<u32>(4294967295u, var_3.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(41503u, 1u), var_3, vec2<u32>(15837u, 4294967295u)), var_1.a), ~(~vec4<u32>(var_3.x, 27979u << (var_3.x % 32u), var_2.c, var_3.x)), select(~vec2<u32>(min(var_5.a, 21497u), u_input.a << (var_5.a % 32u)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, global0.x)), _wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(25179u, var_2.c))), false), vec3<u32>(~global0.x, 65559u, reverseBits(reverseBits(26589u))), vec3<u32>(_wgslsmith_mult_u32(var_5.a, var_3.x), ~func_6(vec4<f32>(var_0.x, var_0.x, var_0.x, 1701f), Struct_3(true)), ~(~var_2.b.a)));
}

