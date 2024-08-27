struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, vec4<i32>(-1i, -41281i, 2147483647i, 46137i)), Struct_1(true, vec4<i32>(-33429i, 28474i, -13011i, 32557i)), Struct_1(false, vec4<i32>(21966i, i32(-2147483648), -34735i, 36482i)), Struct_1(false, vec4<i32>(17876i, -47217i, 1i, 2147483647i)), Struct_1(false, vec4<i32>(-43744i, i32(-2147483648), -1i, 2346i)), Struct_1(false, vec4<i32>(5153i, -22700i, 2147483647i, 11666i)), Struct_1(true, vec4<i32>(-1i, -7262i, 2147483647i, 26695i)), Struct_1(true, vec4<i32>(1i, -93267i, 0i, -11831i)), Struct_1(false, vec4<i32>(0i, 10934i, 2147483647i, i32(-2147483648))), Struct_1(false, vec4<i32>(-33512i, 1i, 2147483647i, -1i)), Struct_1(true, vec4<i32>(216i, -29612i, 0i, i32(-2147483648))), Struct_1(true, vec4<i32>(0i, -20502i, i32(-2147483648), i32(-2147483648))), Struct_1(false, vec4<i32>(i32(-2147483648), -9308i, i32(-2147483648), 6193i)), Struct_1(true, vec4<i32>(i32(-2147483648), 0i, 1i, 10749i)), Struct_1(false, vec4<i32>(0i, 0i, 30668i, 21875i)), Struct_1(true, vec4<i32>(-13698i, -13022i, 59698i, 1i)), Struct_1(true, vec4<i32>(-1i, 0i, -52923i, -8114i)), Struct_1(false, vec4<i32>(-51703i, 2147483647i, -51740i, -21749i)), Struct_1(false, vec4<i32>(i32(-2147483648), -1i, 2147483647i, -46785i)), Struct_1(true, vec4<i32>(1i, 34160i, 0i, 41633i)), Struct_1(true, vec4<i32>(i32(-2147483648), 29421i, -1i, 21358i)), Struct_1(true, vec4<i32>(1i, -40782i, i32(-2147483648), -26433i)), Struct_1(false, vec4<i32>(0i, -375i, -5996i, -44754i)));

var<private> global1: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1323f, -1335f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1441f, 712f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, -1172f)))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(u_input.c.x), u_input.c.x), 23u)];
    let var_2 = -703f;
    var var_3 = reverseBits(reverseBits(vec3<i32>(var_1.b.x, i32(-1i) * -1i, 59100i)));
    var var_4 = abs(~vec4<u32>(~(~u_input.c.x), ~(~1u), max(1u, u_input.c.x) ^ 1u, ~firstTrailingBit(u_input.c.x)));
    return !var_1.a;
}

