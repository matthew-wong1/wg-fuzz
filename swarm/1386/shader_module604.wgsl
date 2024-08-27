struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(~(-15799i)), firstLeadingBit(arg_1)), _wgslsmith_clamp_i32(arg_1, arg_1, -2147483647i)));
    let var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), true);
    var var_2 = Struct_2(var_1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1772f, 1284f, 742f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -162f, -886f) + vec3<f32>(646f, 497f, -1036f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, 410f, -519f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1113f, 1022f), _wgslsmith_f_op_f32(1154f + -214f), _wgslsmith_f_op_f32(-564f - -1000f)))), !(!(!var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1021f, -747f, 805f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1083f, 994f, 2084f) - vec3<f32>(281f, 118f, -1059f))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))))), 2267f);
    return select(select(vec3<bool>(all(vec3<bool>(true, false, var_1.x)) != any(vec3<bool>(var_2.a, var_2.a, false)), select(var_1.x, true, !var_2.a), true | !var_1.x), vec3<bool>(!(!var_2.a), true, any(vec3<bool>(var_2.a, true, var_2.a))), !select(!vec3<bool>(false, false, var_1.x), var_1, !var_2.a)), !vec3<bool>(true, var_1.x, false), 4294967295u != ~u_input.c.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = -483f;
    var var_1 = select(select(arg_2.c.zz, select(arg_2.c.wy, arg_2.c.yx, arg_2.c.xx), select(select(vec2<bool>(arg_2.c.x, arg_2.b), select(vec2<bool>(arg_2.b, arg_2.c.x), vec2<bool>(arg_2.b, arg_2.c.x), arg_2.c.yw), any(arg_2.c)), !select(vec2<bool>(false, false), vec2<bool>(arg_2.b, true), false), select(arg_2.b && false, arg_2.c.x, arg_2.b))), arg_2.c.ww, true);
    let var_2 = arg_0.ww & vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, _wgslsmith_sub_i32(30929i, _wgslsmith_mult_i32(arg_2.a, arg_0.x))), 25826i);
    let var_3 = Struct_2(true);
    var_1 = arg_2.c.wz;
    return select(vec3<bool>(false != select(true, any(arg_2.c), -1i < arg_2.a), true, arg_2.c.x), arg_2.c.zwz, all(select(select(arg_2.c.zyy, vec3<bool>(var_3.a, false, false), arg_2.c.yxz), func_3(Struct_4(-2147483647i), u_input.a.x ^ u_input.a.x), func_3(Struct_4(1i), arg_0.x))));
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(firstLeadingBit(-2147483647i), any(!select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), !vec2<bool>(arg_1, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), vec2<bool>(false, arg_1)))), vec4<bool>(!arg_1, arg_1, any(select(!vec3<bool>(arg_1, false, true), func_2(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 1i), -1312f, Struct_1(2147483647i, false, vec4<bool>(true, true, true, true)), vec4<u32>(u_input.b.x, arg_0, u_input.b.x, 46286u)), select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, false, arg_1), arg_1))), arg_1));
    let var_1 = vec2<bool>(arg_1, all(var_0.c.wx));
    let var_2 = u_input.c.xx;
    let var_3 = select(u_input.a, firstTrailingBit(~u_input.a), !var_1.x);
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_dot_vec2_u32(var_2, vec2<u32>(29468u, arg_0)), 18256u, ~19235u, max(arg_0, var_2.x)) | vec4<u32>(var_2.x | var_2.x, _wgslsmith_mult_u32(var_2.x, var_2.x), countOneBits(u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_2.x, var_2.x), vec4<u32>(var_2.x, arg_0, var_2.x, var_2.x)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c.xy), 4294967295u) & u_input.c.x);
    return countOneBits(3123u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(i32(-1i) * -1i);
    let var_1 = abs(u_input.b);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(133f)))))), -430f);
    var var_3 = true;
    var_2 = -538f;
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(~0u, u_input.b.x ^ 22743u), var_1.x, ~var_1.x, ~(~u_input.b.x)) >> (vec4<u32>(u_input.b.x, 4294967295u, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 22748u, 5319u, var_1.x), vec4<u32>(0u, 1u, 4294967295u, u_input.c.x)), true), ~var_1.x) % vec4<u32>(32u)));
}

