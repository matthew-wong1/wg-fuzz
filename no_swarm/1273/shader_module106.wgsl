struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = Struct_1(reverseBits(abs(1i)), _wgslsmith_mult_vec4_u32(countOneBits(~_wgslsmith_sub_vec4_u32(global0.b, global0.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 1u ^ global0.b.x, ~71805u, ~arg_0.b.x), vec4<u32>(~1u, ~arg_0.b.x, 1u, abs(58874u)))), max(firstTrailingBit(arg_0.c), min(arg_0.c, arg_0.c)));
    var var_1 = arg_3;
    var var_2 = var_0;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_3, 1000f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_3, arg_2, arg_2))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_3, 1318f), vec3<f32>(arg_3, -358f, 1305f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_3, -461f) + vec3<f32>(-146f, arg_2, -476f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), all(vec2<bool>(true, true))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(-820f, arg_2, arg_3)), vec3<f32>(arg_3, -1455f, -933f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-883f, arg_2, arg_3)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, -1742f, arg_2))))), vec3<f32>(603f, arg_3, -1258f)))));
    var_2 = Struct_1(1i, global0.b, global0.c);
    return true;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(~2147483647i, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~global0.b.x, 1u), 1u), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 4755u, arg_0.a), vec3<u32>(34856u, global0.b.x, global0.b.x)), 10965u, 1u), min(arg_0.a, global0.b.x), ~_wgslsmith_mod_u32(4294967295u << (arg_0.b.b.x % 32u), 4294967295u)), max(-arg_0.b.c ^ ~countOneBits(vec3<i32>(global0.c.x, -2147483647i, arg_0.c)), global0.c));
    let var_1 = _wgslsmith_mult_vec3_i32(select(global0.c >> (select(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, global0.b.x, arg_0.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))) % vec3<u32>(32u)), vec3<i32>(-47663i, -(i32(-1i) * -20369i), u_input.a), !any(vec4<bool>(false, true, false, false)) || true), select(arg_0.b.c ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-6586i, -37118i, -7985i), ~vec3<i32>(141i, arg_0.b.a, var_0.a)), -arg_0.b.c, func_3(Struct_1(-u_input.a, ~var_0.b, var_0.c | vec3<i32>(var_0.c.x, var_0.a, 11038i)), -reverseBits(var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f + 652f)), _wgslsmith_f_op_f32(765f - 727f))));
    var var_2 = arg_0;
    global0 = Struct_1(2147483647i, firstLeadingBit(vec4<u32>(18972u, ~(~var_0.b.x), min(32508u, arg_0.a), ~1u)), var_2.b.c);
    var var_3 = Struct_1(0i, _wgslsmith_mult_vec4_u32(var_2.b.b, vec4<u32>(~(~4294967295u), ~1u, countOneBits(arg_0.b.b.x), 16417u)), vec3<i32>(abs(_wgslsmith_div_i32(6145i, max(0i, var_1.x))), u_input.a, 1i & -arg_0.c));
    return arg_0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i & arg_0, 1i & arg_0) >> ((4294967295u & global0.b.x) % 32u), ~firstLeadingBit(u_input.a ^ 2677i)), vec4<u32>(~1u, 4294967295u & ~arg_1.b.b.x, reverseBits(6650u), ~(~global0.b.x ^ 4294967295u)), min(_wgslsmith_mod_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(global0.a, -2147483647i, -1i), arg_1.b.c), firstLeadingBit(_wgslsmith_clamp_vec3_i32(arg_1.b.c, global0.c, arg_1.b.c))), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_0, 36972i), global0.c, arg_1.b.c)) | countOneBits(max(vec3<i32>(0i, 2147483647i, u_input.a), global0.c))));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    global0 = func_4(abs(~0i), Struct_2(~(~1893u) & global0.b.x, func_2(Struct_2(_wgslsmith_div_u32(global0.b.x, 1u), Struct_1(35643i, global0.b, global0.c), _wgslsmith_sub_i32(global0.c.x, u_input.a))), 2147483647i), vec2<bool>(true, true), true);
    var var_0 = _wgslsmith_f_op_f32(sign(arg_1.x));
    var_0 = arg_2;
    var_0 = arg_2;
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0 & global0.a, -53406i | u_input.a), select(arg_0, -584i, true)), global0.c.yy >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~vec4<u32>(abs(global0.b.x), global0.b.x, 4294967295u, global0.b.x), max(~firstLeadingBit(global0.c), select(vec3<i32>(arg_0, 28073i, 1i), global0.c, false) ^ (vec3<i32>(-5876i, global0.a, -1i) & global0.c)) << (global0.b.wyw % vec3<u32>(32u)));
    return func_2(Struct_2(global0.b.x, func_2(Struct_2(~global0.b.x, func_2(Struct_2(global0.b.x, Struct_1(-638i, vec4<u32>(global0.b.x, 18479u, 1u, 1u), vec3<i32>(2147483647i, -20622i, u_input.a)), 29174i)), -global0.c.x)), _wgslsmith_add_i32(select(u_input.a | global0.a, -69004i, true), min(arg_0, -38071i) & -global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~u_input.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-621f, 778f, true)), _wgslsmith_f_op_f32(sign(1343f))), -114f), 347f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -902f), -669f))), 1097f);
    global0 = Struct_1(~_wgslsmith_add_i32(7934i, global0.c.x), vec4<u32>(1u, ~(_wgslsmith_add_u32(global0.b.x, global0.b.x) & _wgslsmith_mult_u32(global0.b.x, 0u)), firstLeadingBit(_wgslsmith_mult_u32(~global0.b.x, 4294967295u)), ~(~4294967295u >> (_wgslsmith_sub_u32(22335u, global0.b.x) % 32u))), (~global0.c & global0.c) | _wgslsmith_mod_vec3_i32(global0.c, global0.c));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(global0.c, reverseBits(countOneBits(reverseBits(vec3<i32>(2147483647i, u_input.a, u_input.a))))), ~max(~abs(vec4<u32>(49786u, 54099u, 2026u, 0u)), ~vec4<u32>(global0.b.x, 34904u, 1u, global0.b.x)), max(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, u_input.a), ~u_input.a, 28456i | global0.c.x), ~min(vec3<i32>(3392i, 0i, global0.a), vec3<i32>(u_input.a, global0.a, u_input.a))), vec3<i32>(-_wgslsmith_sub_i32(global0.c.x, global0.c.x), ~global0.c.x, _wgslsmith_div_i32(func_4(27642i, Struct_2(1u, Struct_1(global0.c.x, vec4<u32>(global0.b.x, 31062u, global0.b.x, 1u), vec3<i32>(global0.c.x, global0.c.x, u_input.a)), global0.c.x), vec2<bool>(true, false), false).c.x, -1i))));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f + 1225f)))))) <= _wgslsmith_f_op_f32(trunc(1f));
    var var_1 = Struct_2(4294967295u, Struct_1(_wgslsmith_dot_vec2_i32(global0.c.zz, global0.c.yy), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(27540u, global0.b.x, 84287u, 45511u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.b.x, 142072u, 0u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), global0.b)), ~(~global0.b)), global0.c), ~global0.a);
    var_1 = Struct_2(countOneBits(~(var_1.a << (16595u % 32u))) << (~4294967295u % 32u), Struct_1(-max(-32855i, _wgslsmith_sub_i32(u_input.a, -2147483647i)), ~(~global0.b), vec3<i32>(-var_1.b.c.x, global0.a, var_1.c)), global0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.a, -1i), _wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.b, func_1(-var_1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(309f * -249f), _wgslsmith_f_op_f32(step(150f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -739f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, -230f, 491f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(217f, 1146f, 700f)))), !all(vec4<bool>(false, true, true, true)))), 1447f).b);
}

