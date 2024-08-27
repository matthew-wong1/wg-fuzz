struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<i32, 30> = array<i32, 30>(1i, 0i, 2147483647i, -43728i, -1i, 38990i, 1i, -17474i, 1i, -1i, 25792i, 2147483647i, i32(-2147483648), -32768i, -4013i, -1i, -2085i, -9113i, 0i, -48065i, 2147483647i, 56816i, -60995i, -1i, 5335i, i32(-2147483648), -1i, -76781i, i32(-2147483648), 0i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(572f))))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    let var_1 = 2147483647i;
    global0 = arg_3.a.xwx;
    let var_2 = Struct_3(vec3<f32>(-1266f, _wgslsmith_f_op_f32(func_2()), arg_0.x), -abs(abs(firstTrailingBit(var_0.c))), 20462i, var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e.a.x, -936f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1588f + arg_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.a.x, arg_0.x, var_0.e.a.x, var_0.e.a.x) + vec4<f32>(890f, -475f, 407f, 769f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1661f, var_0.e.a.x, 428f, 1000f) * vec4<f32>(arg_3.e.a.x, 414f, 1217f, arg_3.e.a.x)))) + vec4<f32>(arg_3.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-176f))), arg_3.e.a.x, -382f)));
    global0 = !(!(!vec3<bool>(true, global0.x, var_2.d.x)));
    return arg_0.x;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-arg_1.e.x))), arg_0, _wgslsmith_f_op_f32(floor(arg_3.e.a.x))), any(vec2<bool>(arg_0 < _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0) == arg_1.a.x)), !vec2<bool>(global0.x && any(vec3<bool>(arg_3.d.x, false, global0.x)), (arg_3.e.b.x == arg_3.e.b.x) & false), arg_3));
    global1 = array<i32, 30>();
    return 624f;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = select(false, true, any(!arg_1.a.yww) == any(arg_1.a)) & (-1391f <= _wgslsmith_f_op_f32(exp2(arg_1.e.a.x)));
    var var_1 = true;
    let var_2 = arg_1;
    var var_3 = select(arg_1.a, vec4<bool>(var_2.d.x, any(arg_1.a.yyz), _wgslsmith_dot_vec4_i32(var_2.c >> (vec4<u32>(u_input.a, 13203u, 68691u, 110238u) % vec4<u32>(32u)), var_2.c ^ vec4<i32>(-24023i, global1[_wgslsmith_index_u32(arg_1.e.b.x, 30u)], 2147483647i, u_input.b)) == abs(u_input.b), u_input.b > _wgslsmith_div_i32(firstLeadingBit(38776i), ~0i)), vec4<bool>(true, true, false, true));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.e.a.xx), vec2<f32>(-1389f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.e.a.x))))), select(global0.x, any(arg_1.a), false)));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_2.a.x)))))), abs(~abs(arg_0.c)), firstLeadingBit(_wgslsmith_mod_i32(u_input.b ^ 1i, 11717i | global1[_wgslsmith_index_u32(~0u, 30u)])), arg_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1865f, 316f, arg_0.e.a.x) + vec4<f32>(arg_1.a.x, arg_2.a.x, 370f, arg_2.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1172f, arg_0.e.a.x, 493f, 2390f) * vec4<f32>(arg_0.e.a.x, arg_1.a.x, arg_0.e.a.x, 280f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_2.a.x, -134f) * vec4<f32>(arg_0.e.a.x, 506f, 739f, arg_0.e.a.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a.x, -796f, arg_2.a.x, arg_0.e.a.x))), all(global0.yz)))), arg_0.a)));
    let var_1 = all(vec4<bool>(global0.x, -817f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + 166f) - _wgslsmith_f_op_f32(477f * var_0.e.x)), global0.x, !func_4(~3710u, arg_0, _wgslsmith_f_op_f32(max(794f, -649f))).a.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1848f))), -811f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-409f, var_0.a.x)), 1f))) - arg_2.a), arg_0.c, -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.b.yw, arg_2.b.wx), ~vec2<u32>(arg_2.b.x, arg_2.b.x)), countOneBits(121750u)), 30u)], select(!arg_0.a, !var_0.d, !((arg_0.e.b.x << (0u % 32u)) == u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(300f, var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.a.x, arg_0.e.a.x)) - _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1455f)))));
    let var_2 = ~arg_0.e.b;
    global0 = arg_0.a.zxw;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec3<i32>(abs(global1[_wgslsmith_index_u32(u_input.c, 30u)]), u_input.b & -2147483647i, -7733i), ~firstLeadingBit(vec3<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.c, 30u)]) | vec3<i32>(-2147483647i, u_input.b, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_4(firstTrailingBit(u_input.a), Struct_2(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(u_input.c, 30u)], vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.b, 11431i, -7537i), vec2<bool>(global0.x, global0.x), Struct_1(vec3<f32>(-1211f, 2589f, -554f), vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.c))), _wgslsmith_f_op_f32(func_1(782f, Struct_3(vec3<f32>(-458f, -411f, -1000f), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 30u)], -19734i, u_input.b, u_input.b), u_input.b, vec4<bool>(global0.x, global0.x, true, global0.x), vec4<f32>(-868f, -1066f, -434f, -312f)), vec4<i32>(u_input.b, 2147483647i, -42236i, u_input.b), Struct_2(vec4<bool>(global0.x, global0.x, false, global0.x), u_input.b, vec4<i32>(-1i, -15007i, u_input.b, u_input.b), global0.xy, Struct_1(vec3<f32>(1807f, -809f, 290f), vec4<u32>(u_input.c, 1u, u_input.c, u_input.a)))))), func_4(select(u_input.a, 9447u, false), func_4(0u, Struct_2(vec4<bool>(global0.x, true, global0.x, global0.x), global1[_wgslsmith_index_u32(87081u, 30u)], vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30321i, u_input.b, 2147483647i), vec2<bool>(true, global0.x), Struct_1(vec3<f32>(-1000f, 505f, -320f), vec4<u32>(0u, u_input.a, u_input.c, 0u))), 377f), -650f).e, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, 1307f, -662f)), ~vec4<u32>(7019u, u_input.a, 35092u, u_input.c))))), ~func_4(u_input.a, Struct_2(select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true)), u_input.b << (0u % 32u), ~vec4<i32>(u_input.b, u_input.b, u_input.b, global1[_wgslsmith_index_u32(1u, 30u)]), !global0.zx, Struct_1(vec3<f32>(-225f, -992f, 749f), vec4<u32>(1u, u_input.a, u_input.c, u_input.c))), 1137f).c.yzy);
}

