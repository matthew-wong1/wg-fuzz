struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(1u, 338f, 41075u, vec3<i32>(2147483647i, 23162i, i32(-2147483648)), Struct_1(vec4<u32>(50174u, 3524u, 29869u, 85185u), false, vec4<bool>(true, true, true, true), -1i, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = arg_0.d.x;
    var var_1 = _wgslsmith_div_vec2_i32(global1.d.yy, -vec2<i32>(6501i, _wgslsmith_div_i32(1i, arg_0.e.d >> (u_input.e % 32u))));
    var var_2 = Struct_2(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1151f - arg_1), _wgslsmith_f_op_f32(1430f * global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(394f + -1204f))))), _wgslsmith_add_u32(arg_2 ^ _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, arg_2), ~global1.e.a.x), 1u >> (~_wgslsmith_div_u32(global1.e.a.x, 1u) % 32u)), -arg_0.d, arg_0.e);
    let var_3 = false;
    var var_4 = arg_0.e.d;
    return !vec4<bool>(true, var_3 && any(vec3<bool>(var_2.e.c.x, var_2.e.b, false)), all(select(global1.e.c, vec4<bool>(true, true, true, true), vec4<bool>(var_2.e.e, var_3, false, arg_0.e.e))), false);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = func_2(Struct_2(abs(95774u), _wgslsmith_f_op_f32(464f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b)))), global1.c, vec3<i32>(-1i, i32(-1i) * -72829i, _wgslsmith_div_i32(~global1.d.x, 0i)), Struct_1(global1.e.a, true, global1.e.c, 2789i, !global1.e.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b, global1.b))))))), ~global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, global1.b, 282f, global1.b))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-386f, -210f, 1840f, global1.b)))))));
    global1 = Struct_2((~(u_input.d.x >> (22504u % 32u)) << (58853u % 32u)) >> (0u % 32u), _wgslsmith_f_op_f32(sign(-1450f)), 4294967295u, firstLeadingBit(_wgslsmith_mod_vec3_i32(~abs(global1.d), select(vec3<i32>(-40368i, u_input.c, global1.d.x), vec3<i32>(1i, u_input.c, -2147483647i) << (vec3<u32>(104125u, u_input.b.x, 4294967295u) % vec3<u32>(32u)), true))), Struct_1(~global1.e.a, false, vec4<bool>((u_input.b.x >= 0u) && global1.e.b, global1.c != _wgslsmith_dot_vec4_u32(global1.e.a, vec4<u32>(global1.a, 95983u, 26106u, 1u)), true, _wgslsmith_f_op_f32(sign(518f)) != -320f), -2147483647i, true));
    let var_1 = !var_0;
    global0 = any(vec4<bool>(true, true, all(!vec2<bool>(false, arg_0)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.a.x, global1.c, u_input.d.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, global1.e.a.x, 43360u)), ~21888u, 27053u) != min(~u_input.d.x, 0u)));
    global0 = false;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, global1.b), vec2<f32>(-262f, global1.b), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-239f, -1201f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-916f, global1.b))) + vec2<f32>(global1.b, global1.b)));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = any(!select(vec4<bool>(select(true, global1.e.b, global1.e.e), true, !global1.e.c.x, global1.e.e), select(select(vec4<bool>(false, false, global1.e.e, arg_0.e.e), global1.e.c, global1.e.c.x), !vec4<bool>(false, true, true, arg_0.e.c.x), global1.e.b), func_2(arg_0, _wgslsmith_f_op_f32(floor(global1.b)), min(arg_0.c, 18470u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, -2573f, arg_0.b, -1020f) - vec4<f32>(1501f, arg_0.b, 1000f, arg_0.b)))));
    let var_0 = all(arg_0.e.c);
    var var_1 = arg_0.d.yx;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + arg_0.b) + -458f), _wgslsmith_f_op_f32(abs(389f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0)))));
    let var_3 = Struct_2(0u, _wgslsmith_f_op_f32(-var_2.x), 0u << (~u_input.e % 32u), global1.d, global1.e);
    return ~68310u;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> i32 {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - 712f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f + arg_1.b))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, global1.b)), vec2<f32>(_wgslsmith_f_op_f32(global1.b - -1159f), 591f)))));
    global0 = false;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b, 463f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(933f, global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(443f, var_0.x) * vec2<f32>(global1.b, 228f)), select(select(arg_1.e.c.xz, arg_1.e.c.xy, arg_1.e.c.x), global1.e.c.yz, !global1.e.c.wx)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -782f))))), var_0.x);
    return 2147483647i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> bool {
    global0 = arg_0.b;
    var var_0 = 43385u;
    var var_1 = arg_1;
    var var_2 = func_2(arg_1, _wgslsmith_f_op_f32(193f * _wgslsmith_f_op_f32(f32(-1f) * -205f)), _wgslsmith_sub_u32(~firstLeadingBit(min(arg_1.a, arg_0.a.x)), 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(852f * var_1.b)))), -1000f, arg_1.b, _wgslsmith_f_op_f32(691f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1153f - 1000f) * var_1.b)))).wwz;
    var var_3 = max(select(~1u, _wgslsmith_clamp_u32(var_1.a, arg_0.a.x, 4294967295u), arg_1.b == global1.b) ^ (arg_1.e.a.x & arg_1.c), ~((1u << (arg_0.a.x % 32u)) | _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x))) & ~u_input.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, select(~vec2<u32>(61264u, u_input.d.x), global1.e.a.xw, !global1.e.c.zw)), ~select(111260u, _wgslsmith_mod_u32(global1.a, 29811u), !global1.e.b)) >= u_input.a.x;
    var var_0 = 2147483647i;
    let var_1 = false;
    let var_2 = true;
    var var_3 = global1.e;
    let var_4 = Struct_1(vec4<u32>(~var_3.a.x, var_3.a.x, countOneBits(u_input.a.x), 0u), !var_1, vec4<bool>(false, all(var_3.c.xx) & true, true, true), firstTrailingBit(countOneBits(1i)), func_5(Struct_1(~vec4<u32>(u_input.e, 4294967295u, 21896u, 0u) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, var_3.a.x, var_3.a.x), vec4<u32>(global1.a, u_input.e, 29634u, 1u)), global1.e.b, vec4<bool>(any(vec3<bool>(false, false, false)), !var_2, select(true, var_1, false), global1.e.b), -var_3.d, (905f <= global1.b) && !global1.e.c.x), Struct_2(var_3.a.x, _wgslsmith_f_op_f32(ceil(755f)), ~var_3.a.x, ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, global1.e.d, 43437i), global1.d), Struct_1(global1.e.a, true, vec4<bool>(true, false, var_2, false), -1i, var_3.a.x != 4606u)), func_4(func_1(Struct_2(0u, global1.b, global1.a, global1.d, Struct_1(var_3.a, false, vec4<bool>(false, false, false, true), var_3.d, false)), var_3.a.x), Struct_2(var_3.a.x, 901f, u_input.d.x, global1.d, Struct_1(vec4<u32>(0u, global1.a, 0u, 4250u), false, global1.e.c, global1.d.x, global1.e.e))) & u_input.c));
    global0 = any(select(global1.e.c, vec4<bool>(true, false, func_2(Struct_2(1u, global1.b, 27196u, global1.d, Struct_1(vec4<u32>(global1.a, 0u, var_4.a.x, 15315u), false, var_4.c, 1i, true)), global1.b, 0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 1157f, global1.b, global1.b) - vec4<f32>(global1.b, global1.b, 340f, 1430f))).x, select(func_5(Struct_1(vec4<u32>(var_3.a.x, var_4.a.x, u_input.a.x, 37899u), false, var_3.c, var_4.d, true), Struct_2(0u, -126f, 0u, vec3<i32>(-14536i, -2147483647i, var_4.d), Struct_1(global1.e.a, var_4.b, vec4<bool>(var_1, false, false, var_4.b), 0i, true)), var_3.d), var_3.b, var_1)), true == !all(global1.e.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_4.d, var_4.d), global1.d)), _wgslsmith_mult_i32(global1.e.d >> (119991u % 32u), global1.e.d), -36795i, reverseBits(firstTrailingBit(0i))), abs(vec4<i32>(-58180i, -1i, -var_3.d, min(2147483647i, 2147483647i)))), vec3<i32>(u_input.c, reverseBits(-10883i), 2147483647i) | reverseBits(-countOneBits(vec3<i32>(var_3.d, var_4.d, 1i))), vec2<u32>(1u, var_3.a.x));
}

