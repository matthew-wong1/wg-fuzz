struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-630f, 319f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(306f, 1000f) + vec2<f32>(-662f, 1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -1000f)))))) * vec2<f32>(293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2555f + _wgslsmith_f_op_f32(f32(-1f) * -1122f)))));
    var var_1 = Struct_3(firstTrailingBit(vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(u_input.b | 16522u, u_input.b << (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.b.yww, arg_0.b.wzw, vec3<u32>(32783u, 4294967295u, u_input.b)), max(arg_0.b.zxz, vec3<u32>(1u, 0u, 4294967295u))))), 19022i, ~arg_0.b.xzx, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.b.x, 29152u, arg_0.b.x, u_input.b) & vec4<u32>(1u, 28080u, arg_0.b.x, u_input.b), ~(~vec4<u32>(u_input.b, 26119u, 0u, 1u))), arg_0.b), Struct_2(abs(~firstTrailingBit(1i)), vec4<u32>(~1u, _wgslsmith_div_u32(37055u, 4294967295u ^ u_input.b), _wgslsmith_add_u32(u_input.b, firstTrailingBit(1u)), u_input.b), Struct_1(vec3<i32>(1i, 1i, _wgslsmith_sub_i32(-13358i, -9252i)), vec4<i32>(max(-35875i, 2147483647i), max(arg_0.d.b.x, -2147483647i), min(588i, 4410i), _wgslsmith_dot_vec4_i32(arg_0.e.b, vec4<i32>(-28691i, 0i, -42254i, u_input.a)))), Struct_1(~min(arg_0.c.a, vec3<i32>(arg_0.a, u_input.a, -2147483647i)), vec4<i32>(u_input.a, _wgslsmith_sub_i32(arg_0.d.a.x, u_input.a), 0i >> (arg_0.b.x % 32u), max(17981i, 2147483647i))), arg_0.d));
    var_1 = Struct_3(select(~reverseBits(vec3<u32>(var_1.a.x, 50788u, var_1.d.x)), vec3<u32>(~arg_0.b.x, _wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x), ~4294967295u), true) | ~(~_wgslsmith_mod_vec3_u32(arg_0.b.yyw, vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), -39832i, ~_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(arg_0.b.xyz, vec3<u32>(arg_0.b.x, u_input.b, 0u)), arg_0.b.xyy), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(22888u, 38968u, arg_0.b.x, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(38236u, _wgslsmith_mult_u32(71569u, u_input.b)), 0u, min(~arg_0.b.x, arg_0.b.x), 0u)), Struct_2(abs(arg_0.d.b.x), abs(max(~vec4<u32>(108101u, var_1.d.x, 63011u, u_input.b), min(arg_0.b, var_1.e.b))), var_1.e.c, var_1.e.c, Struct_1(vec3<i32>(_wgslsmith_mod_i32(1i, var_1.e.a), _wgslsmith_sub_i32(-6208i, u_input.a), u_input.a << (28662u % 32u)), vec4<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(arg_0.c.b, vec4<i32>(0i, arg_0.d.a.x, var_1.e.c.b.x, var_1.b)), arg_0.e.a.x >> (arg_0.b.x % 32u), _wgslsmith_mult_i32(2147483647i, -1i)))));
    var var_2 = Struct_4(vec4<bool>(true, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false))), false), Struct_1(_wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(var_1.e.c.b.yyw, var_1.e.c.b.wxy), abs(~arg_0.c.b.zyx)), var_1.e.c.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -454f, var_0.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1472f, var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1764f, -160f, var_0.x) - vec3<f32>(var_0.x, 334f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1152f)), vec3<bool>(true, true, true))), all(vec2<bool>(true, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, -432f), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 418f, -1337f))))), var_1.e.e, Struct_3(arg_0.b.yzz, -2147483647i, ~var_1.d.wyy, ~(~vec4<u32>(29038u, var_1.a.x, var_1.d.x, var_1.a.x)), Struct_2(select(0i, ~0i, any(vec2<bool>(true, false))), select(arg_0.b, vec4<u32>(0u, var_1.a.x, 4294967295u, var_1.e.b.x), vec4<bool>(true, false, true, false)), arg_0.c, var_1.e.d, Struct_1(var_1.e.d.b.yzz, arg_0.e.b & vec4<i32>(u_input.a, 2147483647i, arg_0.e.b.x, -4215i)))));
    var var_3 = var_2.d.a.xy;
    return var_1.e.c.a.xx;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = vec4<i32>(-71298i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, reverseBits(reverseBits(2147483647i)), -1i), var_0.b.xzw ^ arg_1.b.wxw), reverseBits(1i), _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(arg_0.x ^ (i32(-1i) * -95544i), 1i)));
    let var_3 = Struct_2(var_1.b.x, ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(68103u, 19495u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, 1u, u_input.b, 1u)), abs(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u))), vec4<u32>(u_input.b, 1u, u_input.b | 4294967295u, 4294967295u ^ u_input.b)), Struct_1(_wgslsmith_div_vec3_i32((arg_1.b.yzz | vec3<i32>(-92287i, arg_2, var_1.a.x)) >> (vec3<u32>(u_input.b, u_input.b, 44638u) % vec3<u32>(32u)), abs(vec3<i32>(15965i, var_2.x, -26484i))), -var_0.b), arg_1, arg_1);
    var var_4 = vec4<bool>(arg_1.b.x > ~var_1.b.x, 85765u >= reverseBits(u_input.b), false, ~(~var_3.b.x) > _wgslsmith_mod_u32(~var_3.b.x, u_input.b));
    return countOneBits(vec4<u32>(4567u, firstLeadingBit(abs(37648u)) | var_3.b.x, 4294967295u, var_3.b.x));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(u_input.a, min(~reverseBits(reverseBits(vec4<u32>(23235u, 9386u, 39566u, u_input.b))), ~(~vec4<u32>(u_input.b, 1532u, u_input.b, u_input.b)) & func_4(func_3(Struct_2(u_input.a, vec4<u32>(32263u, u_input.b, 4294967295u, 4294967295u), Struct_1(vec3<i32>(u_input.a, -4442i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 1i)), Struct_1(vec3<i32>(1276i, u_input.a, u_input.a), vec4<i32>(-22698i, 54858i, 6155i, 1i)), Struct_1(vec3<i32>(0i, -47170i, 23355i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)))), Struct_1(vec3<i32>(1i, 2147483647i, u_input.a), vec4<i32>(0i, u_input.a, -1i, u_input.a)), u_input.a)), Struct_1(select(countOneBits(-vec3<i32>(-2147483647i, u_input.a, 17967i)), ~(-vec3<i32>(2147483647i, u_input.a, -1i)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), any(vec4<bool>(true, true, true, true)))), vec4<i32>(-max(u_input.a, u_input.a), -(u_input.a << (u_input.b % 32u)), u_input.a, -u_input.a)), Struct_1(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, u_input.a, 34673i)), ~vec3<i32>(-57288i, u_input.a, u_input.a)), ~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-58124i, -931i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(68095i, u_input.a, -2082i, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), Struct_1(vec3<i32>(~abs(47582i), min(u_input.a, select(0i, 0i, false)), select(~10449i, u_input.a, true)), countOneBits(vec4<i32>(u_input.a, 1i, 51669i >> (u_input.b % 32u), ~1i))));
    var_0 = Struct_2(1i, ~firstLeadingBit(abs(min(var_0.b, var_0.b))), Struct_1(vec3<i32>(-u_input.a, ~var_0.e.a.x ^ _wgslsmith_add_i32(var_0.d.a.x, -1676i), 29946i), abs(-abs(var_0.d.b))), Struct_1(select(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2743i, 1i, 1i), var_0.d.a), var_0.e.a), ~var_0.d.a, vec3<bool>(true, true, u_input.a >= 2147483647i)), firstLeadingBit(firstLeadingBit(vec4<i32>(18468i, -18389i, 416i, 2927i) ^ var_0.d.b))), var_0.d);
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_sub_u32(2647u, 1u);
    let var_3 = 1660f;
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1066f), var_3)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3, var_3)) * _wgslsmith_f_op_f32(floor(var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(step(214f, var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f + _wgslsmith_f_op_f32(-var_3))))));
}

