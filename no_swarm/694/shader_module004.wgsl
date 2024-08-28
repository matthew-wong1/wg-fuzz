struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(-9367i, true, i32(-2147483648), 1u), Struct_1(2147483647i, false, 27862i, 26911u), vec3<f32>(-2288f, 777f, 286f), -24374i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = Struct_2(Struct_1(-abs(~(-60762i)), global0.b, ~47581i, abs(global0.d)), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.c)))), select(abs(global0.a) << (_wgslsmith_add_u32(u_input.d.x | 53898u, ~global0.d) % 32u), -1i, true));
    let var_0 = global1.b;
    global0 = global1.b;
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(-51565i, 26267i, 1i), var_0.b, global1.b.c, 11956u), Struct_1(abs(_wgslsmith_mult_i32(global0.a, reverseBits(var_0.c))), all(!select(vec2<bool>(global1.a.b, false), vec2<bool>(false, var_0.b), vec2<bool>(global1.b.b, true))), var_0.a, firstLeadingBit(~var_0.d ^ global1.b.d)), _wgslsmith_f_op_vec3_f32(step(global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.c)) * _wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(vec3<f32>(896f, global1.c.x, 1578f) - vec3<f32>(global1.c.x, global1.c.x, 796f)))))), var_0.c);
    var var_2 = Struct_1(~(-1i), any(!vec4<bool>(true, true, true, !var_0.b)), global0.a ^ 36972i, global1.b.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.x, -1461f)))))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~(-7316i), true, 2147483647i, ~(~u_input.a)), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, global1.c.x))))))), global1.d);
    let var_1 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -797f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(149f, global1.c.x)))) + -482f), global1.c.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    global1 = Struct_2(Struct_1(21266i, true, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b.c, 0i), vec2<i32>(41258i, global0.a)), vec2<i32>(var_0.b.a, -27076i)) << (global1.a.d % 32u), 32232u), Struct_1(abs(var_0.d), all(vec2<bool>(true, true)), global0.c, ~_wgslsmith_div_u32(max(21506u, 4294967295u), _wgslsmith_div_u32(global1.b.d, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.c))), global1.a.a | 0i);
    return var_0.b;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    global1 = Struct_2(func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zz, vec2<u32>(18545u, 0u)), u_input.b), ~(vec2<u32>(u_input.c.x, 40092u) >> (vec2<u32>(arg_1.x, 8309u) % vec2<u32>(32u)))), ~global0.d), func_2(firstLeadingBit(_wgslsmith_mod_u32(~arg_1.x, 81268u)), _wgslsmith_dot_vec3_u32(arg_1, ~u_input.c) ^ 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(global1.c)))))), -func_2(select(7081u, _wgslsmith_div_u32(global0.d, 30963u), true), firstTrailingBit(_wgslsmith_div_u32(4294967295u, 80293u))).a);
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(-select(reverseBits(vec3<i32>(0i, arg_2, global1.b.c)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2, arg_2, -1i), vec3<i32>(2147483647i, -2147483647i, -4353i)), global0.b), -(~vec3<i32>(arg_2, global0.c, arg_2) ^ firstLeadingBit(vec3<i32>(19799i, 2147483647i, global0.c)))), arg_1.x > u_input.a, arg_2, 4294967295u);
    return select(select(vec3<bool>(any(vec3<bool>(true, true, true)), global1.a.b, true), select(vec3<bool>(func_2(1u, u_input.c.x).b, true, global1.a.b), vec3<bool>(false, all(vec4<bool>(false, false, true, false)), global0.b), global1.b.b), any(vec2<bool>(true, true))), select(select(vec3<bool>(false, global0.b, true), vec3<bool>(true, all(vec2<bool>(global1.a.b, false)), true), select(!vec3<bool>(global1.b.b, true, global0.b), vec3<bool>(global1.b.b, global1.b.b, true), !global0.b)), !(!select(vec3<bool>(global0.b, false, false), vec3<bool>(global1.a.b, true, global1.b.b), vec3<bool>(false, true, global1.b.b))), true), !(!any(select(vec2<bool>(false, false), vec2<bool>(global1.a.b, true), vec2<bool>(global1.a.b, global1.a.b)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(729f, _wgslsmith_f_op_f32(-global1.c.x))));
    global1 = Struct_2(Struct_1(-firstLeadingBit(i32(-1i) * -2147483647i), global0.b, select(~max(2147483647i, global0.c), _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, global1.a.c, -2147483647i), _wgslsmith_mod_i32(arg_1.x, -15837i)), true), ~global1.a.d), func_2(max(_wgslsmith_mod_u32(~global1.b.d, _wgslsmith_clamp_u32(61240u, global1.a.d, global1.a.d)), countOneBits(global1.a.d >> (0u % 32u))), 68229u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * _wgslsmith_f_op_f32(global1.c.x + var_0)))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(reverseBits(arg_1.x >> (1u % 32u)), _wgslsmith_sub_i32(0i, 2147483647i)), 1i << (1u % 32u), ~2147483647i));
    global0 = global1.a;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1438f)))));
    global0 = global1.a;
    return Struct_1(arg_1.x, any(vec4<bool>(true, var_0 != _wgslsmith_div_f32(-247f, var_0), true, false)), ~abs(global1.d), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a;
    global0 = global1.a;
    var var_0 = Struct_3(Struct_2(global1.a, func_4(select(func_1(1000f, u_input.c, 0i), select(vec3<bool>(false, false, true), vec3<bool>(false, global1.b.b, global1.a.b), vec3<bool>(global0.b, global0.b, global1.b.b)), vec3<bool>(global1.b.b, global0.b, global0.b)), countOneBits(abs(vec2<i32>(2147483647i, -1i)))), vec3<f32>(global1.c.x, -1112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * global1.c.x) - global1.c.x)), global0.c));
    let var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = vec2<f32>(global1.c.x, var_0.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(select(global1.b.d, 35237u, false), global0.d, 91642u, 101408u), firstTrailingBit(vec4<u32>(4294967295u, 1u, global0.d, var_0.a.b.d))) | global0.d, abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-8464i, 2147483647i, -14589i), vec3<i32>(0i, -34293i, -1i)), global1.b.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(~(~u_input.c.x), 7352u ^ (0u ^ global0.d)), u_input.d), _wgslsmith_f_op_vec2_f32(-var_2), countOneBits(max(-(global0.a >> (25771u % 32u)), -_wgslsmith_clamp_i32(1i, 6239i, var_0.a.b.c))));
}

