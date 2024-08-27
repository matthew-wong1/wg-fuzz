struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-535f + 1940f), _wgslsmith_f_op_f32(min(816f, -290f))))), select(2147483647i, -24908i, true), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(3144u, u_input.a, u_input.b.x, u_input.b.x)), 41699u) << (~(~select(vec2<u32>(67032u, 23316u), u_input.b.zz, vec2<bool>(true, true))) % vec2<u32>(32u)), select(!vec2<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), true), 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 69026u), reverseBits(abs(vec3<u32>(0u, 28404u, u_input.b.x)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.b, var_1.b, -2147483647i), vec3<i32>(var_1.b, var_1.b, var_1.b) & vec3<i32>(var_1.b, 13038i, -16414i)), ~(-vec3<i32>(var_1.b, var_1.b, 62997i))), countOneBits(select(~vec2<u32>(0u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(52202u, var_1.c.x), vec2<u32>(50692u, 0u)), var_1.d)), select(select(!var_1.d, vec2<bool>(var_1.d.x, var_1.d.x), select(false, var_1.d.x, var_1.d.x)), select(vec2<bool>(var_1.d.x, false), vec2<bool>(false, var_1.d.x), var_1.d.x == true), (var_1.d.x || var_1.d.x) || var_1.d.x), var_1.e), u_input.b, vec3<bool>(true, var_1.d.x, !((var_1.e ^ 0u) == min(u_input.a, 49578u))), (~_wgslsmith_sub_i32(1119i, 1i) >> (countOneBits(_wgslsmith_dot_vec3_u32(u_input.b.ywy, u_input.b.yzz)) % 32u)) << (0u % 32u), 16273u);
    let var_3 = Struct_2(var_2.a, firstTrailingBit(u_input.b), select(!(!(!var_2.c)), var_2.c, var_1.d.x), 2147483647i, _wgslsmith_sub_u32(~54024u, _wgslsmith_clamp_u32(~var_1.c.x, abs(4294967295u), u_input.b.x) & var_2.a.e));
    let var_4 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(1420u, 82790u, u_input.b.x, var_1.e) & (var_3.b ^ var_2.b))), max(~vec4<u32>(u_input.a, var_1.e, 18632u ^ var_1.c.x, 4294967295u), max(min(vec4<u32>(71692u, 89426u, 40187u, u_input.b.x), vec4<u32>(u_input.a, 38781u, u_input.b.x, var_3.b.x)), vec4<u32>(var_2.e, var_3.b.x, var_1.c.x, 19604u)) | ~(~vec4<u32>(u_input.a, 47989u, var_1.c.x, var_2.b.x))));
    return -var_3.a.b;
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = Struct_3(!(!vec3<bool>(true, true, all(vec4<bool>(false, true, true, false)))), ~0i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * arg_1)))), func_3(), vec2<u32>(countOneBits(~73541u), arg_0), select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), !(62762u <= arg_0)), countOneBits(select(~arg_0, 49470u, any(vec2<bool>(false, true))))));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, ~select(~1u, arg_0 ^ var_0.c.c.x, var_0.a.x)), 13412u);
    return var_0.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_1(-357f, -firstTrailingBit(arg_2.x), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, arg_0.x), arg_0.zz & vec2<u32>(29504u, 7969u)), arg_0.xx), ~u_input.b.yw), !vec2<bool>(!arg_1, arg_1), arg_0.x);
    var var_1 = _wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(~(-24419i), abs(21758i), ~(-31652i), -2966i | var_0.b), vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, var_0.b, var_0.b)), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, -19529i, -36693i), min(vec4<i32>(var_0.b, var_0.b, -1i, arg_2.x), vec4<i32>(-57211i, -73702i, 1i, 2147483647i)))));
    var_1 = ~vec4<i32>(~_wgslsmith_add_i32(arg_2.x, arg_2.x), 2147483647i, -1830i, -(arg_2.x & func_2(1u, var_0.a)));
    var var_2 = var_0.a;
    let var_3 = any(select(select(select(select(arg_3.xzz, arg_3.wxy, arg_1), arg_3.zwx, true), arg_3.wyz, !(!arg_3.xxy)), !arg_3.xww, vec3<bool>(!all(vec4<bool>(true, true, false, true)), -984f == _wgslsmith_div_f32(var_0.a, var_0.a), arg_3.x)));
    return 534f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, 798f, 284f)) * vec3<f32>(_wgslsmith_f_op_f32(min(-301f, 635f)), _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), false, vec3<i32>(138i, 38750i, -1i), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(sign(-1673f)))) + vec3<f32>(_wgslsmith_div_f32(-684f, _wgslsmith_f_op_f32(-686f - 1090f)), -848f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(1971f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(395f, -1000f, 662f), vec3<f32>(1137f, -332f, 1049f))))))));
    let var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(199f, 214f)), _wgslsmith_f_op_f32(max(-239f, var_0.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - var_0.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) + var_0.x), var_0.x);
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(740f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -974f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)))), -416f);
    var var_4 = 28588u | u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(_wgslsmith_sub_vec3_i32(~vec3<i32>(-10420i, -32341i, -2147483647i), abs(vec3<i32>(1i, 1i, 74851i))), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, 7150i), vec3<i32>(1i, 1i, 1i)))));
}

