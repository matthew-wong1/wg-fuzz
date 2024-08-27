struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, 4294967295u, -1000f, vec4<i32>(18879i, -1i, -12859i, i32(-2147483648))), Struct_1(false, 64037u, 1000f, vec4<i32>(-7232i, -1i, 1i, -56012i)), Struct_1(false, 4294967295u, -1245f, vec4<i32>(i32(-2147483648), 52503i, -1i, -15498i)), Struct_1(true, 29888u, -352f, vec4<i32>(i32(-2147483648), -1i, 26856i, 28783i)), Struct_1(true, 1u, -206f, vec4<i32>(-1i, -1i, -33750i, 2822i)), Struct_1(false, 1u, 1743f, vec4<i32>(23343i, i32(-2147483648), i32(-2147483648), 0i)), Struct_1(false, 28707u, -354f, vec4<i32>(2147483647i, -23162i, 1i, i32(-2147483648))), Struct_1(true, 108700u, 657f, vec4<i32>(2147483647i, -1i, 58389i, 2147483647i)), Struct_1(true, 1u, 317f, vec4<i32>(-14873i, -244i, 0i, i32(-2147483648))), Struct_1(false, 4836u, -943f, vec4<i32>(25778i, 0i, -21189i, 62584i)), Struct_1(true, 36860u, -1727f, vec4<i32>(-60039i, -65277i, 2147483647i, 6331i)), Struct_1(true, 0u, 1375f, vec4<i32>(12789i, -5562i, 831i, 1i)), Struct_1(true, 21164u, -1057f, vec4<i32>(-1i, i32(-2147483648), -19784i, 0i)), Struct_1(true, 4294967295u, 1370f, vec4<i32>(5059i, i32(-2147483648), -1i, 60533i)), Struct_1(false, 39243u, -1706f, vec4<i32>(0i, -12040i, 0i, -16593i)), Struct_1(false, 1u, 638f, vec4<i32>(21678i, -1i, -16739i, 13284i)), Struct_1(false, 4294967295u, -589f, vec4<i32>(1i, -7334i, -52402i, -1i)), Struct_1(false, 83412u, 718f, vec4<i32>(i32(-2147483648), 40845i, 35666i, i32(-2147483648))), Struct_1(false, 1u, 749f, vec4<i32>(-57035i, 16735i, 46016i, -1i)), Struct_1(true, 0u, 170f, vec4<i32>(i32(-2147483648), -1i, 0i, -1i)), Struct_1(false, 0u, 1000f, vec4<i32>(-60581i, -1i, 19055i, 29215i)), Struct_1(false, 1u, -2136f, vec4<i32>(7319i, i32(-2147483648), 1i, -10940i)), Struct_1(false, 0u, 780f, vec4<i32>(0i, 1i, -1i, 1i)), Struct_1(true, 4294967295u, -745f, vec4<i32>(-384i, i32(-2147483648), 0i, i32(-2147483648))), Struct_1(false, 4294967295u, -928f, vec4<i32>(-1i, 42430i, 1i, 0i)), Struct_1(true, 4294967295u, 669f, vec4<i32>(i32(-2147483648), 50345i, 0i, -28849i)));

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(42467u >> (arg_1.b % 32u), _wgslsmith_clamp_u32(~(~u_input.a), _wgslsmith_add_u32(~arg_3, abs(arg_3)), ~firstLeadingBit(arg_1.b))), arg_0.b, ~abs(arg_1.b));
    let var_1 = vec4<i32>(-1i) * -abs(arg_1.d >> (~vec4<u32>(arg_1.b, arg_1.b, 4294967295u, u_input.a) % vec4<u32>(32u)));
    let var_2 = var_0.yz;
    global0 = array<Struct_1, 26>();
    global1 = array<vec4<bool>, 10>();
    return var_2.x;
}

fn func_2(arg_0: f32) -> vec2<f32> {
    let var_0 = !vec3<bool>(false, true, (func_3(global0[_wgslsmith_index_u32(70881u, 26u)], Struct_1(false, 30297u, -328f, vec4<i32>(-40755i, -1i, -1i, -43118i)), arg_0, u_input.a) << (abs(u_input.a) % 32u)) < u_input.a);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), -630f);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<vec4<bool>, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_0)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, arg_2.c))))))));
    global0 = array<Struct_1, 26>();
    let var_1 = vec4<bool>(arg_2.a, !(true && arg_2.a) | all(vec3<bool>(true, true, true)), !((_wgslsmith_sub_i32(arg_2.d.x, -48874i) != (arg_2.d.x ^ arg_2.d.x)) || arg_1.x), arg_1.x);
    var var_2 = ~(~select(~reverseBits(vec2<u32>(0u, 60221u)), ~vec2<u32>(u_input.a, u_input.a), var_1.wy));
    return select(vec3<bool>(((var_2.x >> (var_2.x % 32u)) < 0u) != (0u <= u_input.a), select(!any(vec4<bool>(var_1.x, var_1.x, arg_1.x, arg_1.x)), all(vec3<bool>(arg_1.x, arg_2.a, var_1.x)), false), !(var_0.x > 239f)), !(!arg_1.xzx), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(~arg_1.a, _wgslsmith_dot_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 33530u, u_input.a, arg_1.c.b), vec4<u32>(1u, 1u, arg_1.b, arg_1.c.b)) >> (vec4<u32>(15143u, u_input.a, arg_1.b, u_input.a) % vec4<u32>(32u))) & select(_wgslsmith_div_vec4_u32(vec4<u32>(124395u, arg_1.c.b, 1u, 106902u), vec4<u32>(arg_1.b, u_input.a, arg_1.c.b, arg_1.c.b)), ~vec4<u32>(arg_1.c.b, 1u, u_input.a, arg_1.b), vec4<bool>(arg_1.c.a, true, arg_0.x, arg_1.c.a)), ~((vec4<u32>(1u, 1u, u_input.a, u_input.a) & vec4<u32>(72766u, arg_1.b, arg_1.c.b, u_input.a)) | vec4<u32>(arg_1.b, 3172u, 25247u, arg_1.c.b))), global0[_wgslsmith_index_u32(select(max(_wgslsmith_mult_u32(~arg_1.c.b, u_input.a), min(~80459u, u_input.a << (arg_1.b % 32u))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(abs(4294967295u), u_input.a), 80084u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.b, 9031u, 51195u, 0u), ~vec4<u32>(arg_1.b, 23303u, arg_1.b, 4294967295u))), any(vec3<bool>(arg_1.a.x > 16864i, true, arg_1.c.a && true))), 26u)]);
    global1 = array<vec4<bool>, 10>();
    let var_1 = _wgslsmith_clamp_i32(var_0.a.x, -2147483647i, 24885i);
    let var_2 = Struct_2(~countOneBits(var_0.a), 46700u, var_0.c);
    global1 = array<vec4<bool>, 10>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-197f, global1[_wgslsmith_index_u32(77663u, 10u)], global0[_wgslsmith_index_u32(1665u, 26u)]), Struct_2(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, abs(1u), func_3(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], -943f, u_input.a)), ~vec4<u32>(5142u, 28385u, u_input.a, u_input.a) & (vec4<u32>(42756u, 21796u, 10556u, 0u) | vec4<u32>(u_input.a, 1u, u_input.a, 68350u))), Struct_1(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(~u_input.a, 1u, true), 1f, vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(19835i, _wgslsmith_add_i32(0i, 2147483647i), -var_0.a.x), ~_wgslsmith_clamp_i32(10453i, 2147483647i << (0u % 32u), -2147483647i)));
}

