struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(16496i, vec2<f32>(378f, -318f), 16694i, 0u)), Struct_2(Struct_1(-1i, vec2<f32>(-314f, 314f), 1i, 6072u)), Struct_2(Struct_1(3658i, vec2<f32>(404f, 1469f), i32(-2147483648), 46810u)), Struct_2(Struct_1(34908i, vec2<f32>(-1757f, 394f), -32981i, 53697u)), Struct_2(Struct_1(-44619i, vec2<f32>(-1533f, -242f), 24941i, 29584u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = select(vec3<bool>(false, true, false), select(vec3<bool>(!arg_1, arg_2, true), vec3<bool>(arg_2, all(vec3<bool>(true, true, true)), true), !vec3<bool>(arg_2, false, all(vec2<bool>(false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, true, arg_1)) & (30147i >= global0.x), !arg_2, true), select(vec3<bool>(arg_1, 0u == u_input.a.x, false), select(vec3<bool>(arg_1, true, arg_1), !vec3<bool>(false, true, arg_2), select(vec3<bool>(true, arg_1, arg_2), vec3<bool>(arg_1, arg_2, true), vec3<bool>(true, arg_1, arg_1))), !(!vec3<bool>(arg_1, false, arg_2)))));
    var_0 = vec3<bool>(arg_1, all(!vec3<bool>(false, arg_1, false)), all(vec3<bool>(!select(false, false, var_0.x), select(var_0.x, !var_0.x, arg_1 || false), arg_1)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(163f, _wgslsmith_f_op_f32(646f * -650f), _wgslsmith_f_op_f32(f32(-1f) * -765f), 877f), vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, 1345f, 286f, 864f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-278f, 383f, 165f, -1295f), vec4<f32>(236f, 315f, -853f, -716f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -1609f, 732f, -519f)))))) + vec4<f32>(-1258f, -1761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f + 282f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f - -1365f)))));
    var_0 = select(select(!select(!vec3<bool>(true, var_0.x, false), !vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, arg_1, false), vec3<bool>(var_0.x, true, true), arg_2)), vec3<bool>(arg_1, _wgslsmith_f_op_f32(floor(-900f)) <= -959f, false), var_0.x), !(!vec3<bool>(global0.x > global0.x, arg_2, !arg_2)), arg_2);
    let var_2 = Struct_3(max(u_input.b, firstLeadingBit(u_input.b)), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return ~7080u;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_3(vec4<i32>(1i, 879i, ~(-select(-16225i, u_input.b.x, false)), u_input.b.x), -(~(global0.x >> (min(1u, 4294967295u) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1006f - -772f))) + -1464f));
    var var_1 = -global0.x;
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, ~(-_wgslsmith_mod_i32(global0.x, u_input.b.x))), -select(1i >> (func_3(vec3<i32>(4238i, -1i, -24759i), true, true) % 32u), -1i, true));
    return 2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    let var_0 = Struct_3(~vec4<i32>(-38295i, abs(u_input.b.x << (u_input.a.x % 32u)), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(14082i, 8441i), global0.x)), ~(func_2(u_input.a.ww) & u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1241f * _wgslsmith_f_op_f32(max(694f, -607f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f + -1038f) * _wgslsmith_f_op_f32(trunc(1537f)))))));
    let var_1 = var_0;
    global0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-49374i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_1.a.yw, vec2<i32>(var_0.a.x, -2147483647i)), _wgslsmith_div_i32(-7854i, global0.x)), 20987i), vec3<i32>(i32(-1i) * -17456i, -1i, -12299i)), -min(vec3<i32>(~1i, var_1.b, var_0.b), max(vec3<i32>(u_input.b.x, var_1.a.x, global0.x), select(vec3<i32>(-39822i, u_input.b.x, var_1.a.x), var_0.a.zxz, arg_0.x))));
    var var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zzw, vec3<u32>(u_input.a.x, 1u, u_input.a.x)), ~u_input.a.wwy), u_input.a.xyx);
    var_2 = 15492u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c)), var_1.c)) + -827f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), false)), _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(floor(272f))), true)) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec4<bool>(false, false, true, true))), !(countOneBits(0u) > _wgslsmith_dot_vec3_u32(u_input.a.xxz, u_input.a.zww)))));
    global0 = vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, global0.x, global0.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 48408i, global0.x), vec3<i32>(global0.x, 0i, u_input.b.x)), firstLeadingBit(-2147483647i)) & firstTrailingBit(global0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), false)))), _wgslsmith_f_op_f32(-var_0.x), 1064f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), false)), 680f, var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1396f) * _wgslsmith_f_op_f32(select(-2042f, -2303f, true))), var_0.x))));
    var var_2 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, u_input.a.x > u_input.a.x, true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), false), firstTrailingBit(u_input.a.x) == 1u), !(!any(vec2<bool>(false, true)))));
    let var_3 = 18093u;
    global0 = _wgslsmith_div_vec3_i32(u_input.b.yzw, -vec3<i32>(_wgslsmith_mult_i32(func_2(u_input.a.zx), _wgslsmith_add_i32(0i, 15944i)), max(u_input.b.x, global0.x), _wgslsmith_mult_i32(reverseBits(0i), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(max(4294967295u, ~_wgslsmith_sub_u32(30625u, var_3)), (~var_3 >> (u_input.a.x % 32u)) >> (26171u % 32u)), 8529u, var_0.x);
}

