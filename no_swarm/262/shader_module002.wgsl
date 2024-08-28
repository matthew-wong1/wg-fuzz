struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<i32> {
    return vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(global0.c, u_input.b.xw)), u_input.b.xx & (vec2<i32>(u_input.b.x, 0i) ^ global0.c)), -global0.a), -2147483647i);
}

fn func_2() -> Struct_3 {
    var var_0 = ~(~global0.d.b);
    let var_1 = !(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, false), all(vec2<bool>(false, true))), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, true)));
    global0 = Struct_2(global0.a, ~u_input.a.xw, ~func_3(), Struct_1(~global0.d.a, u_input.c, _wgslsmith_mult_u32(~global0.b.x, global0.d.b)));
    var_0 = _wgslsmith_clamp_u32(~global0.d.a.x, ~0u, 1u);
    var var_2 = vec2<u32>(~13265u, ~_wgslsmith_clamp_u32(abs(global0.b.x), 0u, 30353u));
    return Struct_3(!(!(!var_1)), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global0.c.x, 408i) >> ((u_input.a.yyz >> (vec3<u32>(53741u, 64968u, 13175u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(~vec3<i32>(u_input.b.x, 2134i, 1i))), ~min(abs(u_input.a.xx), vec2<u32>(var_2.x, var_2.x)), vec2<i32>(abs(global0.a), u_input.b.x), Struct_1(u_input.a, ~(4294967295u & global0.d.c), _wgslsmith_mod_u32(var_2.x, ~6753u))), var_1.xxw, ~global0.d.a);
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global0 = Struct_2(global0.c.x, firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global0.d.a.wx, global0.d.a.xz) & vec2<u32>(15907u, 1u), ~firstLeadingBit(vec2<u32>(79671u, 4294967295u)))), vec2<i32>(global0.c.x, select(~abs(arg_0.b.a), _wgslsmith_add_i32(50047i, -32324i) << (arg_0.b.d.b % 32u), true)), func_2().b.d);
    global0 = Struct_2(select(u_input.b.x ^ func_3().x, -(~abs(global0.c.x)), true), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0.b.b.x, 1u), ~0u), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.c, 67747u), global0.b), u_input.a.wz & u_input.a.zz), vec2<u32>(arg_0.d.x, 1u) ^ u_input.a.xw), ~global0.d.a.ww), ~(vec2<i32>(-1i) * -select(global0.c, u_input.b.xw, vec2<bool>(true, arg_0.c.x))), Struct_1(max(u_input.a, ~(~vec4<u32>(4294967295u, u_input.c, u_input.c, global0.d.c))), 88626u, 51017u << (_wgslsmith_add_u32(~34055u, abs(u_input.d)) % 32u)));
    global0 = Struct_2(min(~0i, i32(-1i) * -arg_0.b.c.x), ~abs(abs(min(vec2<u32>(global0.d.c, arg_0.b.b.x), vec2<u32>(arg_0.d.x, 1u)))), abs(arg_0.b.c), func_2().b.d);
    global0 = arg_0.b;
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(step(-740f, -1769f)), _wgslsmith_f_op_f32(f32(-1f) * -1175f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(729f, -586f, 1156f), vec3<f32>(-1675f, -709f, -1343f))))), arg_0.b.d.a, 23879i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-var_0.a), vec4<u32>(~global0.b.x, u_input.d << (~(~global0.b.x) % 32u), 64969u, u_input.d), -19566i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-706f - 298f), var_0.a.x, false | !select(arg_0.a.x, arg_0.a.x, false))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = func_4(func_2());
    var var_2 = firstTrailingBit(countOneBits(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, var_1.b.x), vec3<u32>(44063u, global0.b.x, 1u)))));
    global0 = Struct_2(-2147483647i, func_4(func_2()).b.yz, -vec2<i32>(i32(-1i) * -7987i, arg_1.x), Struct_1(global0.d.a >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 0u, 1751u, 1u), vec4<u32>(global0.d.a.x, var_2.x, 0u, u_input.a.x))) % vec4<u32>(32u)), ~(~0u) | (select(global0.b.x, u_input.a.x, false) | var_1.b.x), _wgslsmith_mod_u32(~4294967295u, ~var_2.x)));
    let var_3 = Struct_2(u_input.b.x, ~(~(~global0.b)) | max(global0.b, ~var_1.b.xw), _wgslsmith_sub_vec2_i32(select(~arg_1.xy, ~vec2<i32>(-31299i, u_input.b.x), true), ~vec2<i32>(-1i, firstTrailingBit(u_input.b.x))), Struct_1(var_1.b, abs(var_1.b.x), ~(~_wgslsmith_mult_u32(u_input.d, 1u))));
    return func_2().c.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1098f))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(424f, 427f, 416f), vec3<f32>(510f, -1000f, -852f), arg_1.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-668f, -862f, -707f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1815f, 1086f, -1000f))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1291f, -277f, 1063f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(908f, -1625f, 670f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2599f, -538f, 1108f) * vec3<f32>(301f, 1386f, -1440f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(764f, -1007f, 1817f) + vec3<f32>(1282f, 258f, -127f)), !vec3<bool>(true, false, arg_0.x)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~firstTrailingBit(~60122u), _wgslsmith_clamp_u32(global0.b.x, 0u, global0.d.b & u_input.c), 1u, abs(~91601u));
    let var_1 = -395f;
    global0 = func_5(vec4<bool>(true, true, !(_wgslsmith_f_op_f32(select(var_1, -1851f, false)) <= -1437f), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, any(vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, false, true, false)), func_1(var_1, u_input.b.wxw)))), func_2().b, select(4491i, _wgslsmith_clamp_i32(4372i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 40560u, var_0.x), vec3<u32>(var_0.x, var_0.x, global0.d.c)) % 32u), _wgslsmith_add_i32(u_input.b.x, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(45894i, u_input.b.x), vec2<i32>(-36007i, 2147483647i)), ~vec2<i32>(global0.c.x, 24846i))), 1i <= (firstTrailingBit(global0.c.x) >> (0u % 32u))));
    var_0 = abs(func_2().d);
    var var_2 = func_4(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-global0.a, vec4<f32>(_wgslsmith_f_op_f32(max(1130f, _wgslsmith_f_op_f32(var_2.d + var_1))), _wgslsmith_f_op_f32(-1445f - var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), var_1)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(528f + -525f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d))))));
}

