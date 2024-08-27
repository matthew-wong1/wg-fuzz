struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-230f, -1443f), Struct_1(vec2<u32>(34776u, 66722u), vec3<bool>(true, true, false), 2147483647i, 68523u, vec3<i32>(-20069i, 1i, 31377i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> vec2<i32> {
    let var_0 = select(vec4<i32>(arg_2.x, min(_wgslsmith_div_i32(19241i, -1250i) & (arg_2.x >> (1u % 32u)), 1i), abs(1i) ^ _wgslsmith_add_i32(reverseBits(u_input.b.x), global0.x), 29496i & select(global1.b.c, 9502i & global0.x, !global1.b.b.x)), vec4<i32>(~(-(~2147483647i)), 1i, i32(-1i) * -9734i, _wgslsmith_dot_vec2_i32(vec2<i32>(7741i ^ global1.b.e.x, -u_input.b.x), -vec2<i32>(global1.b.e.x, 0i))), false);
    global0 = vec2<i32>(-arg_2.x, ~_wgslsmith_sub_i32(~global1.b.c, -5368i));
    let var_1 = global1.b;
    global1 = Struct_2(global1.a, Struct_1(var_1.a & ~vec2<u32>(25895u, 1u), var_1.b, _wgslsmith_add_i32(global0.x, global1.b.e.x), _wgslsmith_sub_u32(28279u & var_1.d, 0u) >> (global1.b.a.x % 32u), _wgslsmith_div_vec3_i32(-countOneBits(var_1.e), ~(-vec3<i32>(-38635i, var_0.x, global0.x)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -191f))), _wgslsmith_f_op_f32(trunc(arg_1))) * global1.a), global1.b);
    return vec2<i32>(-u_input.b.x, u_input.b.x << (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(79692u, var_2.b.d, 0u, 0u) >> (vec4<u32>(var_2.b.a.x, 1u, 0u, 76370u) % vec4<u32>(32u))) % 32u));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec3<f32> {
    global1 = Struct_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-657f)) + arg_2.a.x))), arg_2.b);
    global0 = func_3(Struct_1(arg_2.b.a, select(global1.b.b, vec3<bool>(!arg_1, arg_1, true), !arg_3.b.zwz), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), firstTrailingBit(5809i)), global1.b.d, min(~vec3<i32>(arg_2.b.e.x, global0.x, -1i), ~max(vec3<i32>(47776i, arg_2.b.c, global1.b.e.x), vec3<i32>(arg_2.b.c, -34121i, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f - 527f))), ~countOneBits(vec2<i32>(u_input.b.x, 8632i) >> (vec2<u32>(global1.b.a.x, global1.b.d) % vec2<u32>(32u))) ^ (vec2<i32>(20843i, u_input.b.x) >> (~(~vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))));
    global1 = arg_2;
    var var_0 = vec3<u32>(69742u << (~_wgslsmith_add_u32(44940u, u_input.d.x) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), u_input.c.zzx), ~(~vec3<u32>(global1.b.a.x, 71946u, u_input.a.x))), firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(8260u, 4294967295u)))) >> (_wgslsmith_div_vec3_u32(abs(~(u_input.d.zyx & u_input.d.wxx)), u_input.c.xxy) % vec3<u32>(32u));
    global0 = ~reverseBits(vec2<i32>(~_wgslsmith_clamp_i32(1i, arg_2.b.c, arg_2.b.e.x), ~0i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-676f))))) - vec3<f32>(arg_2.a.x, arg_0, arg_0)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.x, global1.a.x, -1329f, -1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 456f, -668f, arg_0.x), vec4<f32>(949f, -1293f, 575f, -677f), global1.b.b.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 148f, global1.a.x, global1.a.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -1725f, -301f, -239f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-700f, global1.a.x, -693f, -1012f), vec4<f32>(global1.a.x, global1.a.x, -1287f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global1.a.x, -756f, arg_0.x)))), vec4<bool>(true, false, false, true)));
    var var_1 = Struct_1(vec2<u32>(~countOneBits(4294967295u), ~(~arg_1.x & 43531u)), select(select(vec3<bool>(global1.b.a.x == 30395u, any(global1.b.b), any(vec4<bool>(global1.b.b.x, true, false, false))), global1.b.b, vec3<bool>(false, select(false, global1.b.b.x, global1.b.b.x), global1.b.b.x & global1.b.b.x)), global1.b.b, global1.b.b.x), -global1.b.e.x, u_input.d.x, global1.b.e);
    var var_2 = Struct_1(global1.b.a, global1.b.b, _wgslsmith_add_i32(1i, var_1.e.x), 1u, _wgslsmith_clamp_vec3_i32(select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, global1.b.e.x, global1.b.c), vec3<i32>(45799i, 17702i, 2147483647i), vec3<i32>(25607i, var_1.e.x, 20739i))), vec3<i32>(-3285i, var_1.c, 1i) << (max(vec3<u32>(u_input.c.x, var_1.d, 1u), arg_1) % vec3<u32>(32u)), global1.b.b.x), select(~vec3<i32>(0i, u_input.b.x, var_1.c) << (abs(u_input.d.wxy) % vec3<u32>(32u)), u_input.b, var_1.b), ((vec3<i32>(-20126i, global1.b.e.x, -1i) >> (arg_1 % vec3<u32>(32u))) ^ vec3<i32>(-38217i, -10964i, u_input.b.x)) & select(vec3<i32>(2037i, var_1.e.x, var_1.e.x), u_input.b, true)));
    let var_3 = select(select(vec4<bool>(var_2.b.x, true, any(var_2.b.xx) & true, true), vec4<bool>(var_1.b.x, true || var_1.b.x, !any(vec2<bool>(var_1.b.x, false)), false), !vec4<bool>(any(vec4<bool>(true, global1.b.b.x, var_1.b.x, true)), any(vec3<bool>(global1.b.b.x, false, var_2.b.x)), all(vec4<bool>(false, true, global1.b.b.x, false)), select(true, true, false))), vec4<bool>(var_1.b.x, all(!select(global1.b.b.yz, var_1.b.xx, var_2.b.x)), false, true), global1.b.b.x);
    var var_4 = 1812f;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yz - arg_0.yy), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, var_0.x)))))), global1.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, -452f, -1000f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.x))))), _wgslsmith_f_op_f32(-global1.a.x), -820f));
    return global1.a.x;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(func_5(global1.b, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1220f, global1.a.x, -411f))) * _wgslsmith_f_op_vec3_f32(func_2(global1.a.x, true, Struct_2(global1.a, Struct_1(vec2<u32>(u_input.d.x, 1u), vec3<bool>(false, true, true), 1723i, 14208u, vec3<i32>(global0.x, 0i, -1i))), Struct_3(u_input.c.x, vec4<bool>(true, false, global1.b.b.x, global1.b.b.x))))), ~(vec3<u32>(u_input.d.x, global1.b.d, global1.b.a.x) ^ vec3<u32>(4294967295u, global1.b.d, u_input.a.x))), global1.b)));
    global1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, var_0.x, _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-855f + 841f), 1038f))), firstTrailingBit(vec3<u32>(arg_0.x, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 1u), arg_0.x), ~_wgslsmith_mod_u32(1u, arg_0.x))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1812f, global1.a.x, var_0.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1180f, -787f, -633f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(782f, var_0.x, var_0.x), vec3<f32>(var_0.x, global1.a.x, var_0.x)) - vec3<f32>(-627f, global1.a.x, -646f)))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 0u, 4294967295u), u_input.d.xyy)) ^ select(~vec3<u32>(u_input.a.x, global1.b.a.x, 26977u), ~(~vec3<u32>(u_input.c.x, global1.b.d, 4294967295u)), vec3<bool>(all(global1.b.b.xz), select(global1.b.b.x, true, false), global1.b.b.x))).b.b;
    var var_2 = vec3<bool>(true, true, !(all(var_1.zx) || var_1.x));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-776f, -717f))), _wgslsmith_f_op_f32(-var_0.x));
    return _wgslsmith_dot_vec2_i32(func_3(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -493f), vec2<i32>(_wgslsmith_sub_i32(global0.x, 7563i) << (select(62619u, 12807u, var_1.x) % 32u), global1.b.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.x), arg_0) % 32u))), _wgslsmith_sub_vec2_i32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1.a.x, -1078f) * vec3<f32>(var_0.x, 527f, 178f))), ~(~vec3<u32>(17505u, global1.b.a.x, 9810u))).b.e.yx, vec2<i32>(-1i) * -vec2<i32>(global0.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -30784i;
    var_0 = _wgslsmith_div_i32(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.e.x, 2147483647i), global1.b.e.xz)), func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global1.b.a, global1.b.a), ~vec2<u32>(0u, 40514u)))) ^ 2147483647i;
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1524f, 181f, global1.a.x) * vec3<f32>(global1.a.x, 670f, global1.a.x))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.x, global1.a.x, -646f))))))), reverseBits(~vec3<u32>(8555u, min(u_input.a.x, u_input.a.x), 1u & u_input.c.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1165f, 1044f)));
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, global1.a.x), vec3<f32>(var_1.a.x, 128f, -599f), vec3<bool>(var_1.b.b.x, false, global1.b.b.x))))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -1425f, -1725f), vec3<f32>(-839f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_mod_vec3_u32(u_input.c.xwx, vec3<u32>(u_input.a.x, ~var_1.b.d, abs(global1.b.a.x ^ 11150u)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(var_1.b.a.x, u_input.a.x), firstLeadingBit(select(u_input.c.x, 0u, false)), ~_wgslsmith_mult_u32(0u, u_input.d.x), 89869u), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_3.a.x, var_3.d), vec3<u32>(var_3.d, 39721u, var_3.a.x) | u_input.c.yxx), var_1.b.d, u_input.a.x, abs(~83798u))), var_1.a.x, u_input.a.x, 28874u, 106f);
}

