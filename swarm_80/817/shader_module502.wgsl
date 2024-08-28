struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    global0 = select(!(!select(!vec2<bool>(false, global0.x), !arg_3, arg_3)), vec2<bool>(!(~u_input.d.x == firstTrailingBit(u_input.a)), global0.x), select(select(vec2<bool>(any(vec4<bool>(true, false, arg_0.a, arg_3.x)), arg_2.a), select(select(arg_3, arg_3, arg_3), !arg_3, arg_2.a), !arg_2.a), vec2<bool>(all(!vec4<bool>(global0.x, arg_0.a, true, arg_0.a)), !(!arg_3.x)), vec2<bool>(any(vec2<bool>(true, true)), !(arg_1 < 0i))));
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2.c)), arg_0.b.x))));
    return true || (_wgslsmith_f_op_f32(-arg_2.c) == -1846f);
}

fn func_2() -> Struct_1 {
    global0 = !select(select(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), false), select(select(vec2<bool>(true, global0.x), vec2<bool>(true, false), global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, true)), func_3(Struct_1(global0.x, vec3<f32>(-527f, -905f, -2287f), -289f), u_input.c.x, Struct_1(true, vec3<f32>(1787f, -563f, 1275f), 1378f), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), true))), vec2<bool>(func_3(Struct_1(false, vec3<f32>(391f, -1091f, 209f), 739f), u_input.c.x, Struct_1(false, vec3<f32>(-398f, -2005f, 507f), -1328f), vec2<bool>(global0.x, false)) != global0.x, global0.x), global0.x);
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, 1440f, 638f) + vec3<f32>(191f, 649f, 977f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-522f, 1042f, 1190f))))))), _wgslsmith_f_op_f32(-308f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(949f, 1010f, global0.x)))));
    let var_1 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1635f))), var_0.b.x), _wgslsmith_f_op_f32(-1987f - 1024f));
    let var_2 = _wgslsmith_f_op_f32(var_1.c - var_0.b.x);
    var var_3 = !vec2<bool>(!(!(var_2 > var_2)), true);
    return Struct_1(any(!(!select(vec2<bool>(false, var_1.a), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.c, var_0.b.x))))), _wgslsmith_f_op_f32(-var_1.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec3_i32(reverseBits(-max(~vec3<i32>(u_input.c.x, 39427i, u_input.c.x), vec3<i32>(16550i, -19535i, u_input.c.x))), abs(u_input.c));
    var var_1 = func_2();
    let var_2 = vec4<bool>(true, arg_0.b.x > -811f, all(!(!(!vec4<bool>(true, arg_0.a, false, arg_0.a)))), all(!vec4<bool>(arg_0.a, false, all(vec4<bool>(var_1.a, true, true, arg_1.a)), u_input.a <= 71035u)));
    var_1 = Struct_1(all(select(var_2.xw, var_2.xy, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.b, vec3<f32>(631f, var_1.b.x, var_1.b.x), var_2.xxy)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c, -800f, arg_0.b.x))))), 317f);
    var_1 = Struct_1(func_2().a, _wgslsmith_f_op_vec3_f32(-arg_1.b), arg_1.b.x);
    return select(!vec3<bool>(any(!var_2.zzw), true, true & select(arg_0.a, arg_1.a, true)), var_2.wzx, vec3<bool>(var_1.c > 418f, var_2.x, !var_1.a));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~vec2<u32>(0u & (~u_input.d.x & u_input.b.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(u_input.a, u_input.a)), u_input.d.x << (u_input.d.x % 32u)));
    let var_1 = Struct_1(arg_0.c > _wgslsmith_f_op_f32(exp2(arg_0.c)), _wgslsmith_f_op_vec3_f32(select(arg_0.b, _wgslsmith_f_op_vec3_f32(-arg_0.b), func_4(func_2(), arg_0))), -1842f);
    let var_2 = 59174i;
    var var_3 = Struct_1(!(!any(select(vec3<bool>(false, global0.x, var_1.a), vec3<bool>(true, arg_0.a, true), false))), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_f32(527f - _wgslsmith_f_op_f32(floor(var_1.c))));
    var var_4 = any(vec3<bool>(true != global0.x, any(func_4(Struct_1(var_1.a, var_1.b, -512f), var_1)) && !var_3.a, all(select(select(vec2<bool>(true, false), vec2<bool>(var_1.a, var_3.a), var_3.a), vec2<bool>(true, true), !global0.x))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(778f + _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(false, vec3<f32>(-2095f, -1122f, 1000f), -663f))), -1470f) * -1000f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-286f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(-240f)), _wgslsmith_f_op_f32(f32(-1f) * -656f), -180f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(-2078f)), -1761f, 902f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, 453f, 1000f) + vec3<f32>(2939f, 1702f, 672f))))), 995f);
    let var_1 = abs(abs(max(vec4<i32>(u_input.c.x, u_input.c.x, -1i | u_input.c.x, 1i), vec4<i32>(~u_input.c.x, u_input.c.x, countOneBits(u_input.c.x), ~u_input.c.x))));
    var var_2 = 2147483647i;
    var_0 = Struct_1((u_input.b.x << ((19343u >> ((u_input.d.x >> (0u % 32u)) % 32u)) % 32u)) >= u_input.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2314f), -2365f, _wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-958f + _wgslsmith_f_op_f32(floor(-1313f)))));
    global0 = vec2<bool>(all(vec2<bool>(!global0.x, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(368f, 477f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(var_0.c, var_0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-237f, -375f, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.c, var_0.c, -1982f) - vec4<f32>(var_0.b.x, 944f, -799f, 1606f)))), true)), _wgslsmith_mult_u32(48645u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 0u ^ u_input.b.x))), max(_wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(28640i, -2147483647i), u_input.c.zx), _wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(var_1.x, -2147483647i))), _wgslsmith_mod_i32(-2147483647i, 0i | u_input.c.x)), -2147483647i));
}

