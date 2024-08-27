struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_1;
    var_0 = Struct_1(arg_1.a, arg_0.a.x & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a.x, 6471u, arg_1.a.x), countOneBits(vec3<u32>(1u, 78697u, u_input.a))), 1u));
    let var_1 = vec2<i32>(u_input.b.x, i32(-1i) * -u_input.c);
    var var_2 = min(vec4<i32>(1i, u_input.c, u_input.c, ~countOneBits(-22653i)) & u_input.b, abs(min(firstLeadingBit(vec4<i32>(var_1.x, u_input.c, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(-10510i, var_1.x, var_1.x, u_input.c))) | vec4<i32>(-1i, var_1.x, firstTrailingBit(28945i), u_input.b.x)));
    var var_3 = arg_0;
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(77522u == var_3.a.x, all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, true, false, true)))));
}

fn func_2() -> f32 {
    let var_0 = any(!func_3(Struct_1(~vec2<u32>(1u, 4294967295u), max(1u, u_input.a)), Struct_1(countOneBits(vec2<u32>(4294967295u, 0u)), ~0u), global1.x));
    global0 = _wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(floor(-1181f))), global1.x));
    let var_1 = global1.x;
    let var_2 = Struct_1(~(~(~vec2<u32>(u_input.a, u_input.a) ^ (vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, 12647u)))), max(u_input.a, _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.a, 38009u), min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1542f)), global1.x) - 1563f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.x)))) - global1.x)), -1717f, max(_wgslsmith_clamp_i32(u_input.c, u_input.c, 2147483647i >> (var_2.b % 32u)), ~(-28305i) & (u_input.c >> (var_2.b % 32u))) < u_input.b.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-105f, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-668f, 1763f, false)) * global1.x), !(!arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), 179f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1186f * -349f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), -1905f)), global1.x))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1635f - global1.x)));
    let var_0 = _wgslsmith_f_op_f32(round(global1.x));
    var var_1 = u_input.b.zyx;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, 397f, 149f, global1.x))))), vec4<f32>(-1491f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(996f)), true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1427f - var_0), global1.x)), var_0, var_0), !vec4<bool>(any(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.xyw)), all(vec4<bool>(arg_0.x, arg_0.x, false, false)), all(arg_0), all(select(arg_0, arg_0, false)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    let var_0 = vec4<bool>(false, false, false, false);
    global1 = _wgslsmith_f_op_vec4_f32(-arg_0);
    global0 = -966f;
    let var_1 = (vec2<u32>(0u, ~select(4294967295u, 56576u, var_0.x)) ^ ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)))) >> (vec2<u32>(_wgslsmith_div_u32(50847u, u_input.a), u_input.a) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(func_2())), 1594f, global1.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(global1.x, 1535f);
    global0 = _wgslsmith_f_op_f32(-global1.x);
    var var_0 = Struct_1(firstTrailingBit(select(vec2<u32>(~1u, ~1u), vec2<u32>(1u, 1u), select(true, any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true))))), u_input.a);
    var_0 = Struct_1(vec2<u32>(abs(reverseBits(1u)), ~var_0.b), countOneBits(_wgslsmith_clamp_u32(u_input.a, func_4(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, false, true, false), u_input.c, Struct_1(var_0.a, 39041u), 34998u)), vec3<i32>(1906i, -5197i, -1i), true), 4294967295u)));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.a)), var_0.a), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 0u, u_input.a) << (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)), ~vec3<u32>(var_0.a.x, 4294967295u, 30509u), true), ~(vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 47180u, var_0.b))));
    var var_2 = any(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, u_input.a, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_1.b, 0u, var_0.b), vec4<u32>(u_input.a, var_1.b, 37879u, var_0.a.x))) > 0u, abs(u_input.b.x) <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), u_input.b.zzx))));
    global0 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, true, false, true), u_input.c, var_1, var_1.b)).x), _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_f32(1512f * global1.x)), _wgslsmith_add_u32(~4294967295u, countOneBits(~u_input.a) ^ 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1085f)) + _wgslsmith_f_op_f32(f32(-1f) * -785f))), _wgslsmith_f_op_f32(1463f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - 302f))))));
}

