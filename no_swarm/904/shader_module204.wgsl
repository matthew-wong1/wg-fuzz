struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-2078f, 1000f, -1013f, 791f, 370f, -430f, -2666f, -1481f, -460f, -630f, 250f, -1969f, 1000f, -280f, 1699f, -420f, 1944f, 626f, -587f, -678f, -925f, -986f, 583f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(true, any(select(vec3<bool>(any(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, false)), true), vec3<bool>(true, u_input.b <= u_input.b, true), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(u_input.b, 23u)] == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)])))), all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = select(var_0.wzw, select(select(vec3<bool>(var_0.x, select(false, var_0.x, false), true), vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(any(var_0.xxw), all(vec4<bool>(var_0.x, false, false, var_0.x)), any(vec3<bool>(var_0.x, true, true)))), !select(var_0.zxx, var_0.xzz, vec3<bool>(false, var_0.x, true)), true), select(var_0.yzy, select(var_0.ywx, var_0.yxy, any(select(var_0.zxw, vec3<bool>(var_0.x, false, true), false))), var_0.zwy));
    var var_2 = u_input.a.x;
    var var_3 = ~(~(~reverseBits(vec4<u32>(0u, u_input.b, u_input.b, 0u))) | vec4<u32>(0u, _wgslsmith_mod_u32(max(4294967295u, 4294967295u), u_input.b), firstLeadingBit(u_input.b), abs(~57593u)));
    global0 = array<f32, 23>();
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(var_3.x), 23u)] - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~75044u, 23u)])))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-1629f + 1034f))))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1661f * 1016f))) - -2180f)));
    global0 = array<f32, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, 304f)) + -1781f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1675f)), _wgslsmith_f_op_f32(func_3())), var_0.a, !select(arg_1, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), -1380f) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))))), 727f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, -239f)));
    global0 = array<f32, 23>();
    let var_2 = vec3<bool>((_wgslsmith_add_u32(0u, max(u_input.b, u_input.b)) & (u_input.b & ~u_input.b)) <= (reverseBits(~u_input.b) << (_wgslsmith_div_u32(u_input.b & 1u, u_input.b) % 32u)), arg_1.x, select(!all(vec2<bool>(arg_1.x, arg_1.x)), arg_1.x, !all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))) | all(vec2<bool>(arg_1.x, all(vec4<bool>(true, arg_1.x, false, false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = false;
    global0 = array<f32, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(-34895i, vec2<bool>(true, var_0), global0[_wgslsmith_index_u32(u_input.b, 23u)])), 359f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], -296f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1084f, -475f, global0[_wgslsmith_index_u32(u_input.b, 23u)]) * vec3<f32>(872f, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1023f, -1000f, 773f), vec3<f32>(993f, global0[_wgslsmith_index_u32(u_input.b, 23u)], 428f)))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(241f, 297f, -123f), vec3<f32>(-690f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])))))));
    let var_2 = countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b ^ abs(13228u), abs(~56809u)), ~(~countOneBits(vec2<u32>(1u, 85093u)))));
    global0 = array<f32, 23>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)), _wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-413f * var_1.x))), -241f)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 23>();
    var var_0 = func_1(arg_1, vec2<i32>(~_wgslsmith_mult_i32(-1i, u_input.a.x), reverseBits(~abs(-2147483647i))), countOneBits((vec4<i32>(u_input.a.x, -2147483647i, arg_2, -1i) & (vec4<i32>(37659i, 76848i, -42162i, -4991i) ^ u_input.a)) | u_input.a));
    return arg_3;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, global0[_wgslsmith_index_u32(4941u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], arg_2.a.x) + vec4<f32>(arg_2.b, 1760f, 1000f, global0[_wgslsmith_index_u32(arg_0, 23u)]))) - vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, arg_0, 0u)), 23u)], 474f, 2175f, 702f))))));
    var var_1 = !select(select(vec3<bool>(true, true, arg_1), !vec3<bool>(arg_1, true, arg_1), !(!vec3<bool>(false, arg_1, false))), vec3<bool>(arg_1, arg_1, select(arg_1, arg_1, false)), select(false, (-1000f >= arg_2.c) & (778f < global0[_wgslsmith_index_u32(37280u, 23u)]), arg_1));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -1610f))))), vec2<f32>(904f, _wgslsmith_f_op_f32(-487f + -581f))), global0[_wgslsmith_index_u32(1u, 23u)], 938f);
    global0 = array<f32, 23>();
    var var_3 = func_1(~_wgslsmith_add_i32(u_input.a.x & ~u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -15185i)), vec2<i32>(u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(16425i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), ~(-1719i)), u_input.a);
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(var_3.a * var_3.a)), vec2<f32>(-1000f, 462f)), func_1(_wgslsmith_mod_i32(u_input.a.x ^ u_input.a.x, u_input.a.x & u_input.a.x), vec2<i32>(32335i, abs(-1i)), firstLeadingBit(select(vec4<i32>(u_input.a.x, 26512i, -6388i, u_input.a.x), u_input.a, false))).a), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(3135u, 23u)], 1772f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 23u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_0 = func_5(0u, all(vec4<bool>(all(vec4<bool>(false, true, true, true)) & true, all(vec2<bool>(false, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])) != global0[_wgslsmith_index_u32(4294967295u, 23u)])), func_4(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.b), u_input.b), reverseBits(_wgslsmith_div_u32(0u, u_input.b))), -15317i, _wgslsmith_dot_vec4_i32(~select(u_input.a, u_input.a, vec4<bool>(true, false, true, false)), u_input.a), func_1(u_input.a.x, vec2<i32>(i32(-1i) * -18660i, _wgslsmith_sub_i32(2147483647i, u_input.a.x)), vec4<i32>(-1i, _wgslsmith_mult_i32(2147i, u_input.a.x), u_input.a.x ^ 2147483647i, -1i ^ u_input.a.x))));
    let var_1 = 1630f;
    var var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(14629u, false, var_0).b, _wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 23u)]))), var_0.b);
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-2147483647i | u_input.a.x), u_input.a);
}

