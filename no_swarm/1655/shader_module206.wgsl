struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-3445i, -1i, 0i), vec3<i32>(-1i, 38205i, -34862i), vec3<i32>(-47825i, -8589i, 27474i), vec3<i32>(-28081i, -8577i, 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1317f, -494f, -197f, -100f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-919f, -1618f, 1585f, 699f) * vec4<f32>(-422f, -2010f, 1075f, 737f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1169f, 961f, 2435f, 236f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1594f, -491f, 601f), vec4<f32>(-1631f, -817f, -288f, 484f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1359f, -1584f, -965f, -210f) + vec4<f32>(-202f, 1071f, -364f, -1215f)))))));
    var var_1 = Struct_1(vec3<bool>(true, true, (min(134i, u_input.b) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(33235i, -24098i, arg_0.x, 1i), vec4<i32>(arg_0.x, 0i, -36850i, -1i))) != _wgslsmith_clamp_i32(u_input.b ^ -1i, ~arg_0.x, i32(-1i) * -9871i)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-391f + var_0.x), _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = var_1.a.xx;
    let var_4 = any(select(select(!select(vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(true, var_1.a.x, var_1.a.x, var_3.x), var_1.a.x), vec4<bool>(u_input.b <= 20858i, var_3.x, all(vec4<bool>(true, true, var_1.a.x, false)), any(vec4<bool>(var_3.x, true, false, false))), select(select(vec4<bool>(var_3.x, false, true, var_1.a.x), vec4<bool>(false, var_1.a.x, var_3.x, var_3.x), vec4<bool>(var_1.a.x, var_3.x, false, var_3.x)), !vec4<bool>(var_1.a.x, true, var_1.a.x, true), !vec4<bool>(false, false, true, var_1.a.x))), vec4<bool>(false, false, any(vec2<bool>(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(abs(-1938f)) <= var_0.x), vec4<bool>(!var_1.a.x, all(select(vec4<bool>(true, var_1.a.x, true, true), vec4<bool>(true, false, false, false), vec4<bool>(var_1.a.x, var_3.x, false, false))), !all(vec4<bool>(var_1.a.x, var_1.a.x, true, true)), all(select(vec4<bool>(var_3.x, false, var_1.a.x, false), vec4<bool>(var_3.x, false, var_1.a.x, var_1.a.x), vec4<bool>(true, true, true, true))))));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(2196f)), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), !(var_0.x < _wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(-718f, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)));
    var var_1 = Struct_2(vec3<f32>(773f, arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1150f, 1157f, !arg_0.b.x)) * _wgslsmith_f_op_vec3_f32(func_3(countOneBits(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_u32(u_input.d, u_input.a.zz), _wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(u_input.d.x, 0u)))).x)), !select(vec2<bool>(arg_0.c <= arg_0.a.x, arg_0.a.x <= -1216f), select(vec2<bool>(false, arg_0.b.x), !arg_3.xy, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), arg_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.a.x)))));
    var var_2 = Struct_1(arg_3.zzy);
    var var_3 = select(~(~(firstLeadingBit(u_input.d.x) ^ (4294967295u ^ u_input.c.x))), 1u, false);
    var var_4 = -269f;
    return select(var_2.a.yy, vec2<bool>(var_2.a.x, var_2.a.x), u_input.a.x > 18271u);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.a.zwy;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(691f, _wgslsmith_f_op_f32(-1263f + _wgslsmith_f_op_f32(904f + 781f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(117f)), _wgslsmith_f_op_f32(1000f * -1622f))))), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, 224f, -1547f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1815f, -1073f, -353f)), var_0.x == 4294967295u)), vec2<bool>(true, true), 1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(458f, 728f, 572f))), _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-21698i, arg_0.x), ~var_0.xy, vec2<u32>(25849u, u_input.a.x) >> (var_0.xy % vec2<u32>(32u)))))), !(!all(vec4<bool>(false, true, true, false))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), 34873u <= u_input.d.x), vec4<bool>(true, false, true, all(vec3<bool>(false, false, true))), select(true, all(vec2<bool>(true, true)), true))), 435f);
    global0 = array<vec3<i32>, 4>();
    var var_2 = vec3<bool>(var_1.b.x || true, true, false);
    var_1 = Struct_2(var_1.a, var_2.xy, var_1.c);
    return Struct_2(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1765f, -859f, 2592f), vec3<f32>(-320f, 591f, 327f), var_2.x)) + vec3<f32>(721f, var_1.a.x, var_1.c)), var_1.a)), !(!(!(!vec2<bool>(var_2.x, var_2.x)))), var_1.a.x);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(-vec4<i32>(firstTrailingBit(13939i), u_input.b, ~u_input.b, ~u_input.b), Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)), u_input.a.xxy);
    var var_1 = func_2(max(vec3<i32>(-2147483647i, i32(-1i) * -5796i, ~1i ^ u_input.b), global0[_wgslsmith_index_u32(firstLeadingBit(14524u), 4u)]), _wgslsmith_mod_i32(-1i, -15566i));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1538f, _wgslsmith_div_f32(-955f, _wgslsmith_f_op_f32(var_1.c + 250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.a)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(409f, 213f, var_1.c), vec3<f32>(var_1.a.x, 1128f, -718f))))))), select(vec2<bool>(true, var_0.b.a.x), func_2(-global0[_wgslsmith_index_u32(4294967295u >> (u_input.c.x % 32u), 4u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, var_0.a.x, var_0.a.x), var_0.a) >> (u_input.a.x % 32u)).b, func_2(-(vec3<i32>(u_input.b, var_0.a.x, 2147483647i) ^ vec3<i32>(1i, 8990i, 26437i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.a.x, var_0.a.x)), vec2<i32>(-1i, u_input.b))).b), _wgslsmith_f_op_f32(trunc(var_1.a.x)));
    var var_2 = countOneBits(~(~(~u_input.a.x)));
    var var_3 = Struct_3(vec4<i32>(21073i, -39827i, _wgslsmith_sub_i32(var_0.a.x, u_input.b), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.b, u_input.b, u_input.b, var_0.a.x)), ~(vec4<i32>(u_input.b, -24591i, var_0.a.x, var_0.a.x) ^ var_0.a))), var_0.b, min(vec3<u32>(~var_0.c.x, 0u, ~4294967295u) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.d), var_0.c.x, 4628u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(22472u, 11608u, var_0.c.x) ^ vec3<u32>(1u, u_input.a.x, 1u), select(var_0.c, var_0.c, var_0.b.a.x)) | max(u_input.a.zxz, min(u_input.a.yzx, var_0.c))));
    return Struct_4(Struct_1(!var_3.b.a), reverseBits(~select(u_input.b, u_input.b, true)), vec4<bool>(!any(vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), all(vec4<bool>(all(var_0.b.a), var_1.b.x, var_3.b.a.x, var_0.b.a.x)), var_3.b.a.x, ~(u_input.b >> (1u % 32u)) >= firstTrailingBit(_wgslsmith_mult_i32(-255i, 29231i))), ~4294967295u << (~var_0.c.x % 32u), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(64989u, 18344u), reverseBits(var_0.c.x)), ~(~var_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec2<u32>(0u, 17488u);
    let var_2 = true;
    var var_3 = -max(var_0.b, _wgslsmith_add_i32(-56967i, _wgslsmith_sub_i32(firstTrailingBit(var_0.b), -1i << (var_0.d % 32u))));
    var_1 = vec2<u32>(~_wgslsmith_sub_u32(var_0.d, _wgslsmith_mod_u32(~610u, func_1().d)), _wgslsmith_div_u32(var_0.d, var_1.x));
    global0 = array<vec3<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 25104u, vec3<u32>(abs(1u), 48638u, _wgslsmith_add_u32(var_0.d, _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.zz), countOneBits(u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-811f + -1598f), _wgslsmith_f_op_f32(f32(-1f) * -141f)) - _wgslsmith_f_op_f32(abs(-1723f))) - _wgslsmith_f_op_f32(f32(-1f) * -1386f)));
}

