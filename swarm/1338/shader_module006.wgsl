struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: f32 = -189f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = vec4<bool>(true, arg_0.a, any(vec3<bool>(select(!arg_0.a, any(vec4<bool>(false, false, arg_0.a, arg_0.a)), false), all(vec2<bool>(true, true)), arg_0.a)), arg_0.a);
    return 13191i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.c.xxy;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-386f - 281f), _wgslsmith_div_f32(-515f, -867f))) - _wgslsmith_f_op_f32(select(-391f, _wgslsmith_f_op_f32(-435f * 301f), true))), _wgslsmith_f_op_f32(f32(-1f) * -688f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f + -720f)));
    var var_1 = firstLeadingBit(u_input.a);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -442f))))) + _wgslsmith_f_op_f32(min(310f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1030f, 1273f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var_1 = vec4<i32>((~func_3(global0[_wgslsmith_index_u32(u_input.c.x, 7u)]) >> ((var_0.x << (firstTrailingBit(u_input.c.x) % 32u)) % 32u)) << (~4294967295u % 32u), ~_wgslsmith_add_i32(select(1i, u_input.a.x, !arg_0.x), u_input.a.x), ~(-2147483647i), var_1.x);
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1245f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2171f, -790f))), true)))), u_input.c.x);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(true, arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    return 53493u & select(_wgslsmith_div_u32(14946u, 1u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.b, arg_1.b), vec2<u32>(72554u, arg_0.b.b)), ~(~u_input.c.zy)), arg_3.x);
}

fn func_1() -> Struct_1 {
    var var_0 = ~func_5(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], Struct_1(407f, ~(~u_input.c.x)), func_4(func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), vec4<bool>(all(vec2<bool>(true, true)), (u_input.b >= 1i) || true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), true));
    var_0 = func_2(vec2<bool>(func_4(func_4(func_4(Struct_1(-420f, u_input.c.x)).b).b).a, !all(vec3<bool>(false, false, false)))).b;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1529f)))));
    let var_2 = Struct_1(1f, 71794u);
    global0 = array<Struct_2, 7>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-var_2.a))), ~var_2.b);
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = !(!any(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(func_2(vec2<bool>(false, true)).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, -518f)))))));
    var var_1 = arg_0.b;
    var var_2 = func_4(arg_0);
    let var_3 = u_input.c;
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), countOneBits(u_input.a));
}

fn func_7(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_2.x;
    let var_1 = firstLeadingBit(u_input.c.x);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f + 967f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, -1000f, arg_2.x)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_2.xzy, vec3<f32>(2021f, arg_2.x, 107f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(167f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(1271f, -1305f)), select(vec3<bool>(select(arg_1, arg_1, true), !arg_1, arg_1), select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), false), !vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, true, arg_1)), !(!arg_1)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, arg_2.x, -362f))))));
    global1 = 552f;
    return 47941u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-123f)), -586f));
    let var_1 = global0[_wgslsmith_index_u32(func_7(_wgslsmith_div_i32(max(1i, -53396i), func_6(func_1())), true, vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(floor(-726f)), _wgslsmith_f_op_f32(min(-754f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1423f, -472f) + _wgslsmith_f_op_f32(floor(-451f))))))), 7u)];
    global0 = array<Struct_2, 7>();
    var var_2 = true;
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2260f - 655f) + _wgslsmith_f_op_f32(var_0 + var_1.b.a))), true)), _wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.b, 1i) | min(vec2<i32>(u_input.b, 0i), u_input.a.wz)), u_input.a.wx | -reverseBits(u_input.a.xz)), _wgslsmith_sub_vec2_i32(-((vec2<i32>(u_input.b, u_input.a.x) ^ u_input.a.wy) << (vec2<u32>(u_input.c.x, 47300u) % vec2<u32>(32u))), vec2<i32>(1i & (u_input.b >> (1u % 32u)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-15098i, -2147483647i, u_input.b, u_input.b)), u_input.a))), ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, 16381u, var_3.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 20023u, var_3.x), var_3.yyy, vec3<u32>(var_3.x, 106299u, u_input.c.x))), var_3.wyy, abs(min(vec3<u32>(4294967295u, 0u, var_1.b.b), vec3<u32>(0u, 4294967295u, var_1.b.b)))));
}

