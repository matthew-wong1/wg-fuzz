struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_4(_wgslsmith_div_u32(~u_input.a, 1u), !(!select(vec2<bool>(false, true), !vec2<bool>(arg_1.x, true), arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 1642f, -178f, arg_2.x) * vec4<f32>(-1545f, arg_2.x, arg_2.x, 1170f)))) * vec4<f32>(_wgslsmith_f_op_f32(1550f + arg_2.x), 836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1341f)) - _wgslsmith_f_op_f32(arg_2.x - arg_2.x)), -274f)));
    let var_1 = var_0.c;
    let var_2 = ~vec4<u32>(4294967295u, firstTrailingBit(abs(var_0.a)), _wgslsmith_div_u32(firstTrailingBit(33601u), ~u_input.a), ~firstLeadingBit(var_0.a)) & vec4<u32>(~49058u, ~(~10521u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(u_input.a, var_0.a)) % 32u), u_input.a, abs(~18188u));
    let var_3 = false;
    let var_4 = -_wgslsmith_div_i32(_wgslsmith_mult_i32(firstLeadingBit(-33998i), ~arg_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, 2147483647i, arg_0.x), vec4<i32>(14270i, arg_0.x, -7047i, 24498i))) >> (~min(49525u, 4294967295u) % 32u);
    return any(!vec3<bool>(!var_3, all(!arg_1), var_3));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    global0 = any(!vec4<bool>(arg_1, func_3(-arg_0.yy, select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, true, arg_1, true)), vec2<f32>(1f, 1f)), 1u != _wgslsmith_clamp_u32(u_input.a, arg_2.x, 67757u), (arg_2.x >= 4294967295u) || func_3(arg_0.yx, vec4<bool>(false, false, true, true), vec2<f32>(263f, -1000f))));
    var var_0 = Struct_2(Struct_1(arg_0.yz, arg_2), 48944u, ~countOneBits(vec3<u32>(firstLeadingBit(15408u), 67263u, max(u_input.a, 4294967295u))));
    global0 = true;
    let var_1 = true;
    let var_2 = Struct_3(1796f, !(!all(vec2<bool>(true, true)) & any(!vec4<bool>(arg_1, false, var_1, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(194f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(258f, -480f)), _wgslsmith_f_op_f32(ceil(236f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 815f, 1001f) - vec3<f32>(933f, -1131f, -1120f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 120f, -389f) - vec3<f32>(906f, -801f, 362f))))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1902f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1016f))))), vec2<u32>(~(~78118u), u_input.a));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_1.x;
    global0 = !any(vec3<bool>(true, select(true, true, func_2(vec3<i32>(arg_0, 15675i, -2220i), true, vec2<u32>(23020u, 94841u))), !all(vec3<bool>(true, true, true))));
    global0 = false;
    let var_1 = Struct_2(arg_2.a, select(~_wgslsmith_div_u32(49992u, 4294967295u), 5534u, true) ^ abs(countOneBits(1u << (arg_2.b % 32u))), max(max(arg_2.c, ~(~arg_2.c)), select(vec3<u32>(countOneBits(0u), 4294967295u, 90692u), _wgslsmith_add_vec3_u32(arg_2.c, vec3<u32>(1u, arg_2.b, u_input.a)), vec3<bool>(func_3(arg_2.a.a, vec4<bool>(false, false, false, true), arg_1.zz), any(vec3<bool>(false, false, true)), true))));
    global0 = true;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.c.xx, ~(~arg_2.a.b)), var_1.c.xy), vec2<u32>(arg_2.a.b.x, firstTrailingBit(min(~arg_2.b, 0u))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    global0 = true || arg_0;
    var var_0 = Struct_2(Struct_1(-vec2<i32>(arg_1.x, ~1i), vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 27422u)), ~(arg_2.a & 81580u))), func_1(arg_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2437f, arg_2.c.x, arg_2.c.x, arg_2.c.x)))) + arg_2.c), Struct_2(Struct_1(-vec2<i32>(2147483647i, 0i), vec2<u32>(arg_2.a, 93662u) >> (vec2<u32>(71979u, 0u) % vec2<u32>(32u))), ~(~0u), ~(~vec3<u32>(1u, 3742u, 21718u)))), _wgslsmith_div_vec3_u32(vec3<u32>(~arg_2.a, firstTrailingBit(u_input.a), 32660u) | (vec3<u32>(arg_2.a, u_input.a, arg_2.a) << ((vec3<u32>(arg_2.a, 17830u, 112125u) & vec3<u32>(u_input.a, arg_2.a, u_input.a)) % vec3<u32>(32u))), vec3<u32>(45278u, _wgslsmith_div_u32(29884u, reverseBits(4294967295u)), arg_2.a << (~1u % 32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(249f * arg_2.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-606f, arg_2.c.x)), -436f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c.x * _wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x)))), arg_2.c.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x), -1000f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(arg_2.c, _wgslsmith_f_op_vec4_f32(-arg_2.c)))));
    var var_2 = vec3<bool>(arg_3, all(select(!vec3<bool>(arg_0, true, arg_3), !select(vec3<bool>(false, arg_2.b.x, arg_0), vec3<bool>(true, true, arg_3), arg_0), vec3<bool>(var_1.x < arg_2.c.x, var_1.x > var_1.x, false))), 4294967295u != max(55099u, ~(~arg_2.a)));
    return _wgslsmith_clamp_u32(var_0.a.b.x, ~4294967295u, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec3<bool>(!any(vec4<bool>(true, false, false, true)) && any(vec4<bool>(true, true, true, true)), false, select(true, true, true)));
    let var_0 = ~func_4(true && (abs(4294967295u) != func_1(8709i, vec4<f32>(817f, -770f, 721f, 1118f), Struct_2(Struct_1(vec2<i32>(-61879i, 40080i), vec2<u32>(u_input.a, 1u)), 4294967295u, vec3<u32>(591u, 35295u, u_input.a)))), abs(vec4<i32>(-2147483647i, ~(-2147483647i), i32(-1i) * -1i, 0i)), Struct_4(~(~u_input.a), vec2<bool>(all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(199f, 963f, 491f, -1673f), vec4<f32>(-1423f, 1709f, -1070f, 1311f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1355f, 1239f, 642f, -799f)))))), false);
    global0 = !((17646u & _wgslsmith_add_u32(0u, u_input.a)) < _wgslsmith_div_u32(min(23264u, var_0), 28008u)) & !any(vec4<bool>(true, true, true, true));
    global0 = all(select(select(vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), true, false, func_2(vec3<i32>(-1i, 70612i, -40460i), false, vec2<u32>(34308u, 0u)))), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(113f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-793f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) - _wgslsmith_f_op_f32(select(-1578f, -911f, false))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-163f)), _wgslsmith_f_op_f32(round(-1450f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1290f, 217f), _wgslsmith_f_op_f32(step(-1306f, 131f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1177f, 136f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(820f)) + _wgslsmith_f_op_f32(sign(-1380f))), -412f, true)), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec4<bool>(true, false, false, true)))))));
    let var_2 = var_1;
    let var_3 = vec4<i32>(-(_wgslsmith_clamp_i32(35962i, 2147483647i, -8178i) << (4294967295u % 32u)) & 2147483647i, i32(-1i) * -2147483647i, -50413i, ~firstLeadingBit(-abs(-2147483647i)));
    var var_4 = select(vec3<bool>(!(!any(vec3<bool>(false, true, false))), var_3.x != -var_3.x, true), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))));
    var var_5 = countOneBits(vec2<i32>(_wgslsmith_clamp_i32(select(-var_3.x, -2147483647i >> (u_input.a % 32u), true), -11411i, min(var_3.x, var_3.x)), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

