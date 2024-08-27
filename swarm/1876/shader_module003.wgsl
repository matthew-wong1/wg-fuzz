struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a - vec2<f32>(-1224f, 996f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1962f, arg_1.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(1141f + arg_1.a.x), arg_1.a.x))), firstLeadingBit((_wgslsmith_mod_u32(u_input.c.x, u_input.a.x) & 10970u) >> (arg_1.b % 32u)), arg_1.c);
    var var_1 = u_input.b;
    let var_2 = false;
    var_1 = _wgslsmith_sub_vec2_i32(u_input.b, max(vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.b, ~vec2<i32>(u_input.b.x, var_1.x)), select(-1i, firstTrailingBit(var_1.x), false)), _wgslsmith_div_vec2_i32(u_input.b, u_input.b)));
    var var_3 = (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_0.b, arg_1.b), ~u_input.d) | firstTrailingBit(75042u & arg_1.b)) & ~(~9800u);
    return var_0;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2(u_input.b.x, Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(680f, -1225f)), _wgslsmith_div_f32(568f, 1197f)), _wgslsmith_f_op_f32(select(-342f, -719f, true))), u_input.a.x, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)));
    var var_1 = var_0.c;
    var_1 = select(var_0.c, 0i > _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), 2147483647i), true);
    let var_2 = (!var_0.c && var_0.c) | var_0.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) - 1430f))));
    return vec4<bool>(!var_0.c, false, ~firstTrailingBit(_wgslsmith_mult_u32(30412u, 0u)) < u_input.d.x, !any(vec3<bool>(var_2, true, true)));
}

fn func_3() -> vec2<bool> {
    var var_0 = func_2(-21823i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(467f, -460f) + vec2<f32>(-414f, 1272f)), func_2(30997i, Struct_1(vec2<f32>(-287f, 743f), u_input.c.x, true), vec2<bool>(false, false)).a))), max(27263u, ~_wgslsmith_clamp_u32(u_input.a.x, 19905u, u_input.d.x)), all(vec4<bool>(true, u_input.b.x > u_input.b.x, true, select(true, true, true)))), vec2<bool>(false, true));
    var var_1 = ~64270u & _wgslsmith_dot_vec2_u32(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 35029u), u_input.a)), (vec2<u32>(u_input.c.x, 105029u) & (vec2<u32>(0u, u_input.a.x) & vec2<u32>(4294967295u, u_input.c.x))) << (vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.a), _wgslsmith_add_u32(u_input.c.x, 57600u)) % vec2<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, var_0.a.x))))) + _wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.a), func_1().wy))), _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~var_0.b), 41690u), ~var_0.b), all(!func_1().zw));
    let var_2 = func_2(~_wgslsmith_div_i32(-33606i, u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)), _wgslsmith_div_vec2_f32(var_0.a, var_0.a))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, var_0.a.x)))))), u_input.d.x, var_0.c), func_1().zx);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))))), var_0.a.x);
    return select(select(!func_1().zz, !(!func_1().yy), func_1().zy), vec2<bool>(true, ~var_2.b >= 21846u), var_2.b >= 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    let var_1 = -108f;
    let var_2 = func_2(_wgslsmith_div_i32(_wgslsmith_add_i32(-24891i, -1134i) << (u_input.c.x % 32u), reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, -19882i)))), func_2(countOneBits(26001i), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 269f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -626f) - vec2<f32>(387f, 744f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(u_input.c.x, u_input.d.x, 4294967295u, 0u) | vec4<u32>(u_input.d.x, 59269u, u_input.d.x, 4294967295u)), true), select(func_1().xw, func_3(), var_0.x)), vec2<bool>(any(func_1().xxx), true | (true && var_0.x)));
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(~(~6053u), 0u), ~(~var_2.b));
    let var_4 = u_input.b.x;
    var var_5 = var_2;
    var var_6 = -10453i;
    let var_7 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-951f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(926f + _wgslsmith_div_f32(_wgslsmith_div_f32(-855f, 970f), var_5.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~var_3.x) & vec2<u32>(_wgslsmith_div_u32(48299u, 4294967295u), var_5.b), select(select(vec2<u32>(4294967295u, 4294967295u), u_input.c.xy, false) & vec2<u32>(4294967295u, var_5.b), firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.yy, var_3)), (var_4 ^ var_4) > select(0i, -64621i, false))), ~((~vec4<u32>(u_input.a.x, 4294967295u, 22115u, var_2.b) & vec4<u32>(var_2.b, 1u, var_2.b, u_input.d.x)) | (~vec4<u32>(var_5.b, 89787u, var_5.b, 0u) | max(vec4<u32>(u_input.d.x, var_2.b, var_3.x, u_input.c.x), vec4<u32>(var_3.x, 4294967295u, 37647u, var_5.b)))), ~(~36773u));
}

