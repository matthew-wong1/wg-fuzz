struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(reverseBits(u_input.b), ~(~max(u_input.b, vec4<u32>(arg_1.c, arg_0.c, arg_1.c, 43622u)))), arg_1, !vec3<bool>(true, _wgslsmith_f_op_f32(1000f - global1.a) <= -224f, !(global1.b.x <= arg_1.b.x)), arg_1);
    global1 = Struct_1(_wgslsmith_f_op_f32(-472f * global1.d), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.a), -557f)))), _wgslsmith_mod_u32(40756u, var_0.a), _wgslsmith_f_op_f32(765f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-632f + _wgslsmith_f_op_f32(trunc(-735f)))))));
    global1 = arg_1;
    global1 = arg_0;
    global0 = ~global1.c ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(3650u, u_input.b.x), countOneBits(1u)), _wgslsmith_sub_u32(u_input.b.x, arg_0.c)), _wgslsmith_mod_vec2_u32(firstTrailingBit(~u_input.b.wz), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xz), 4294967295u >> (arg_0.c % 32u))));
    return _wgslsmith_f_op_f32(round(1000f));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    global1 = arg_1;
    global1 = Struct_1(-562f, global1.b, 1u, _wgslsmith_f_op_f32(func_3(arg_1, arg_1)));
    global0 = 4294967295u;
    var var_0 = _wgslsmith_f_op_f32(-1603f + arg_1.b.x);
    var_0 = -1578f;
    return (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, -970f) + arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))) == arg_0) & true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    global0 = 1u;
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(88849u, u_input.d, _wgslsmith_clamp_u32(23834u, global1.c, 1u) >> (countOneBits(global1.c) % 32u)), u_input.b.xyx);
    let var_0 = true;
    global1 = Struct_1(_wgslsmith_f_op_f32(799f - -1000f), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1318f, 1322f)) - _wgslsmith_f_op_f32(-global1.a)), global1.d)), global1.d), u_input.d, -2194f);
    let var_1 = Struct_2(~abs(global1.c), Struct_1(-634f, global1.b, 1u, -623f), select(select(select(!vec3<bool>(true, arg_2, arg_2), !vec3<bool>(arg_0.x, true, true), select(arg_3, arg_3, true)), select(arg_3, !arg_3, arg_0.x), vec3<bool>(var_0, true, true)), select(vec3<bool>(-1i < u_input.c, arg_2 || true, false), select(!vec3<bool>(true, arg_2, true), select(vec3<bool>(var_0, arg_0.x, var_0), vec3<bool>(arg_2, var_0, false), true), !arg_2), vec3<bool>(false, global1.a == 136f, all(vec4<bool>(arg_3.x, false, true, arg_2)))), vec3<bool>(any(select(vec3<bool>(arg_0.x, false, var_0), arg_3, var_0)), _wgslsmith_f_op_f32(310f + -187f) < _wgslsmith_f_op_f32(trunc(global1.d)), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(294f - global1.d) - 328f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.b))), ~u_input.b.x, global1.b.x));
    return -37762i;
}

fn func_1() -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_add_i32(func_4(vec2<bool>(func_2(-591f, Struct_1(-681f, global1.b, 30122u, global1.d)), true), -_wgslsmith_div_vec3_i32(u_input.e.xyy, vec3<i32>(1i, -16249i, u_input.a)), false, select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), abs(~61721i | _wgslsmith_mult_i32(u_input.e.x, -2147483647i))));
    global0 = ~(global1.c >> (22682u % 32u));
    global0 = 0u;
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(sign(global1.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f * global1.b.x))))), global1.b, u_input.d, global1.b.x);
    var var_1 = _wgslsmith_sub_vec4_u32(min(~vec4<u32>(~1u, select(global1.c, 38650u, true), ~global1.c, u_input.b.x), max(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.c, 24066u, u_input.b.x), vec4<u32>(global1.c, 29267u, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.b.x, global1.c, global1.c))) | ~vec4<u32>(56166u, global1.c, u_input.b.x, global1.c)), vec4<u32>(u_input.d, 7299u, u_input.b.x, ~(u_input.d | ~1u)));
    return Struct_2(1u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-427f)), 1227f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.b.x))))), ~40829u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * global1.a)) - global1.d)), select(vec3<bool>(true, true, any(vec4<bool>(true, false, false, true))), !vec3<bool>(true, true, func_2(global1.b.x, Struct_1(592f, vec2<f32>(-396f, global1.b.x), u_input.b.x, global1.d))), vec3<bool>(all(vec3<bool>(true, true, true)), false, true)), Struct_1(942f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(global1.b.x, global1.a))), 17838u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + 1353f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = u_input.d;
    let var_1 = !func_1().c.xx;
    var var_2 = vec4<u32>(abs(26487u) & ~(~u_input.b.x ^ reverseBits(global1.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(10969u, ~75244u), ~u_input.b.xz), 20491u, 4294967295u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(var_0.d, var_0.d)), vec2<f32>(-908f, -843f), 0u, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = firstTrailingBit(countOneBits(~(~(var_2.yzy ^ vec3<u32>(global1.c, var_3.c, global1.c)))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b - vec2<f32>(var_3.b.x, var_0.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.ywz & (vec3<i32>(-1i) * -countOneBits(u_input.e.xyw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, var_0.d.d)), _wgslsmith_f_op_vec2_f32(step(var_5, var_3.b)))) + _wgslsmith_div_vec2_f32(var_0.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, var_0.d.a)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -401f) + vec2<f32>(global1.b.x, -460f)))))));
}

