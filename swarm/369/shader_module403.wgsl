struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(70952i, ~(-(~vec3<i32>(u_input.a, arg_1.a, 2147483647i))), select(15537u, min(_wgslsmith_mult_u32(reverseBits(arg_1.b.x), 1u), min(arg_1.b.x << (0u % 32u), ~1u)), arg_0.x && true), true);
    let var_1 = all(vec4<bool>(true, all(vec4<bool>(var_0.d, false, var_0.d, false)) && var_0.d, !any(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(var_0.d, true, true, arg_0.x), vec4<bool>(var_0.d, var_0.d, arg_0.x, arg_0.x))), countOneBits(-var_0.b.x) > -15514i));
    let var_2 = Struct_1(u_input.a, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b, vec3<i32>(-1i) * -vec3<i32>(u_input.a, -2147483647i, var_0.b.x)), var_0.b), ~(select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 19589u, 1u, 4294967295u), vec4<u32>(var_0.c, arg_1.b.x, 4294967295u, var_0.c)), arg_1.b.x, arg_0.x) ^ ~(~1u)), (!(var_0.d & true) & var_0.d) | !all(select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(true, arg_0.x, false), vec3<bool>(true, false, arg_0.x))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-647f - -1524f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - arg_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -915f), -316f);
    var var_3 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(23300i, u_input.a, 31831i), abs(arg_1.a), ~var_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 40217i, 1i, u_input.a), vec4<i32>(arg_1.a, 12093i, var_2.b.x, 0i))), select(vec4<i32>(25039i, var_2.b.x, -5100i, arg_1.a), select(vec4<i32>(-16738i, 7182i, arg_1.a, 42772i), vec4<i32>(arg_1.a, 21547i, -21042i, -54930i), vec4<bool>(var_2.d, var_1, var_1, false)), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_2.d, false, false, false), vec4<bool>(true, var_0.d, arg_0.x, false)))));
    return _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(ceil(-127f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(-1598f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.zx, Struct_2(u_input.a, vec3<u32>(88713u, 53105u, 37894u)), global1.wxw))))), _wgslsmith_div_f32(154f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(764f))))))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~4294967295u, 45976u), arg_2.c), 0u));
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(103f, 525f) * global1.xz) * vec2<f32>(global1.x, 375f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.xy - global1.yw) - vec2<f32>(global1.x, arg_3.x))) + _wgslsmith_f_op_vec2_f32(global1.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1013f) * arg_3.zx)))));
    var var_2 = arg_2;
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_2.c, var_0), vec3<u32>(59547u, 15560u, arg_2.c)), _wgslsmith_mult_u32(arg_2.c, arg_2.c)), 9174u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, arg_2.c, var_2.c), vec3<u32>(arg_2.c, var_2.c, var_2.c)), var_2.c, 1u) | _wgslsmith_sub_u32(arg_2.c, 19675u), _wgslsmith_div_u32(130455u, var_2.c)) | abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_2.c, 1u, var_0, 0u), vec4<u32>(var_2.c, 1u, 10167u, 4294967295u) ^ vec4<u32>(4294967295u, 1781u, 1658u, 8501u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(30056u, var_0, 26249u, 0u), vec4<u32>(44462u, 7086u, var_0, 1u)), ~vec4<u32>(var_0, arg_2.c, var_0, 1u), !arg_2.d)));
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1448f, _wgslsmith_f_op_f32(-global1.x), -1107f, _wgslsmith_f_op_f32(f32(-1f) * -419f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, -584f, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(181f, 135f, global1.x, 1503f) - vec4<f32>(235f, -735f, global1.x, 793f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-953f, 406f, -1904f, global1.x))))) - _wgslsmith_f_op_vec4_f32(func_4(arg_2.a, vec3<bool>(-1i >= reverseBits(arg_2.a), true, true), Struct_1(u_input.a, arg_0.b, arg_2.b.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_1.d, arg_0.d, arg_1.d), vec3<bool>(true, arg_0.d, arg_0.d)), any(vec2<bool>(arg_0.d, false))))))));
    global0 = ~arg_2.b.x;
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 839f)))))), _wgslsmith_f_op_vec4_f32(func_2(!select(select(vec3<bool>(arg_0.d, arg_1.d, arg_0.d), vec3<bool>(arg_0.d, false, arg_0.d), arg_1.d), select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(true, arg_1.d, arg_1.d), true), all(vec4<bool>(arg_1.d, true, false, arg_1.d))), false)).x, _wgslsmith_f_op_f32(max(442f, global1.x)));
    var var_0 = vec3<i32>(arg_2.a, _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-51174i, min(-38545i, ~u_input.a), 1i << (arg_0.c % 32u)), 0i), -_wgslsmith_mult_i32(u_input.a, ~arg_0.b.x));
    global0 = 1u;
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_2(-(~(~arg_2.b.x) >> (_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(arg_1.c, arg_1.c)) % 32u)), vec3<u32>(arg_0.b.x, 43118u, ~4294967295u));
    var var_1 = vec2<u32>(arg_0.b.x, _wgslsmith_mod_u32(~(arg_2.c & 4294967295u), arg_2.c));
    var var_2 = arg_2;
    var_0 = arg_0;
    let var_3 = Struct_1(var_0.a, -abs(vec3<i32>(-2147483647i, 19659i, -18033i << (arg_0.b.x % 32u))), ~8641u, arg_1.d);
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(1u, 1348u))), abs(vec2<u32>(1u, 1u))) | ~1u;
    var var_1 = Struct_1(~u_input.a, vec3<i32>(firstLeadingBit(~_wgslsmith_div_i32(u_input.a, u_input.a)), reverseBits(u_input.a), u_input.a), 4294967295u, any(vec2<bool>(true, true)));
    let var_2 = global1.zx;
    var var_3 = any(!vec3<bool>(func_5(func_1(Struct_1(1i, vec3<i32>(u_input.a, u_input.a, u_input.a), var_1.c, var_1.d), Struct_1(u_input.a, vec3<i32>(var_1.a, var_1.b.x, -1i), 0u, false), Struct_2(var_1.b.x, vec3<u32>(378u, 10339u, var_1.c))), Struct_1(u_input.a, vec3<i32>(var_1.b.x, 48500i, u_input.a), var_1.c, var_1.d), Struct_1(var_1.a, vec3<i32>(u_input.a, var_1.b.x, 8730i), var_1.c, var_1.d), vec4<f32>(485f, global1.x, 1000f, global1.x)), var_1.d, var_1.d));
    let var_4 = global1.xx;
    var_0 = ~var_1.c;
    global0 = max(~var_1.c, reverseBits(_wgslsmith_clamp_u32(~abs(var_1.c), var_1.c, ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_div_vec2_i32(var_1.b.zz, var_1.b.xz)), _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(var_2.x - var_4.x), var_1.c);
}

