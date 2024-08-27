struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = false;
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = 14641i;
    let var_1 = arg_1.b.zy;
    var_0 = -36352i;
    var_0 = abs(arg_0);
    let var_2 = arg_1.b.xxw;
    return vec3<i32>(-u_input.a.x, firstLeadingBit(arg_0), 2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(84011i, 2147483647i, u_input.a.x), func_3(u_input.a.x, func_2(arg_0)));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(0u), ~u_input.b.x), u_input.b.zy), _wgslsmith_mult_vec2_u32(arg_1.yy, vec2<u32>(arg_0.a.x, u_input.b.x) | select(arg_0.a.xy, vec2<u32>(arg_1.x, 1u), vec2<bool>(false, false))), abs(arg_1.xx)));
    var_1 = vec2<u32>(arg_1.x, 90749u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2719f + -1622f)));
    var var_3 = arg_1.x;
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(66901u, u_input.b.x) >> (u_input.b.x % 32u)), ~(vec3<u32>(arg_1, arg_1, arg_1) >> (u_input.b.wyz % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1919f * -2371f), _wgslsmith_f_op_f32(-2934f - -2104f), -453f, _wgslsmith_f_op_f32(f32(-1f) * -1274f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1754f, -1258f, -1163f, 2348f) * vec4<f32>(227f, -400f, -764f, 1000f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.b.wzw))))));
    let var_2 = func_2(Struct_1(_wgslsmith_mod_vec3_u32(~var_0.a, vec3<u32>(4294967295u, 1u, ~var_0.a.x)), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(trunc(-207f)), var_0.b.x)));
    var var_3 = arg_2 << (abs(1u) % 32u);
    var var_4 = func_2(Struct_1(_wgslsmith_div_vec3_u32(firstTrailingBit(var_2.a), vec3<u32>(56292u, 0u, arg_1) >> (vec3<u32>(arg_1, var_0.a.x, 84397u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-var_0.b)));
    return vec2<u32>(u_input.b.x ^ _wgslsmith_dot_vec2_u32(var_0.a.zy, _wgslsmith_div_vec2_u32(func_2(var_0).a.xy, u_input.b.xw)), 75677u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(func_4(vec4<bool>(true, true, func_1(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(-1469f, -210f, 884f, 1447f)), vec3<u32>(u_input.b.x, 28428u, 1u)), true), reverseBits(u_input.b.x << (0u % 32u)), -(u_input.a.x & (u_input.a.x >> (4294967295u % 32u)))), countOneBits(vec2<u32>(min(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), 42999u), func_2(Struct_1(u_input.b.yzy, vec4<f32>(678f, -657f, 591f, 1049f))).a.x)));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, max((17456u >> (var_0.x % 32u)) | func_4(vec4<bool>(true, false, false, false), var_0.x, 2147483647i).x, var_0.x), u_input.b.x), u_input.b);
    let var_2 = vec3<bool>(true != (0u >= select(~var_1.x, 0u, true)), min(6428u, ~(~var_1.x)) != 4294967295u, !(abs(_wgslsmith_div_u32(44693u, u_input.b.x)) < u_input.b.x));
    var var_3 = 1i;
    var_3 = -(u_input.a.x | 13941i);
    let var_4 = vec4<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(518f + _wgslsmith_div_f32(1365f, 588f)))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-485f, 942f)))), !(true | var_2.x), var_2.x);
    var_3 = u_input.a.x;
    var_3 = i32(-1i) * -2147483647i;
    var var_5 = -687f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(805f * 1181f) + _wgslsmith_div_f32(1473f, -1031f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(870f)) - _wgslsmith_f_op_f32(527f + -1046f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(478f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-2517f * _wgslsmith_f_op_f32(max(1141f, -942f))), (u_input.b.x << (1u % 32u)) < countOneBits(4294967295u)))), _wgslsmith_f_op_f32(407f - -628f));
}

