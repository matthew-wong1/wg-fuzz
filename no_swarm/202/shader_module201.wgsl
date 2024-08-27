struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(1u, ~(u_input.c >> (abs(_wgslsmith_add_u32(20285u, u_input.b.x)) % 32u)));
    let var_1 = !(_wgslsmith_f_op_f32(f32(-1f) * -394f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-343f)))));
    var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    var var_2 = Struct_1(_wgslsmith_div_u32(19371u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, 1u, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 7282u, u_input.b.x)) << (u_input.a % 32u)));
    return Struct_1(60184u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = Struct_4(u_input.e.zx, arg_1);
    let var_3 = func_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-988f))));
    let var_4 = -1i;
    return Struct_2(~1u, u_input.c | var_2.b.b.a);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = u_input.b;
    var var_1 = arg_3.b.a;
    var var_2 = func_3(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_3.a)))), arg_3.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.a)))), Struct_3(1073f, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(select(arg_2.b.a, arg_1.x, false))), _wgslsmith_f_op_f32(-arg_3.a)), arg_2.b.e, _wgslsmith_add_i32(1i, -1i), Struct_1(u_input.a)));
    var_1 = 49355u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_f32(f32(-1f) * -1606f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -575f) + arg_2.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.b.a)), _wgslsmith_f_op_f32(min(-1493f, arg_2.b.a))))));
    return _wgslsmith_sub_vec3_u32(abs(min(min(u_input.b.zyw, ~vec3<u32>(25545u, 1u, 60925u)), vec3<u32>(arg_3.c.a, _wgslsmith_div_u32(arg_2.a.x, 0u), _wgslsmith_div_u32(55567u, 67783u)))), vec3<u32>(arg_3.b.a, 13554u | var_0.x, ~(~_wgslsmith_mult_u32(u_input.b.x, 1u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = arg_2.a.xy;
    var var_1 = _wgslsmith_add_u32(u_input.a, ~(~_wgslsmith_add_u32(1u, var_0.x)));
    var var_2 = ~(vec2<i32>(-1i) * -u_input.e.yy);
    let var_3 = ~_wgslsmith_mod_u32(arg_2.a.x, 44004u | var_0.x);
    var_2 = abs(u_input.e.yz);
    return ~vec4<i32>(_wgslsmith_mod_i32(1i ^ -u_input.e.x, arg_2.b.d), _wgslsmith_sub_i32(8263i, var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d ^ 0i, i32(-1i) * -6352i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, 10361i, -12812i), vec4<i32>(var_2.x, u_input.e.x, -75336i, 0i)), min(u_input.d, -39771i))), _wgslsmith_add_i32(3858i, arg_2.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a);
    let var_1 = (~(-countOneBits(vec4<i32>(u_input.e.x, -1i, 38135i, u_input.d))) | max(~vec4<i32>(u_input.d, 1i, 2147483647i, -88297i) ^ vec4<i32>(u_input.d, u_input.e.x, u_input.e.x, 2147483647i), reverseBits(~vec4<i32>(-19294i, 2147483647i, 1i, u_input.d)))) ^ func_4(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), false), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), any(vec2<bool>(true, false))), vec3<bool>(true, true, any(vec2<bool>(true, true)))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 0u), ~var_0.a, ~0u), (u_input.c >> (21235u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, u_input.b.x, var_0.a)) % 32u)), Struct_5(abs(func_1(u_input.e.x, vec4<f32>(-1367f, 1691f, 919f, 557f), Struct_5(vec3<u32>(u_input.b.x, 4294967295u, var_0.a), Struct_3(-342f, var_0, var_0, u_input.d, var_0), vec4<f32>(341f, 230f, 789f, -1000f)), Struct_3(-762f, var_0, var_0, 35210i, Struct_1(1u)))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -3092f), var_0, Struct_1(0u), u_input.d, var_0), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1237f, 1525f, -841f, -286f)))))));
    let var_2 = Struct_4(u_input.e.xx, Struct_3(_wgslsmith_f_op_f32(553f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1296f)), -329f)), Struct_1(~var_0.a), Struct_1(~u_input.c), _wgslsmith_add_i32(2147483647i, -62868i), Struct_1(2018u)));
    let var_3 = var_2.b.a;
    var var_4 = func_1(-37899i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1559f, -389f, -184f, var_3), vec4<f32>(var_3, 1000f, var_2.b.a, 377f), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, -1360f, var_3, 900f) - vec4<f32>(var_3, 1000f, -1000f, 175f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.a, -875f, var_2.b.a, -578f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2769f, 1205f, -1991f, var_2.b.a) + vec4<f32>(-530f, 643f, 1000f, var_2.b.a))))))), Struct_5(min(abs(u_input.b.ywz), vec3<u32>(var_0.a, u_input.a, var_2.b.e.a)) | vec3<u32>(~4294967295u, _wgslsmith_sub_u32(var_0.a, var_2.b.c.a), 49181u), Struct_3(var_2.b.a, func_2(_wgslsmith_f_op_f32(1465f + 139f), 290f), func_2(var_3, _wgslsmith_f_op_f32(-var_2.b.a)), var_1.x, Struct_1(var_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.a), var_3, _wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a, 1000f, var_2.b.a, 669f)))))), Struct_3(var_3, Struct_1(func_3(vec3<f32>(-1536f, var_3, -612f), var_2.b).b), Struct_1(5908u), reverseBits(var_1.x), var_0));
    var_4 = u_input.b.xwx;
    var_4 = _wgslsmith_sub_vec3_u32(~firstLeadingBit(~select(vec3<u32>(u_input.a, 24784u, var_4.x), vec3<u32>(30278u, var_4.x, 37830u), true)), max(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 33669u, var_0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_0.a, u_input.b.x), vec3<u32>(1u, 1u, 14317u), u_input.b.xxx)), u_input.b.wzz, u_input.b.xzw), vec3<u32>(reverseBits(~0u), var_2.b.b.a, ~(~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_2.b.a - 606f), 1122f))))), i32(-1i) * -45015i, ~((_wgslsmith_div_i32(0i, 4871i) << (0u % 32u)) << ((~var_4.x & ~u_input.c) % 32u)), ~(~_wgslsmith_mod_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(u_input.a, 50067u, u_input.c, var_2.b.b.a)))));
}

