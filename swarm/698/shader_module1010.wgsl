struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = Struct_1(vec3<i32>(-10717i, 2147483647i, u_input.b.x));
    let var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1408f)), -2641f))), 452f));
    var_2 = arg_0;
    return all(vec2<bool>(true && all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), true));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = abs(~vec2<u32>(~(~6205u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 94038u, arg_1), vec3<u32>(arg_1, arg_1, 55139u))));
    var var_2 = Struct_1(arg_2.a);
    var var_3 = vec4<bool>(select(true, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(arg_2, var_0))), false, all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, true, false))) | true);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(753f + -131f), _wgslsmith_f_op_f32(f32(-1f) * -1148f))) - -399f)), -897f);
    return Struct_1(var_2.a);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(~abs(select(~vec3<u32>(4294967295u, 64572u, 20537u), vec3<u32>(0u, 0u, 1u), true)), ~vec3<u32>(22591u, 24730u, 0u));
    var var_1 = Struct_1(select(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), ~vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, 1i, u_input.b.x))), -(~(~vec3<i32>(1i, 1i, u_input.b.x))), vec3<bool>(true, true, true)));
    var var_2 = Struct_1(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.b.x, firstLeadingBit(u_input.a.x), u_input.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, -40421i, 0i), vec4<i32>(6432i, -42179i, 6295i, 1i)), u_input.a.x, -2147483647i))));
    let var_3 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, max(var_1.a.x >> (var_0.x % 32u), u_input.a.x), -(i32(-1i) * -33533i)), -(~_wgslsmith_div_vec3_i32(var_2.a, vec3<i32>(-41481i, -25772i, -3261i)))));
    let var_4 = func_2(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, countOneBits(37513u)) << (var_0.x % 32u), ~var_0.x), 97542u, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a.x, ~(-1i), firstTrailingBit(var_1.a.x)), firstTrailingBit(_wgslsmith_div_vec3_i32(var_1.a, var_2.a)))));
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a.x, var_1.a.x, max(_wgslsmith_dot_vec3_i32(var_2.a, var_3.a), abs(0i))), countOneBits(vec3<i32>(i32(-1i) * -2147483647i, 1i & var_2.a.x, var_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~vec2<i32>(7118i, var_0.a.x & var_0.a.x);
    let var_2 = func_2(1u, 1u, func_1());
    let var_3 = vec2<i32>(-60629i, var_1.x);
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f * _wgslsmith_f_op_f32(step(1031f, -102f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(750f)), 1f))), ~(~1u), 3366u);
}

