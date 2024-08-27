struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-563f, -867f, 1000f, -1028f), vec3<u32>(43678u, 44493u, 28504u), Struct_1(1526f, 1660f, vec3<i32>(22680i, i32(-2147483648), -40161i), vec4<u32>(0u, 4294967295u, 84880u, 64940u), i32(-2147483648)), 16548i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = select(vec4<bool>(true, global0.b.x < u_input.b, true, all(vec4<bool>(true, false, true, true))), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true))), true);
    var var_1 = global0.a.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-621f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(3091f, 303f) - _wgslsmith_f_op_f32(f32(-1f) * -1079f))))), global0.c.b, var_0.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(f32(-1f) * -101f), -741f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(-2005f, -822f, -354f, global0.a.x))))), true)), arg_1.d.xxw, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) - arg_1.b), arg_1.a, abs(vec3<i32>(u_input.c.x, -46040i << (0u % 32u), _wgslsmith_div_i32(-1i, arg_1.e))), vec4<u32>(min(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(4294967295u, arg_0.x, global0.c.d.x)), ~global0.b.x), global0.c.d.x, u_input.b, global0.c.d.x), ~global0.c.e), 1i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))))), arg_0, global0.c, ~global0.d);
    global0 = Struct_2(var_1.a, vec3<u32>(~var_1.b.x, var_0.b.x, ~(~36058u)), arg_1, _wgslsmith_mod_i32(reverseBits(firstLeadingBit(0i)), _wgslsmith_mod_i32(min(-41966i, ~54480i), -firstLeadingBit(37014i))));
    global0 = Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -1214f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(f32(-1f) * -753f))), var_1.a.x), _wgslsmith_clamp_vec3_u32(arg_1.d.zyz, vec3<u32>(u_input.b, ~4294967295u, arg_0.x), reverseBits(~vec3<u32>(0u, arg_0.x, 1u))), var_1.c, select(_wgslsmith_sub_i32(1i, var_1.d), 6359i, (0i < (arg_1.e ^ u_input.c.x)) & true));
    let var_2 = Struct_1(var_1.a.x, global0.a.x, vec3<i32>(-_wgslsmith_sub_i32(firstTrailingBit(global0.c.c.x), _wgslsmith_add_i32(-1i, var_1.d)), 48310i, max(_wgslsmith_mod_i32(-arg_1.c.x, -u_input.a), -62218i)), ~vec4<u32>(abs(var_1.b.x) & 1u, u_input.b, var_0.b.x, select(~0u, countOneBits(var_1.c.d.x), true)), 54904i);
    return var_0.b | var_2.d.xwy;
}

fn func_1() -> vec4<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f) * -534f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(258f, -1891f)) * _wgslsmith_f_op_f32(global0.c.a * 639f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))), global0.a.x, true))));
    let var_1 = _wgslsmith_mult_u32(4294967295u, global0.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f * -1000f)))), _wgslsmith_f_op_f32(min(-246f, _wgslsmith_f_op_f32(trunc(global0.a.x)))), countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(-38053i, 1i, 18854i), vec3<i32>(~23464i, 2147483647i, global0.d >> (global0.c.d.x % 32u)))), global0.c.d, 2147483647i);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_sub_vec3_u32(abs(func_2(vec3<u32>(u_input.b, global0.c.d.x, var_1), Struct_1(175f, var_2.b, u_input.c.zwz, vec4<u32>(u_input.b, 29491u, 40520u, u_input.b), u_input.a))), global0.b) >> ((~global0.c.d.wwy << (global0.c.d.wxz % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)), 487f)), abs(reverseBits(u_input.c.yyy)), var_2.d, 1i), select(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0.d, 1i), 48187i), global0.d, all(vec2<bool>(true, false))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(-599f, 188f, var_2.a, -1258f), vec4<bool>(false, true, false, true))))))), max(_wgslsmith_sub_vec3_u32(~(var_2.d.xyw | global0.c.d.zwx), min(var_2.d.wxz, global0.b)), var_2.d.zxx), global0.c, ~(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-24294i, 35625i), vec2<i32>(23171i, -2147483647i)), ~(-21570i))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.a))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, -481f, var_2.b, var_2.b)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.b, -546f, var_0.x, var_2.a), vec4<f32>(893f, var_0.x, -715f, -326f)), true))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global0 = arg_1;
    var var_0 = arg_1.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -328f), -1060f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(964f, 773f))))), ~((~var_0.d.wxx << (~arg_1.b % vec3<u32>(32u))) ^ (~global0.b ^ (arg_1.c.d.wyw | var_0.d.yzx))), Struct_1(-521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a + global0.a.x)), -var_0.c, vec4<u32>(firstLeadingBit(~52842u), ~countOneBits(arg_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), vec4<u32>(43423u, var_0.d.x, arg_1.c.d.x, var_0.d.x)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 7046u, u_input.b, global0.c.d.x)), ~global0.c.d)), ~(2147483647i ^ ~var_0.e)), -_wgslsmith_add_i32(reverseBits(-2147483647i ^ var_0.e), -2147483647i));
    let var_2 = vec4<bool>(true, true, false, 2505f >= var_0.b);
    var var_3 = min(~_wgslsmith_div_u32(0u, u_input.b), ~(~18353u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(-global0.a.x))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, global0.a.x, global0.c.b, 1066f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, global0.a.x, 681f, -1335f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, -816f, global0.a.x, 833f), vec4<f32>(757f, -1677f, 525f, 749f), true)), _wgslsmith_f_op_vec4_f32(func_1()), vec4<bool>(true, false, false, true)))), vec3<u32>(global0.c.d.x, 4294967295u, firstLeadingBit(u_input.b)), Struct_1(global0.a.x, 194f, _wgslsmith_div_vec3_i32(select(global0.c.c, global0.c.c, vec3<bool>(true, true, false)), select(global0.c.c, global0.c.c, vec3<bool>(true, false, false))), vec4<u32>(~u_input.b, abs(4294967295u), abs(15084u), u_input.b ^ 31844u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, u_input.c.x, global0.d), -92154i)), global0.c.e ^ abs(1i)));
    let var_0 = 2147483647i;
    global0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(global0.a.xw)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.a, -337f) * vec2<f32>(542f, global0.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -1751f) + global0.a.wx))))), Struct_2(global0.a, ~(vec3<u32>(global0.b.x, 41597u, 4294967295u) ^ (vec3<u32>(4294967295u, global0.c.d.x, global0.c.d.x) << (global0.c.d.yxy % vec3<u32>(32u)))), global0.c, 2147483647i | u_input.a));
    let var_1 = global0.c;
    var var_2 = global0.c.d.yw;
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x - 248f))) * _wgslsmith_f_op_f32(trunc(var_1.b))), -592f, global0.a.x), _wgslsmith_f_op_vec4_f32(step(global0.a, vec4<f32>(1191f, -252f, -314f, -1415f))));
    let var_4 = ~(~vec4<u32>(global0.c.d.x, func_2(max(vec3<u32>(var_2.x, global0.b.x, u_input.b), vec3<u32>(global0.b.x, u_input.b, var_2.x)), global0.c).x, 0u, ~_wgslsmith_div_u32(0u, var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, firstLeadingBit(_wgslsmith_sub_vec3_u32(var_4.yxz, vec3<u32>(global0.b.x, 17939u, 73221u)) >> (~_wgslsmith_mult_vec3_u32(var_4.xyw, global0.b) % vec3<u32>(32u))));
}

