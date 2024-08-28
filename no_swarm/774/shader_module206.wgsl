struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = abs(1i | firstLeadingBit(arg_0.c | 26775i));
    return _wgslsmith_sub_i32(-24432i, reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.c, arg_0.c, var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(-17761i, arg_0.c, var_0, 11588i), vec4<i32>(-25560i, arg_0.c, 0i, 49412i)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_i32(min(-13816i, func_3(Struct_2(u_input.a.xwy, Struct_1(vec4<f32>(-1000f, arg_0.x, arg_0.x, arg_0.x), vec2<bool>(true, false)), 2147483647i, u_input.a.x)) ^ -2632i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(52609i, 0i), vec2<i32>(-39853i, -1i), vec2<i32>(2147483647i, 0i))), vec2<i32>(max(78693i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -28221i, 2147483647i, 1i), vec4<i32>(20342i, 1i, -8431i, 1i)))) << (66825u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(~16764i, 0i, _wgslsmith_mod_i32(-68895i, func_3(Struct_2(u_input.a.xyw, Struct_1(vec4<f32>(arg_0.x, arg_0.x, -734f, -1066f), vec2<bool>(false, false)), -39559i, 105409u))), 1i), _wgslsmith_add_vec4_i32(-(vec4<i32>(-2147483647i, 2147483647i, 2050i, 27283i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(-58988i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -4228i, 2147483647i, 2147483647i), vec4<i32>(-12393i, 0i, -1i, -2147483647i)), ~1i, _wgslsmith_mod_i32(0i, -1i)))));
    let var_1 = i32(-1i) * -34990i;
    let var_2 = Struct_3(~_wgslsmith_sub_u32(_wgslsmith_div_u32(85020u, u_input.a.x), u_input.a.x & 7792u) ^ ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), 43526u, ~u_input.a.x));
    var_0 = -abs(var_1) ^ (_wgslsmith_add_i32(-_wgslsmith_add_i32(8004i, 0i), max(-var_1, ~var_1)) ^ min(858i, -(var_1 ^ var_1)));
    let var_3 = _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.yzy & (vec3<u32>(0u, 50870u, 4294967295u) & vec3<u32>(var_2.a, 4294967295u, var_2.a)), ~select(u_input.a.wzy, u_input.a.yxy, vec3<bool>(true, false, false))), u_input.a.yxw);
    return Struct_4(Struct_2(min(~vec3<u32>(u_input.a.x, u_input.a.x, 36808u), ~u_input.a.xzx), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-299f, 330f, 900f, 436f))))), vec2<bool>(true, true)), firstLeadingBit(-2147483647i), ~(~_wgslsmith_mod_u32(92271u, 70456u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_2.a, 24799u, var_3.x), u_input.a)), abs(~vec2<u32>(var_2.a, 54632u))), _wgslsmith_f_op_vec2_f32(min(arg_0.yy, arg_0.zz)), 1i);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_4 {
    return func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.xxy))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32) -> i32 {
    let var_0 = true;
    let var_1 = Struct_3(_wgslsmith_clamp_u32(arg_0.x, arg_1.b, ~(_wgslsmith_mod_u32(60202u, u_input.a.x) & ~arg_0.x)));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(step(arg_1.a.b.a.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.a.b.a.xxz, arg_1.a.b.a.wxy, var_0)), _wgslsmith_f_op_vec3_f32(arg_1.a.b.a.zxx * arg_1.a.b.a.yyw)))))).a.b;
    var_2 = func_2(arg_1.a.b.a.xyw).a.b;
    var_2 = arg_1.a.b;
    return arg_1.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 615f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, 321f, -1002f, 344f), vec4<f32>(-1405f, -1375f, -442f, arg_2.x))))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true))))), vec2<bool>(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 1040f, arg_2.x) * arg_2), vec3<f32>(-841f, arg_2.x, arg_2.x)))).a.b.b.x));
    let var_1 = ~func_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wxw, u_input.a.xxy, vec3<u32>(4294967295u, 4294967295u, 1u)), max(u_input.a.wzx, vec3<u32>(9919u, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x, 0u >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(1u, 7371u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))))).b;
    var_0 = func_1(min(30232u, u_input.a.x) | _wgslsmith_sub_u32(~reverseBits(15985u), ~(~81828u)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f))))), func_1(abs(_wgslsmith_mult_u32(u_input.a.x, 0u)), vec4<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), -592f, _wgslsmith_f_op_f32(ceil(arg_2.x)), var_0.a.x)).a.b.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-780f, arg_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -959f))).a.b;
    var var_2 = ~u_input.a;
    var var_3 = u_input.a;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + arg_2.x)) - 615f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-508f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(-566f)) != _wgslsmith_f_op_f32(f32(-1f) * -172f);
    let x = u_input.a;
    s_output = func_5(vec3<i32>(_wgslsmith_div_i32(1i, ~1i) ^ ((-4195i << (u_input.a.x % 32u)) << (firstTrailingBit(4294967295u) % 32u)), abs(abs(_wgslsmith_clamp_i32(-2147483647i, 0i, 1i))), -1i), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(~vec2<i32>(1i, 2276i)), countOneBits(vec2<i32>(1i, 1i))), vec2<i32>(1i, func_4(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), func_1(u_input.a.x, vec4<f32>(1020f, 776f, -1293f, 1005f)), 165f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3276f), _wgslsmith_f_op_f32(round(-1390f)), _wgslsmith_div_f32(248f, _wgslsmith_f_op_f32(abs(706f)))));
}

