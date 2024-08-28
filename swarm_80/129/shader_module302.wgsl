struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-549f, global0.b.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(-972f, _wgslsmith_div_f32(554f, 253f), _wgslsmith_div_f32(global0.b.x, global0.b.x), 712f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(336f, global0.b.x, 435f, -505f))))), vec2<u32>(max(global0.c.x, _wgslsmith_add_u32(~u_input.e, ~20432u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(u_input.e, 7027u)))), any(!(!(!vec3<bool>(false, global0.d, global0.a)))), any(vec3<bool>(!global0.e, global0.e, any(vec2<bool>(global0.e, false)))) | global0.e);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-1131f + arg_0.b.x);
    let var_1 = Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.b.x, 532f, arg_3.b.x, arg_3.b.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, -1429f, 1196f, -235f))), vec4<f32>(-866f, _wgslsmith_f_op_f32(sign(global0.b.x)), -1529f, arg_3.b.x), any(!vec4<bool>(arg_0.a, true, arg_3.a, true))))), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c.x, global0.c.x), u_input.d), vec2<u32>(4294967295u, 56303u) & vec2<u32>(4294967295u, u_input.e)) & _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(50620u, 25961u)), vec2<u32>(7219u, global0.c.x)), ~(arg_3.c | vec2<u32>(0u, arg_0.c.x))), arg_1.x > 18504u, !all(select(select(vec4<bool>(false, arg_2.x, false, arg_2.x), vec4<bool>(true, arg_0.a, arg_3.a, arg_0.d), false), !vec4<bool>(false, arg_0.d, arg_3.e, global0.d), vec4<bool>(global0.d, true, true, false))));
    var var_2 = Struct_1(any(vec3<bool>(true, true == (arg_0.c.x != arg_1.x), (false || arg_3.a) && !var_1.e)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), global0.b.x, _wgslsmith_f_op_f32(-arg_3.b.x), 133f), vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(step(1f, -1076f)), -1000f, global0.b.x))), arg_3.c, !arg_3.d, any(!vec4<bool>(u_input.b.x <= -7028i, true, arg_2.x, !arg_3.d)));
    let var_3 = 797f;
    var var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 60917u, 1577u, global0.c.x) >> (~vec4<u32>(4294967295u, 0u, 31665u, var_1.c.x) % vec4<u32>(32u)), max(reverseBits(vec4<u32>(u_input.d.x, 0u, global0.c.x, arg_3.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.c.x, var_1.c.x, 23639u, var_2.c.x), vec4<u32>(4294967295u, 29515u, 91051u, 1u)))), countOneBits(87068u), max(var_2.c.x, u_input.e) ^ (_wgslsmith_div_u32(14711u, arg_1.x) & countOneBits(global0.c.x)), arg_3.c.x) & vec4<u32>(31043u, _wgslsmith_add_u32(abs(_wgslsmith_clamp_u32(0u, 33676u, 28673u)), global0.c.x), 1u >> (arg_1.x % 32u), ~(var_1.c.x >> (4294967295u % 32u)));
    return _wgslsmith_f_op_vec4_f32(step(arg_0.b, arg_0.b));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-global0.b.x);
    var var_1 = vec4<i32>(u_input.b.x, -309i, _wgslsmith_add_i32(-2147483647i, u_input.c.x), _wgslsmith_add_i32(u_input.a, min(-2147483647i, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, global0.b.x, arg_1.b.x, _wgslsmith_f_op_f32(round(-1387f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1708f, global0.b.x, global0.b.x, global0.b.x)) - _wgslsmith_f_op_vec4_f32(-global0.b))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1939f), _wgslsmith_f_op_f32(f32(-1f) * -203f), 216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-555f))))));
    let var_3 = vec3<i32>(1i, -2147483647i, u_input.b.x) & ~(vec3<i32>(-1i, var_1.x, abs(var_1.x)) << (~select(vec3<u32>(106683u, 62748u, 47381u), vec3<u32>(65016u, global0.c.x, 0u), vec3<bool>(arg_1.d, arg_2, arg_2)) % vec3<u32>(32u)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.b)) - arg_1.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(false, arg_1.b, vec2<u32>(27749u, 78518u), global0.e, true), vec3<u32>(arg_0, arg_0, arg_1.c.x), vec2<bool>(true, arg_2), arg_1)))) * vec4<f32>(-579f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(sign(arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-404f + 818f) + -1205f), 1f)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(1u, Struct_1(global0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(floor(global0.b.x)), _wgslsmith_f_op_f32(trunc(-2586f)), global0.b.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), vec2<u32>(1u, u_input.e)), vec2<u32>(4294967295u, ~3076u)), true, false), false, 4294967295u);
    global0 = func_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(77689u, global0.c.x, 1u), vec3<u32>(global0.c.x, 1u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0.c.x, global0.c.x), vec3<u32>(global0.c.x, u_input.d.x, 0u), vec3<u32>(59853u, 0u, 2487u))), global0.c.x), func_1(55360u, func_1(func_1(~u_input.d.x, Struct_1(true, vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec2<u32>(u_input.e, 4294967295u), true, global0.d), all(vec2<bool>(global0.d, true)), 87862u).c.x, func_1(12448u & global0.c.x, func_1(14640u, Struct_1(global0.e, global0.b, global0.c, global0.e, global0.a), true, 4294967295u), global0.e, global0.c.x), true, countOneBits(4294967295u) >> (u_input.e % 32u)), false, 4294967295u), true, global0.c.x);
    let var_0 = Struct_1(global0.a, func_1((abs(37550u) & _wgslsmith_mult_u32(global0.c.x, u_input.d.x)) >> (_wgslsmith_add_u32(select(4294967295u, global0.c.x, global0.e), 1u) % 32u), func_1(~(~43091u), func_1(1u, Struct_1(true, global0.b, vec2<u32>(12956u, 4294967295u), false, false), true, u_input.e), any(vec4<bool>(global0.a, true, true, false)), abs(global0.c.x)), true, global0.c.x).b, u_input.d, global0.e, global0.e);
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, var_0.b.x, global0.b.x) + var_0.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(853f, var_0.b.x)), global0.b.x, global0.b.x, _wgslsmith_div_f32(var_0.b.x, 1493f)) * _wgslsmith_f_op_vec4_f32(-global0.b))), ~vec2<u32>(select(u_input.e, ~u_input.e, !global0.e), 4294967295u), 31970u > global0.c.x, false);
    var var_2 = ~_wgslsmith_add_u32(1u, var_1.c.x);
    let var_3 = vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(264f)), _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)))) - global0.b.x) <= var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1379f, var_1.b.x)))))) >= -1647f, all(!select(vec2<bool>(true, false), vec2<bool>(var_1.e, false), !global0.a)));
    let var_4 = _wgslsmith_mult_u32(global0.c.x, (u_input.d.x | (abs(1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1113u, 1u, var_0.c.x), vec4<u32>(var_0.c.x, global0.c.x, u_input.d.x, 1u)) % 32u))) << (var_1.c.x % 32u));
    var var_5 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x & ~(~65146u), ~_wgslsmith_mult_u32(15325u, global0.c.x) << (var_4 % 32u), ~1u), ~countOneBits(select(~vec3<u32>(var_4, var_1.c.x, global0.c.x), vec3<u32>(global0.c.x, global0.c.x, var_1.c.x) >> (vec3<u32>(7238u, 82307u, 4294967295u) % vec3<u32>(32u)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstTrailingBit(var_0.c)), min(30138u, var_0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), global0.b.x)), _wgslsmith_f_op_f32(-1182f - _wgslsmith_f_op_f32(1000f * var_0.b.x)), -535f);
}

