struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(51295u, 1u);

var<private> global2: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2.a)), _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(-arg_2.a)))))), _wgslsmith_f_op_f32(arg_2.a + -804f));
    global2 = !all(!(!vec4<bool>(arg_0, false, false, true))) || !select(arg_0, any(vec4<bool>(arg_0, true, true, arg_0)), true);
    global1 = vec2<u32>(global1.x, ~u_input.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1317f + -1530f) + -655f)));
    var_1 = var_0.x;
    return ~select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.c, 0u), vec2<u32>(33295u, global1.x), arg_0), vec2<u32>(4294967295u, 8651u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, 30995u))), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(global1.x, 4294967295u), vec2<u32>(global1.x, u_input.c) & vec2<u32>(u_input.c, global1.x), arg_0 != false), ~vec2<u32>(34601u, u_input.c), ~(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(global1.x, global1.x))), vec2<bool>(any(vec3<bool>(arg_0, arg_0, false)), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = abs(~(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, global1.x), func_3(false, 8291i, Struct_1(-242f))) << (abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(11128u, 4294967295u))) % vec2<u32>(32u))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) * _wgslsmith_div_f32(333f, 236f))))));
    let var_1 = Struct_1(var_0.a);
    var var_2 = Struct_1(-142f);
    let var_3 = vec3<u32>(~global1.x, ~(~13214u), ~(0u << ((firstTrailingBit(u_input.c) & _wgslsmith_div_u32(1u, global1.x)) % 32u)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = any(vec3<bool>(u_input.a > u_input.b, !all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, true))));
    var var_2 = abs(global1.x) & 22237u;
    let var_3 = _wgslsmith_sub_vec2_i32(abs(select(abs(reverseBits(vec2<i32>(0i, u_input.a))), _wgslsmith_add_vec2_i32(vec2<i32>(-8597i, -14851i), vec2<i32>(u_input.a, u_input.b)), var_1)), vec2<i32>(-772i & -(~u_input.b), ~u_input.a));
    var var_4 = ~(~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(26908u, 21102u)), vec2<u32>(~42144u, abs(var_0))));
    return func_2(reverseBits(_wgslsmith_sub_i32(reverseBits(var_3.x), -2147483647i) << (var_0 % 32u)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = vec2<u32>(firstLeadingBit(1u), global1.x);
    global2 = true;
    let var_0 = min(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(28236u, 9692u)), global1.x), _wgslsmith_mod_vec2_u32(~select(vec2<u32>(4294967295u, 1u), vec2<u32>(36435u, u_input.c), false), ~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c, 4294967295u), true))), ~abs(vec2<u32>(~0u, global1.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-835f, arg_0, 1683f, -606f))) * vec4<f32>(arg_0, -532f, arg_0, -1166f)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 1264f), 802f, _wgslsmith_f_op_f32(-arg_0), 417f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-191f, 1811f))) + _wgslsmith_f_op_f32(f32(-1f) * -1057f)));
    return func_4(func_2(u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-725f * 1176f)))), _wgslsmith_f_op_f32(exp2(var_1.x)), arg_0), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -782f), _wgslsmith_f_op_f32(-var_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(u_input.c, abs(~(~17566u)));
    let var_0 = func_1(_wgslsmith_f_op_f32(457f - -846f));
    let var_1 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), true)), vec2<bool>(true, true), true), !vec2<bool>(!(u_input.b > -2147483647i), true));
    global0 = global1.x;
    global0 = global1.x & u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_1(732f).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a), var_0.a)));
}

