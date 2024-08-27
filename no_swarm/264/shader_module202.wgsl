struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, -122f, global0.x))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2378f + _wgslsmith_f_op_f32(max(global0.x, -312f)))), -121f, 1f));
    let var_0 = vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.a), 8529i, u_input.a), -vec3<i32>(u_input.a, -8036i, u_input.a)) <= (u_input.c ^ u_input.c), !(u_input.c <= u_input.a));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.x, -826f)), _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(step(363f, _wgslsmith_f_op_f32(sign(global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1498f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(442f + global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1993f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))), 0u << (countOneBits(u_input.d.x) % 32u), !(!vec2<bool>(all(vec4<bool>(var_0.x, false, false, var_0.x)), all(vec3<bool>(var_0.x, true, var_0.x)))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-308f)))) - 913f))), 440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), 0u, !select(select(!arg_0.e, !arg_0.e, select(vec2<bool>(arg_0.e.x, arg_0.e.x), vec2<bool>(arg_0.e.x, arg_0.e.x), true)), vec2<bool>(!arg_0.e.x, arg_0.e.x & arg_0.e.x), !vec2<bool>(arg_0.e.x, arg_0.e.x)));
    var_0 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -525f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), global0.x, _wgslsmith_f_op_f32(1202f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))))));
    var var_2 = u_input.d.x;
    let var_3 = ~1u;
    return min(reverseBits(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, var_0.d), _wgslsmith_sub_u32(var_0.d, abs(var_3)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, var_3, 0u) ^ vec3<u32>(45892u, u_input.d.x, 66233u), vec3<u32>(var_3, 15194u, 0u)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~77447u), var_3), u_input.d.x));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -455f, 1002f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.x, -877f), vec3<f32>(global0.x, -1262f, global0.x), true)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1236f, 1588f, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(839f, global0.x, 170f)))) + vec3<f32>(_wgslsmith_f_op_f32(-607f - -1000f), -1520f, -1623f))));
    global0 = vec3<f32>(global0.x, 748f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))))));
    let var_0 = u_input.b;
    let var_1 = Struct_1(-887f, global0.x, -733f, func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), 1213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), min(u_input.d.x, u_input.d.x), !func_3()), min(min(var_0, u_input.b), -vec2<i32>(7771i, -1i)), u_input.c), select(vec2<bool>(func_3().x, true), func_3(), true));
    let var_2 = vec3<i32>(-5074i, _wgslsmith_div_i32(u_input.c, 0i), firstTrailingBit((-1i & -var_0.x) << (68034u % 32u)));
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = func_2();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, global0.x, var_0.c))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(722f, 1000f, global0.x))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1378f, 1000f, -493f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 1196f, 468f) + vec3<f32>(3040f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1030f, var_0.b, global0.x)))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1395f, var_0.b, _wgslsmith_f_op_f32(1000f + -1181f))))));
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1539f))))), var_0.b)), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a)))))), func_2().d, var_0.e);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, global0.x, var_0.b) * vec3<f32>(425f, 225f, var_0.a)), vec3<f32>(global0.x, var_2.b, -1024f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(490f, var_2.a, var_0.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(785f, 283f, var_0.b) - vec3<f32>(-270f, -618f, global0.x))), vec3<bool>(var_2.e.x, any(vec3<bool>(false, false, false)), var_2.e.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -504f, -703f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2277f, 849f, var_0.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-216f, var_2.c, 1756f), vec3<f32>(var_0.b, -369f, -1085f)))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-256f, 414f)))), -213f, _wgslsmith_f_op_f32(-global0.x))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(1139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))))), _wgslsmith_f_op_f32(-global0.x));
    var var_0 = -(~vec3<i32>(u_input.a, -87810i, func_1(reverseBits(u_input.d))));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(529f))) - -393f), -777f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1116f, global0.x, -1301f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-253f, 509f, global0.x)))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(735f)) * global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1351f)), _wgslsmith_f_op_f32(-global0.x))));
    let var_2 = var_1.xw;
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, (i32(-1i) * -24519i) & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.x), var_0.zz), u_input.c), vec3<i32>(41978i, u_input.c, -1i)), firstLeadingBit(vec3<i32>(var_0.x, var_0.x, 1i)));
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(~33989u), u_input.d.x), abs(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(48031u, 36094u)), max(~vec2<u32>(u_input.d.x, 70216u), u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(vec3<u32>(0u, 0u, 19340u) & vec3<u32>(4294967295u, 1u, var_3)))), vec3<f32>(_wgslsmith_f_op_f32(1092f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f))), -370f, -404f));
}

