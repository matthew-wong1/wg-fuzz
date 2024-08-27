struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_i32(-1i, 1i);
    let var_1 = vec3<u32>(abs(~(~(~u_input.a))), u_input.a, u_input.a);
    return !(!vec2<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true || arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(f32(-1f) * -777f)), -1406f)), -207f, !(false && any(vec4<bool>(true, arg_0.b, arg_1, true))))) * -438f);
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_1(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(select(u_input.d, vec3<i32>(arg_0.x, arg_0.x, -11640i), vec3<bool>(false, false, true)), ~vec3<i32>(-1i, 1i, arg_0.x)), ~vec3<i32>(-31204i, -2147483647i, arg_0.x)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 0u, 29998u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 105951u, 1u), vec4<u32>(u_input.a, 0u, 43976u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)), vec4<u32>(u_input.a, 0u, 1u, u_input.a) & vec4<u32>(0u, 4294967295u, 64155u, 22332u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(var_0, true, false, var_0.b.x), false, Struct_2(var_0, false, false, 76003u), func_3(false))))) + -1066f);
    var_1 = _wgslsmith_f_op_f32(-637f * _wgslsmith_f_op_f32(trunc(2290f)));
    var var_2 = ~var_0.b.yzw;
    var_2 = vec3<u32>(_wgslsmith_div_u32(~(~(u_input.a & u_input.a)), ~_wgslsmith_dot_vec3_u32(var_0.b.wyz, _wgslsmith_div_vec3_u32(var_0.b.zww, var_0.b.yww))), ~var_0.b.x >> (firstLeadingBit(u_input.a) % 32u), abs(1u));
    return Struct_4(Struct_2(var_0, false, any(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true)), ~_wgslsmith_mod_u32(u_input.a, 1u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -45360i, ~u_input.c.x), arg_0.a.a.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.c.x, -22379i), ~u_input.c.x), i32(-1i) * -34810i);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(104f))) > -569f;
    var var_3 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_dot_vec4_u32(var_1.a.a.b, vec4<u32>(u_input.a, arg_2.x, 1u, var_1.a.d))), u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(~0u, arg_2.x >> (u_input.a % 32u)), arg_2.zw));
    var var_4 = ~(~abs(0u));
    return func_2(var_0);
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_2(arg_2.a.a, false, arg_2.a.c, u_input.a);
    var_0 = func_1(Struct_4(arg_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.x, -185f, 213f, 264f))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.x, -665f)), _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_3)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3)))), ~(~(~vec4<u32>(arg_0, arg_0, arg_2.a.a.b.x, 4294967295u) ^ ~vec4<u32>(0u, 63627u, 0u, 35862u)))).a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1185f - arg_3.x)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(abs(var_0.a.a), _wgslsmith_sub_vec3_i32(~arg_2.a.a.a, ~var_0.a.a)), vec4<u32>(_wgslsmith_sub_u32(1u ^ arg_2.a.d, _wgslsmith_mod_u32(1u, arg_0)), u_input.a << (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u), 1u ^ arg_2.a.a.b.x, max(arg_0, func_2(vec4<i32>(-2147483647i, var_0.a.a.x, u_input.b, 1i)).a.d))), arg_2.a.c & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))) <= 149f), all(vec3<bool>(var_0.b, all(vec4<bool>(var_0.b, false, false, var_0.b)), true)), 1u);
    var_0 = Struct_2(var_0.a, (max(~var_0.a.a.x, ~(-1i)) >> (u_input.a % 32u)) >= min(-u_input.c.x, ~firstLeadingBit(u_input.d.x)), !var_0.c, _wgslsmith_mult_u32(~arg_2.a.a.b.x, ~(~arg_2.a.d)));
    return var_0.a.a;
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = 4294967295u;
    var_0 = 1u;
    let var_1 = vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.d.x, -44025i, -7967i), arg_3.a.a.a), ~vec3<i32>(arg_2.x, 2147483647i, -1i)), -arg_2)), reverseBits(arg_2.x), 20818i);
    let var_2 = select(!vec2<bool>(!arg_3.a.c, arg_3.a.c), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(arg_3.a.b, false), vec2<bool>(false, true)), vec2<bool>(true, func_1(arg_3, vec4<f32>(-727f, 696f, 339f, -1683f), vec4<u32>(4294967295u, u_input.a, arg_3.a.a.b.x, arg_3.a.d)).a.c)), true);
    var var_3 = vec4<i32>(max(-arg_2.x, -6330i), countOneBits(select(arg_3.a.a.a.x, ~2623i, true)), var_1.x, -max(14101i, -(4300i ^ var_1.x)));
    return Struct_3(func_2(abs(-_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, -30816i, 0i, -1i), vec4<i32>(var_3.x, 2147483647i, -45416i, 0i)))).a, func_2(select(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 16170i, -2147483647i), vec3<i32>(u_input.c.x, var_3.x, -20645i)), 38287i >> (1u % 32u), max(var_1.x, u_input.d.x)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(arg_2.x, 1i, arg_2.x, 0i)), firstLeadingBit(vec4<i32>(-1i, 4488i, 3249i, var_3.x))), false)).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-916f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), -_wgslsmith_sub_vec3_i32(func_5(_wgslsmith_mod_u32(u_input.a, u_input.a), ~vec2<i32>(u_input.d.x, 1i), func_1(Struct_4(Struct_2(Struct_1(vec3<i32>(u_input.b, u_input.b, 324i), vec4<u32>(u_input.a, u_input.a, 19749u, 1u)), false, true, 11520u)), vec4<f32>(-1000f, 540f, -829f, 1105f), vec4<u32>(u_input.a, 1u, 0u, 37085u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, 955f, -927f, -859f))), vec3<i32>(u_input.b ^ -1i, u_input.b, 1i)), func_2(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, u_input.c.x, 33942i, 1i), vec4<i32>(u_input.b, -11835i, 40833i, 2147483647i) | vec4<i32>(2147483647i, -1i, u_input.b, 0i), -vec4<i32>(-2147483647i, 37317i, u_input.d.x, u_input.d.x)) ^ ~max(vec4<i32>(-3053i, -2147483647i, 41550i, u_input.b), vec4<i32>(53565i, u_input.b, 22115i, u_input.b))));
    let var_1 = vec4<i32>(var_0.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(var_0.b.a.x), ~(-5788i)), _wgslsmith_mult_vec2_i32(func_5(var_0.a.a.b.x, var_0.a.a.a.zx, Struct_4(var_0.a), vec4<f32>(-1575f, 1079f, 972f, -697f)).yx, var_0.a.a.a.yz)), -953i, ~(~(-16098i))) & _wgslsmith_mult_vec4_i32(vec4<i32>(~select(37096i, u_input.b, var_0.a.b), var_0.a.a.a.x, u_input.c.x & _wgslsmith_div_i32(33001i, u_input.b), func_1(Struct_4(var_0.a), vec4<f32>(1173f, -837f, -1793f, -353f), vec4<u32>(17456u, 0u, 1u, 14646u)).a.a.a.x & 1i), select(~vec4<i32>(24614i, -2147483647i, -1i, -43304i) << (firstTrailingBit(var_0.b.b) % vec4<u32>(32u)), reverseBits(vec4<i32>(var_0.b.a.x, -20577i, 2147483647i, u_input.c.x) << (vec4<u32>(var_0.a.d, var_0.b.b.x, 0u, var_0.b.b.x) % vec4<u32>(32u))), select(select(vec4<bool>(var_0.a.b, var_0.a.c, false, var_0.a.b), vec4<bool>(true, false, var_0.a.c, var_0.a.c), var_0.a.c), !vec4<bool>(false, var_0.a.b, false, var_0.a.c), vec4<bool>(var_0.a.b, var_0.a.c, var_0.a.b, false))));
    var var_2 = _wgslsmith_add_i32(func_5(u_input.a, ~vec2<i32>(2328i, ~var_0.b.a.x), Struct_4(Struct_2(Struct_1(vec3<i32>(-32239i, -16086i, var_1.x), vec4<u32>(u_input.a, 35468u, 4294967295u, var_0.a.d)), any(vec2<bool>(true, false)), var_0.a.b | false, min(var_0.b.b.x, var_0.a.a.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-850f, -1683f, -347f, 1181f), vec4<f32>(388f, 391f, -1273f, 1583f))))).x, _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_sub_i32(-2147483647i, var_0.b.a.x), (var_1.x & ~(-1i)) ^ (var_1.x >> (var_0.b.b.x % 32u)), reverseBits(~(-2147483647i))));
    let var_3 = func_6(-437f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, -198f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1249f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(657f, -153f), vec2<f32>(698f, -913f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1260f, 2240f), vec2<f32>(-1000f, -1047f))))))), max(var_0.a.a.a, select(vec3<i32>(-2147483647i, u_input.b, 6058i), u_input.c, true)), func_2(vec4<i32>(~u_input.c.x, abs(var_0.a.a.a.x), var_0.b.a.x | -2147483647i, -var_0.a.a.a.x) << ((var_0.b.b ^ func_2(vec4<i32>(24457i, -1i, var_0.b.a.x, var_1.x)).a.a.b) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(751f, 1525f) + -833f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(354f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(597f, -1086f), vec2<f32>(678f, 519f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1692f, 1961f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(var_3.a.a, var_3.a.c, true, 59615u), false, var_3.a, vec2<bool>(true, true)))), 985f)));
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(875f)), _wgslsmith_f_op_f32(f32(-1f) * -191f), var_4.x, var_4.x));
    let var_6 = !(var_0.a.b && true);
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_sub_vec4_u32(var_0.b.b, var_0.a.a.b)) | ~(~var_3.a.a.b)), _wgslsmith_add_i32(var_1.x, ~(-var_3.a.a.a.x) & 18072i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(func_2(var_1).a.a, var_6, var_0.a.c && false, 1u), true, func_2(vec4<i32>(var_3.b.a.x, var_3.b.a.x, 31049i, 0i)).a, select(!vec2<bool>(var_0.a.c, false), !vec2<bool>(true, var_0.a.b), var_3.a.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec3<i32>(var_3.a.a.a.x, 1i, var_0.b.a.x), var_0.a.a.b), true, false, u_input.a), var_0.a.c, Struct_2(var_3.a.a, var_6, true, var_0.b.b.x), vec2<bool>(true, false))), _wgslsmith_div_f32(var_4.x, var_4.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(ceil(-1020f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 766f)))), func_1(Struct_4(var_3.a), var_5, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, var_0.a.a.b.x) >> (vec4<u32>(0u, 1760u, var_3.a.a.b.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(var_3.b.b, var_3.a.a.b))).a.a.b.wy & ((~var_0.b.b.yx >> ((var_0.a.a.b.xw | vec2<u32>(0u, var_0.b.b.x)) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_mult_u32(var_3.b.b.x, var_3.a.d), var_3.b.b.x)));
}

