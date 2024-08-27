struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = abs(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-62655i, u_input.c.x), countOneBits(vec2<i32>(1i, 1i))), 34984i, u_input.a));
    var var_2 = !all(vec2<bool>(!(!arg_0.b), !var_0.b));
    var var_3 = arg_0;
    let var_4 = var_3.b;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32((~vec3<i32>(-20207i, u_input.a, 1i) ^ (u_input.c & vec3<i32>(u_input.a, u_input.a, var_1.x))) << (abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.x, 4294967295u, 41378u), vec3<u32>(0u, var_0.a, var_3.c.x))) % vec3<u32>(32u)), reverseBits(-(var_1 ^ u_input.c))), abs(reverseBits(var_1.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = any(vec3<bool>(true, any(vec3<bool>(true, true, true)), u_input.a <= func_3(Struct_1(u_input.b, false, vec2<u32>(4294967295u, var_0)))));
    let var_2 = vec2<bool>(any(vec3<bool>(true, true, true)), false);
    var var_3 = ~vec4<u32>(u_input.b & 59628u, 6614u, _wgslsmith_clamp_u32(~select(u_input.b, u_input.b, false), var_0, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(43475u, u_input.b)))), firstLeadingBit(u_input.b) & 23775u);
    var var_4 = Struct_1(~select(_wgslsmith_clamp_u32(abs(var_0), ~u_input.b, ~u_input.b), abs(var_3.x), true), false, vec2<u32>(u_input.b, ~(abs(var_0) & var_0)));
    return Struct_1(var_4.a, true, ~vec2<u32>(1u, firstLeadingBit(30090u)) ^ var_4.c);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<f32>(1000f, -1011f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1978f) - _wgslsmith_f_op_f32(select(-420f, _wgslsmith_f_op_f32(f32(-1f) * -146f), all(vec3<bool>(true, arg_2, arg_1.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f * -951f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1165f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1495f)))))));
    let var_1 = arg_1.c;
    var var_2 = Struct_1(~(~func_2().c.x), true, countOneBits(min(vec2<u32>(~1u, u_input.b), ~(~vec2<u32>(0u, u_input.b)))));
    var var_3 = func_2();
    var var_4 = arg_1;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    var var_0 = 2147483647i;
    var_0 = 1i;
    var_0 = -u_input.c.x & min(_wgslsmith_mult_i32(~1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 25923u, arg_0.c.x, arg_1.c.x), vec4<u32>(0u, arg_1.c.x, arg_1.c.x, arg_1.c.x)) % 32u), u_input.a), firstTrailingBit(1i));
    var var_1 = vec4<i32>(u_input.c.x, ~_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(u_input.c.x, -40473i)) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(func_2().c.x, arg_1.c.x, arg_0.a), 1u, countOneBits(select(13208u, u_input.b, arg_0.b))) % 32u), _wgslsmith_sub_i32(u_input.a, max(-2147483647i, u_input.c.x)), u_input.c.x);
    let var_2 = firstTrailingBit(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_0.a, 92099u, 9063u)), vec3<u32>(_wgslsmith_mod_u32(4294967295u, 38030u), _wgslsmith_mod_u32(u_input.b, 0u), ~u_input.b)));
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = func_5(func_4(~(-vec4<i32>(-1i, u_input.c.x, -1i, -1i) & select(vec4<i32>(u_input.c.x, -23583i, -1i, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, 4052i, -18165i), arg_1.x)), func_2(), arg_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.zx, u_input.c.yz), vec2<i32>(u_input.c.x, ~u_input.a))), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1686f, 1000f, 1252f) + vec3<f32>(712f, 1192f, -1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(206f, -1309f, 574f), vec3<f32>(698f, 307f, -563f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1389f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1211f, -2085f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1708f * 2104f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_div_f32(-603f, 545f)), vec2<f32>(-1033f, _wgslsmith_f_op_f32(min(357f, -2039f))))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -334f), -240f)), _wgslsmith_f_op_f32(sign(-378f)))), !vec2<bool>(true, arg_0.b)));
    let var_2 = !(!(!(!select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(false, arg_0.b, arg_1.x)))));
    var var_3 = arg_0;
    var var_4 = Struct_1(var_3.a, all(!select(vec4<bool>(false, false, false, var_2.x), !vec4<bool>(arg_0.b, var_2.x, arg_0.b, arg_1.x), select(vec4<bool>(true, false, var_3.b, false), vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, true, var_3.b, arg_0.b)))), vec2<u32>(33469u, ~min(arg_0.a, arg_0.c.x)));
    return vec4<i32>(u_input.a, _wgslsmith_mod_i32(-(-31742i ^ var_0), 1i), var_0, u_input.a) & (-select(vec4<i32>(0i, var_0, var_0, -1i), vec4<i32>(63310i, -2147483647i, var_0, u_input.c.x), any(vec4<bool>(false, arg_0.b, arg_1.x, arg_0.b))) & ~vec4<i32>(min(var_0, u_input.c.x), _wgslsmith_div_i32(u_input.c.x, -2147483647i), var_0, max(1i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 56132i;
    var var_1 = u_input.c;
    var_1 = max(u_input.c, u_input.c) & -u_input.c;
    var_0 = ~2147483647i;
    var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, countOneBits(u_input.c)), _wgslsmith_add_vec3_i32(~vec3<i32>(select(-303i, u_input.c.x, false), max(-9318i, -1i), firstTrailingBit(u_input.a)), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, var_1.x), u_input.c, u_input.c))));
    var_0 = var_1.x;
    var_1 = vec3<i32>(-1i, u_input.c.x, u_input.c.x);
    let var_2 = ~func_1(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)), true, max(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(24257u, u_input.b), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(9348u, u_input.b))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(17175u, select(~vec3<i32>(var_1.x, u_input.a, var_2.x), var_2.wzz, false) << (firstLeadingBit(select(~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b), false)) % vec3<u32>(32u)));
}

