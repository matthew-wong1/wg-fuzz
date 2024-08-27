struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, -27792i, 6215i), 408f, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(arg_0.wxz, countOneBits(vec3<i32>(_wgslsmith_mult_i32(29863i, -333i), 2147483647i, 0i))), -866f, 1u);
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(vec3<i32>(1i, countOneBits(min(global0.a.x, 1i)), ~(-(~(-13435i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(sign(var_0.b)), all(!vec3<bool>(var_1.x, var_1.x, var_1.x))))), _wgslsmith_add_u32(abs(~1u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c, 4294967295u), vec3<u32>(95793u, global0.c, var_0.c)))));
    global0 = Struct_1(-vec3<i32>(_wgslsmith_mod_i32(var_2.a.x, var_0.a.x), _wgslsmith_mult_i32(35490i, var_0.a.x) << (~1u % 32u), global0.a.x), 169f, 11565u);
    let var_3 = Struct_1(~vec3<i32>(~(-6461i), -max(u_input.a.x, arg_0.x), firstLeadingBit(_wgslsmith_mod_i32(var_2.a.x, var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + var_2.b) + _wgslsmith_f_op_f32(-global0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), ~abs(10721u));
    return Struct_1(u_input.a.xww, 918f, ~(~_wgslsmith_sub_u32(var_0.c, select(var_0.c, 0u, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<i32> {
    global0 = arg_0;
    global0 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(arg_0.b + global0.b), _wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(~vec2<u32>(4294967295u, global0.c))), ~min(vec2<u32>(18666u, arg_0.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(5069u, 20205u), vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(arg_0.c, global0.c)))));
    global0 = arg_0;
    let var_0 = func_2(vec4<i32>(arg_0.a.x, global0.a.x, 33026i, 36869i));
    var var_1 = Struct_1(-firstLeadingBit(vec3<i32>(arg_2.a.x, firstLeadingBit(-17754i), _wgslsmith_clamp_i32(-6982i, var_0.a.x, 25276i))), _wgslsmith_f_op_f32(floor(258f)), ~_wgslsmith_mod_u32(~arg_0.c | ~74591u, arg_0.c));
    return u_input.a.xww;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.a.wyy, -1000f, global0.c);
    let var_1 = var_0.b;
    var var_2 = Struct_1(-(~vec3<i32>(0i, _wgslsmith_add_i32(-37282i, arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, global0.a.x), u_input.a))), 612f, abs(_wgslsmith_add_u32(0u, var_0.c)));
    var_2 = Struct_1(abs(reverseBits(vec3<i32>(abs(u_input.a.x), _wgslsmith_sub_i32(29473i, arg_0.a.x), i32(-1i) * -1i))), var_0.b, firstTrailingBit(var_2.c));
    let var_3 = select(!vec2<bool>(true, _wgslsmith_f_op_f32(trunc(-1314f)) < _wgslsmith_f_op_f32(step(var_0.b, var_0.b))), vec2<bool>(false, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)))), vec2<bool>(true, (abs(var_0.a.x) >> ((116006u << (var_2.c % 32u)) % 32u)) <= -2147483647i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_3(Struct_1(func_1(Struct_1(-u_input.a.yzx, _wgslsmith_f_op_f32(-global0.b), abs(global0.c)), vec2<bool>(true, true), Struct_1(u_input.a.wyy, 223f, firstLeadingBit(1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(295f, -488f)), 4294967295u));
    let var_0 = all(vec4<bool>(global0.c != 1u, true || all(vec2<bool>(true, true)), max(global0.c, 1u) < (~global0.c >> (0u % 32u)), true));
    var var_1 = _wgslsmith_div_i32(u_input.a.x, -(~select(global0.a.x, 47327i << (1u % 32u), var_0 & var_0)));
    let var_2 = Struct_1(global0.a, global0.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u), 26163u, _wgslsmith_mod_u32(4294967295u, 4294967295u)), reverseBits(~vec3<u32>(0u, 33558u, global0.c))));
    var var_3 = 63995u;
    var var_4 = ~(-1i);
    var_3 = _wgslsmith_div_u32(~abs(_wgslsmith_sub_u32(4294967295u, ~global0.c)), 1u >> (abs(global0.c) % 32u));
    var_3 = ~61405u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(-var_2.a.x)), global0.c, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f + var_2.b)), _wgslsmith_f_op_f32(min(521f, -194f)))), _wgslsmith_f_op_f32(var_2.b * func_2(u_input.a & u_input.a).b), _wgslsmith_f_op_f32(f32(-1f) * -637f), 779f), var_2.a.yz);
}