fn func_2() -> i32 {
    global1 = !(!func_3(_wgslsmith_sub_i32(8782i ^ u_input.a, -1i)));
    var var_0 = Struct_1(all(vec3<bool>(true, firstTrailingBit(u_input.b.x) > u_input.a, ~u_input.c.x >= ~16029u)), _wgslsmith_add_vec4_i32(-((vec4<i32>(u_input.a, u_input.b.x, 0i, 21060i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 58751u, u_input.c.x) % vec4<u32>(32u))) & -vec4<i32>(24180i, -12666i, -6294i, -1i)), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x) | _wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, u_input.b.x, 14270i, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, 17497i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-18031i, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(24872i, u_input.b.x, 0i, 0i)))));
    var var_1 = global0[_wgslsmith_index_u32(0u, 23u)];
    let var_2 = all(select(!vec3<bool>(true, any(vec4<bool>(var_0.a, false, var_1.a, var_0.a)), false), !vec3<bool>(any(vec2<bool>(var_1.a, false)), false, true), !(var_1.a & select(var_1.a, false, var_0.a))));
    let var_3 = Struct_1(var_0.a, var_1.b);
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f + -267f))), -1124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - _wgslsmith_div_f32(-514f, 1501f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(697f, -172f)) - _wgslsmith_f_op_f32(f32(-1f) * -415f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(564f)))), 1000f)));
    global1 = true;
    global0 = array<Struct_1, 23>();
    global1 = arg_0.a;
    return global0[_wgslsmith_index_u32(firstLeadingBit(~(~96965u)), 23u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(Struct_1(!any(vec4<bool>(false, false, false, false)), vec4<i32>(func_2(), _wgslsmith_mod_i32(-7480i, 15005i), -max(u_input.a, arg_3.x), arg_1)), select(~min(arg_0.wz ^ vec2<u32>(arg_0.x, u_input.c.x), _wgslsmith_mult_vec2_u32(arg_0.xw, arg_0.zx)), ~arg_0.xy, arg_2.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 71725u, 1u, 4294967295u), arg_0), u_input.c.x, firstTrailingBit(arg_0.x), arg_0.x), arg_0), 23u)]);
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-570f + -1039f), _wgslsmith_f_op_f32(max(-1000f, 841f))))))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(840f + _wgslsmith_f_op_f32(trunc(396f)))), 1f));
    global1 = true;
    let var_1 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), 23u)], vec2<u32>(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(arg_0.zyz, vec3<u32>(30427u, 0u, 4294967295u))), vec3<u32>(u_input.c.x, 62245u, 9884u) << (~vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u))), _wgslsmith_add_u32(1u, 1u)), func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c.x, 38445u, 1u) >> (vec3<u32>(4294967295u, u_input.c.x, arg_0.x) % vec3<u32>(32u)), vec3<u32>(6751u, 16024u, u_input.c.x)), vec3<u32>(4294967295u, abs(arg_0.x), firstTrailingBit(arg_0.x))), 23u)], abs(vec2<u32>(~33659u, arg_0.x)), arg_2));
    global1 = var_1.a;
    return global0[_wgslsmith_index_u32(arg_0.x, 23u)];
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(477f, 889f, arg_0, arg_1) * vec4<f32>(627f, arg_1, -614f, arg_1))))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 780f, arg_1, arg_0) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_1, arg_0, 2362f), vec4<f32>(665f, -1955f, arg_0, 135f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(608f, arg_0, arg_1, 212f) - vec4<f32>(arg_0, 1069f, 1000f, -338f)), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1314f, _wgslsmith_f_op_f32(sign(973f)), -394f, arg_0))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -226f, 1356f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, arg_1, -2937f, 1016f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, -425f, var_0.x, -518f) + vec4<f32>(158f, -1460f, -1030f, arg_1))))) - vec4<f32>(-701f, -1325f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(597f + _wgslsmith_f_op_f32(f32(-1f) * -194f)))), _wgslsmith_f_op_f32(-arg_1)));
    var var_2 = func_1(~_wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.c.x, 0u, 76161u, u_input.c.x) ^ vec4<u32>(0u, 0u, 47233u, u_input.c.x)), (vec4<u32>(16523u, 4294967295u, 23053u, u_input.c.x) >> (vec4<u32>(1u, u_input.c.x, 0u, 3132u) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))), ~func_4(global0[_wgslsmith_index_u32(29163u, 23u)], u_input.c, arg_2).b.x & -1i, arg_2, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(min(-1i, -u_input.b.x), min(u_input.b.x, max(arg_2.b.x, 0i)), _wgslsmith_div_i32(-2653i, i32(-1i) * -6920i))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_4 = select(!select(!select(vec3<bool>(arg_3, true, var_3.a), vec3<bool>(var_3.a, true, true), false), select(vec3<bool>(arg_3, arg_3, var_3.a), vec3<bool>(var_3.a, var_2.a, arg_3), true), select(!vec3<bool>(var_3.a, arg_2.a, arg_3), vec3<bool>(var_2.a, true, arg_2.a), !vec3<bool>(true, arg_3, arg_2.a))), !vec3<bool>(true, any(select(vec2<bool>(arg_3, arg_2.a), vec2<bool>(false, true), arg_3)), var_2.a), !(!(!(!vec3<bool>(false, false, var_2.a)))));
    return -1091f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, 981f) * -194f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1291f))))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, var_0, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f - var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(271f, var_0, func_1(vec4<u32>(51293u, u_input.c.x, 1u, u_input.c.x), u_input.b.x, Struct_1(true, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.b), false)) * -792f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))))), -144f, 1f);
    global0 = array<Struct_1, 23>();
    var var_2 = Struct_1(any(vec3<bool>(select(true, func_4(Struct_1(false, vec4<i32>(u_input.a, 719i, u_input.b.x, u_input.a)), u_input.c, Struct_1(false, vec4<i32>(u_input.a, 2147483647i, -2766i, u_input.a))).a, all(vec4<bool>(true, true, false, false))), func_4(Struct_1(true, vec4<i32>(-45051i, 1i, u_input.a, u_input.a)), u_input.c ^ vec2<u32>(u_input.c.x, 20048u), Struct_1(true, vec4<i32>(0i, 0i, u_input.a, u_input.b.x))).a, true)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.b.x, _wgslsmith_mod_i32(2147483647i, u_input.b.x), -u_input.b.x, -2147483647i), reverseBits(-vec4<i32>(22487i, u_input.a, u_input.b.x, 53934i)))));
    let var_3 = max(u_input.c.x, ~(~_wgslsmith_div_u32(~26952u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c))));
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, max(abs(vec4<u32>(4294967295u, var_3, 14291u, u_input.c.x) | vec4<u32>(var_3, 125389u, 1u, 4294967295u)), firstTrailingBit(countOneBits(vec4<u32>(1u, 9654u, 1u, var_3)))) ^ ~(select(vec4<u32>(1276u, 0u, 13161u, u_input.c.x), vec4<u32>(1u, 0u, 88245u, u_input.c.x), vec4<bool>(true, var_2.a, var_2.a, var_2.a)) << (~vec4<u32>(1u, 72737u, var_3, 64890u) % vec4<u32>(32u))), var_2.b);
}

