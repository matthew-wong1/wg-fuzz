struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> u32 {
    let var_0 = arg_1.c.a.b.wy;
    var var_1 = 127454u;
    var var_2 = ~abs(~firstTrailingBit(vec2<u32>(arg_0.c.x, u_input.e.x)) << (_wgslsmith_add_vec2_u32(arg_1.e.b.c.xy, min(vec2<u32>(arg_1.b.b.c.x, 0u), vec2<u32>(1u, arg_2.b.b.c.x))) % vec2<u32>(32u)));
    var_1 = u_input.b;
    var_1 = arg_1.b.b.d;
    return arg_1.b.a.a.d;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = ~firstLeadingBit(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(u_input.e.x, 33090u)), 1u));
    let var_1 = -18007i;
    let var_2 = Struct_2(Struct_1(-u_input.c.x, ~vec4<i32>(u_input.d, -16165i, var_1, -4466i) << (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 47688u, 0u, 17u), vec4<u32>(u_input.a, u_input.b, 1u, 32934u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.e.x)), u_input.e) % vec4<u32>(32u)), u_input.e.zxw, u_input.e.x, true));
    var var_3 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0));
    return 43077u;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = vec2<bool>(any(vec4<bool>(arg_0.d > arg_0.d, !any(vec2<bool>(arg_0.e, arg_1)), true, true)), select(false, arg_3.x, false));
    global0 = arg_0.b.x;
    return Struct_1(_wgslsmith_mult_i32(~(-(u_input.d | 1i)), u_input.c.x >> (u_input.b % 32u)), vec4<i32>(u_input.d, _wgslsmith_div_i32(-u_input.d, _wgslsmith_add_i32(-13835i, 2147483647i)) | _wgslsmith_mod_i32(abs(-1i), _wgslsmith_mod_i32(u_input.c.x, 1845i)), -2147483647i, _wgslsmith_mod_i32(select(~(-2147483647i), 23945i, select(false, true, arg_3.x)), 2114i & u_input.c.x)), ~abs(_wgslsmith_div_vec3_u32(arg_0.c, _wgslsmith_mod_vec3_u32(u_input.e.yzy, arg_0.c))), (_wgslsmith_div_u32(func_2(arg_0, Struct_4(-1i, Struct_3(Struct_2(arg_0), arg_0, -1484f), Struct_2(Struct_1(-17319i, vec4<i32>(-16390i, 2147483647i, u_input.c.x, arg_0.a), u_input.e.xxw, 4294967295u, true)), vec2<f32>(331f, 770f), Struct_3(Struct_2(Struct_1(-2147483647i, vec4<i32>(arg_0.a, -1i, 0i, 1i), u_input.e.wyz, 35222u, true)), Struct_1(arg_0.b.x, vec4<i32>(arg_0.b.x, u_input.d, arg_0.b.x, 1i), arg_0.c, 4294967295u, arg_0.e), -759f)), Struct_4(6059i, Struct_3(Struct_2(Struct_1(arg_0.b.x, arg_0.b, u_input.e.zyy, 1u, false)), arg_0, 1328f), Struct_2(Struct_1(arg_0.b.x, vec4<i32>(u_input.c.x, arg_0.a, arg_0.a, -1i), arg_0.c, arg_0.c.x, true)), vec2<f32>(-808f, 3548f), Struct_3(Struct_2(arg_0), Struct_1(u_input.c.x, vec4<i32>(u_input.c.x, arg_0.a, -1i, 14077i), u_input.e.xyx, 1u, arg_2.x), -858f)), vec4<f32>(1434f, -2164f, 553f, 754f)), _wgslsmith_add_u32(1u, u_input.a)) & arg_0.c.x) | (~func_3(-208f, var_0.x, arg_2, false) | max(_wgslsmith_mult_u32(17145u, u_input.e.x), ~u_input.b)), all(vec3<bool>(true, !any(vec3<bool>(true, arg_3.x, arg_2.x)), var_0.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f + 1476f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-681f, 232f))))) - _wgslsmith_f_op_f32(582f - _wgslsmith_f_op_f32(step(-443f, 1283f)))), _wgslsmith_f_op_f32(trunc(-1000f)), -897f);
    global0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1658f, 1358f, -645f, _wgslsmith_f_op_f32(f32(-1f) * -1243f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(2640f, var_0.x, var_0.x, 319f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1127f, var_0.x, var_0.x, -973f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2475f, -2852f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2197f, _wgslsmith_f_op_f32(var_0.x + -2210f), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -912f, var_0.x) + vec4<f32>(var_0.x, -792f, var_0.x, -377f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -543f, -956f, var_0.x) + vec4<f32>(var_0.x, var_0.x, -2047f, -597f)) * vec4<f32>(381f, _wgslsmith_f_op_f32(min(-403f, var_0.x)), _wgslsmith_div_f32(585f, var_0.x), -373f)))));
    var var_2 = select(!(!(!(!vec4<bool>(arg_1.e, true, arg_1.e, true)))), select(!select(!vec4<bool>(false, arg_2.a.e, true, true), select(vec4<bool>(arg_2.a.e, false, arg_1.e, arg_2.a.e), vec4<bool>(arg_2.a.e, arg_1.e, true, arg_1.e), vec4<bool>(true, false, arg_2.a.e, arg_1.e)), vec4<bool>(arg_2.a.e, false, arg_1.e, arg_2.a.e)), select(vec4<bool>(arg_1.e, true, true, var_0.x <= var_0.x), vec4<bool>(select(true, arg_2.a.e, arg_2.a.e), !arg_2.a.e, arg_2.a.e, all(vec4<bool>(false, true, false, false))), vec4<bool>(false, 975i <= arg_1.b.x, !arg_1.e, arg_1.e & arg_1.e)), select(vec4<bool>(arg_2.a.e, true, true, all(vec4<bool>(true, arg_1.e, false, false))), !vec4<bool>(false, arg_1.e, arg_2.a.e, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), arg_2.a.e)))), select(vec4<bool>(arg_1.e, arg_2.a.e, var_1.x <= -1018f, all(vec3<bool>(false, false, arg_2.a.e))), !vec4<bool>(true, arg_1.e, true, arg_1.e), arg_2.a.e));
    let var_3 = !(!arg_1.e);
    return _wgslsmith_sub_vec4_i32(countOneBits(arg_2.a.b), countOneBits((max(arg_1.b, arg_1.b) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -34339i, arg_2.a.b.x, u_input.d), arg_1.b)) & (~arg_2.a.b & vec4<i32>(arg_1.a, 2147483647i, -1i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~60115i;
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~func_4(vec3<u32>(u_input.b, 1u, u_input.b), func_1(Struct_1(43773i, vec4<i32>(u_input.c.x, u_input.d, u_input.c.x, u_input.d), u_input.e.zwy, 16252u, true), true, vec3<bool>(false, false, false), vec2<bool>(false, false)), Struct_2(Struct_1(-14536i, vec4<i32>(u_input.c.x, 14881i, 2147483647i, 70660i), u_input.e.zwz, 17371u, true))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, 0i, 3911i) >> (vec4<u32>(4294967295u, 67803u, u_input.a, u_input.b) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)))), func_1(Struct_1(abs(_wgslsmith_sub_i32(-1296i, u_input.c.x)), max(~vec4<i32>(u_input.c.x, u_input.d, u_input.d, -23716i), ~vec4<i32>(1i, u_input.c.x, u_input.c.x, -1i)), min(firstLeadingBit(u_input.e.ywx), vec3<u32>(81477u, u_input.a, 4294967295u)), u_input.b, true), true, select(vec3<bool>(u_input.c.x == u_input.c.x, all(vec3<bool>(true, false, true)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec2<bool>(true, true)).a, u_input.c.x);
    let var_0 = ~(~(~_wgslsmith_dot_vec2_u32(u_input.e.yx, select(u_input.e.yx, vec2<u32>(4294967295u, u_input.b), true))));
    global0 = ~u_input.c.x;
    var var_1 = Struct_2(Struct_1(-2147483647i, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, firstLeadingBit(-2147483647i), ~1i), vec4<i32>(u_input.c.x, reverseBits(0i), abs(u_input.d), 2147483647i)), u_input.e.zxy, 4482u, !select(true, true, any(vec4<bool>(true, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(_wgslsmith_add_u32(31199u, 16063u), _wgslsmith_sub_u32(firstTrailingBit(var_1.a.c.x), var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1846f, -1184f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1359f, -1384f), vec2<f32>(574f, -589f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(848f, -1420f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1112f, 2347f))))))));
}

