struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(16024i);
    var var_1 = -1000f;
    var var_2 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_sub_i32(~var_0.a, -2147483647i);
    var_0 = Struct_1(-abs(abs(firstLeadingBit(u_input.a))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-519f)) + 1936f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-646f)))), -279f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f * 973f))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = u_input.b;
    let var_1 = u_input.b.yzx;
    let var_2 = 1i;
    let var_3 = vec4<bool>(arg_0.x, arg_0.x, !(!(!arg_0.x)) == (u_input.a < ~abs(50905i)), !any(select(select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true)), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, true, true, arg_0.x), vec4<bool>(true, false, true, arg_0.x)), arg_0.x)));
    let var_4 = Struct_4(~(-41480i) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 59376i, var_2) & vec3<i32>(44870i, var_2, -15110i), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2, var_2, var_2), vec3<i32>(0i, 2147483647i, 20953i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2, 2147483647i, u_input.a), vec3<i32>(u_input.a, -1i, var_2)))));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f + arg_1)) <= -994f) || !(!all(vec2<bool>(true, true)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    var var_0 = any(!select(vec4<bool>(false, all(vec3<bool>(false, false, false)), 158639u < arg_0, true), vec4<bool>(false, true, true, arg_0 != arg_0), vec4<bool>(func_2(), true, arg_0 != 1u, any(vec3<bool>(true, true, true)))));
    let var_1 = all(vec2<bool>(!(u_input.a <= -1i), all(vec3<bool>(true, true, false))));
    var var_2 = select(vec3<bool>(func_3(select(select(vec3<bool>(true, var_1, false), vec3<bool>(true, var_1, true), vec3<bool>(true, var_1, true)), vec3<bool>(var_1, true, true), !vec3<bool>(var_1, var_1, false)), 425f), true, false), !vec3<bool>(false, u_input.b.x == ~u_input.b.x, true), (firstTrailingBit(abs(50152u)) & max(32559u, 18362u)) <= u_input.b.x);
    var var_3 = !(!select(!(!vec3<bool>(var_1, var_2.x, false)), vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(var_1, false, false, true)), -344f == arg_1.x), select(select(vec3<bool>(false, false, false), vec3<bool>(false, var_2.x, var_2.x), false), vec3<bool>(true, true, true), !vec3<bool>(var_2.x, var_1, true))));
    var_3 = select(!vec3<bool>(var_3.x, true, true), select(!select(vec3<bool>(true, var_1, false), select(vec3<bool>(var_2.x, var_3.x, false), vec3<bool>(false, var_2.x, var_3.x), true), vec3<bool>(true, var_1, var_2.x)), !vec3<bool>(!var_1, var_3.x, var_3.x & true), select(!select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_3.x, var_2.x, var_1), var_2.x), vec3<bool>(!var_2.x, true, any(vec3<bool>(var_2.x, var_3.x, true))), !vec3<bool>(false, var_2.x, true))), var_3.x);
    return 22130u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(min(vec4<u32>(func_1(_wgslsmith_add_u32(6174u, 1u), vec2<f32>(709f, -858f)), 30834u, (u_input.b.x | 0u) << (~56818u % 32u), 8582u & _wgslsmith_dot_vec3_u32(u_input.b.yzx, u_input.b.xyw)), ~u_input.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2021f * -1089f) - _wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(425f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1425f))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(min(var_1.x, 259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_2 = var_0.x;
    var var_3 = Struct_4(u_input.a);
    var_0 = countOneBits(u_input.b) & ~(~u_input.b);
    var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, var_0.x) >> (_wgslsmith_mult_u32(4294967295u, var_0.x) % 32u), 0u), _wgslsmith_mult_u32(~54236u, u_input.b.x), _wgslsmith_dot_vec3_u32(var_0.wxx, _wgslsmith_sub_vec3_u32(~u_input.b.yyz, var_0.xzy)), firstLeadingBit(~33603u)), ~((vec4<u32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x) | u_input.b) >> (~vec4<u32>(u_input.b.x, 49881u, 4294967295u, var_0.x) % vec4<u32>(32u))) >> (vec4<u32>(min(36832u, 1u), ~var_0.x, u_input.b.x, countOneBits(var_0.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.a, var_3.a, -55319i), vec3<i32>(u_input.a, -2147483647i, -19340i)))), 1u ^ _wgslsmith_sub_u32(~var_0.x, var_0.x), var_1.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, var_1.x, 1000f, -588f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -869f, -130f, var_1.x) + vec4<f32>(1000f, var_1.x, -298f, 631f))))), _wgslsmith_f_op_vec2_f32(-var_1.zz));
}

