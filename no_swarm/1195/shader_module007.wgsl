struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, i32(-2147483648), -40283i, -44766i));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(global0.a);
    global0 = Struct_1(firstTrailingBit(vec4<i32>(~u_input.a.x, 2147483647i, arg_1, 1i)));
    let var_1 = _wgslsmith_mod_vec4_i32(~u_input.a ^ ~vec4<i32>(var_0.a.x, arg_1 ^ -41554i, firstTrailingBit(arg_2.x), 48540i), ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(global0.a.x, arg_1, 2147483647i, arg_2.x)), ~0i), arg_2.x, arg_1 << (14169u % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.a.zw, global0.a.zz), abs(-1i))));
    var_0 = Struct_1(-vec4<i32>(reverseBits(0i), _wgslsmith_sub_i32(-7331i, 21940i) >> ((arg_0 ^ 19541u) % 32u), -_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(arg_1, arg_1, arg_2.x, -2147483647i)), -_wgslsmith_dot_vec4_i32(global0.a, u_input.a)));
    let var_2 = Struct_1(min(global0.a, vec4<i32>(global0.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0.a, vec4<i32>(global0.a.x, -1i, 1i, 28405i)), var_0.a & vec4<i32>(0i, 2147483647i, 3892i, global0.a.x)), 0i, -(~u_input.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f + 486f) - 735f)))) + 1483f);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(min(firstLeadingBit(-10826i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -83347i, global0.a.x, -1i), vec4<i32>(35411i, 1i, 73898i, global0.a.x))), -min(21992i, -38243i), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, arg_2.a.x, arg_1.x), _wgslsmith_sub_vec3_i32(arg_3.a.yxx, vec3<i32>(arg_3.a.x, arg_2.a.x, global0.a.x))), global0.a.x) >> (vec4<u32>(~1u, reverseBits(_wgslsmith_sub_u32(4294967295u, 1u)), 1u, 1u) % vec4<u32>(32u)));
    let var_1 = countOneBits(countOneBits(reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = arg_3;
    var var_3 = abs(abs(var_2.a.yw)) >> ((countOneBits(abs(var_1.yy)) >> (vec2<u32>(~max(2218u, var_1.x), firstTrailingBit(var_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_4 = var_1.yy;
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = 924f;
    let var_1 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(870f - _wgslsmith_f_op_f32(step(-353f, 269f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_add_u32(57512u, 1u), -1i, vec2<i32>(global0.a.x, arg_0.a.x))))), abs(vec3<i32>(~global0.a.x, min(23069i, global0.a.x | 43761i), 1i)), arg_0, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(abs(u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(32i, u_input.a.x, u_input.a.x, 1i), global0.a)), 0i, -2147483647i, _wgslsmith_add_i32(countOneBits(global0.a.x), -39982i >> (0u % 32u)))));
    let var_2 = arg_0;
    let var_3 = Struct_1(var_1.a << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var_0 = -318f;
    return _wgslsmith_f_op_f32(trunc(-510f));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = global1.zzw;
    global1 = select(!vec4<bool>(!any(global1.zz), arg_1, true, var_0.x), !vec4<bool>(arg_1, 0i <= _wgslsmith_mult_i32(-17885i, u_input.a.x), all(select(vec3<bool>(false, arg_1, false), vec3<bool>(var_0.x, true, true), var_0.x)), false), false);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1202f, 1170f, 902f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 2248f) - vec3<f32>(-1123f, -1181f, -112f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1535f + -460f), _wgslsmith_f_op_f32(arg_0 - -151f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -779f, 701f) - vec3<f32>(arg_0, 861f, -1384f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2036f, arg_0, arg_0)))));
    let var_2 = 32934u;
    let var_3 = 951f;
    return func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(189f)))), global0.a.yzz, Struct_1(_wgslsmith_add_vec4_i32(~u_input.a, -min(vec4<i32>(u_input.a.x, global0.a.x, 6592i, 1i), vec4<i32>(global0.a.x, u_input.a.x, 86069i, global0.a.x)))), Struct_1(vec4<i32>(global0.a.x, firstTrailingBit(~196i), _wgslsmith_div_i32(global0.a.x, global0.a.x) << (var_2 % 32u), 30926i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, false, true, true), true), !select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, false)), select(vec4<bool>(false, global1.x, global1.x, false), select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, true)), !vec4<bool>(true, true, false, global1.x))));
    global1 = !vec4<bool>(true, global1.x, true, global1.x || global1.x);
    let var_0 = global0.a.x;
    let var_1 = max(~_wgslsmith_add_u32(max(countOneBits(4294967295u), reverseBits(1u)), _wgslsmith_mod_u32(49604u, 25968u) ^ firstTrailingBit(17110u)), firstLeadingBit(max(abs(44944u), ~32440u)));
    let var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-884f * 1000f) - _wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(0i, global0.a.x, -1i, 33949i)), global1.zw)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(675f - -176f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1224f - 2874f) + 1000f)))), false);
    global1 = !select(!vec4<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), false, !global1.x, !global1.x), vec4<bool>(!global1.x, any(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, true, true, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), true, false), vec4<bool>(true, !any(vec4<bool>(true, global1.x, global1.x, global1.x)), true, global1.x));
    var var_3 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), countOneBits(u_input.a.xyw), var_2, var_2);
    global0 = Struct_1(firstLeadingBit(vec4<i32>(1i, -1i, func_3(-1113f, -vec3<i32>(2147483647i, -1i, var_2.a.x), func_4(-777f, global1.x), Struct_1(vec4<i32>(global0.a.x, 1i, var_2.a.x, var_3.a.x))).a.x, 39703i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, var_3.a.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, 619f, 1240f) - vec3<f32>(-1278f, 887f, 1925f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, -765f, -376f) - vec3<f32>(218f, -546f, 1540f)), vec3<bool>(true, global1.x, false)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, 541f, -280f))))))));
}

