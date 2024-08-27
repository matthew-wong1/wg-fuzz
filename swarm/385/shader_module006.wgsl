struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = any(select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, false)), true, global0.b.x < global0.b.x), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), vec4<bool>(any(vec3<bool>(false, true, true)), select(true, all(vec2<bool>(false, true)), 1858f > global0.b.x), true, true), true));
    var var_1 = any(vec2<bool>(true, !(-271f != _wgslsmith_f_op_f32(step(368f, -504f)))));
    var var_2 = vec2<bool>(var_0, var_0);
    var var_3 = Struct_1(reverseBits(vec4<i32>(arg_0.a.x, global0.a.x, -global2.x | ~5126i, ~0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.x, arg_0.b.x))) * _wgslsmith_div_vec2_f32(arg_0.b, global0.b)), _wgslsmith_f_op_vec2_f32(sign(global0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.b, arg_0.b, var_2.x)), _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(global0.b.x, -165f))))));
    let var_4 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, 1161f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-200f, arg_0.b.x))), var_3.b)))));
    return 39210u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(select(~(~abs(vec2<u32>(16603u, 19147u))), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0), ~vec2<u32>(4294967295u, arg_0)) << (reverseBits(vec2<u32>(4294967295u, 62842u)) % vec2<u32>(32u)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0 >> ((4294967295u >> (arg_0 % 32u)) % 32u), ~0u ^ arg_0), vec2<u32>(arg_0, _wgslsmith_mult_u32(reverseBits(1u), arg_0))));
    var var_1 = vec3<u32>(32426u, 4294967295u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, arg_0), arg_0 << (var_0.x % 32u)) << (func_3(Struct_1(global0.a, global0.b)) % 32u)));
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-64013i, global2.x, 71438i, 1i), global0.a), vec4<i32>(1i, 1i, u_input.c.x, 7385i)) & ~max(vec4<i32>(global2.x, 68597i, -8912i, global0.a.x), global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, -420f)));
    global1 = array<vec4<f32>, 17>();
    let var_3 = Struct_1(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-30943i, global2.x, var_2.a.x, 47104i), var_2.a), 1i, 31299i, -2147483647i)) & _wgslsmith_clamp_vec4_i32(arg_2.a, var_2.a, vec4<i32>(-1i, 2147483647i, arg_2.a.x, abs(34431i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b))))));
    return Struct_1(-firstTrailingBit(vec4<i32>(-40741i, min(var_3.a.x, u_input.b.x), global2.x, global2.x >> (var_0.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1709f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = !arg_0.x;
    global2 = _wgslsmith_mult_vec4_i32(u_input.b, ~(~vec4<i32>(reverseBits(u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 31453i), vec2<i32>(-70521i, u_input.b.x)), global2.x, u_input.b.x << (0u % 32u))));
    var var_1 = ~firstTrailingBit(u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(826f, global0.b.x))))), 1000f)));
    let var_3 = 0u;
    return func_4(func_2(~var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(global0.b.x - 154f))), Struct_1((vec4<i32>(43954i, 2147483647i, 0i, global0.a.x) & u_input.c) & _wgslsmith_div_vec4_i32(vec4<i32>(-3713i, -1i, -32734i, global0.a.x), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)))), Struct_1(vec4<i32>(global2.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, global2.x), vec3<i32>(u_input.b.x, -34423i, global2.x))), -global0.a.x, -24847i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-436f, 2421f), _wgslsmith_f_op_vec2_f32(-global0.b), !var_0))))), func_2(max(~_wgslsmith_sub_u32(0u, var_3), _wgslsmith_mult_u32(~4294967295u, var_3)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1180f, 1275f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), -369f)), Struct_1(u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2496f, global0.b.x), vec2<f32>(2256f, global0.b.x)), global0.b))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(11899i, ~0i, _wgslsmith_sub_i32(global0.a.x, -2147483647i), u_input.a);
    var var_0 = Struct_1(firstTrailingBit(vec4<i32>(global2.x, global2.x, ~firstTrailingBit(34060i), -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(global0.b.x, global0.b.x)))));
    global0 = func_5(func_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), global0.b.x < _wgslsmith_f_op_f32(f32(-1f) * -1250f))), max(~73064u, 1u));
    var var_1 = Struct_1(var_0.a, vec2<f32>(-268f, 456f));
    let var_2 = vec3<i32>(-(func_4(Struct_1(var_0.a, vec2<f32>(global0.b.x, global0.b.x)), func_4(Struct_1(global0.a, vec2<f32>(331f, global0.b.x)), Struct_1(vec4<i32>(2147483647i, 1243i, global2.x, global0.a.x), var_0.b), Struct_1(vec4<i32>(-44967i, 2380i, global2.x, -16009i), var_1.b)), func_1(vec2<bool>(false, true))).a.x & 2147483647i), -979i, global2.x);
    global2 = countOneBits(min(-vec4<i32>(7555i, var_0.a.x, 11025i, 0i) & vec4<i32>(var_2.x, var_1.a.x, i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(global0.a.x, global2.x, -1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-11725i, -1i, -2147483647i, 1i)), ~func_1(vec2<bool>(true, false)).a)));
    var var_3 = func_4(func_5(Struct_1(-select(vec4<i32>(-11517i, var_0.a.x, -5077i, global0.a.x), vec4<i32>(global0.a.x, 62677i, global2.x, global2.x), vec4<bool>(false, false, false, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(var_0.b.x, -977f)), _wgslsmith_div_vec2_f32(vec2<f32>(-309f, -592f), var_1.b))), firstLeadingBit(1u)), Struct_1(-(~(~var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x * 1872f), _wgslsmith_f_op_f32(max(-1000f, func_2(4294967295u, 494f, Struct_1(global0.a, vec2<f32>(var_1.b.x, global0.b.x))).b.x)))), Struct_1(-(~vec4<i32>(var_1.a.x, -1i, global2.x, u_input.b.x)), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(46730u ^ ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23243u, 0u, 4294967295u), vec3<u32>(46129u, 35781u, 96703u)), ~4294967295u, 1u), ~countOneBits(26957u));
}

