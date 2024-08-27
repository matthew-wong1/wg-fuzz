struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)));

var<private> global1: vec4<i32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> i32 {
    global1 = vec4<i32>(-7275i, _wgslsmith_sub_i32(arg_0.x, _wgslsmith_mult_i32(global1.x, -2147483647i)), global1.x, _wgslsmith_dot_vec2_i32(arg_0, max(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), select(vec2<i32>(5025i, u_input.a.x), vec2<i32>(global1.x, 2147483647i), vec2<bool>(false, true))), u_input.a.zx)));
    global0 = array<Struct_1, 20>();
    var var_0 = arg_0;
    global1 = vec4<i32>(2147483647i, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-(~u_input.a.x), _wgslsmith_mult_i32(~(-1i), 16417i), -1i, 23437i), ~(~abs(vec4<i32>(var_0.x, global1.x, -1i, u_input.b)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2686i, -12441i), global1.xx) << (71061u % 32u), arg_0.x) << (1u % 32u));
    let var_1 = ~(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(11269u, 0u), vec2<u32>(4294967295u, 61290u), vec2<u32>(48079u, 0u)) & ~vec2<u32>(78989u, 8217u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(11466u, firstLeadingBit(44342u)), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    return _wgslsmith_dot_vec4_i32(abs(~(vec4<i32>(-22137i, var_0.x, -25352i, 2147483647i) & vec4<i32>(1i, var_0.x, global1.x, var_0.x))), ~(-(vec4<i32>(u_input.a.x, 1i, arg_0.x, var_0.x) | vec4<i32>(-1i, var_0.x, global1.x, 802i)))) | 2147483647i;
}

fn func_2(arg_0: i32) -> Struct_2 {
    global1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, global1.x, global1.x, 26915i)), select(min(vec4<i32>(global1.x, arg_0, -63945i, 2147483647i), vec4<i32>(2147483647i, -2147483647i, arg_0, 63073i)), -vec4<i32>(21235i, global1.x, 38839i, u_input.c), vec4<bool>(false, false, false, false))), vec4<i32>(2147483647i, -32862i, func_3(vec2<i32>(_wgslsmith_mult_i32(global1.x, arg_0), global1.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(832f)), _wgslsmith_f_op_f32(218f - 1810f), _wgslsmith_f_op_f32(trunc(-484f)), _wgslsmith_f_op_f32(f32(-1f) * -251f))), 0i));
    var var_0 = all(select(vec4<bool>(true, false, false, any(vec2<bool>(false, false))), !vec4<bool>(true, false, true, select(true, true, false)), vec4<bool>(false, !any(vec2<bool>(true, true)), select(true, true, all(vec4<bool>(false, false, false, false))), true)));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 1u) ^ _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, 1u, 15305u, 58920u)), vec4<u32>(3769u, ~14933u, _wgslsmith_dot_vec4_u32(vec4<u32>(33718u, 42911u, 4294967295u, 11433u), vec4<u32>(4294967295u, 19991u, 1575u, 0u)), abs(15815u))), 20u)]);
    var var_2 = u_input.a;
    var_2 = firstLeadingBit(u_input.a);
    return Struct_2(var_1.a);
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(global1.x | -2147483647i, u_input.b), -26851i);
    var var_1 = vec2<bool>(!(arg_0.x >= ~(~3435u)), -_wgslsmith_add_i32(~global1.x, u_input.b) > global1.x);
    let var_2 = -(~_wgslsmith_sub_i32(_wgslsmith_div_i32(-40944i, -49714i), 53183i) >> (arg_0.x % 32u));
    let var_3 = 1983i;
    var var_4 = func_2(2147483647i);
    return ~24573u;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_1(!vec3<bool>(arg_2.a.a.x, arg_1, any(func_2(global1.x).a.a)));
    let var_1 = any(!vec4<bool>(all(func_2(-65017i).a.a), arg_1, arg_2.a.a.x | select(true, arg_1, arg_2.a.a.x), var_0.a.x));
    var var_2 = -456f;
    var var_3 = func_2(~_wgslsmith_div_i32(39465i, ~2147483647i)).a;
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) - 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.a.x))))))), -1265f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-vec4<i32>(16365i, 1i, _wgslsmith_clamp_i32(16953i & u_input.c, u_input.c, abs(u_input.a.x)), -1i));
    global0 = array<Struct_1, 20>();
    global1 = vec4<i32>(global1.x, -5205i, 2147483647i, u_input.c);
    var var_0 = u_input.a.x << (~(~1u) % 32u);
    let var_1 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, 1425f)), _wgslsmith_f_op_f32(-906f + -826f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-613f, -126f)), true))), true, Struct_2(Struct_1(vec3<bool>(true, true, all(vec2<bool>(true, false))))), select(vec4<u32>(_wgslsmith_div_u32(~14782u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17038u, 17736u, 4294967295u), vec4<u32>(47897u, 4294967295u, 1u, 0u)), _wgslsmith_div_u32(select(28773u, 0u, true), _wgslsmith_add_u32(12191u, 1u)), ~func_1(vec4<u32>(109542u, 1u, 30099u, 4294967295u))), ~vec4<u32>(~0u, 4294967295u, ~4294967295u, 4294967295u), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))));
    let var_2 = func_2(global1.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(74563u >> (firstLeadingBit(~1u) % 32u)), abs(4294967295u));
}

