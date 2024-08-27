struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(0u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)))), select(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 47561u), u_input.a), ~0u, min(44589u, u_input.a.x)), ~(~vec4<u32>(0u, 12277u, 1u, u_input.a.x)), true)));
    global0 = array<f32, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(32568u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(var_0.x, u_input.a.x, false), 0u), 23u)])), -2034f));
    let var_2 = firstLeadingBit(vec2<u32>(6672u | var_0.x, ~_wgslsmith_add_u32(1u, 10472u) | _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 1u, var_0.x), ~vec3<u32>(u_input.a.x, var_0.x, var_0.x))));
    let var_3 = vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, 0u), var_2), max(~var_2, ~u_input.a)) ^ ~firstTrailingBit(u_input.a.x), 23u)], -963f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(-775f * _wgslsmith_f_op_f32(539f * _wgslsmith_f_op_f32(-var_1.x))))), global0[_wgslsmith_index_u32(countOneBits(~var_0.x), 23u)], _wgslsmith_f_op_f32(exp2(var_3.x)) <= global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.x, 27931u), 23u)]));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= global0[_wgslsmith_index_u32(24463u, 23u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 23u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f * 466f) * -198f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1271f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 23u)]), 1000f), vec3<bool>(false, true, any(vec4<bool>(false, false, true, true))), 2147483647i, ~0u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, arg_0.x)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -1212f)))))));
    var var_1 = _wgslsmith_add_i32(var_0.d.c, countOneBits(1i));
    let var_2 = max(vec4<u32>(min(u_input.a.x, u_input.a.x), var_0.d.d, var_0.d.d, min(32935u, u_input.a.x)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, select(1u, 27721u, var_0.d.b.x)) ^ ~vec4<u32>(var_0.d.d & 75393u, countOneBits(9367u), countOneBits(var_0.d.d), ~u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(var_0.c.x, 1701f, arg_0.x, var_0.d.a.x)), var_0.a) + vec4<f32>(280f, _wgslsmith_f_op_f32(-290f + global0[_wgslsmith_index_u32(var_2.x, 23u)]), arg_0.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] * global0[_wgslsmith_index_u32(4294967295u, 23u)]))) * var_0.a));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(-arg_0)) * vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(-2546f, arg_0.x, true)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(137f - 1287f))) * _wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(-1862f, _wgslsmith_f_op_f32(arg_0.x - var_0.a.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] * global0[_wgslsmith_index_u32(var_2.x, 23u)]), _wgslsmith_f_op_f32(-var_0.d.a.x)))), true, vec3<f32>(900f, global0[_wgslsmith_index_u32(min(4294967295u, 2978u), 23u)], var_0.a.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -162f, var_0.c.x), select(select(vec3<bool>(false, false, true), !var_0.d.b, true), !vec3<bool>(var_0.d.b.x, false, var_0.d.b.x), true), _wgslsmith_div_i32(-var_0.d.c, var_0.d.c), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-1484f * 616f)))));
    return var_4.d.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = arg_2.xww;
    var_0 = arg_0.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.wyz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1308f, var_0.x)))), vec3<bool>(all(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true)) && (arg_1.x >= arg_1.x), !((i32(-1i) * -1i) <= ~arg_0.c), any(vec3<bool>(arg_0.b.x, arg_0.b.x, false)) & true), func_2(_wgslsmith_f_op_vec4_f32(-arg_2)), arg_0.d, arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-248f, 3264f);
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]);
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(~4294967295u, 23u)], 1000f), _wgslsmith_f_op_vec3_f32(-var_1))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(all(vec4<bool>(false, true, true, true)), false, any(vec2<bool>(true, true))), vec3<bool>(false, true, false)), 1i, ~u_input.a.x, 221f), var_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(floor(-250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_f_op_f32(872f - 813f))));
    let var_3 = var_2.b.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-var_1.xy);
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy + func_1(Struct_1(var_2.a, var_2.b, -2147483647i, u_input.a.x, var_0.x), vec3<f32>(-314f, 3594f, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], var_1.x, var_2.a.x, var_1.x)).a.yx))))));
    var var_4 = var_2.b.x;
    var var_5 = ~countOneBits(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a.x, 34868u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 0u), vec3<u32>(u_input.a.x, 38642u, var_2.d)), !var_2.b.x), vec3<u32>(u_input.a.x, abs(52014u), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.x | _wgslsmith_mult_u32(min(1u, 34030u), ~var_5.x), ~64447u, min(select(68434u, max(1u, u_input.a.x), var_2.b.x), _wgslsmith_clamp_u32(1u, 25269u, u_input.a.x)), var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * var_1.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(52435u, var_5.x), select(var_5.x, var_5.x, true)) << (vec2<u32>(var_5.x, 49564u) % vec2<u32>(32u)), vec2<u32>(~abs(4294967295u), 8159u)));
}

