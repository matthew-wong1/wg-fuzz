struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = vec3<u32>(0u, u_input.d.x & 52u, 0u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -215f), global1.x, _wgslsmith_div_vec3_f32(vec3<f32>(144f, -1403f, -677f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -404f)))), vec2<i32>(~countOneBits(2147483647i), _wgslsmith_add_i32(u_input.e & -19299i, 46185i)) ^ firstTrailingBit(firstTrailingBit(reverseBits(u_input.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -201f)), 180f, -1191f)));
    global1 = vec4<bool>(all(select(select(!vec4<bool>(global1.x, true, var_1.b, global1.x), select(vec4<bool>(var_1.b, true, global1.x, var_1.b), vec4<bool>(true, false, var_1.b, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.b, false, true, true), var_1.b)), !select(vec4<bool>(var_1.b, false, true, true), vec4<bool>(global1.x, var_1.b, global1.x, true), vec4<bool>(false, global1.x, global1.x, true)), !vec4<bool>(var_1.b, global1.x, false, true))), var_1.b, var_1.b, global1.x);
    global1 = !(!vec4<bool>(var_1.b, false, select(true, true, all(vec4<bool>(global1.x, var_1.b, false, global1.x))), !(!global1.x)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1128f))))) - _wgslsmith_f_op_f32(step(-279f, _wgslsmith_f_op_f32(-252f - _wgslsmith_f_op_f32(f32(-1f) * -648f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(round(502f))), var_2.x)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global0 = -1155f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.c * arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1379f)) + -413f)));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = 1f;
    let var_0 = min(_wgslsmith_clamp_vec2_i32(~u_input.a, _wgslsmith_mod_vec2_i32(u_input.a, u_input.a), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(1i, 3537i)), ~vec2<i32>(u_input.e, u_input.a.x), _wgslsmith_div_vec2_i32(~u_input.a, select(u_input.a, vec2<i32>(-12113i, -1i), global1.x)))), u_input.a);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(1u ^ arg_0, ~arg_0), arg_0, min(61631u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.b), vec4<u32>(6022u, u_input.b, arg_0, u_input.b)))), u_input.d.yzw);
    var var_2 = !(!vec4<bool>(!global1.x, any(select(global1.xw, global1.yy, global1.x)), false, false));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f + _wgslsmith_div_f32(-1659f, 831f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - 1285f)), _wgslsmith_div_u32(~4294967295u, arg_0), Struct_3(u_input.a.x, ~vec3<i32>(28334i, var_0.x, 0i), -2558f), Struct_4(1u, abs(var_0)))), -340f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(4294967295u))));
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(reverseBits(vec4<u32>(82734u, u_input.d.x, 4294967295u, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(79675u ^ u_input.d.x, 13796u, _wgslsmith_div_u32(u_input.d.x, 36701u), _wgslsmith_div_u32(u_input.b, u_input.d.x)), vec4<u32>(u_input.b, u_input.d.x, u_input.b, u_input.b))), u_input.d.x, _wgslsmith_clamp_u32(min(u_input.d.x, 101611u), u_input.d.x >> (_wgslsmith_mult_u32(~28251u, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)) % 32u), _wgslsmith_mult_u32(0u, 99548u)));
    let var_1 = -select(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.c), vec3<i32>(6867i, u_input.a.x, -24473i), vec3<i32>(-2147483647i, 58122i, u_input.c)), countOneBits(vec3<i32>(-40832i, 23i, 0i))), 1i, 2147483647i), vec3<i32>(-2147483647i | ~u_input.e, _wgslsmith_clamp_i32(~u_input.e, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a)), select(1i, -2147483647i, true)), global1.yww);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1851f, -602f, 330f) - vec3<f32>(-1000f, -369f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - 1000f), -146f))));
    let var_3 = ~_wgslsmith_sub_vec3_u32(var_0, max(var_0, vec3<u32>(5991u, var_0.x, 25109u))) | vec3<u32>(abs(~countOneBits(1u)), countOneBits(_wgslsmith_clamp_u32(1u, 1u, u_input.b)), ~_wgslsmith_mod_u32(~15611u, 55990u));
    var var_4 = Struct_4(22811u, firstLeadingBit(u_input.a));
    var var_5 = Struct_1(var_2.x);
    var var_6 = Struct_4(~1u, abs(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_5.a * var_5.a), _wgslsmith_f_op_f32(sign(var_5.a))))), _wgslsmith_div_vec2_f32(var_2.xz, vec2<f32>(488f, var_5.a))), ~_wgslsmith_mult_i32(firstTrailingBit(var_4.b.x), u_input.a.x));
}

