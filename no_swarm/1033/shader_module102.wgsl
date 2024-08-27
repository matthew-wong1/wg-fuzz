struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 34720i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    global1 = vec2<i32>(-16367i, 0i);
    var var_0 = Struct_1(~(global1.x & global0.a));
    global0 = Struct_1(abs(_wgslsmith_mod_i32(~(~var_0.a), ~(-2147483647i))));
    var var_1 = vec4<u32>(31041u << (u_input.a % 32u), u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, ~u_input.a, u_input.a, u_input.a ^ 0u), ~min(vec4<u32>(139664u, u_input.a, u_input.a, u_input.a), vec4<u32>(30703u, 1u, u_input.a, u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), ~(~(vec4<u32>(u_input.a, 4294967295u, u_input.a, 45343u) & vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)))), 33890u);
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, select(1i, global0.a << (1u % 32u), true), countOneBits(min(-2147483647i, var_0.a))), _wgslsmith_div_vec3_i32(vec3<i32>(-486i, var_0.a, _wgslsmith_clamp_i32(10622i, -37977i, global1.x)), (vec3<i32>(1i, global0.a, global0.a) << (var_1.ywx % vec3<u32>(32u))) & _wgslsmith_mod_vec3_i32(vec3<i32>(-34452i, var_0.a, 2147483647i), vec3<i32>(global0.a, global1.x, -7083i)))));
    return select(!vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true)), true, true), !vec3<bool>(false, !select(true, true, true), _wgslsmith_div_i32(-12162i, global0.a) == var_0.a), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = -(~countOneBits(vec2<i32>(-arg_3.a, ~arg_2.a)));
    let var_0 = select(select(!vec3<bool>(true, u_input.a != 44873u, !arg_0), select(vec3<bool>(any(vec2<bool>(true, arg_0)), true, !arg_0), select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, false), arg_0), all(vec3<bool>(true, false, false))), !arg_0 != arg_0), false), !func_3(), !vec3<bool>(arg_0, arg_0, false));
    var var_1 = 2137i;
    var_1 = -2147483647i;
    var var_2 = ~(~_wgslsmith_add_u32(0u, 0u));
    return arg_2;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(332f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-355f)), -406f)), -975f, _wgslsmith_f_op_f32(-1f))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(~global0.a, ~0i));
    var_1 = Struct_1(~select(-2147483647i, _wgslsmith_mult_i32(global0.a, global1.x), false));
    var var_2 = Struct_1(61741i);
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    return func_2(true, u_input.a, Struct_1(-1793i), Struct_1(_wgslsmith_mult_i32(-2147483647i | _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, var_2.a, global0.a), vec3<i32>(-35471i, var_2.a, -7634i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 13880i, var_2.a), firstLeadingBit(vec3<i32>(-1i, global0.a, 2147483647i))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, 25350i) | vec2<i32>(arg_0, 11297i), vec2<i32>(6436i, 48154i) >> (arg_2 % vec2<u32>(32u)))));
    var var_0 = any(vec3<bool>(all(vec2<bool>(true, true)), false, true));
    var_0 = true;
    let var_1 = vec3<bool>(select(all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true, !(true | all(vec4<bool>(false, false, true, false)))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(!all(vec2<bool>(true, true)), false, all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))));
    var_0 = var_1.x;
    return func_1(~(vec4<u32>(u_input.a, 23502u, ~u_input.a, ~1u) << ((vec4<u32>(4349u, 1u, arg_2.x, 0u) ^ min(vec4<u32>(u_input.a, 16417u, arg_2.x, 1u), vec4<u32>(98787u, arg_2.x, u_input.a, u_input.a))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global0.a, func_1(vec4<u32>(63168u, 1u, reverseBits(u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(5211u, u_input.a), vec2<u32>(47848u, 1354u)))), ~select(vec2<u32>(1u, 6911u), countOneBits(vec2<u32>(u_input.a, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)) ^ (vec2<u32>(~u_input.a, 13496u >> (0u % 32u)) << (~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(0u, 80535u) % vec2<u32>(32u))) % vec2<u32>(32u))), func_2(true, 1u >> (_wgslsmith_add_u32(_wgslsmith_add_u32(69974u, u_input.a), 97868u) % 32u), func_2(!any(vec3<bool>(true, false, false)), _wgslsmith_add_u32(u_input.a, u_input.a << (u_input.a % 32u)), func_2(10350u <= u_input.a, u_input.a, Struct_1(1i), func_1(vec4<u32>(57654u, u_input.a, u_input.a, u_input.a))), Struct_1(abs(global1.x))), Struct_1(select(global0.a, 7983i, true) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 30253u)) % 32u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-208f, -2080f)), _wgslsmith_f_op_f32(f32(-1f) * -948f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(871f, 1000f))))) * _wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1266f)))), _wgslsmith_f_op_f32(ceil(1950f))))));
    var var_1 = 5453i;
    var_1 = func_4(_wgslsmith_clamp_i32(global0.a, _wgslsmith_dot_vec4_i32(min(~vec4<i32>(14126i, -2147483647i, global1.x, global0.a), vec4<i32>(1i, global1.x, -2147483647i, 0i)), -_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 2147483647i, -1i, global1.x), vec4<i32>(-2147483647i, global0.a, global1.x, -2147483647i))), global0.a), Struct_1(global1.x), ~vec2<u32>(u_input.a, firstLeadingBit(u_input.a & u_input.a)), func_1(~(~vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)) & ~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(12386u, u_input.a, 1u, u_input.a)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(global0.a, global1.x), reverseBits((i32(-1i) * -10909i) & _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 18825i, global0.a, -33515i), vec4<i32>(global1.x, global0.a, global1.x, -31632i))), func_4(-global0.a, Struct_1(func_4(2147483647i, Struct_1(-2923i), vec2<u32>(30607u, 4294967295u), Struct_1(global0.a)).a), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(31282u, u_input.a))), Struct_1(global1.x)).a), -(abs(vec3<i32>(-2147483647i, global1.x, -30981i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 98590u, u_input.a), select(vec3<u32>(19855u, u_input.a, u_input.a), vec3<u32>(20517u, 0u, u_input.a), true)) % vec3<u32>(32u))), -firstTrailingBit(func_4(-4012i, func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), vec2<u32>(u_input.a, 38615u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), Struct_1(-1i)).a), global1.x, select(reverseBits(min(select(vec3<u32>(u_input.a, 11002u, 0u), vec3<u32>(u_input.a, u_input.a, 34677u), false), vec3<u32>(u_input.a, u_input.a, 35716u) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)))), ~(~select(vec3<u32>(1u, 67832u, 0u), vec3<u32>(u_input.a, 1u, u_input.a), false)), false));
}

