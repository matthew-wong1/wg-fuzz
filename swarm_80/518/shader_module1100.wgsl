struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1247f, 1273f, 661f);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-38571i, 44801i, 7456i), vec3<u32>(43032u, 18365u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = ~39936u;
    let var_1 = arg_0.a.x;
    let var_2 = 769f;
    let var_3 = arg_0.b.x;
    let var_4 = -829f;
    return arg_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = 0u;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(global1.b.x, global1.b.x, 4294967295u)), vec3<u32>(~1u, ~4294967295u, arg_1.x)) ^ firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(47570u, arg_2.b.x, 26902u, global1.b.x), vec4<u32>(arg_2.b.x, arg_2.b.x, var_0, arg_1.x)), vec4<u32>(var_0, var_0, arg_2.b.x, 55225u))), var_0, ~countOneBits(~_wgslsmith_mult_u32(1u, 0u)));
    let var_2 = func_2(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 227f, 538f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 796f, global0.x, global0.x) * vec4<f32>(109f, global0.x, global0.x, -103f)))))));
    let var_3 = max(func_2(Struct_1(arg_2.a, vec3<u32>(abs(4294967295u), 30938u, 91536u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1184f, global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, 1420f, 1051f))))))).a.x, (_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, -1i), min(u_input.a.x, 2147483647i)) >> (arg_1.x % 32u)) ^ (arg_3 ^ 2147483647i));
    global1 = Struct_1(vec3<i32>(2147483647i, abs(13280i), 20129i), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 0u, arg_2.b.x) >> (vec4<u32>(var_2.b.x, 11978u, 33681u, var_2.b.x) % vec4<u32>(32u)), vec4<u32>(arg_1.x, 4294967295u, 59047u, var_1.x)), ~var_2.b.x ^ 4294967295u, abs(18497u)), vec3<u32>(firstTrailingBit(abs(arg_1.x)), 2070u, var_2.b.x)));
    return Struct_1(vec3<i32>(~var_2.a.x, arg_3, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, arg_3, global1.a.x) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.x, 59764u, var_1.x), vec3<u32>(var_2.b.x, 1u, 15715u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(var_2.a.x, 15841i, var_3))), abs(global1.b));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> bool {
    global1 = Struct_1(vec3<i32>(firstLeadingBit(2147483647i), -global1.a.x, ~global1.a.x), ~(~global1.b >> (vec3<u32>(0u, 0u, arg_1) % vec3<u32>(32u))) >> (vec3<u32>(firstTrailingBit(28019u), ~(105332u | global1.b.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, global1.b.x), vec3<u32>(global1.b.x, arg_1, 0u)))) % vec3<u32>(32u)));
    let var_0 = func_2(Struct_1(_wgslsmith_clamp_vec3_i32(-global1.a, vec3<i32>(_wgslsmith_div_i32(u_input.a.x, global1.a.x), global1.a.x, 1i), vec3<i32>(~u_input.a.x, abs(32285i), 14384i)), vec3<u32>(~(~arg_1), global1.b.x, ~11191u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1363f, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, arg_0.x, 216f, -101f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1415f, 698f, 439f, 296f)))))));
    let var_1 = func_3(vec3<bool>(arg_2, !(arg_1 <= arg_1), !(global0.x < _wgslsmith_f_op_f32(-arg_0.x))), firstLeadingBit(global1.b), var_0, 19589i);
    let var_2 = var_0;
    global1 = func_2(Struct_1(var_0.a, ~vec3<u32>(var_2.b.x, 27964u, _wgslsmith_mult_u32(var_1.b.x, 49567u))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1470f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(599f)) * global0.x))), arg_0.x, global0.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-908f, global0.x, -297f)) + vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-692f, 647f, global0.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(floor(-540f)))));
    global1 = Struct_1(abs(global1.a) << (global1.b % vec3<u32>(32u)), global1.b);
    var var_1 = select(vec3<bool>(select(all(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true)), true), any(vec2<bool>(all(vec2<bool>(false, true)), true)), false), !(!vec3<bool>(true, func_1(vec3<f32>(global0.x, global0.x, 1823f), 1u, true, vec2<i32>(-44788i, 28948i)), true)), !any(vec2<bool>(true, true)));
    var var_2 = 1i;
    var_1 = vec3<bool>(var_1.x, -(global1.a.x ^ _wgslsmith_dot_vec3_i32(global1.a, vec3<i32>(1i, 2147483647i, -2147483647i))) > global1.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-882f + global0.x), _wgslsmith_f_op_f32(floor(-754f)), ~(global1.b.x | _wgslsmith_sub_u32(global1.b.x, ~0u)), global1.a.x, _wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_clamp_i32(2746i, global1.a.x, -1i) ^ ~min(global1.a.x, global1.a.x)));
}