fn func_5(arg_0: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_div_f32(683f, _wgslsmith_f_op_f32(-115f * arg_0.x));
    let var_1 = Struct_3(min(vec3<u32>(~(~u_input.b), 55539u, firstLeadingBit(1u)), ~(~vec3<u32>(23397u, u_input.b, u_input.b) << (~vec3<u32>(u_input.b, 11568u, 0u) % vec3<u32>(32u)))), u_input.a, firstLeadingBit(vec3<u32>(min(~u_input.b, ~122264u), abs(u_input.b), 3382u)), func_4(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -52505i), vec2<i32>(u_input.a, u_input.a))), Struct_1(abs(vec3<i32>(u_input.a, u_input.a, 2147483647i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(0i, 23944i, u_input.a, u_input.a))), _wgslsmith_div_i32(-abs(u_input.a), i32(-1i) * -1i)), Struct_2(_wgslsmith_add_i32(u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(18703i, u_input.a), vec2<i32>(u_input.a, 2147483647i))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.b, 0u)), ~(~vec4<u32>(61814u, 4294967295u, u_input.b, u_input.b))), Struct_1(vec3<i32>(_wgslsmith_sub_i32(34241i, u_input.a), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -23362i), vec2<i32>(2147483647i, -2403i))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), Struct_1(-(vec3<i32>(11262i, -2817i, 1i) & vec3<i32>(-1i, u_input.a, u_input.a)), firstTrailingBit(vec4<i32>(74083i, u_input.a, u_input.a, -1i)) >> (vec4<u32>(4294967295u, u_input.b, 0u, u_input.b) % vec4<u32>(32u))), Struct_1(-vec3<i32>(-14316i, 2147483647i, u_input.a), ~abs(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)))));
    let var_2 = Struct_1(vec3<i32>(select(_wgslsmith_div_i32(-1i | var_1.e.a, var_1.b), _wgslsmith_mult_i32(-25625i, -11858i), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), ~(u_input.a << (u_input.b % 32u)), select(countOneBits(~(-16999i)), -18485i ^ u_input.a, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))))), var_1.e.e.b);
    var var_3 = 0i;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-356f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-464f))) + arg_0.x))), -648f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-1001f * -344f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f))) * -650f));
    return all(vec3<bool>(all(vec3<bool>(true, false, any(vec3<bool>(true, false, false)))), !all(vec4<bool>(false, true, false, true)) | (any(vec4<bool>(true, false, true, false)) && true), !select(select(false, false, true), true, all(vec3<bool>(false, true, true)))));
}

