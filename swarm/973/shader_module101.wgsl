struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: array<vec2<bool>, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    global1 = array<vec3<bool>, 25>();
    var var_0 = select(vec4<u32>(min(u_input.c, ~countOneBits(1885u)), 0u, ~_wgslsmith_div_u32(u_input.c >> (1u % 32u), 1u), ~(~_wgslsmith_sub_u32(u_input.c, u_input.c))), abs(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 4294967295u), countOneBits(53225u)), u_input.b, 14596u, 0u)), !(!(-1i != u_input.a)) | false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2220f, -1500f)) * vec2<f32>(714f, _wgslsmith_f_op_f32(f32(-1f) * -156f))) + vec2<f32>(-1024f, -314f)), !(!(!all(vec4<bool>(false, false, true, false)))), countOneBits(vec2<i32>(i32(-1i) * -1i, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - 206f)) * _wgslsmith_f_op_f32(-164f - _wgslsmith_div_f32(-372f, 1156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1005f, -913f))))), any(vec4<bool>(true, true, false, true)));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(0u << (_wgslsmith_dot_vec2_u32(var_0.zw, var_0.wx) % 32u), ~4294967295u) | 61258u, min(u_input.c, var_0.x), 2427u);
    var_2 = abs(var_0.yzz);
    return var_1.c;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = array<vec3<bool>, 25>();
    var var_0 = func_3();
    var var_1 = vec2<u32>(u_input.c, countOneBits(_wgslsmith_div_u32(~countOneBits(4294967295u), min(~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.a), all(select(select(select(vec4<bool>(true, false, arg_0.b, false), vec4<bool>(true, arg_0.e, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, arg_0.e, arg_0.b), vec4<bool>(false, false, arg_0.b, true), false), arg_0.e), vec4<bool>(any(vec4<bool>(true, false, arg_0.b, false)), all(vec4<bool>(arg_0.e, arg_0.b, arg_0.b, true)), arg_0.b, true), any(global2[_wgslsmith_index_u32(var_1.x, 1u)]) | select(arg_0.b, arg_0.e, arg_0.e))), ~_wgslsmith_mult_vec2_i32(countOneBits(reverseBits(vec2<i32>(var_0.x, 16273i))), vec2<i32>(u_input.a, 0i)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(631f)))), !any(vec4<bool>(arg_0.b, any(global1[_wgslsmith_index_u32(85737u, 25u)]), arg_0.b, all(vec4<bool>(arg_0.b, arg_0.b, false, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(select(var_2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1009f, 647f), vec2<f32>(-176f, arg_0.d.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.a), vec2<f32>(var_2.d.x, -1000f), true))), all(!vec4<bool>(var_2.b, arg_0.e, arg_0.b, var_2.b)))));
    return -859i;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    let var_0 = !global1[_wgslsmith_index_u32(~(~u_input.c), 25u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2484f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(659f - 534f), _wgslsmith_f_op_f32(f32(-1f) * -703f)) - -1000f))));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-8170i, arg_0, arg_0, -9760i)), -vec4<i32>(u_input.a, -2134i, 69663i, 0i)), 2147483647i, func_2(Struct_1(vec2<f32>(var_1.x, var_1.x), var_0.x, vec2<i32>(u_input.a, -5372i), vec2<f32>(var_1.x, 129f), true))) >> (select(vec3<u32>(~38083u, u_input.c, 4294967295u), ~vec3<u32>(4294967295u, 23167u, u_input.b), select(!vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x))) % vec3<u32>(32u)), ~(firstLeadingBit(-vec3<i32>(-1i, 2147483647i, -13437i)) ^ -reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))));
    return vec3<u32>(reverseBits(firstTrailingBit(~33246u)), 1u, abs(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~u_input.a)) << (1u % 32u);
    let var_1 = abs(~firstTrailingBit(vec3<u32>(7742u, 0u, u_input.c) ^ func_1(-2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1330f))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_div_f32(var_2, var_2)))))), true, vec2<i32>(u_input.a, 1i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(607f, 362f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-670f, var_2))) + vec2<f32>(-2382f, var_2)), !any(vec2<bool>(false, true)) | select(true, true, any(vec3<bool>(false, false, true))))), any(vec4<bool>(true, true, false, any(vec4<bool>(false, true, false, true)))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a * _wgslsmith_f_op_vec2_f32(-var_3.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1533f, -464f)))))), !(any(global1[_wgslsmith_index_u32(18378u, 25u)]) || all(select(vec4<bool>(true, var_3.b, var_3.e, var_3.e), vec4<bool>(var_3.b, var_3.e, var_3.b, var_3.b), true))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), -vec2<i32>(1i, func_3().x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1108f, -455f))), _wgslsmith_f_op_vec2_f32(min(var_3.d, vec2<f32>(var_2, -667f)))))))), var_3.e);
    let var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2)))), !(true & any(vec2<bool>(true, var_4.e))), vec2<i32>(var_4.c.x | -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(var_4.c.x, 36883i)) ^ _wgslsmith_clamp_i32(var_3.c.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-29625i, u_input.a, var_3.c.x, var_3.c.x), vec4<i32>(1i, var_4.c.x, var_4.c.x, 1i)))), var_4.a, var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.d.x, 1150f, -170f), vec3<f32>(-1771f, 594f, var_4.d.x)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, 2129f, -820f) + vec3<f32>(1411f, var_5.a.x, var_3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2159f, -800f, var_3.d.x)) - vec3<f32>(var_2, 446f, -533f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.d.x - var_5.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -113f))), min(-2147483647i, -_wgslsmith_dot_vec2_i32(select(var_3.c, var_3.c, vec2<bool>(var_4.e, var_5.e)), vec2<i32>(0i, -2147483647i) | var_4.c)));
}

