struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -945f;

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-677f, -474f), vec2<f32>(-390f, -779f), vec2<f32>(1000f, -1972f), vec2<f32>(821f, 689f), vec2<f32>(302f, -940f));

var<private> global2: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: f32) -> bool {
    let var_0 = Struct_1(arg_0, vec4<i32>(0i, arg_0, -40926i, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-25539i, arg_1.a), vec2<i32>(2147483647i, arg_0)))), vec3<bool>(!(true && (arg_0 >= arg_0)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)) || all(vec2<bool>(true, true)), (true == any(vec4<bool>(false, false, false, true))) | all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false))));
    var var_1 = ~(~(~(~vec3<u32>(arg_1.b, 1u, 31574u))) & vec3<u32>(_wgslsmith_mod_u32(max(23753u, 65337u), _wgslsmith_dot_vec3_u32(vec3<u32>(6818u, arg_1.b, arg_1.b), u_input.a.xyw)), ~11082u, ~_wgslsmith_mult_u32(u_input.a.x, 1u)));
    let var_2 = Struct_1(arg_1.a, vec4<i32>(-55608i, 34580i | _wgslsmith_dot_vec2_i32(var_0.b.zw | vec2<i32>(var_0.a, 2272i), vec2<i32>(1i, var_0.b.x)), max(arg_1.a, var_0.a), abs(-arg_0) << (0u % 32u)), select(select(select(var_0.c, vec3<bool>(var_0.c.x, true, true), !var_0.c), select(vec3<bool>(true, var_0.c.x, var_0.c.x), var_0.c, false), var_0.c), vec3<bool>(true, all(vec4<bool>(var_0.c.x, true, true, var_0.c.x)), true), select(var_0.a, abs(var_0.b.x), !var_0.c.x) == -(arg_1.a & arg_1.a)));
    let var_3 = Struct_2(-2147483647i, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~17440u, min(1u, 7247u), u_input.a.x), ~_wgslsmith_mod_u32(arg_1.b, 0u)), ~_wgslsmith_mult_u32(47265u, 1u)));
    global2 = any(vec4<bool>(all(select(select(vec4<bool>(var_0.c.x, true, var_0.c.x, false), vec4<bool>(false, var_0.c.x, var_0.c.x, false), var_0.c.x), !vec4<bool>(true, var_2.c.x, true, var_2.c.x), var_0.c.x == true)), var_0.c.x, true, 4294967295u == _wgslsmith_mod_u32(~var_1.x, u_input.a.x)));
    return !(false || any(select(vec2<bool>(var_2.c.x, true), var_0.c.yx, vec2<bool>(false, true))));
}

