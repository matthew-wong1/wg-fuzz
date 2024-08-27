struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
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

var<private> global1: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = any(vec4<bool>(arg_0, all(vec4<bool>(select(arg_1.d, false, arg_1.d), true, true, true)), true, arg_2 >= 50514u));
    var var_0 = Struct_1(arg_1.a, select(global0.b ^ min(~vec2<i32>(-2147483647i, 1i), global0.a), ~(~vec2<i32>(0i, u_input.c.x) ^ u_input.c.xy), any(!select(vec3<bool>(false, arg_1.d, global0.d), vec3<bool>(false, arg_1.d, true), global0.d))), _wgslsmith_mod_vec2_u32(global0.c, ~(vec2<u32>(1u, global0.c.x) >> (vec2<u32>(13483u, 4294967295u) % vec2<u32>(32u)))), all(select(!vec2<bool>(arg_1.d, arg_0), select(vec2<bool>(global0.d, false), vec2<bool>(arg_0, global0.d), arg_0), select(vec2<bool>(arg_0, arg_1.d), vec2<bool>(true, arg_1.d), false))) & false, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x * -1000f) * 1000f), false)), 1611f, _wgslsmith_f_op_f32(global0.e.x * arg_1.e.x)));
    var var_1 = Struct_1(-global0.a, vec2<i32>(-(~(u_input.d & var_0.a.x)), 0i), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, u_input.a, var_0.c.x, global0.c.x) ^ vec4<u32>(u_input.e, 72415u, global0.c.x, 12630u), _wgslsmith_div_vec4_u32(vec4<u32>(33761u, 75157u, 21985u, u_input.a), vec4<u32>(1u, 61412u, arg_2, 17915u))), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.x, 0u) & vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(global0.c.x, 65035u, global0.c.x)))), var_0.d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e + vec3<f32>(global0.e.x, var_0.e.x, 370f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 233f, 701f))) - _wgslsmith_f_op_vec3_f32(-var_0.e)), vec3<f32>(_wgslsmith_f_op_f32(step(-112f, 1190f)), _wgslsmith_div_f32(-215f, _wgslsmith_div_f32(1137f, -1261f)), arg_1.e.x))));
    let var_2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x * 2055f)));
    global1 = arg_2.d;
    global1 = true & (true & global0.d);
    global0 = func_2(global0.d, arg_2, 1u);
    global0 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.c.x, global0.a.x)), -vec2<i32>(1i, arg_2.a.x))) >> (vec2<u32>(24520u, u_input.e) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.b, 6847i) >> (~arg_3.c % vec2<u32>(32u)), vec2<i32>(-12693i, 1i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), arg_2.c) % vec2<u32>(32u))), vec2<i32>(u_input.d, ~(~arg_2.b.x))), arg_0.xx, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.e, vec3<f32>(arg_3.e.x, -1153f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2036f, -802f, 1388f))))));
    return 840f;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    global0 = Struct_1(vec2<i32>(4079i, abs(u_input.b)), _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -18578i), vec2<i32>(3909i, u_input.d)), select(select(u_input.c.xy, u_input.c.xx, true), global0.a, vec2<bool>(true, global0.d))) | global0.a, ~vec2<u32>(countOneBits(_wgslsmith_mod_u32(global0.c.x, 68614u)), countOneBits(func_2(true, Struct_1(global0.a, vec2<i32>(global0.a.x, global0.a.x), vec2<u32>(1u, arg_0.x), global0.d, global0.e), 4294967295u).c.x)), true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-923f, _wgslsmith_f_op_f32(f32(-1f) * -461f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.e.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * arg_2)), -466f)), _wgslsmith_f_op_f32(func_1(~_wgslsmith_mod_vec4_u32(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(sign(global0.e)), Struct_1(global0.a, vec2<i32>(global0.a.x, 2147483647i), ~vec2<u32>(global0.c.x, 4294967295u), select(true, false, global0.d), vec3<f32>(-306f, global0.e.x, global0.e.x)), func_2(any(vec3<bool>(global0.d, global0.d, arg_1.x)), Struct_1(vec2<i32>(-1i, -44688i), vec2<i32>(32089i, 48974i), global0.c, global0.d, global0.e), 4294967295u & u_input.a)))));
    global1 = !(!all(select(select(vec4<bool>(false, false, true, global0.d), vec4<bool>(false, arg_1.x, true, global0.d), vec4<bool>(true, false, false, false)), !vec4<bool>(arg_1.x, false, global0.d, global0.d), global0.d)));
    let var_0 = func_2(true, func_2(false, func_2(all(select(vec4<bool>(false, global0.d, false, true), vec4<bool>(false, arg_1.x, true, true), vec4<bool>(false, global0.d, false, arg_1.x))), Struct_1(_wgslsmith_sub_vec2_i32(u_input.c.wx, u_input.c.xy), -global0.a, _wgslsmith_mult_vec2_u32(vec2<u32>(5838u, u_input.a), vec2<u32>(u_input.a, arg_0.x)), !arg_1.x, vec3<f32>(arg_2, global0.e.x, -927f)), 0u), global0.c.x), _wgslsmith_dot_vec3_u32((countOneBits(vec3<u32>(arg_0.x, arg_0.x, 4294967295u)) << (select(vec3<u32>(84322u, arg_0.x, arg_0.x), vec3<u32>(global0.c.x, global0.c.x, 1u), vec3<bool>(false, global0.d, false)) % vec3<u32>(32u))) << (countOneBits(abs(arg_0.wyw)) % vec3<u32>(32u)), ~vec3<u32>(~u_input.e, ~global0.c.x, _wgslsmith_div_u32(global0.c.x, global0.c.x))));
    let var_1 = var_0.e;
    let var_2 = -44220i;
    return _wgslsmith_f_op_f32(f32(-1f) * -880f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.e.x, global0.e.x)), global0.e.x) * global0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(global0.e.x + -1083f));
    global0 = Struct_1(vec2<i32>(-1i) * -global0.b, ~u_input.c.zw, firstTrailingBit(~(~vec2<u32>(u_input.e, global0.c.x))), global0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -163f), _wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_f_op_f32(-272f + 1003f)))), vec3<f32>(_wgslsmith_f_op_f32(func_1(~vec4<u32>(4294967295u, 49705u, 4294967295u, 0u), global0.e, Struct_1(vec2<i32>(9521i, u_input.b), global0.b, global0.c, true, vec3<f32>(global0.e.x, var_0.x, var_0.x)), Struct_1(vec2<i32>(0i, u_input.c.x), vec2<i32>(6841i, -16323i), global0.c, true, vec3<f32>(-286f, global0.e.x, -1577f)))), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1237f))))));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(23087i, global0.b.x, 0i, -25326i)), vec4<i32>(u_input.d, u_input.b, u_input.c.x, 2147483647i)), global0.a.x), i32(-1i) * -1i, _wgslsmith_add_i32(~1i, global0.b.x), -2147483647i), ~u_input.c);
    var var_3 = false;
    var_1 = -874f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)))), _wgslsmith_f_op_f32(691f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<u32>(global0.c.x, 27415u, global0.c.x, global0.c.x), !vec3<bool>(global0.d, true, false), _wgslsmith_f_op_f32(-var_0.x))))), ~vec3<i32>(1i, ~func_2(false, Struct_1(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, var_2.x), global0.c, false, vec3<f32>(var_0.x, global0.e.x, -3083f)), 18636u).b.x, _wgslsmith_div_i32(select(u_input.d, global0.a.x, global0.d), -global0.a.x)), u_input.b, vec3<u32>(~_wgslsmith_dot_vec2_u32(~global0.c, vec2<u32>(u_input.e, global0.c.x)), ~1u, (_wgslsmith_dot_vec3_u32(vec3<u32>(42168u, global0.c.x, 39221u), vec3<u32>(1886u, u_input.e, u_input.a)) << (0u % 32u)) >> (global0.c.x % 32u)));
}

