struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    global0 = countOneBits(u_input.b);
    let var_0 = u_input.c;
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~u_input.b, 52076u), u_input.b, 91384u, 96400u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7336u, 0u, u_input.b, 1u), vec4<u32>(51786u, u_input.b, 1u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 0u, 19503u) ^ vec4<u32>(35624u, 32039u, u_input.b, 1u)) & vec4<u32>(abs(u_input.b), 6486u, _wgslsmith_mult_u32(10525u, u_input.b), ~u_input.b)), firstLeadingBit(u_input.a));
    global0 = u_input.b;
    return reverseBits(abs(i32(-1i) * -(var_1.b.x ^ u_input.e)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = vec2<i32>(2147483647i, arg_0);
    global0 = u_input.b;
    var var_1 = vec2<i32>(1i, _wgslsmith_mod_i32(func_3() & arg_0, -40988i) ^ 0i);
    let var_2 = Struct_1(~vec4<u32>(_wgslsmith_div_u32(50242u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b), vec4<u32>(0u, 53663u, u_input.b, 1u) & vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), ~3212u, 1u), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, -u_input.a), -(~vec4<i32>(16446i, var_0.x, u_input.a.x, var_1.x))));
    global0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(max(vec2<u32>(_wgslsmith_clamp_u32(var_2.a.x, 4294967295u, 1u), _wgslsmith_mult_u32(u_input.b, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.x, 0u), select(vec2<u32>(47127u, 10121u), var_2.a.yx, arg_1)))), vec2<u32>(~u_input.b, 1u));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    global0 = arg_2.a.x;
    global0 = ~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.a.x, u_input.b, arg_2.a.x), vec4<u32>(20279u, 0u, 1u, firstTrailingBit(arg_2.a.x))));
    let var_0 = -arg_2.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1713f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(765f, _wgslsmith_f_op_f32(-629f * 397f), true)))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(365f)) - -354f)), _wgslsmith_f_op_f32(step(-812f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f)))))));
    global0 = 36192u;
    return ~arg_0.a;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(firstLeadingBit(func_4(Struct_1(~vec4<u32>(u_input.b, 32535u, u_input.b, u_input.b), u_input.a), func_2(i32(-1i) * -33433i, select(vec2<bool>(false, false), vec2<bool>(true, true), false)), func_2(u_input.e, select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true)), vec4<i32>(u_input.a.x, max(_wgslsmith_div_i32(20883i, u_input.a.x), _wgslsmith_add_i32(-31609i, 0i)), select(-1i, 1i, false) << (u_input.b % 32u), abs(firstTrailingBit(1i))) << (~vec4<u32>(u_input.b, ~u_input.b, _wgslsmith_sub_u32(4294967295u, 1u), u_input.b) % vec4<u32>(32u)));
    var_0 = Struct_1(~func_4(func_2(2147483647i, vec2<bool>(true, false)), func_2(var_0.b.x, vec2<bool>(false, true)), Struct_1(vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<i32>(2147483647i, 51192i, var_0.b.x, var_0.b.x)), true) << (vec4<u32>(12232u, func_4(func_2(-2147483647i, vec2<bool>(false, true)), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, var_0.b), true).x, u_input.b, _wgslsmith_dot_vec3_u32(var_0.a.yzx | var_0.a.xzw, ~var_0.a.www)) % vec4<u32>(32u)), u_input.a);
    global0 = u_input.b;
    var var_1 = var_0.b.x;
    let var_2 = u_input.b;
    return countOneBits(var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f + -256f) + _wgslsmith_f_op_f32(max(-1434f, -1593f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1());
}