fn func_2() -> vec2<bool> {
    global2 = false;
    let var_0 = select(-vec2<i32>(-2147483647i, -1i << ((u_input.b & 35595u) % 32u)), vec2<i32>(select(abs(select(7503i, 1i, false)), -(i32(-1i) * -1i), u_input.b > _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yy)), ~select(1i, ~18061i, select(false, false, true))), true);
    global1 = array<vec2<f32>, 5>();
    let var_1 = any(vec2<bool>(!func_3(~71360i, Struct_2(var_0.x, u_input.b), vec4<f32>(-155f, -322f, 2107f, -425f), _wgslsmith_f_op_f32(-1271f - -1014f)), false & any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))));
    let var_2 = ~var_0.x;
    return select(vec2<bool>(var_1, var_1 | var_1), vec2<bool>(!var_1, !var_1), select(!select(vec2<bool>(var_1, var_1), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, var_1)), var_1), select(select(vec2<bool>(true, var_1), select(vec2<bool>(false, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), true), !vec2<bool>(var_1, false), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), true)), false && !all(vec3<bool>(var_1, var_1, var_1))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = var_0.x;
    let var_2 = u_input.b ^ u_input.a.x;
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, 1i), 2147483647i, -15822i), vec4<i32>(-1i) * -vec4<i32>(countOneBits(-63334i), firstTrailingBit(0i), -1i, abs(14389i)), select(!select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, true)), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), true), select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false), false), true)), true));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<vec2<f32>, 5>();
    global0 = 1000f;
    let var_0 = arg_1.c.x;
    let var_1 = Struct_1(1i, -arg_1.b, arg_1.c);
    var var_2 = Struct_2(arg_0, 1667u >> (u_input.b % 32u));
    return vec3<bool>(-1944f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-235f, _wgslsmith_f_op_f32(abs(1467f)), var_1.c.x)), _wgslsmith_f_op_f32(step(447f, _wgslsmith_f_op_f32(min(868f, 115f)))), false)), var_1.c.x, !any(!var_1.c.xx));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(max(_wgslsmith_dot_vec3_i32(arg_1.b.zzx, vec3<i32>(arg_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(53866i, -8256i, 18450i, arg_1.a), vec4<i32>(-2147483647i, -26607i, arg_1.a, -42166i)), arg_1.a)), select(~_wgslsmith_mult_i32(arg_1.b.x, 0i), ~(-37741i), any(vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec4_u32(countOneBits(abs(~u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_0, 26102u, 0u), u_input.a)));
    let var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(409f, _wgslsmith_f_op_f32(step(-102f, -359f))))), 816f, _wgslsmith_f_op_f32(step(470f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1967f), _wgslsmith_f_op_f32(select(1189f, 457f, arg_1.c.x)))))));
    global2 = false;
    let var_2 = 6152u;
    let var_3 = Struct_2(_wgslsmith_div_i32(select(_wgslsmith_sub_i32(var_0.a, abs(arg_1.b.x)), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, abs(-1i)), true && (var_0.b <= var_2)), 1i), 1u);
    return func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f + -1000f)), 1f, _wgslsmith_f_op_f32(-1986f - _wgslsmith_f_op_f32(f32(-1f) * -111f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(529f, -1684f, 488f) - vec3<f32>(-1000f, 455f, -564f)) + vec3<f32>(-811f, 931f, 297f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(max(u_input.b, u_input.b), Struct_1(-33472i, vec4<i32>(1i, 1i, 1i, 1i), func_4(-15701i, func_1(vec3<f32>(-796f, -961f, -549f)))), all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xzx, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 64679u, 1u), vec3<u32>(u_input.b, 1u, 0u)) | select(vec3<u32>(u_input.b, 0u, u_input.a.x), u_input.a.xwx, var_0.c))), u_input.a.yzx);
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(174f)), _wgslsmith_f_op_f32(abs(854f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-505f, _wgslsmith_f_op_f32(435f * _wgslsmith_div_f32(825f, -1230f)))), _wgslsmith_f_op_f32(1089f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2339f + 915f)))))));
    global1 = array<vec2<f32>, 5>();
    var_0 = Struct_1(_wgslsmith_mult_i32(0i, var_0.b.x), vec4<i32>(_wgslsmith_sub_i32(var_0.a, func_5(~u_input.b, Struct_1(55459i, vec4<i32>(var_0.a, var_0.a, -1i, var_0.a), vec3<bool>(var_0.c.x, false, var_0.c.x)), func_1(vec3<f32>(-907f, -423f, 1059f)).c.x).b.x), abs(var_0.a), ~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, var_0.b.x, var_0.b.x), -var_0.b.x, 2147483647i), var_0.b.x), !func_5(u_input.b, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(293f, -1449f, 637f), vec3<f32>(668f, 1688f, -827f))), true).c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1452f)) * -245f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-665f))))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 0u, var_1), min(u_input.a.xyx, vec3<u32>(19984u, var_1, 1u)))), ~reverseBits(58357u ^ var_1)), vec4<f32>(-749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f - _wgslsmith_f_op_f32(trunc(-138f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-747f, 853f)) + _wgslsmith_f_op_f32(-408f * _wgslsmith_f_op_f32(abs(-610f)))), -136f));
}