fn func_6(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_4(vec4<bool>(any(arg_0.zxw), !(arg_0.x && !arg_0.x), false, true), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a ^ 1i, _wgslsmith_mod_i32(u_input.a, 10650i), u_input.a), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, 2147483647i), vec3<i32>(u_input.a, -1i, -28780i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a)), arg_0.zzz)), firstTrailingBit(vec4<i32>(-1i, u_input.a, 1i, u_input.a) << (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b | u_input.b, ~11192u, 22763u, ~4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, -864f, arg_1)), Struct_1(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-107i, 8977i, u_input.a), countOneBits(vec3<i32>(u_input.a, -36611i, u_input.a)), -vec3<i32>(u_input.a, u_input.a, -2147483647i))), vec4<i32>(_wgslsmith_mult_i32(abs(u_input.a), 0i), u_input.a, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-1i, -2186i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, 26215i)), true), func_3(Struct_2(u_input.a, vec4<u32>(4294967295u, 23476u, u_input.b, u_input.b), Struct_1(vec3<i32>(-5348i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), Struct_1(vec3<i32>(57414i, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1362i, u_input.a)), Struct_1(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec4<i32>(2147483647i, u_input.a, 2147483647i, 0i)))).x)), Struct_3(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(32951u, u_input.b, 40337u)), firstLeadingBit(firstTrailingBit(u_input.a)), ~(~(~vec3<u32>(u_input.b, u_input.b, u_input.b))), abs(vec4<u32>(abs(u_input.b), u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), min(69838u, u_input.b))), Struct_2(u_input.a, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(9518u, 4294967295u, 4294967295u, 25048u), vec4<u32>(0u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 34325u, 15825u, 1u)), Struct_1(-vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, -3461i, -1i, 0i)), Struct_1(vec3<i32>(u_input.a, u_input.a, -16329i), -vec4<i32>(3076i, u_input.a, -2147483647i, u_input.a)), Struct_1(~vec3<i32>(23794i, u_input.a, 0i), -vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)))));
    let var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a, -9618i, ~241i), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, 0i, 51286i), select(max(var_0.b.b.zzy, vec3<i32>(u_input.a, var_0.d.b.x, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.e.b), vec3<i32>(-2147483647i, var_0.d.a.x, 544i)), false)));
    let var_2 = var_0.e;
    let var_3 = var_1.x;
    var var_4 = ~select(var_2.a ^ min(abs(var_2.a), var_2.a), vec3<u32>(u_input.b, 16170u, func_4(-var_2.e.e.b.zx, Struct_1(vec3<i32>(var_3, var_1.x, var_3), var_0.b.b), _wgslsmith_clamp_i32(-2147483647i, 43494i, -2147483647i)).x), select(select(select(vec3<bool>(arg_0.x, var_0.a.x, true), arg_0.wxx, true), !var_0.a.wzx, any(vec2<bool>(var_0.a.x, false))), select(vec3<bool>(var_0.a.x, var_0.a.x, arg_0.x), var_0.a.xxy, !arg_0.xyy), _wgslsmith_f_op_f32(select(-563f, var_0.c.x, var_0.a.x)) > _wgslsmith_f_op_f32(-859f * var_0.c.x)));
    return Struct_1(firstLeadingBit(var_0.e.e.e.a) >> (vec3<u32>(var_0.e.c.x, 4294967295u, ~(~var_4.x)) % vec3<u32>(32u)), firstLeadingBit(vec4<i32>(abs(var_1.x), ~var_0.b.b.x, _wgslsmith_sub_i32(-6368i, var_1.x), var_0.d.a.x) << (vec4<u32>(~var_2.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(32688u, 4294967295u, 4294967295u), vec3<u32>(0u, 25901u, var_4.x)), u_input.b, ~var_4.x) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_4(!vec4<bool>(true, false, arg_0.x, any(select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))), func_6(vec4<bool>(func_5(_wgslsmith_f_op_vec3_f32(func_2())), false, any(vec4<bool>(false, false, arg_0.x, false)) & true, !(!arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)), _wgslsmith_f_op_f32(-825f - -290f))), Struct_1(vec3<i32>(firstTrailingBit(-2147483647i), abs(u_input.a), ~(-76118i)), vec4<i32>(u_input.a, i32(-1i) * -30992i, u_input.a, 17645i)), Struct_3(max(countOneBits(~vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(0u, 4294967295u, u_input.b)), -26132i, max(_wgslsmith_sub_vec3_u32(~vec3<u32>(47393u, 4294967295u, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 6129u, u_input.b), vec3<u32>(u_input.b, u_input.b, 120372u))), ~(~vec3<u32>(u_input.b, u_input.b, 0u))), ~vec4<u32>(u_input.b | 4294967295u, u_input.b, u_input.b, u_input.b), Struct_2(-1i, ~(~vec4<u32>(1u, 64731u, 4294967295u, u_input.b)), func_6(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(max(321f, -1823f))), Struct_1(vec3<i32>(u_input.a, 2147483647i, u_input.a) >> (vec3<u32>(u_input.b, 27833u, 72266u) % vec3<u32>(32u)), min(vec4<i32>(2147483647i, u_input.a, 15716i, -31813i), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), Struct_1(vec3<i32>(26483i, 34830i, -6081i), ~vec4<i32>(u_input.a, u_input.a, 6470i, u_input.a)))));
    var var_1 = var_0.c.xy;
    var var_2 = Struct_3(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(abs(abs(var_0.e.a)), _wgslsmith_add_vec3_u32(~var_0.e.c, max(var_0.e.a, var_0.e.a))), 2489u), -5853i, ~(~var_0.e.c), var_0.e.e.b, var_0.e.e);
    var var_3 = var_0.b;
    var var_4 = ~firstLeadingBit(_wgslsmith_dot_vec2_i32(var_3.b.zz, ~(-var_0.b.b.zy)));
    return countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(var_2.d, vec4<u32>(u_input.b, 4294967295u, var_2.d.x, 0u)), abs(1u), _wgslsmith_div_u32(var_2.d.x, u_input.b)), vec3<u32>(u_input.b, reverseBits(~var_0.e.d.x), 73426u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3((_wgslsmith_mult_vec3_u32(vec3<u32>(68914u, 0u, 4294967295u), vec3<u32>(u_input.b, 4294967295u, u_input.b)) ^ ~func_1(vec3<bool>(false, true, false))) ^ ((~vec3<u32>(13180u, u_input.b, u_input.b) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(u_input.b, 14086u, u_input.b))) ^ max(vec3<u32>(u_input.b, 5802u, 0u), max(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(func_6(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(1073f, 1163f))).b, func_6(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(1478f * -664f)).b), -(~firstTrailingBit(vec4<i32>(u_input.a, -41742i, u_input.a, u_input.a)))), ~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 14957u, u_input.b), vec3<u32>(0u, u_input.b, u_input.b))) << (select(_wgslsmith_div_vec3_u32(func_1(vec3<bool>(false, false, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 35378u, u_input.b))), firstTrailingBit(vec3<u32>(u_input.b, 78376u, u_input.b) | vec3<u32>(33517u, 41222u, 22181u)), vec3<bool>(true, func_5(vec3<f32>(-1006f, -1651f, -1714f)), any(vec3<bool>(false, true, false)))) % vec3<u32>(32u)), ~min(~vec4<u32>(18130u, u_input.b, 51716u, u_input.b), reverseBits(~vec4<u32>(0u, 83431u, u_input.b, 96609u))), Struct_2(u_input.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 94961u, 0u, 61884u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 8834u))), func_6(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-255f, -1509f))))), func_6(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), -502f), func_6(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1385f)), -873f)))));
    var var_1 = Struct_1(var_0.e.c.b.wzz, _wgslsmith_mod_vec4_i32(var_0.e.d.b, max(vec4<i32>(u_input.a, func_6(vec4<bool>(true, true, true, true), 248f).b.x, u_input.a, firstLeadingBit(u_input.a)), _wgslsmith_mult_vec4_i32(~vec4<i32>(49049i, u_input.a, u_input.a, -2147483647i), ~var_0.e.c.b))));
    var_1 = var_0.e.d;
    var_0 = Struct_3(var_0.d.zyw, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.b.yz, vec2<i32>(var_1.a.x, -53175i)), _wgslsmith_mod_i32(1i, var_1.a.x)), vec3<u32>(_wgslsmith_add_u32(countOneBits(1671u), _wgslsmith_div_u32(u_input.b, 1u)), ~u_input.b, _wgslsmith_dot_vec4_u32(var_0.d, _wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, var_0.c.x, 1u, u_input.b), var_0.e.b, true), abs(vec4<u32>(1u, 1u, 4294967295u, 71437u))))), func_4(var_0.e.e.b.zx, Struct_1(var_0.e.e.b.xyx | ~vec3<i32>(var_0.e.d.a.x, var_1.b.x, u_input.a), vec4<i32>(-3651i, u_input.a, max(var_0.b, 0i), -1579i)), ~(~0i)), var_0.e);
    var var_2 = var_0.e;
    var var_3 = _wgslsmith_mult_i32(-1i, 898i);
    let var_4 = -_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a, var_2.e.a.x, var_0.b >> (12305u % 32u), abs(2147483647i)), abs(firstLeadingBit(vec4<i32>(-1i, var_2.d.b.x, -25305i, 0i)))), -var_2.d.b);
    var_2 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1000f + 214f), _wgslsmith_f_op_f32(f32(-1f) * -214f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, -274f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1627f, -2330f), vec2<f32>(473f, -1701f))), all(vec3<bool>(true, false, false))))))), var_0.b);
}

