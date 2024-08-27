struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(-41641i, -33680i, -6243i), 1000f, Struct_1(vec2<i32>(0i, -5040i), 0u, vec2<u32>(1u, 1u), vec2<f32>(-721f, 161f), vec2<bool>(false, false)), false, Struct_1(vec2<i32>(-5029i, 2147483647i), 40984u, vec2<u32>(4294967295u, 1u), vec2<f32>(455f, -1339f), vec2<bool>(false, false)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = Struct_2(reverseBits(min(select(global0.a, global0.a, false), ~vec3<i32>(u_input.a, u_input.c, -1i)) | (vec3<i32>(-1i) * -vec3<i32>(global0.e.a.x, global0.a.x, u_input.a))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), global0.e, (global0.e.b <= global0.c.c.x) || !global0.e.e.x, global0.e);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-317f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.c.d.x))))))), global0.e, global0.d, Struct_1(global0.c.a, global0.c.c.x, ~(~_wgslsmith_mult_vec2_u32(u_input.d.wx, global0.c.c)), global0.c.d, !select(select(global0.c.e, global0.c.e, global0.e.e.x), !global0.c.e, !global0.e.e.x)));
    global0 = Struct_2(global0.a, 1000f, Struct_1(firstTrailingBit(~countOneBits(vec2<i32>(27242i, -2028i))), 12104u, max(global0.e.c, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.zz)) << (((u_input.d.zy >> (vec2<u32>(global0.c.c.x, 0u) % vec2<u32>(32u))) ^ (global0.e.c | u_input.d.xy)) % vec2<u32>(32u)), global0.c.d, vec2<bool>(any(vec3<bool>(true, true, global0.c.e.x)) | !global0.e.e.x, true)), true, global0.e);
    var var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(global0.c.a.x, global0.e.a.x, u_input.c), firstLeadingBit(abs(reverseBits(-u_input.c))));
    var var_1 = Struct_1(-_wgslsmith_sub_vec2_i32(~(-vec2<i32>(-1i, 16689i)), global0.a.yx), _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(global0.e.c.x, u_input.b.x, 1u)))), u_input.b), global0.e.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(global0.b + global0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -1563f)), global0.e.d.x), !vec2<bool>(any(vec4<bool>(global0.e.e.x, global0.e.e.x, true, false)) && all(vec3<bool>(global0.d, true, global0.e.e.x)), any(select(vec3<bool>(global0.c.e.x, true, true), vec3<bool>(global0.c.e.x, global0.e.e.x, false), vec3<bool>(global0.c.e.x, false, global0.e.e.x)))));
    return -107f;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    var var_0 = ~(-(~arg_0.x));
    var_0 = -2147483647i;
    let var_1 = 1u;
    var var_2 = global0.e.c.x;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.e.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), !(true || all(vec4<bool>(true, false, true, false)))))));
    return any(!global0.e.e);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    return global0.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = -(~(~(~(-2147483647i))));
    let var_1 = func_4(!(!vec4<bool>(false, true, true || arg_2, func_2(global0.a, 8501u))), arg_1, reverseBits(0u));
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = func_1(Struct_2(vec3<i32>(-global0.c.a.x, -reverseBits(-2147483647i), 24776i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.b - arg_3.e.d.x), _wgslsmith_f_op_f32(func_3()))), 257f, ~global0.c.a.x <= arg_3.e.a.x)), func_4(!select(vec4<bool>(arg_2.e.e.x, global0.d, arg_3.c.e.x, global0.e.e.x), vec4<bool>(true, false, global0.e.e.x, arg_3.c.e.x), false), ~vec3<u32>(global0.c.b, 58265u, 0u), global0.c.c.x), true, func_1(func_1(func_1(arg_3, vec3<u32>(0u, 3868u, arg_2.e.b), false), u_input.b, select(true, global0.c.e.x, arg_2.c.e.x)), u_input.d.xwx, arg_2.d).c), vec3<u32>(56595u, ~(~(~0u)), 0u), !arg_2.c.e.x);
    let var_0 = arg_3.c.c.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, !(380u != ~(~u_input.b.x)));
    var_0 = vec2<bool>(!(!(global0.e.c.x < global0.e.b)), var_0.x);
    global0 = func_5(_wgslsmith_mod_vec2_i32(global0.c.a, global0.e.a), min(_wgslsmith_mod_u32(abs(16512u), _wgslsmith_div_u32(u_input.d.x, 1u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, 0u), u_input.b), firstLeadingBit(~1u)), func_1(Struct_2(vec3<i32>(1i, 23722i, 1i), global0.c.d.x, Struct_1(vec2<i32>(-228i, -1i), ~global0.e.b, ~u_input.d.xx, _wgslsmith_f_op_vec2_f32(step(global0.e.d, global0.e.d)), global0.e.e), any(!vec3<bool>(false, var_0.x, var_0.x)), global0.e), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0.c.c.x, global0.e.b), u_input.b, vec3<u32>(global0.c.c.x, global0.e.c.x, 0u)) >> (u_input.b % vec3<u32>(32u)), true), Struct_2(global0.a, _wgslsmith_f_op_f32(-214f + -1267f), Struct_1(func_1(Struct_2(vec3<i32>(58510i, global0.c.a.x, -34660i), global0.b, Struct_1(vec2<i32>(-1i, u_input.a), 50408u, vec2<u32>(4294967295u, u_input.b.x), vec2<f32>(-413f, -293f), vec2<bool>(var_0.x, var_0.x)), var_0.x, Struct_1(global0.e.a, 4294967295u, global0.c.c, global0.c.d, vec2<bool>(global0.e.e.x, false))), u_input.d.zxy & u_input.d.wxz, var_0.x).c.a, 26477u, _wgslsmith_mult_vec2_u32(~vec2<u32>(53531u, 0u), func_1(Struct_2(vec3<i32>(1i, -1i, global0.a.x), -348f, global0.e, true, global0.e), u_input.b, false).c.c), global0.c.d, func_1(Struct_2(global0.a, 655f, global0.c, global0.c.e.x, Struct_1(vec2<i32>(-187i, 1i), 45226u, vec2<u32>(global0.e.c.x, global0.c.b), global0.e.d, global0.e.e)), ~u_input.b, false).c.e), true, Struct_1(-(global0.a.zx & global0.c.a), 4294967295u, ~vec2<u32>(67109u, global0.e.c.x), _wgslsmith_f_op_vec2_f32(-global0.e.d), !vec2<bool>(global0.e.e.x, global0.e.e.x))));
    let var_1 = _wgslsmith_div_i32(~(-abs(-global0.a.x)), min(~(-(i32(-1i) * -2147483647i)), -2147483647i));
    global0 = func_1(Struct_2(global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.e.d.x)))), global0.e, false, global0.e), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 105656u, u_input.b.x), select(u_input.b, u_input.b, true)), u_input.d.x, 1u), countOneBits(vec3<u32>(firstLeadingBit(u_input.b.x), func_1(Struct_2(vec3<i32>(-3841i, 2147483647i, 28515i), global0.b, Struct_1(vec2<i32>(global0.a.x, -1i), 48926u, vec2<u32>(global0.e.c.x, global0.e.b), vec2<f32>(global0.c.d.x, global0.b), vec2<bool>(global0.c.e.x, global0.e.e.x)), var_0.x, global0.c), u_input.d.www, var_0.x).c.c.x, u_input.b.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, global0.c.e.x, var_0.x), vec3<bool>(true, global0.e.e.x, var_0.x))), 4294967295u != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global0.e.b, 2084u), ~abs(vec3<u32>(4294967295u, 81240u, 4294967295u))));
    global0 = Struct_2(firstLeadingBit(~vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.c), global0.e.a.x, _wgslsmith_div_i32(2147483647i, global0.e.a.x))), global0.c.d.x, global0.e, var_1 < select(global0.e.a.x, min(-var_1, u_input.c), true), global0.e);
    let var_2 = func_5(vec2<i32>(abs(var_1), u_input.c), 13300u, Struct_2(func_1(func_1(func_1(Struct_2(global0.a, global0.e.d.x, global0.c, global0.e.e.x, Struct_1(global0.c.a, u_input.d.x, global0.e.c, vec2<f32>(627f, global0.b), vec2<bool>(true, global0.e.e.x))), u_input.b, var_0.x), u_input.b, global0.d), vec3<u32>(_wgslsmith_add_u32(30736u, 1u), 1u, _wgslsmith_sub_u32(global0.c.c.x, u_input.d.x)), var_0.x).a, func_5((vec2<i32>(2147483647i, 0i) & vec2<i32>(global0.e.a.x, -19733i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, global0.c.b), vec2<u32>(4294967295u, 68023u)) % vec2<u32>(32u)), 0u, func_5(~vec2<i32>(var_1, global0.e.a.x), func_1(Struct_2(vec3<i32>(global0.e.a.x, 10387i, 0i), global0.e.d.x, Struct_1(vec2<i32>(2147483647i, var_1), 16561u, u_input.b.yx, vec2<f32>(global0.b, global0.e.d.x), vec2<bool>(global0.e.e.x, false)), true, Struct_1(global0.e.a, global0.c.b, vec2<u32>(global0.e.c.x, u_input.d.x), vec2<f32>(global0.b, global0.e.d.x), global0.e.e)), u_input.b, false).e.b, Struct_2(global0.a, -1000f, Struct_1(vec2<i32>(u_input.a, -54140i), 24096u, vec2<u32>(32181u, u_input.b.x), global0.c.d, vec2<bool>(false, true)), global0.c.e.x, Struct_1(global0.e.a, global0.e.b, vec2<u32>(12800u, global0.c.b), vec2<f32>(global0.b, -956f), vec2<bool>(true, global0.c.e.x))), Struct_2(global0.a, 305f, Struct_1(vec2<i32>(u_input.a, global0.a.x), 4294967295u, vec2<u32>(global0.e.b, global0.e.b), vec2<f32>(966f, global0.c.d.x), global0.e.e), global0.d, Struct_1(global0.c.a, global0.e.b, u_input.b.yz, global0.e.d, global0.e.e))), func_5(_wgslsmith_add_vec2_i32(global0.c.a, global0.a.yx), func_5(vec2<i32>(global0.a.x, var_1), global0.c.b, Struct_2(global0.a, global0.b, global0.e, true, global0.c), Struct_2(global0.a, global0.e.d.x, global0.c, var_0.x, global0.e)).c.b, Struct_2(global0.a, global0.e.d.x, Struct_1(global0.c.a, 37833u, vec2<u32>(21236u, 47665u), vec2<f32>(global0.e.d.x, -273f), global0.c.e), global0.c.e.x, Struct_1(vec2<i32>(1i, var_1), 0u, vec2<u32>(45659u, 30437u), vec2<f32>(global0.e.d.x, global0.c.d.x), vec2<bool>(var_0.x, true))), func_1(Struct_2(vec3<i32>(-627i, -48845i, 2147483647i), 136f, global0.c, var_0.x, global0.e), vec3<u32>(1u, u_input.d.x, global0.c.c.x), true))).b, func_5(vec2<i32>(var_1, ~u_input.a), 45398u, func_5(global0.e.a, ~50080u, func_1(Struct_2(global0.a, 385f, Struct_1(global0.e.a, global0.c.c.x, global0.e.c, vec2<f32>(-563f, global0.c.d.x), global0.e.e), true, global0.c), u_input.b, true), func_1(Struct_2(vec3<i32>(-1i, 1i, 2147483647i), 587f, global0.e, global0.e.e.x, Struct_1(global0.e.a, 53149u, vec2<u32>(global0.c.b, 4294967295u), vec2<f32>(315f, global0.c.d.x), global0.e.e)), u_input.d.wwx, false)), func_5(~global0.c.a, 0u, func_1(Struct_2(vec3<i32>(var_1, u_input.c, -66583i), global0.c.d.x, Struct_1(global0.e.a, 3501u, vec2<u32>(0u, 4294967295u), vec2<f32>(-1631f, global0.c.d.x), global0.e.e), true, Struct_1(global0.e.a, 4294967295u, vec2<u32>(u_input.b.x, u_input.b.x), vec2<f32>(784f, -1226f), global0.e.e)), u_input.d.wwz, false), Struct_2(vec3<i32>(0i, -2147483647i, var_1), -325f, global0.e, global0.c.e.x, global0.c))).c, u_input.c == var_1, global0.c), func_1(func_5(global0.a.zx, ~global0.e.c.x, Struct_2(vec3<i32>(var_1, 19498i, var_1), -1826f, global0.e, select(global0.e.e.x, false, false), global0.c), func_1(func_5(vec2<i32>(-31620i, 19258i), 3670u, Struct_2(global0.a, global0.b, Struct_1(global0.e.a, global0.e.c.x, vec2<u32>(u_input.d.x, u_input.d.x), global0.e.d, vec2<bool>(var_0.x, true)), global0.d, global0.e), Struct_2(global0.a, global0.e.d.x, global0.c, var_0.x, Struct_1(global0.a.yy, global0.c.b, vec2<u32>(global0.c.c.x, u_input.b.x), vec2<f32>(1631f, global0.e.d.x), vec2<bool>(var_0.x, var_0.x)))), firstTrailingBit(vec3<u32>(global0.e.b, 18195u, u_input.b.x)), u_input.d.x != 1u)), ~vec3<u32>(0u, 23163u, _wgslsmith_add_u32(global0.e.c.x, global0.e.b)), !var_0.x && global0.d)).e;
    let x = u_input.a;
    s_output = StorageBuffer(~max(~max(u_input.d, u_input.d), vec4<u32>(u_input.d.x & 1u, 1u, u_input.b.x, var_2.c.x)));
}

