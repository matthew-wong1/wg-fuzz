struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 7217i);

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = arg_0.c;
    var var_0 = vec2<bool>(true, _wgslsmith_add_i32(-arg_0.b ^ ~global1.a, -40510i) != ~13194i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f + -1372f) * -901f)));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(-690f, -2147483647i, Struct_1(495i, ~4294967295u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-607f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(706f, 536f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1357f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(-405f, -34729i, Struct_1(-27719i, global1.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(738f, global1.a, Struct_1(-2147483647i, 35732u)))) - _wgslsmith_f_op_f32(floor(-321f))))));
    let var_1 = Struct_2(-271f, -1i, Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, u_input.c, 2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.b, global0.x, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 12075i, global1.a, 1i), vec4<i32>(-1i, global0.x, 2147483647i, -39558i))) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, global1.b, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(71967u, global1.b, global1.b, global1.b), vec4<u32>(u_input.a, 1u, 10785u, u_input.a))) % 32u), 1u));
    var var_2 = !(_wgslsmith_f_op_f32(f32(-1f) * -614f) < _wgslsmith_f_op_f32(-var_0.x)) != any(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false)));
    let var_3 = any(vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true)), true));
    global1 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, -71538i), -(~var_1.c.a)), var_1.c.b);
    return !(!vec4<bool>(any(!vec4<bool>(true, var_3, true, true)), true, false, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = !func_2().x;
    var var_1 = 1i;
    global1 = arg_3;
    let var_2 = Struct_1(~(-u_input.c << ((~arg_1.x | 1u) % 32u)), 38854u);
    global0 = countOneBits(vec3<i32>(-5789i, abs(-var_2.a), -3520i));
    return Struct_2(-192f, -22526i << (arg_0.x % 32u), Struct_1(u_input.c, _wgslsmith_dot_vec2_u32(min(~vec2<u32>(106764u, 1u), vec2<u32>(global1.b, 100020u)), firstTrailingBit(arg_1))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> vec3<u32> {
    global0 = vec3<i32>(_wgslsmith_mod_i32(37497i, u_input.b), -30921i, u_input.b);
    var var_0 = func_4(_wgslsmith_add_vec3_u32(abs(~arg_1.xyx), ~vec3<u32>(_wgslsmith_mod_u32(arg_0, arg_0), arg_1.x ^ u_input.a, 1u)), firstTrailingBit(arg_1.xx & arg_1.yy), func_2(), Struct_1(global1.a, 39490u));
    var var_1 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-global1.a, -17543i), ~global0.zy) >> (vec2<u32>(arg_0 >> (1u % 32u), 14932u) % vec2<u32>(32u));
    var var_2 = Struct_2(-935f, u_input.c, var_0.c);
    var var_3 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_0, 62774u), arg_1.wxz), _wgslsmith_mult_u32(var_2.c.b, 0u)), var_2.c.b & ~16977u, ~arg_1.x ^ ~var_2.c.b), arg_1.wzz));
    return arg_1.xzw;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(global1.b, 38843u), _wgslsmith_div_vec2_u32(arg_2.zz, ~_wgslsmith_sub_vec2_u32(arg_2.zx, firstLeadingBit(arg_2.yx))));
    var_0 = ~(~arg_2.xx);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(767f))))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) - 634f), _wgslsmith_f_op_f32(floor(-1130f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(766f)) * 716f))))));
    var var_2 = func_4(func_1(arg_1.x, firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 13534u, arg_2.x, 4294967295u), arg_1, arg_1)) & _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(17232u, 848u, global1.b, 0u), arg_1), max(vec4<u32>(arg_1.x, 1u, var_0.x, 4294967295u), arg_1)), arg_1.x), ~max(~firstLeadingBit(vec2<u32>(38097u, global1.b)), vec2<u32>(reverseBits(arg_2.x), _wgslsmith_clamp_u32(global1.b, u_input.a, 1u))), func_2(), Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, 1i), _wgslsmith_mult_i32(-1i, arg_0) | arg_0), firstLeadingBit(66379u))).b;
    var var_3 = select(19312u, _wgslsmith_mod_u32(~(~4294967295u) >> (_wgslsmith_mult_u32(4294967295u, var_0.x) % 32u), reverseBits(~(~0u))), any(vec3<bool>(true, false, true)));
    return func_4(~vec3<u32>(reverseBits(func_1(arg_2.x, arg_1, var_0.x).x), var_0.x, arg_1.x), ~vec2<u32>(_wgslsmith_mult_u32(0u, arg_2.x), 0u), func_2(), Struct_1(-arg_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, var_0.x, 38214u), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.x, arg_2.x, u_input.a), arg_2)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(min(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), global0.yz), global1.a), ~_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, 27716u, 34200u, u_input.a), vec4<u32>(u_input.a, 19019u, 1u, global1.b)), ~(~vec4<u32>(1u, u_input.a, global1.b, global1.b))), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(21779u, 1u, 8426u), func_1(1u, vec4<u32>(31811u, 47881u, 0u, u_input.a), global1.b))));
    let var_0 = Struct_1(u_input.b, select(select(_wgslsmith_mod_u32(~1u, countOneBits(u_input.a)), countOneBits(36766u), true), u_input.a, !(!all(vec4<bool>(false, true, false, false)))));
    global0 = vec3<i32>(2147483647i, global1.a, global1.a | var_0.a);
    global0 = ~(-vec3<i32>(_wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(global1.a, 20227i)) ^ (i32(-1i) * -25416i), u_input.c, -2147483647i));
    let var_1 = -2147483647i < ~countOneBits(select(_wgslsmith_mult_i32(17181i, -1i), global0.x, true));
    let var_2 = func_2();
    let var_3 = ~vec2<u32>(var_0.b, abs(~global1.b));
    let var_4 = abs(global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(487f - 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec3<u32>(0u, global1.b, 73439u), vec2<u32>(1u, 1u), var_2, func_4(vec3<u32>(108790u, 38853u, u_input.a), vec2<u32>(var_4, 10606u), vec4<bool>(var_2.x, var_2.x, false, true), var_0).c).a)), -vec4<i32>(reverseBits(var_0.a), 2147483647i, abs(~global0.x), ~1i & _wgslsmith_add_i32(var_0.a, u_input.c)));
}

