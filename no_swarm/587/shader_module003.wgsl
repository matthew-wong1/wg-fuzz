struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(reverseBits(select(vec2<i32>(u_input.a >> (u_input.b % 32u), u_input.a), vec2<i32>(-44754i, u_input.a), !arg_0.a.x)), u_input.b, arg_0.c, vec2<u32>(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), abs(63944u)), 1u), ~countOneBits(min(1u, u_input.b))));
    return var_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(700f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(307f)))), -475f, false || any(vec3<bool>(arg_0.x < 0i, arg_1 && true, true))));
    let var_1 = !vec3<bool>(false != (false | select(false, arg_1, false)), !any(select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, true), true)), arg_1 & true);
    let var_2 = Struct_1(!vec2<bool>(all(select(vec4<bool>(arg_1, false, var_1.x, false), vec4<bool>(false, arg_1, false, var_1.x), vec4<bool>(false, var_1.x, arg_1, arg_1))), var_1.x || !var_1.x), _wgslsmith_mod_i32(-1i, 33789i), ~(_wgslsmith_div_i32(arg_0.x, u_input.a) ^ -arg_2.c.a) < -_wgslsmith_mult_i32(u_input.a, -3634i), _wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.c.x, arg_2.a.x, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.c.a, -2147483647i, arg_2.a.x, 2088i), vec4<i32>(arg_0.x, -3921i, arg_0.x, u_input.a))), u_input.c));
    var var_3 = arg_2;
    var var_4 = Struct_1(!var_2.a, -_wgslsmith_mod_i32(~2147483647i, -7663i), true, vec4<i32>(48184i, u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, var_2.d), var_2.b));
    return var_2;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = 4294967295u;
    var_0 = u_input.b;
    let var_1 = _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(-(vec2<i32>(u_input.a, arg_0.b) & vec2<i32>(u_input.a, -9296i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 0i) & arg_0.d.wz, ~vec2<i32>(u_input.a, u_input.a)))), select(func_2(Struct_4(vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), -25835i, Struct_2(20829i))).a, vec2<i32>(u_input.c.x, 2147483647i), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(660f)))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1196f + -222f), _wgslsmith_div_f32(-1012f, 1133f)))));
    var_0 = _wgslsmith_div_u32(u_input.b, ~max(abs(reverseBits(u_input.b)), 33841u));
    var_0 = abs(4294967295u);
    return 1u;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_u32(~func_4(func_3(min(vec2<i32>(arg_0.c.a, -57501i), u_input.c.zw), arg_0.a.x, func_2(arg_0))), u_input.b);
    var var_1 = Struct_3(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, 24004i), countOneBits(vec2<i32>(u_input.c.x, arg_0.b))), countOneBits(vec2<i32>(arg_1, arg_0.b))), vec2<i32>(-arg_0.b, 1i ^ reverseBits(u_input.c.x))), u_input.b, arg_0.c, vec2<u32>(0u, ~func_4(func_3(u_input.c.zy, arg_0.a.x, Struct_3(u_input.c.zw, 30009u, arg_0.c, vec2<u32>(1u, 79837u))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f))), -500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-512f + -295f), _wgslsmith_f_op_f32(482f + -523f), arg_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -771f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2031f, 245f))), 281f))));
    let var_3 = Struct_4(!arg_0.a, 37712i, func_2(arg_0).c);
    let var_4 = var_1.d.x;
    return arg_0.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(-select(~1i, abs(_wgslsmith_mult_i32(u_input.c.x, arg_3.a.x)), false));
    var_0 = Struct_2(var_0.a);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1099f);
    return func_3(arg_3.a, u_input.c.x != _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!vec3<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), !(!vec4<bool>(u_input.b != 4294967295u, all(vec2<bool>(true, false)), true, all(vec4<bool>(false, true, true, true)))), func_1(Struct_4(vec4<bool>(true, true, true, u_input.b < u_input.b), -_wgslsmith_add_i32(u_input.a, u_input.a), Struct_2(-51231i)), u_input.c.x), Struct_3(countOneBits(vec2<i32>(u_input.a, -12849i << (u_input.b % 32u))), min(~0u, u_input.b), func_2(Struct_4(vec4<bool>(false, true, false, false), _wgslsmith_mult_i32(u_input.a, -73368i), func_2(Struct_4(vec4<bool>(true, false, true, false), -1i, Struct_2(u_input.c.x))).c)).c, ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.b), min(vec2<u32>(57446u, 913u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u, 1u))));
    let var_1 = true;
    let var_2 = !var_1;
    var var_3 = 4294967295u;
    let var_4 = _wgslsmith_add_vec2_u32(~vec2<u32>(~u_input.b, u_input.b), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b))) & u_input.b, 24093u));
    var_0 = func_5(!vec3<bool>(!var_2 || true, true, true), !select(!select(vec4<bool>(var_1, true, true, var_2), vec4<bool>(var_2, var_2, var_0.c, false), vec4<bool>(var_2, var_1, var_0.a.x, var_2)), select(!vec4<bool>(var_2, var_0.c, var_2, true), !vec4<bool>(false, false, true, var_1), vec4<bool>(false, true, var_2, false)), true), vec4<bool>(!var_2, true, var_1 || (var_0.b > countOneBits(u_input.a)), any(var_0.a) != true), func_2(Struct_4(select(select(vec4<bool>(var_1, true, var_0.a.x, var_0.a.x), vec4<bool>(var_1, false, false, false), vec4<bool>(true, var_1, var_2, false)), vec4<bool>(var_2, var_0.c, true, var_0.a.x), vec4<bool>(var_2, false, var_1, false)), var_0.b, Struct_2(func_2(Struct_4(vec4<bool>(var_1, var_1, var_2, true), -2147483647i, Struct_2(2147483647i))).c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(8833i, -34705i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.d.zzw, vec3<i32>(-32813i, 1i, 2147483647i), var_0.d.wyy), u_input.c.xzy), var_0.b), ~u_input.c), 4294967295u, u_input.c, var_0.b, -1404f);
}

