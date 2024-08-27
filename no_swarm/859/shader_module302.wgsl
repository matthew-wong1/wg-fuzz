struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 0u), 4294967295u, -13972i);

var<private> global1: vec3<u32> = vec3<u32>(79560u, 69090u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    global0 = Struct_2(arg_0.c, global1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(arg_0.a, u_input.c.x, -20775i, global0.c)), vec4<i32>(global0.c, global0.c, ~global0.c, arg_0.a)), _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, 31995i, u_input.c.x, -1470i)), select(vec4<i32>(26431i, u_input.c.x, 1i, 2147483647i), vec4<i32>(-2147483647i, u_input.c.x, 13636i, arg_0.a), global0.a.a) ^ ~vec4<i32>(0i, u_input.c.x, 1i, -52924i))));
    let var_0 = Struct_2(global0.a, 1u, 0i);
    let var_1 = 1022u;
    let var_2 = vec2<i32>(-1i) * -u_input.c;
    global0 = Struct_2(var_0.a, _wgslsmith_div_u32(global1.x, _wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(9039u, u_input.b.x)), 28482u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.c, u_input.c | firstTrailingBit(abs(var_2))));
    return max(~reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1, 4294967295u), 1u)), _wgslsmith_dot_vec4_u32(max(~select(u_input.b, u_input.b, false), _wgslsmith_add_vec4_u32(max(vec4<u32>(0u, 125192u, 4294967295u, 768u), u_input.b), u_input.b & u_input.b)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c.b, 1u, var_1), max(vec4<u32>(60429u, 0u, 1u, 24221u), u_input.b)), 1u << (_wgslsmith_mod_u32(8766u, var_1) % 32u), select(~1u, global0.b, arg_0.d.x))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global0.b < ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(Struct_3(u_input.c.x, -1447f, arg_2, vec3<bool>(false, true, true)), false), 21036u), max(~u_input.a, firstLeadingBit(vec2<u32>(57395u, 10681u))))), 59871u, 14284i);
    global1 = firstLeadingBit(~(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(785u, arg_0.c.b, arg_0.c.b), vec3<u32>(arg_0.c.b, 1u, u_input.a.x), vec3<bool>(true, false, arg_2.a)), abs(vec3<u32>(arg_0.c.b, u_input.d, arg_2.b)), ~u_input.b.yyw)));
    global0 = Struct_2(var_0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(49979u), abs(global0.a.b), _wgslsmith_add_u32(global0.b, var_0.a.b), u_input.d), ~(~vec4<u32>(18865u, 0u, 0u, global0.a.b))), ~(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.c, var_0.c, -17448i, 10920i)), vec4<i32>(-34304i, 25949i, -54104i, arg_0.a) & vec4<i32>(55802i, global0.c, var_0.c, arg_0.a))));
    var var_1 = Struct_3(_wgslsmith_dot_vec4_i32(abs(abs(abs(vec4<i32>(arg_0.a, -1i, var_0.c, global0.c)))), ~max(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.c, global0.c, 2147483647i), vec4<i32>(-45116i, 14203i, arg_0.a, global0.c)), vec4<i32>(7196i, 58088i, u_input.c.x, 30937i))), _wgslsmith_f_op_f32(-arg_1), arg_0.c, select(vec3<bool>(true, true, true), !select(arg_0.d, !vec3<bool>(var_0.a.a, false, global0.a.a), select(arg_0.d, vec3<bool>(false, arg_0.c.a, arg_0.d.x), false)), select(arg_0.d, vec3<bool>(arg_0.d.x, !global0.a.a, arg_2.a), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, arg_2.a), true))));
    let var_2 = Struct_2(arg_0.c, 14220u, ~(1i & var_0.c) >> (arg_0.c.b % 32u));
    return Struct_1(var_1.b <= -551f, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.b, u_input.d), abs(_wgslsmith_mod_vec2_u32(~global1.zy, u_input.b.yz | u_input.b.zy))));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global1 = ~u_input.b.yww;
    var var_0 = ~reverseBits(u_input.b.xww);
    let var_1 = func_2(Struct_3(u_input.c.x, -1494f, global0.a, vec3<bool>(all(select(vec3<bool>(true, global0.a.a, global0.a.a), vec3<bool>(global0.a.a, arg_0.a, arg_0.a), true)), true, func_2(Struct_3(-1i, 275f, global0.a, vec3<bool>(true, true, global0.a.a)), -981f, global0.a).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1646f - _wgslsmith_f_op_f32(trunc(-134f))) - _wgslsmith_f_op_f32(f32(-1f) * -938f))), func_2(Struct_3(firstLeadingBit(u_input.c.x), 141f, Struct_1(false && global0.a.a, u_input.d >> (u_input.d % 32u)), !vec3<bool>(true, arg_0.a, global0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(sign(926f)))), func_2(Struct_3(global0.c, -113f, global0.a, select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(global0.a.a, global0.a.a, false), true)), _wgslsmith_f_op_f32(644f - -468f), global0.a))).b;
    global1 = abs(abs(u_input.b.zww));
    let var_2 = vec4<i32>(i32(-1i) * -1i, -(~27290i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.c.x, firstLeadingBit(-2147483647i) >> (arg_0.b % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global0.c, 73590i), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(global0.c, 1i, global0.c) | vec3<i32>(u_input.c.x, 1i, u_input.c.x)), min(select(vec3<i32>(u_input.c.x, 2147483647i, global0.c), vec3<i32>(global0.c, u_input.c.x, 18325i), arg_0.a), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c.x, global0.c), vec3<i32>(u_input.c.x, 2147483647i, 0i))), ~(vec3<i32>(44672i, global0.c, global0.c) ^ vec3<i32>(global0.c, 1i, -1i)))));
    return select(!select(!vec3<bool>(global0.a.a, false, arg_0.a), vec3<bool>(global0.a.a, global0.a.a, false), select(vec3<bool>(global0.a.a, arg_0.a, global0.a.a), !vec3<bool>(global0.a.a, true, global0.a.a), true)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(global0.a.a, false, true), global0.a.a), true), vec3<bool>(global0.a.a, all(select(vec3<bool>(global0.a.a, true, false), vec3<bool>(global0.a.a, arg_0.a, false), arg_0.a)), !global0.a.a), arg_0.a), global0.a.a);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global1 = vec3<u32>(75674u, 4294967295u, global0.a.b);
    var var_0 = all(select(select(select(!vec3<bool>(global0.a.a, global0.a.a, false), vec3<bool>(true, true, true), global0.a.a), select(vec3<bool>(true, global0.a.a, true), select(vec3<bool>(false, false, false), vec3<bool>(false, global0.a.a, global0.a.a), vec3<bool>(global0.a.a, false, global0.a.a)), global0.a.a), func_4(func_2(Struct_3(u_input.c.x, -610f, global0.a, vec3<bool>(true, true, global0.a.a)), -427f, global0.a))), vec3<bool>(false, true, true), ~_wgslsmith_div_u32(1u, u_input.b.x) >= ~1u));
    global0 = Struct_2(Struct_1(false, 7498u), ~(u_input.d >> (func_2(Struct_3(-7524i, -810f, Struct_1(global0.a.a, global1.x), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -903f), Struct_1(global0.a.a, u_input.b.x)).b % 32u)), 1i >> (firstLeadingBit(4294967295u) % 32u));
    let var_1 = min(firstLeadingBit(global0.c), u_input.c.x);
    let var_2 = _wgslsmith_div_i32(~(-arg_0.x), global0.c) ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, u_input.c.x), var_1);
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(max(vec3<u32>(1u, 28039u, func_1(~vec2<i32>(9816i, global0.c))), u_input.b.yyz));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1682f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-313f * 154f), _wgslsmith_f_op_f32(round(467f)))) - 220f))));
    var var_1 = _wgslsmith_f_op_f32(sign(var_0));
    let var_2 = min(6990u, 1u);
    global0 = Struct_2(func_2(Struct_3(-12334i, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_0 * var_0)), func_2(Struct_3(u_input.c.x, var_0, global0.a, vec3<bool>(global0.a.a, true, false)), var_0, Struct_1(true, 17044u)), !func_4(global0.a)), var_0, func_2(Struct_3(abs(-28089i), var_0, Struct_1(global0.a.a, global0.b), vec3<bool>(global0.a.a, global0.a.a, global0.a.a)), -931f, global0.a)), ~(reverseBits(4294967295u) << (global0.a.b % 32u)) & func_1(-vec2<i32>(1i, 1i)), (_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 30471i), u_input.c, u_input.c), u_input.c) ^ u_input.c.x) << (global1.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(874f, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(864f, var_0) + vec2<f32>(657f, var_0)))));
}

