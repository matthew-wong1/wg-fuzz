struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1127f, -853f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1017f + -928f), -1000f))));
    let var_1 = u_input.a;
    var var_2 = 35204u;
    let var_3 = var_1.x;
    return true;
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, global0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1432f, global0.x)))))));
    let var_0 = u_input.c.x;
    let var_1 = vec2<i32>(var_0, -u_input.c.x);
    var var_2 = max(countOneBits(u_input.b), firstLeadingBit(u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x ^ 4294967295u, u_input.b, ~u_input.b), vec3<u32>(u_input.a.x << (u_input.a.x % 32u), ~0u, u_input.a.x)) % 32u));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * -933f)))))));
    return -24839i;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = ~select(~arg_1.c.a.xz, _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(~44845i, u_input.c.x << (arg_0 % 32u))), true);
    let var_1 = any(vec2<bool>(false, arg_1.a.b.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, 625f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1609f, 1495f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, 1161f)))) * vec2<f32>(-1916f, -759f)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1250f, 233f) - vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -224f), vec2<f32>(global0.x, 1479f), arg_1.c.d.b.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1260f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-459f, 403f), vec2<f32>(-330f, global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, 2548f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x)))))));
    var var_2 = !vec2<bool>(func_3() > -1i, !all(!vec4<bool>(arg_1.b.b.x, arg_1.a.b.x, arg_1.a.b.x, true)));
    return arg_1.c.c;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -1353f)) - vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(floor(-1000f))));
    let var_0 = u_input.a;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - global0.x), global0.x)))) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f - _wgslsmith_f_op_f32(f32(-1f) * -1170f)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1535f, global0.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-524f, global0.x) * vec2<f32>(230f, -437f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-485f, -664f)), arg_0.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-550f, 207f) - vec2<f32>(-271f, 1196f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, -153f))))));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, global0.x)))) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(-476f))))), vec2<f32>(1f, 1f)));
    return u_input.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(u_input.a.yw << (vec2<u32>(u_input.b, u_input.b >> (u_input.a.x % 32u)) % vec2<u32>(32u)), vec2<bool>(false, !all(vec2<bool>(false, false))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-31763i, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, 1i, 24021i)), vec3<i32>(0i, -60096i, u_input.c.x))), Struct_1(u_input.a.wz, select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), -59836i | u_input.c.x), Struct_2(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(9756i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x))), func_1(), Struct_1(func_4(func_2(1531u, Struct_3(Struct_1(u_input.a.xy, vec2<bool>(false, true), -6965i), Struct_1(u_input.a.yw, vec2<bool>(true, false), 0i), Struct_2(vec3<i32>(-62629i, 1i, 2147483647i), false, Struct_1(vec2<u32>(40909u, u_input.a.x), vec2<bool>(false, true), u_input.c.x), Struct_1(u_input.a.wy, vec2<bool>(true, true), u_input.c.x), Struct_1(vec2<u32>(u_input.b, u_input.a.x), vec2<bool>(true, false), -20028i))), u_input.a.wx)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), -42388i), Struct_1(vec2<u32>(firstLeadingBit(u_input.a.x), ~u_input.b), select(vec2<bool>(false, false), vec2<bool>(true, false), u_input.c.x > u_input.c.x), u_input.c.x), func_2(_wgslsmith_mult_u32(u_input.a.x | u_input.a.x, ~u_input.b), Struct_3(Struct_1(vec2<u32>(1u, 23557u), vec2<bool>(true, true), 31792i), Struct_1(u_input.a.zx, vec2<bool>(true, true), u_input.c.x), Struct_2(vec3<i32>(u_input.c.x, 0i, 2458i), false, Struct_1(vec2<u32>(23584u, u_input.b), vec2<bool>(true, true), u_input.c.x), Struct_1(u_input.a.wy, vec2<bool>(false, true), u_input.c.x), Struct_1(vec2<u32>(9672u, 21867u), vec2<bool>(false, true), u_input.c.x))), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), abs(0u)))));
    var var_1 = u_input.a.xwz;
    var_1 = countOneBits(max(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(38183u, var_1.x, 87573u)), select(vec3<u32>(6920u, var_0.b.a.x, var_0.a.a.x), u_input.a.wwx, vec3<bool>(true, true, true))), ~(~abs(vec3<u32>(15637u, 0u, var_0.a.a.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(min(global0.x, 142f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1054f, global0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1509f)), 266f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 943f), vec2<f32>(global0.x, 555f), vec2<bool>(var_0.b.b.x, true))))));
    var_1 = select(vec3<u32>(u_input.b, var_1.x, u_input.b), vec3<u32>(var_1.x, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, var_0.a.a.x), u_input.b), 22290u), !any(!(!vec4<bool>(var_0.b.b.x, var_0.c.e.b.x, false, false))));
    var_1 = vec3<u32>(31848u << (_wgslsmith_mult_u32(u_input.b, ~(var_1.x | var_1.x)) % 32u), 0u, _wgslsmith_dot_vec3_u32(u_input.a.zzy, reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.a.wxx), abs(u_input.a.zxw)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(5012u, 15205u), ~u_input.a, ~(u_input.a & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.b, var_0.c.e.a.x, 0u, 10083u), u_input.a), vec4<u32>(0u, 0u, var_0.c.d.a.x, 65780u))), -1000f, vec4<i32>(0i, var_0.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, func_2(u_input.b, Struct_3(var_0.b, Struct_1(var_0.c.e.a, var_0.c.e.b, var_0.c.d.c), Struct_2(vec3<i32>(-2147483647i, 3266i, u_input.c.x), true, Struct_1(vec2<u32>(44148u, 11905u), vec2<bool>(true, true), -2147483647i), var_0.c.e, Struct_1(vec2<u32>(29583u, 14231u), vec2<bool>(var_0.b.b.x, var_0.c.b), 5535i))), var_1.xz).c), var_0.c.a.xx), _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(1i, var_0.a.c, u_input.c.x)), ~vec3<i32>(-3369i, var_0.a.c, -3644i))));
}

