struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 13> = array<i32, 13>(-35505i, 2147483647i, i32(-2147483648), -5043i, 81186i, 1i, 0i, 3199i, 36240i, i32(-2147483648), 1i, -49185i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    global0 = select(1u, u_input.c ^ 67910u, any(select(vec3<bool>(false, false, any(vec2<bool>(arg_0, true))), select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, true), select(false, arg_0, true)), any(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), true)))));
    var var_0 = Struct_1(select(select(countOneBits(vec2<i32>(u_input.d, -2147483647i)) | _wgslsmith_div_vec2_i32(vec2<i32>(1i, -61748i), vec2<i32>(u_input.d, 0i)), ~vec2<i32>(0i, -34430i), arg_0), -(~(vec2<i32>(u_input.d, 17089i) & vec2<i32>(-2147483647i, -5714i))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)) != _wgslsmith_f_op_f32(f32(-1f) * -381f)));
    let var_1 = vec2<bool>(true, false);
    return 82920u;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = vec2<bool>(!(any(vec3<bool>(arg_0, arg_0, true)) || !(global1[_wgslsmith_index_u32(30434u, 13u)] != -5073i)), (true | !(!arg_0)) | arg_0);
    var var_1 = vec4<i32>(-max(global1[_wgslsmith_index_u32(u_input.c, 13u)], ~firstTrailingBit(-2023i)), global1[_wgslsmith_index_u32(~func_3(any(vec3<bool>(arg_0, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-234f, -349f, 1344f, -1000f), vec4<f32>(-379f, 767f, -1255f, -948f)))), 13u)], abs(global1[_wgslsmith_index_u32(~0u, 13u)]), arg_1.a.x);
    var var_2 = Struct_1(arg_1.a);
    var var_3 = global1[_wgslsmith_index_u32(38631u, 13u)] | -_wgslsmith_mod_i32(abs(global1[_wgslsmith_index_u32(15739u, 13u)] | var_1.x), 57852i);
    var var_4 = true;
    return vec4<u32>(~(~u_input.a.x), ~(~(u_input.c ^ u_input.a.x)), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(19908u, u_input.b.x, 4294967295u, 1u) ^ vec4<u32>(3371u, 1369u, u_input.c, 20023u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 24861u, u_input.a.x, 44125u), vec4<u32>(0u, 4294967295u, 0u, u_input.a.x)))) << (vec4<u32>(~firstLeadingBit(~u_input.c), 8950u & _wgslsmith_dot_vec3_u32(u_input.b << (vec3<u32>(u_input.b.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), u_input.a), ~u_input.b.x, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(100824u, 1u), ~u_input.c))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = select(u_input.b, countOneBits(vec3<u32>(~27575u & firstTrailingBit(30035u), u_input.c, countOneBits(u_input.b.x | u_input.a.x))), false);
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    var_0 = u_input.b;
    var var_1 = Struct_3(~func_2(true && any(vec2<bool>(arg_0.x, false)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 33033i), vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 13u)], u_input.d)))), !select(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), !vec3<bool>(arg_0.x, false, true)), select(!vec3<bool>(true, false, arg_0.x), !vec3<bool>(arg_0.x, true, arg_0.x), any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), any(vec2<bool>(true, arg_0.x))), arg_0.x, Struct_2(Struct_1(-abs(vec2<i32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))), Struct_1(vec2<i32>(1i, 63247i | u_input.d)), Struct_1(firstTrailingBit(-vec2<i32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])))), Struct_1(~(_wgslsmith_add_vec2_i32(vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<i32>(34710i, -12532i)) | ~vec2<i32>(u_input.d, -2147483647i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1018f)) * 1684f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -298f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 680f) * 1f), -1427f, 1104f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1234f, 614f, 408f) - vec3<f32>(421f, 351f, 708f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(250f, 877f, -173f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1108f, -1388f, -1111f))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(-857f + 750f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(252f)))))), -855f)));
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, u_input.a.yy, global1[_wgslsmith_index_u32(abs(~firstTrailingBit(~637u)), 13u)]);
}

