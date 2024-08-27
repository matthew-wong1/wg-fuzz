struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    return _wgslsmith_div_i32(-min(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1298i), arg_2.ww), _wgslsmith_mod_i32(61420i, arg_2.x))), max(_wgslsmith_clamp_i32(-13944i, 0i, ~abs(1i)), -1i));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = select(vec4<i32>(15351i, ~_wgslsmith_div_i32(arg_2.x, u_input.b.x ^ arg_2.x), select(0i, func_3(60867u << (arg_1.b % 32u), Struct_1(arg_1.a, 47395u, arg_1.c, u_input.c), min(vec4<i32>(arg_2.x, -2147483647i, -34493i, arg_2.x), arg_2)), all(!vec2<bool>(arg_0, false))), u_input.d.x), vec4<i32>(37278i, _wgslsmith_sub_i32(u_input.d.x, firstLeadingBit(u_input.d.x)), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.yw, u_input.d.xw), -26936i)), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 2683i), u_input.d.x, -u_input.b.x)), all(select(select(!vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, false), !arg_0), select(!vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_0), vec2<bool>(true, arg_1.a)), vec2<bool>(!arg_0, arg_0))));
    let var_1 = Struct_1(any(select(vec4<bool>(false & arg_0, select(arg_0, arg_1.a, arg_1.a), true, !arg_1.a), !vec4<bool>(true, arg_1.a, false, true), !vec4<bool>(true, arg_1.a, true, false))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~select(u_input.a.yww, vec3<u32>(8952u, arg_1.d, arg_1.b), vec3<bool>(arg_0, false, arg_0)), _wgslsmith_sub_vec3_u32(~u_input.a.zxz, vec3<u32>(117632u, arg_1.b, u_input.c))), _wgslsmith_mult_vec3_u32(~u_input.a.xyz ^ ~u_input.a.yxx, _wgslsmith_mult_vec3_u32(u_input.a.wzx, vec3<u32>(u_input.a.x, arg_1.b, 1u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_1.c.x)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.c, arg_1.b), 1u, ~_wgslsmith_mod_u32(4294967295u, 1u)), ~23788u));
    let var_2 = u_input.a.yw;
    var var_3 = -(max(~(-18125i), u_input.d.x) << (arg_1.b % 32u));
    var_3 = -_wgslsmith_mult_i32(~(~arg_2.x), -1i);
    return ~(1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, 1u | var_1.b, ~var_2.x), vec3<u32>(countOneBits(var_2.x), 1u, _wgslsmith_div_u32(1u, var_2.x))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1633f, _wgslsmith_f_op_f32(ceil(-400f))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, 593f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 175f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1819f + 1125f)), -1447f)));
    var var_1 = Struct_1(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true)))), func_2(true, Struct_1(true, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x)))), u_input.c), -u_input.b), var_0, 57769u);
    var var_2 = max(~arg_0.x, u_input.d.x);
    var_1 = Struct_1(all(!select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, true, false, true), all(vec3<bool>(var_1.a, true, true)))), ~countOneBits(reverseBits(var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 627f) - vec2<f32>(-1000f, -1000f))) - vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_1.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0))))), u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(round(381f));
    return Struct_1(false, u_input.a.x, vec2<f32>(-1221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.x)) - _wgslsmith_f_op_f32(round(1770f))))), ~func_2(true, Struct_1(all(vec2<bool>(true, var_1.a)), _wgslsmith_div_u32(4294967295u, 1u), var_1.c, 1u), -firstLeadingBit(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(733f));
    var var_1 = func_1(((u_input.d.ywy << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.yyy) % vec3<u32>(32u))) & u_input.b.xwx) ^ _wgslsmith_mult_vec3_i32(~(u_input.b.wwx >> (vec3<u32>(u_input.c, 83849u, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d.x, 4452i, 2147483647i), firstTrailingBit(vec3<i32>(u_input.b.x, u_input.d.x, 385i)))));
    let var_2 = Struct_1(any(select(vec4<bool>(true, var_1.a | true, var_1.a & true, true), select(vec4<bool>(var_1.a, var_1.a, false, true), select(vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, true, false, var_1.a)), false), false)), var_1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.c, var_1.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.c + var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1340f, 699f))))), 4294967295u);
    var_1 = Struct_1(!func_1(select(u_input.d.xxw, vec3<i32>(u_input.b.x, u_input.d.x, 18796i), true) << (~u_input.a.www % vec3<u32>(32u))).a, 1u >> ((((1u & u_input.c) & var_1.d) & 0u) % 32u), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, var_1.c.x))), ~var_2.b);
    let var_3 = Struct_1(true, ~var_2.b, _wgslsmith_f_op_vec2_f32(var_2.c + _wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(-var_1.c))), _wgslsmith_dot_vec4_u32(~((u_input.a | vec4<u32>(var_2.d, var_2.d, var_1.d, u_input.a.x)) & vec4<u32>(var_2.d, var_2.b, 4865u, var_2.d)), ~(~u_input.a)));
    let var_4 = vec4<i32>(max(-15846i, _wgslsmith_dot_vec3_i32(u_input.b.yzy, firstLeadingBit(u_input.b.xyx & u_input.d.yxw))), 1i | (u_input.d.x & 0i), -2147483647i, u_input.d.x);
    var var_5 = ~max(~(~vec2<i32>(43150i, u_input.d.x)), ~vec2<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.d.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.c.x, _wgslsmith_f_op_f32(max(var_1.c.x, 1188f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(933f)) * var_3.c.x), _wgslsmith_f_op_f32(var_3.c.x * -280f)), _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, func_3(reverseBits(var_3.b), Struct_1(var_3.a, u_input.a.x, vec2<f32>(var_3.c.x, var_0), var_1.d), -var_4), ~(-2147483647i), 1i), -(~vec4<i32>(var_4.x, -6221i, u_input.d.x, 2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, 1i, -44742i), vec4<i32>(28i, 7182i, u_input.b.x, 0i))), var_3.c.x, vec3<i32>(func_3(~var_1.b, func_1(vec3<i32>(var_4.x, u_input.b.x, var_5.x)), -var_4), func_3(var_3.d, var_3, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 41083i, -10725i, u_input.b.x), vec4<i32>(var_5.x, u_input.b.x, 36276i, 25628i))), var_5.x) ^ -abs(vec3<i32>(u_input.b.x, var_4.x, 1i)), ~vec2<i32>(1i, _wgslsmith_sub_i32(abs(u_input.b.x), abs(-3330i))));
}

