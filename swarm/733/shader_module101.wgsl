struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = arg_2.a.x;
    let var_1 = -18543i;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(arg_3));
    return arg_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_1(arg_0.a, arg_0.b, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(2299f, 235f, arg_0.c.x)), _wgslsmith_f_op_f32(-832f * 849f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1978f, arg_0.b))) + _wgslsmith_div_vec2_f32(vec2<f32>(891f, arg_0.b), vec2<f32>(arg_0.b, arg_0.b)))), arg_0, arg_0, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-938f, -505f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, 916f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)))))), -42280i ^ (arg_0.d & ~u_input.a), _wgslsmith_add_i32(~_wgslsmith_add_i32(-27217i, 12639i), ~_wgslsmith_div_i32(firstLeadingBit(-21494i), ~(-2147483647i))));
    let var_1 = vec4<bool>(!arg_0.a.x && ((!var_0.a.x || (19762u == u_input.d.x)) && true), select(true, true, true && all(vec3<bool>(var_0.a.x, false, var_0.a.x))), !var_0.c.x, all(!(!select(vec4<bool>(false, false, arg_0.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(false, var_0.a.x, true, false)))));
    global0 = countOneBits(var_0.e);
    let var_2 = u_input.d.x;
    global0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(u_input.b, u_input.b, var_1), vec4<i32>(31522i, -1i, 58571i, arg_1.x), _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), u_input.b) >> (4294967295u % 32u);
    return !var_0.c.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_1(arg_1, _wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1769f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1733f, -1790f))))), arg_1, _wgslsmith_clamp_i32(min(-u_input.a, _wgslsmith_sub_i32(u_input.b.x, -75910i)), u_input.b.x, abs(-1i << (u_input.d.x % 32u))) | u_input.a, 28211i);
    var_0 = Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, var_0.b))) + _wgslsmith_f_op_f32(412f * var_0.b))), vec3<bool>(false, any(arg_1), true), 1i, select(abs(_wgslsmith_mod_i32(1i, max(2147483647i, u_input.b.x))), max(-u_input.a, var_0.e), var_0.d == _wgslsmith_mult_i32(select(1i, u_input.b.x, var_0.a.x), ~u_input.b.x)));
    var var_1 = countOneBits(~u_input.c.xyy);
    let var_2 = -18210i;
    var_0 = Struct_1(!(!arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) * -2219f) * _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-var_0.b))), 109f), select(vec3<bool>(false, arg_0.x, false & (true && var_0.a.x)), var_0.c, func_3(vec2<f32>(274f, _wgslsmith_f_op_f32(-var_0.b)), Struct_1(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(true, arg_0.x, false), false), _wgslsmith_f_op_f32(var_0.b + var_0.b), vec3<bool>(arg_0.x, var_0.c.x, true), -1075i, var_0.e), Struct_1(!vec3<bool>(true, var_0.a.x, true), _wgslsmith_f_op_f32(-var_0.b), arg_1, ~2147483647i, ~(-1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 697f) + vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -649f))))), -countOneBits(u_input.a), reverseBits(~(u_input.b.x & -2366i)));
    return var_0.e;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global0 = _wgslsmith_mult_i32(-firstTrailingBit(~(~1i)), -17549i);
    global0 = func_4(select(select(select(vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), true), all(vec4<bool>(true, arg_0, true, false))), vec2<bool>(func_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), -211f, vec3<bool>(arg_0, true, false), 31976i, -12213i), vec2<i32>(u_input.b.x, u_input.b.x)), arg_0), !(!vec2<bool>(arg_0, false))), vec2<bool>(arg_0, true), arg_0), vec3<bool>(true, true, false));
    let var_0 = Struct_1(select(vec3<bool>(true, true, any(!vec4<bool>(arg_0, arg_0, false, false))), vec3<bool>(true & arg_0, true, false), vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(arg_0, true, arg_0), arg_0)), arg_0, !(!arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f) - _wgslsmith_div_f32(711f, -205f)), _wgslsmith_f_op_f32(select(-918f, _wgslsmith_f_op_f32(f32(-1f) * -554f), arg_0)))), !func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f), Struct_1(vec3<bool>(arg_0, true, true), 780f, vec3<bool>(arg_0, false, arg_0), -1i, u_input.a & u_input.b.x), Struct_1(!vec3<bool>(true, arg_0, arg_0), _wgslsmith_f_op_f32(select(463f, 1721f, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), -1i, -1i), vec2<f32>(_wgslsmith_f_op_f32(floor(313f)), _wgslsmith_div_f32(499f, 1086f))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i ^ u_input.a), u_input.b.zy)), u_input.a >> (14851u % 32u));
    var var_1 = min(vec4<u32>(4294967295u, ~(~u_input.d.x), ~(~u_input.c.x), firstLeadingBit(5018u)), ~(~firstLeadingBit(vec4<u32>(35585u, u_input.c.x, 4294967295u, 38790u))) << (abs(firstTrailingBit(~u_input.c)) % vec4<u32>(32u)));
    var var_2 = var_0.e;
    return !select(!(!vec4<bool>(var_0.a.x, arg_0, arg_0, var_0.c.x)), !select(!vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(arg_0, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, true, arg_0, false), var_0.a.x)), true == arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(func_1(false && all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, func_2(Struct_1(vec3<bool>(false, true, false), -634f, vec3<bool>(true, true, true), u_input.a, u_input.a), ~u_input.b.xy)), true));
    let var_1 = Struct_1(vec3<bool>(false, u_input.d.x < u_input.d.x, !(true && (u_input.d.x < u_input.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1666f * 296f), -498f)))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), _wgslsmith_dot_vec2_i32(select(-select(vec2<i32>(0i, u_input.a), u_input.b.xx, false), _wgslsmith_add_vec2_i32(u_input.b.zx << (u_input.d % vec2<u32>(32u)), -u_input.b.xy), vec2<bool>(true, any(vec3<bool>(false, false, false)))), vec2<i32>(abs(i32(-1i) * -33912i), u_input.b.x & (49023i << (u_input.c.x % 32u)))), ~u_input.a);
    global0 = -abs(-1i | min(59380i, u_input.b.x));
    var var_2 = var_1;
    var_2 = Struct_1(!var_2.c, var_2.b, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1.b, 369f)), _wgslsmith_f_op_f32(trunc(1091f)))), Struct_1(select(vec3<bool>(var_1.c.x, var_1.a.x, var_1.a.x), !var_2.a, true & var_2.c.x), -1013f, var_1.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.xwz, u_input.b.yxw), ~2147483647i), _wgslsmith_add_i32(33442i, var_1.d) & ~var_2.d), Struct_1(!vec3<bool>(var_1.a.x, var_1.c.x, var_2.c.x), _wgslsmith_f_op_f32(min(968f, _wgslsmith_f_op_f32(var_1.b + var_1.b))), !vec3<bool>(var_1.c.x, true, false), var_2.d, func_4(var_2.a.xx, !var_1.a)), vec2<f32>(-1176f, -155f)), abs(var_2.d), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(-17372i);
}

