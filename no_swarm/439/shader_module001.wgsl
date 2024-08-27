struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<i32>(2147483647i, _wgslsmith_sub_i32(-41163i, -52929i)), vec2<u32>(_wgslsmith_mod_u32(reverseBits(~u_input.b.x), 21322u), firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 684f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -468f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-149f, var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(922f, 1000f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1285f, 1113f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.a)))), vec2<bool>(true, true)))));
    return select(~(~u_input.b), ~vec3<u32>(var_0.c.x, 25787u, _wgslsmith_clamp_u32(18300u, 47257u, 46070u)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), _wgslsmith_f_op_f32(-539f + 573f) <= var_1.x)) << (vec3<u32>(_wgslsmith_sub_u32(~(~u_input.b.x), _wgslsmith_clamp_u32(min(67901u, 4294967295u), var_0.c.x, firstTrailingBit(u_input.b.x))), ~_wgslsmith_clamp_u32(select(u_input.b.x, var_0.c.x, true), 44316u, u_input.b.x), var_0.c.x ^ ~1u) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_4(-997f, ~abs(firstTrailingBit(vec2<i32>(-339i, arg_1))) | vec2<i32>(arg_1, u_input.c), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(func_3()), u_input.b), 1u));
    var var_1 = Struct_1(vec2<u32>(~min(~0u, _wgslsmith_sub_u32(var_0.c.x, 0u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, arg_0, u_input.b.x), vec4<u32>(var_0.c.x, var_0.c.x, arg_0, 39897u)))), min(vec2<u32>(arg_0 ^ max(arg_0, u_input.b.x), ~select(4294967295u, arg_0, false)), (vec2<u32>(6410u, arg_0) ^ ~vec2<u32>(u_input.b.x, u_input.b.x)) & var_0.c), !(arg_0 == _wgslsmith_dot_vec4_u32(vec4<u32>(29317u, 9658u, var_0.c.x, 45237u), ~vec4<u32>(u_input.b.x, var_0.c.x, var_0.c.x, u_input.b.x))));
    var var_2 = ~u_input.b.x;
    let var_3 = var_1.c & select(false, true, true);
    var_1 = Struct_1(u_input.b.zz, vec2<u32>(~(~arg_0 << (25020u % 32u)), 1u), true);
    return var_0.a;
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    let var_0 = arg_0.a.a;
    var var_1 = arg_0.a.a.x;
    var var_2 = _wgslsmith_f_op_f32(func_2(reverseBits(0u), ~max(1i, 41541i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.b, arg_0.a.b, -978f, 871f))), _wgslsmith_div_vec4_f32(vec4<f32>(-513f, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<f32>(arg_0.a.b, arg_0.a.b, 1048f, arg_0.a.b)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1719f, arg_0.a.b, arg_0.a.b, arg_0.a.b)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, arg_0.a.b, -1300f, arg_0.a.b)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<f32>(arg_0.a.b, -2129f, arg_0.a.b, arg_0.a.b)), vec4<f32>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b)))))));
    var var_3 = arg_0.a;
    var_3 = Struct_2(select(var_0, arg_0.a.a, !all(vec3<bool>(false, false, false))), var_3.b);
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b * var_3.b) + _wgslsmith_div_f32(arg_0.a.b, var_3.b)) - arg_0.a.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-137f * _wgslsmith_f_op_f32(floor(-936f))), -1000f))), -(~vec2<i32>(21673i, 50269i >> (u_input.b.x % 32u))), ~(~vec2<u32>(abs(u_input.b.x), ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(Struct_2(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), true), 698f)));
    let var_1 = false;
    var var_2 = 2147483647i;
    let var_3 = !all(!vec3<bool>(var_1, true, var_1));
    let var_4 = ~(~u_input.b >> (max(~func_3(), ~(~u_input.b)) % vec3<u32>(32u)));
    var var_5 = Struct_2(select(vec3<bool>(var_1, var_1, true), select(vec3<bool>(var_3, any(vec3<bool>(false, false, var_3)), false), !vec3<bool>(false, var_3, var_3), select(false != var_1, !var_3, !var_3)), var_0.c.x == ~55753u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a))))));
    var_2 = -abs(0i);
    let var_6 = vec3<u32>(64077u, var_4.x, 27243u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4.x, u_input.b.x), ~27584u), ~_wgslsmith_mult_u32(var_6.x, 0u)), var_6), var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.a));
}

