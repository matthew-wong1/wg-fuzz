struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4;

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4) -> vec4<bool> {
    global2 = array<vec2<bool>, 20>();
    global2 = array<vec2<bool>, 20>();
    return vec4<bool>(arg_2.d.a.b.x >= arg_0.a, false, select(global1.a.d.a.x, !all(!global1.b.b.a), !(arg_1.b.d.a.x || arg_2.b.b.a.x) == false), !arg_2.d.b.a.x | arg_1.c.x);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.d.b.b.x, global1.a.e))), _wgslsmith_f_op_f32(-1080f - global1.a.b.b.x));
    var var_0 = ~u_input.e.x;
    global1 = Struct_4(global1.b, Struct_3(!global1.b.a, global1.b.b, global1.b.d.c, global1.b.d, -1217f), vec4<bool>(false, true, !((global1.d.a.d >= 1000f) | all(global1.c.xyz)), global1.d.b.a.x), global1.d);
    let var_1 = Struct_4(global1.b, global1.b, select(func_3(Struct_5(global1.b.d.d), Struct_4(global1.b, global1.b, global1.d.a.a, Struct_2(Struct_1(vec4<bool>(global1.b.b.a.x, global1.d.b.a.x, arg_0, false), vec3<f32>(-316f, -1256f, 770f), vec4<u32>(u_input.a.x, 2884u, 38898u, global1.d.a.c.x), 1000f), global1.a.d)), Struct_4(global1.b, global1.a, select(global1.a.b.a, global1.c, vec4<bool>(true, true, arg_0, false)), global1.d)), !(!vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(true, global1.c.x, select(false, arg_0, true) | !global1.c.x, any(!global1.d.a.a))), Struct_2(Struct_1(select(global1.c, global1.d.a.a, vec4<bool>(global1.c.x, arg_0, true, false)), vec3<f32>(global1.b.d.b.x, -1000f, _wgslsmith_f_op_f32(exp2(global1.b.d.d))), abs(abs(global1.b.b.c)), _wgslsmith_f_op_f32(1482f * 1239f)), Struct_1(!global1.d.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(894f, -1474f, 2115f) - vec3<f32>(global1.d.a.d, global1.b.d.d, -1652f))), ~select(vec4<u32>(u_input.e.x, 1u, arg_1.x, 5241u), global1.d.a.c, global1.a.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d.b.b.x))))));
    let var_2 = abs(~_wgslsmith_clamp_i32(-u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2956i, 13030i), u_input.c.zy), 1i), -32260i));
    return Struct_3(any(global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(_wgslsmith_clamp_u32(global1.b.b.c.x, 0u, global1.b.c.x))), 20u)]), Struct_1(vec4<bool>(true, true, true | func_3(Struct_5(global1.a.e), Struct_4(global1.a, global1.a, var_1.c, global1.d), var_1).x, !(global1.d.b.d >= -1519f)), var_1.d.b.b, vec4<u32>(~(~0u), countOneBits(~u_input.d), abs(global1.d.b.c.x ^ 1u), _wgslsmith_sub_u32(global1.d.b.c.x, u_input.e.x ^ 28143u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) - _wgslsmith_f_op_f32(-var_1.a.e)) * 988f)), firstLeadingBit(~(~vec4<u32>(var_1.b.d.c.x, global1.d.a.c.x, arg_1.x, arg_1.x))), Struct_1(!vec4<bool>(true, var_1.a.e < global1.b.d.b.x, global1.a.b.b.x < 787f, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1457f, var_1.b.b.d, global1.a.e)), var_1.b.d.b))), var_1.b.d.c, global1.d.b.b.x), global1.a.b.b.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: f32) -> vec4<f32> {
    var var_0 = func_2(false, vec2<u32>(_wgslsmith_mult_u32(global1.a.d.c.x & 0u, firstLeadingBit(~110743u)), 4294967295u));
    global1 = Struct_4(global1.a, Struct_3(func_3(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -967f)), Struct_4(func_2(false, u_input.b.zz), Struct_3(var_0.d.a.x, var_0.b, vec4<u32>(42466u, global1.d.b.c.x, 4769u, global1.d.a.c.x), Struct_1(var_0.b.a, vec3<f32>(-643f, arg_2, -1689f), vec4<u32>(var_0.c.x, global1.a.c.x, global1.d.b.c.x, u_input.e.x), 1740f), -432f), !vec4<bool>(false, true, true, global1.c.x), global1.d), Struct_4(global1.b, Struct_3(false, Struct_1(global1.b.d.a, vec3<f32>(arg_2, arg_1, global1.a.b.b.x), var_0.c, arg_2), vec4<u32>(u_input.b.x, 0u, arg_0.x, var_0.b.c.x), Struct_1(vec4<bool>(true, true, var_0.b.a.x, false), vec3<f32>(arg_2, arg_2, arg_2), vec4<u32>(u_input.e.x, 1u, global1.d.b.c.x, 0u), global1.a.b.b.x), 718f), select(vec4<bool>(global1.b.b.a.x, true, true, var_0.b.a.x), vec4<bool>(global1.d.a.a.x, true, var_0.d.a.x, var_0.b.a.x), vec4<bool>(global1.b.d.a.x, var_0.d.a.x, true, true)), global1.d)).x, Struct_1(!vec4<bool>(global1.c.x, var_0.a, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.a.d.b))), ~var_0.c, global1.a.d.b.x), min(~_wgslsmith_mod_vec4_u32(vec4<u32>(44352u, arg_0.x, 43297u, arg_0.x), global1.b.b.c), global1.b.b.c << (~var_0.b.c % vec4<u32>(32u))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1229f)))) - 511f)), var_0.d.a, Struct_2(Struct_1(var_0.d.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1231f, arg_2, 977f) * vec3<f32>(1579f, arg_1, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1502f, 962f, arg_1)), func_3(Struct_5(global1.a.e), Struct_4(Struct_3(global1.a.a, Struct_1(vec4<bool>(true, var_0.a, false, true), vec3<f32>(-1055f, global1.b.b.d, var_0.b.b.x), global1.b.b.c, -889f), global1.b.b.c, global1.a.d, var_0.d.b.x), global1.a, var_0.d.a, Struct_2(var_0.b, var_0.b)), Struct_4(global1.b, global1.a, vec4<bool>(global1.a.b.a.x, var_0.b.a.x, true, true), Struct_2(var_0.d, Struct_1(var_0.d.a, vec3<f32>(457f, arg_1, 351f), vec4<u32>(8990u, u_input.d, var_0.b.c.x, arg_0.x), -1454f)))).yzy)), ~var_0.d.c, -814f), func_2(any(!vec2<bool>(global1.a.a, var_0.d.a.x)), vec2<u32>(22355u, 0u) >> (func_2(true, global1.a.b.c.yz).b.c.xz % vec2<u32>(32u))).b));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1568f)) + _wgslsmith_f_op_f32(-arg_2));
    let var_1 = Struct_3(true, var_0.b, select(vec4<u32>(global1.d.b.c.x, select(~global1.d.b.c.x, min(u_input.d, arg_0.x), any(vec3<bool>(var_0.b.a.x, var_0.d.a.x, true))), ~_wgslsmith_clamp_u32(global1.d.b.c.x, global1.d.b.c.x, var_0.b.c.x), ~abs(var_0.b.c.x)), var_0.d.c, any(var_0.d.a.yyw)), func_2(any(vec2<bool>(!var_0.d.a.x, global1.b.d.a.x)), _wgslsmith_add_vec2_u32(~global1.b.c.zy, ~global1.b.c.zy)).b, func_2(all(global1.c), var_0.b.c.zx).d.d);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1217f * _wgslsmith_f_op_f32(-arg_1)) + var_0.e);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e * 402f), _wgslsmith_f_op_f32(var_0.e - global1.d.b.d)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1242f + arg_2), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(506f))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    global1 = Struct_4(global1.a, Struct_3(true, Struct_1(global1.a.d.a, arg_2.yww, global1.d.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f))), abs(select(abs(global1.d.a.c), countOneBits(vec4<u32>(1u, 0u, 1u, 35122u)), vec4<bool>(global1.c.x, false, arg_0.x, global1.a.b.a.x))), Struct_1(select(vec4<bool>(false, false, global1.a.b.a.x, global1.c.x), !global1.c, select(vec4<bool>(true, global1.a.a, false, true), global1.c, arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.yzy) + _wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(1u, u_input.e.x, 1u), arg_2.x, global1.a.b.b.x)).wzx), global1.d.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.d.b.b.x)) * _wgslsmith_f_op_f32(floor(global1.d.b.b.x)))), _wgslsmith_f_op_f32(step(-462f, 1f))), global1.a.b.a, global1.d);
    var var_0 = 4294967295u;
    var var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.c.x, 35074u), u_input.a), _wgslsmith_div_u32(u_input.b.x, 4294967295u), firstTrailingBit(1u), _wgslsmith_clamp_u32(arg_3, 22069u & u_input.b.x, min(4294967295u, 0u))), _wgslsmith_mod_vec4_u32(~(~global1.b.c), vec4<u32>(u_input.e.x, ~u_input.e.x, arg_3 | 9786u, ~arg_3)));
    var var_2 = global1.d.b.c >> (~vec4<u32>(~(~var_1.x), 0u, _wgslsmith_mult_u32(~var_1.x, arg_3), arg_3) % vec4<u32>(32u));
    global1 = Struct_4(global1.a, global1.b, global1.b.b.a, global1.d);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.d, u_input.e.x, 1u, u_input.b.x)) << (vec4<u32>(select(50669u, u_input.b.x, true) << (~global1.a.c.x % 32u), global1.d.a.c.x, _wgslsmith_add_u32(0u, max(1u, 0u)), ~(~4294967295u)) % vec4<u32>(32u)), global1.a.d.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global1.d.b.d, global1.a.b.a.x))) * _wgslsmith_f_op_f32(func_4(!global1.b.b.a.zxy, _wgslsmith_f_op_f32(global1.d.a.b.x * global1.b.d.d), _wgslsmith_f_op_vec4_f32(func_1(u_input.b, global1.a.d.d, global1.d.b.b.x)), 18542u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d.b.x * global1.d.a.d)) - 654f), _wgslsmith_f_op_f32(-global1.b.b.d)) + global1.d.b.b);
    let var_2 = u_input.c.x;
    var_1 = _wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19029i, 2147483647i, var_2, var_2), vec4<i32>(var_2, 5106i, 13500i, 1i)), u_input.c.x ^ u_input.c.x) >= u_input.c.x, vec2<u32>(global1.b.c.x, firstTrailingBit(1009u)) >> (vec2<u32>(global1.d.a.c.x, ~1u) % vec2<u32>(32u))).b.b);
    let var_3 = Struct_3(true, Struct_1(vec4<bool>(all(vec4<bool>(true, true, global1.d.b.a.x, global1.a.b.a.x)), select(global1.d.a.a.x, any(global1.a.d.a), true & global1.a.b.a.x), false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(1u, var_0.x, global1.a.c.x), global1.b.e, global1.d.b.d)).xwx) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(select(121f, -399f, global1.c.x)), var_1.x)), vec4<u32>(38026u, 0u, 0u, abs(0u) >> (~global1.a.c.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -689f)), global1.a.d.c, Struct_1(global1.a.d.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b.d.b, global1.b.d.b, false))), _wgslsmith_div_vec3_f32(global1.d.a.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(870f, global1.d.a.d, global1.a.b.d), global1.a.d.b))), true)), global1.b.c, var_1.x), _wgslsmith_f_op_f32(max(global1.d.a.d, -396f)));
    let var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(var_0.x), var_0.x, var_3.c.x), _wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(min(max(u_input.b, vec3<u32>(global1.d.b.c.x, 3527u, 0u)), var_3.b.c.zxz), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, global1.a.b.c.x), u_input.b) << (_wgslsmith_add_vec3_u32(var_3.c.zyy, u_input.b) % vec3<u32>(32u)))), ~global1.a.b.c.yww);
    let var_5 = Struct_5(-620f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_3.b.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0, var_0 & ~vec4<u32>(global1.d.a.c.x, var_4.x, 17449u, 12010u)), vec4<u32>(4294967295u, 1u, 62407u, ~(var_4.x & var_0.x))), _wgslsmith_f_op_f32(func_4(select(vec3<bool>(any(var_3.b.a.xyy), true, global1.c.x), vec3<bool>(var_3.b.a.x, true, u_input.c.x > 37364i), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1049f - -373f))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.e) - _wgslsmith_f_op_f32(f32(-1f) * -2048f)), 449f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f * global1.d.a.d) + _wgslsmith_f_op_f32(var_3.b.d * 908f))), var_0.x)), _wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(3864u, var_3.b.c.x, 1u), _wgslsmith_f_op_f32(-var_5.a), global1.a.d.d)));
}

