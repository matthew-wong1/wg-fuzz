struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-471f, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-1358f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, global0.a), _wgslsmith_f_op_f32(-global0.a))))), true);
    let var_0 = Struct_1(global0.a, select(select(true, global0.b, any(select(vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(global0.b, false, arg_2.x, false), true))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, global0.a))) == global0.a));
    global0 = var_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1845f, 781f)), -1578f)))), true);
    global0 = Struct_1(global0.a, all(!select(arg_2.yy, arg_2.zx, arg_2.xx)));
    return max(~arg_1, arg_1);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~func_3(u_input.c, vec4<u32>(32602u, u_input.e, arg_0, arg_0), vec3<bool>(false, global0.b, global0.b)), select(vec4<u32>(20286u, u_input.e, 0u, arg_0), ~vec4<u32>(33646u, 54006u, 1u, arg_0), select(vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(global0.b, global0.b, false, true), true))), vec4<u32>(_wgslsmith_div_u32(0u, 69268u), firstLeadingBit(arg_0), u_input.e | arg_0, ~1u) & _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, arg_0, u_input.e, 50685u), max(vec4<u32>(u_input.e, 1u, u_input.e, 0u), vec4<u32>(u_input.e, u_input.e, 4294967295u, 9u))), _wgslsmith_clamp_vec4_u32(max(~vec4<u32>(4294967295u, 0u, arg_0, u_input.e), vec4<u32>(0u, u_input.e, arg_0, arg_0)), vec4<u32>(31900u, u_input.e, arg_0, arg_0) ^ (vec4<u32>(u_input.e, 4294967295u, arg_0, 4294967295u) ^ vec4<u32>(u_input.e, arg_0, 1u, 31380u)), abs(~vec4<u32>(60443u, arg_0, 4294967295u, u_input.e)))), _wgslsmith_div_vec4_u32(~reverseBits(~vec4<u32>(13269u, u_input.e, arg_0, arg_0)), min(vec4<u32>(4294967295u, reverseBits(4294967295u), 0u, _wgslsmith_mod_u32(4294967295u, 27060u)), firstLeadingBit(~vec4<u32>(30549u, 0u, arg_0, arg_0)))));
    var var_1 = ~min(var_0.zy, countOneBits(var_0.yx));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-596f, global0.a)), any(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b), true))), Struct_1(-670f, !all(vec3<bool>(global0.b, global0.b, global0.b))), vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(~975i), _wgslsmith_sub_i32(i32(-1i) * -20652i, 7550i & u_input.b)), u_input.c.x, 58894i));
    let var_3 = !(!select(!(!vec4<bool>(var_2.a.b, true, true, false)), vec4<bool>(true, global0.b, !var_2.b.b, false), var_2.a.b));
    var var_4 = ~select(-1i, u_input.a, false) ^ reverseBits(_wgslsmith_div_i32(-1i, 2815i));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) * -1675f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f - -187f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + 415f), -170f) - var_2.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -960f) * var_2.a.a)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_dot_vec2_u32(arg_0, ~arg_0))));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(func_3(u_input.c, vec4<u32>(1u, ~10814u, 41668u, arg_0.x | 4294967295u), vec3<bool>(!arg_2.b, true, false & global0.b)).x, arg_0.x), u_input.e, _wgslsmith_add_u32(16682u >> (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.e, 0u), _wgslsmith_mod_u32(0u, arg_0.x)) % 32u), arg_0.x), 0u);
    global0 = Struct_1(1736f, false);
    global0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(812f - 560f), arg_1.b.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), all(!vec4<bool>(global0.b, global0.b, global0.b, false)))), arg_2.b);
    global0 = arg_2;
    return vec4<bool>(all(!select(vec4<bool>(true, true, false, true), !vec4<bool>(arg_2.b, false, true, false), true)), true, !arg_1.b.b, !global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(select(vec4<bool>(global0.b, false, false, false), select(vec4<bool>(true, false, global0.b, global0.b), vec4<bool>(global0.b, true, true, global0.b), false), func_1(vec2<u32>(u_input.e, 49152u), Struct_2(Struct_1(global0.a, true), Struct_1(-679f, global0.b), vec3<i32>(u_input.b, -2147483647i, 43294i)), Struct_1(global0.a, false)))), 359f <= global0.a, global0.a == _wgslsmith_f_op_vec4_f32(func_2(~u_input.e)).x);
    var var_1 = !(!(!var_0.yx));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(466f, 589f, 309f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, global0.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(585f * global0.a), _wgslsmith_div_f32(global0.a, global0.a)), var_1.x != true)))), vec3<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(-global0.a)), !(!var_0)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + 300f) + -1412f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1568f))))), !(!var_1.x));
    let var_3 = Struct_1(var_2.x, true);
    var var_4 = _wgslsmith_sub_i32(0i, ~_wgslsmith_add_i32(countOneBits(u_input.c.x), abs(u_input.a)) | -24540i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), ~(~(~vec4<u32>(4294967295u, u_input.e, 0u, u_input.e)) & ((vec4<u32>(4294967295u, 0u, u_input.e, u_input.e) >> (vec4<u32>(32330u, 0u, u_input.e, 0u) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(0u, 39265u, u_input.e, u_input.e)))), -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-34083i, u_input.b, 4481i), 1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.b, 2147483647i), firstTrailingBit(u_input.c.x), u_input.b ^ -12926i), max(vec3<i32>(u_input.a, u_input.a, -1i), ~vec3<i32>(u_input.a, -2147483647i, u_input.a))), u_input.b);
}

