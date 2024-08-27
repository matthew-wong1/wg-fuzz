struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, 195f, 1137f) + vec3<f32>(1190f, -529f, 220f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1950f, _wgslsmith_div_f32(-428f, _wgslsmith_f_op_f32(abs(2284f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-463f, -911f))))));
    let var_1 = Struct_3(Struct_1(any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true), true)), abs(~u_input.a.zwz), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), ~(u_input.a.x << (u_input.d % 32u))), Struct_2(vec4<i32>(abs(~37077i), -abs(u_input.a.x), u_input.a.x, _wgslsmith_div_i32(u_input.a.x ^ -37712i, u_input.a.x)), vec2<i32>(-1i, firstTrailingBit(-23812i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(26650i, 21543i)), 7232i, ~select(2147483647i, u_input.a.x, true), -(u_input.a.x | u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(896f, _wgslsmith_f_op_f32(round(375f)), _wgslsmith_div_f32(var_0.x, var_0.x), -1354f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1674f, var_0.x, 312f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, -1233f, -847f, -534f))), vec4<bool>(true, false, all(vec4<bool>(false, true, true, false)), true)))), Struct_2(select(vec4<i32>(0i, _wgslsmith_mult_i32(u_input.a.x, -2147483647i), -1i ^ u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), firstTrailingBit(u_input.a), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, false, false))), min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 10498i), ~u_input.a.yy), vec2<i32>(u_input.a.x, -3411i)), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 237f, var_0.x, -793f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1071f, 1251f, var_0.x, 300f)))))), _wgslsmith_sub_vec3_i32(~u_input.a.yxw, u_input.a.yyz));
    let var_2 = ~(-1i);
    var var_3 = min(i32(-1i) * -41371i, abs((_wgslsmith_mod_i32(u_input.a.x, -1i) ^ var_1.d.x) ^ 4036i));
    let var_4 = select(!vec2<bool>(any(var_1.a.c.xw) || (19060u == u_input.b.x), true), var_1.a.c.xw, vec2<bool>(any(vec2<bool>(true, var_1.a.c.x)), !select(any(var_1.a.c.zz), u_input.b.x == u_input.d, false & var_1.a.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f * _wgslsmith_div_f32(var_1.b.d.x, -179f)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = -u_input.a.yxz;
    let var_1 = vec2<bool>(u_input.a.x <= ((~(-1i) | u_input.a.x) | abs(-2147483647i)), true);
    var var_2 = Struct_5(abs(-1i), Struct_4(Struct_2(~(-vec4<i32>(0i, -8639i, 2147483647i, u_input.a.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(var_0.x, 24804i)), ~var_0.yy), u_input.a, vec4<f32>(_wgslsmith_div_f32(594f, 223f), _wgslsmith_f_op_f32(sign(820f)), 690f, _wgslsmith_f_op_f32(func_3()))), Struct_1(true, u_input.a.yzy, !vec4<bool>(var_1.x, true, var_1.x, true), firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), var_1.x, Struct_3(Struct_1(!var_1.x, u_input.a.yzz, vec4<bool>(false, var_1.x, var_1.x, false), _wgslsmith_dot_vec3_i32(vec3<i32>(5654i, u_input.a.x, -2147483647i), u_input.a.xzy)), Struct_2(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1613f, 386f, arg_1.x, 214f) + vec4<f32>(-1222f, arg_1.x, -731f, -558f))), Struct_2(u_input.a << (u_input.b % vec4<u32>(32u)), ~var_0.yx, vec4<i32>(-1i, -4480i, var_0.x, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 893f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, 1000f, arg_1.x))), u_input.a.xyy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f)), any(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), select(select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, false, false, var_1.x), var_1.x), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, false)), var_1.x), select(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(false, false, var_1.x, true), all(vec4<bool>(var_1.x, false, true, false))))), u_input.b);
    var var_3 = ~(var_2.e >> (vec4<u32>(arg_0, reverseBits(45050u), select(arg_0 | u_input.d, var_2.e.x, true), var_2.e.x) % vec4<u32>(32u)));
    let var_4 = var_2.b.d.c.c;
    return var_2.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(Struct_1(false, vec3<i32>(-arg_2.a.b.x, 1i, -countOneBits(14884i)), func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 69129u, 86495u)), _wgslsmith_add_u32(17302u, u_input.d)), vec2<f32>(arg_2.c.d.x, arg_1.a.d.x)).c, -arg_3.a.x), Struct_2((_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.b.x, u_input.a.x, -1i, arg_2.c.c.x), arg_3.c) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.a.b.x, arg_1.a.c.x, 1i, 22786i), vec4<i32>(0i, arg_3.a.x, -2147483647i, -40800i))) & arg_2.c.c, _wgslsmith_clamp_vec2_i32(select(vec2<i32>(arg_2.c.b.x, 2147483647i), arg_1.a.a.yy, vec2<bool>(arg_1.b.c.x, false)), ~vec2<i32>(-33003i, arg_3.a.x), vec2<i32>(arg_1.b.b.x, arg_1.b.b.x) << (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u))) | arg_0.b.xx, ~(~(arg_3.c << (vec4<u32>(37560u, 1u, 0u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.d - vec4<f32>(arg_1.a.d.x, arg_3.d.x, -1000f, 1069f)) - _wgslsmith_f_op_vec4_f32(arg_3.d + arg_3.d))), Struct_2(arg_1.d.c.a >> (~(vec4<u32>(u_input.b.x, u_input.c.x, 41239u, u_input.b.x) << (vec4<u32>(u_input.d, u_input.c.x, u_input.d, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(1i, arg_2.b.c.x ^ 2147483647i, 1i), _wgslsmith_dot_vec2_i32(func_2(0u, arg_2.c.d.wx).b.zy, vec2<i32>(arg_2.b.b.x, u_input.a.x) >> (vec2<u32>(0u, 1378u) % vec2<u32>(32u)))), arg_3.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_3.d.x * arg_1.d.b.d.x), _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(select(arg_1.a.d.x, -1569f, true)), _wgslsmith_f_op_f32(exp2(arg_3.d.x)))))), ~(~min(_wgslsmith_add_vec3_i32(u_input.a.zxz, arg_1.d.a.b), vec3<i32>(-57798i, arg_1.b.d, -5074i))));
    var var_1 = true;
    let var_2 = func_2(70736u, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-722f + arg_3.d.x))));
    return 50391u;
}

fn func_1() -> vec4<bool> {
    let var_0 = vec4<u32>(u_input.c.x, func_4(Struct_1(all(vec4<bool>(true, false, false, false)), ~u_input.a.wzz, vec4<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(false, true)), true, true), reverseBits(~u_input.a.x)), Struct_4(Struct_2(vec4<i32>(-5340i, u_input.a.x, u_input.a.x, u_input.a.x), -u_input.a.wx, u_input.a, vec4<f32>(1046f, 804f, 990f, 247f)), func_2(u_input.d >> (u_input.c.x % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, 477f) + vec2<f32>(1615f, 583f))), u_input.a.x < -34931i, Struct_3(Struct_1(false, u_input.a.wwy, vec4<bool>(false, false, false, true), 2147483647i), Struct_2(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 53231i), vec4<f32>(-298f, -723f, -1000f, -448f)), Struct_2(vec4<i32>(u_input.a.x, -17863i, u_input.a.x, 1i), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec4<f32>(-412f, -318f, 206f, -379f)), vec3<i32>(u_input.a.x, u_input.a.x, -8695i))), Struct_3(Struct_1(7069u == u_input.c.x, _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a.zxy), vec4<bool>(false, true, false, true), -u_input.a.x), Struct_2(select(u_input.a, vec4<i32>(-2147483647i, 2147483647i, 0i, u_input.a.x), true), -vec2<i32>(-1i, u_input.a.x), ~u_input.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1581f, 1098f, -917f, -1210f), vec4<f32>(-716f, 525f, 656f, 454f), vec4<bool>(true, true, false, true)))), Struct_2(u_input.a, select(vec2<i32>(33973i, u_input.a.x), u_input.a.ww, false), u_input.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(3431f, -2323f, -653f, -1000f)))), select(_wgslsmith_mult_vec3_i32(u_input.a.zwy, vec3<i32>(-13408i, u_input.a.x, -2014i)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -26356i, -47943i), u_input.a.yxw), all(vec2<bool>(false, true)))), Struct_2(u_input.a, vec2<i32>(i32(-1i) * -1940i, 22110i), vec4<i32>(_wgslsmith_div_i32(-1i, -8979i), _wgslsmith_dot_vec3_i32(u_input.a.xyw, u_input.a.xyy), firstTrailingBit(-1i), ~u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1989f, 353f, -445f, 753f))))), 4294967295u, 1u);
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~countOneBits(_wgslsmith_mod_u32(4294967295u, 1u)), firstTrailingBit(25802u)), select(_wgslsmith_mod_vec2_u32(var_0.wx, abs(vec2<u32>(u_input.b.x, 10663u))), var_0.yy, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))));
    var_1 = ~select(~(~var_0.zz | ~var_0.wz), vec2<u32>(~_wgslsmith_dot_vec3_u32(var_0.yzy, var_0.xxw), abs(_wgslsmith_mod_u32(var_1.x, 32779u))), vec2<bool>(true, false));
    var_1 = _wgslsmith_div_vec2_u32(select(var_0.wy, reverseBits(select(u_input.b.ww, abs(vec2<u32>(var_0.x, u_input.d)), true)), true), u_input.b.zy);
    var var_2 = 879f;
    return func_2(reverseBits(reverseBits(~var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(443f, -1232f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1109f, -2044f), vec2<f32>(422f, 878f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, 485f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(704f, 849f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(135f, -382f))))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), true), func_1(), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)), func_1());
    var var_1 = Struct_5(-1i, Struct_4(Struct_2(vec4<i32>(-1i, u_input.a.x, -2147483647i, 0i), u_input.a.zz, vec4<i32>(-u_input.a.x, min(0i, u_input.a.x), 1i, u_input.a.x & -2147483647i), vec4<f32>(-372f, _wgslsmith_f_op_f32(f32(-1f) * -899f), -404f, _wgslsmith_f_op_f32(-682f * -888f))), func_2(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_div_f32(-3259f, -535f))), true, Struct_3(Struct_1(func_2(27499u, vec2<f32>(423f, 451f)).a, ~u_input.a.yyx, var_0, func_2(u_input.d, vec2<f32>(671f, 1757f)).d), Struct_2(abs(u_input.a), u_input.a.zx, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, 258f, -1219f, -1237f))), Struct_2(u_input.a | vec4<i32>(2147483647i, u_input.a.x, 58450i, u_input.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-36815i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -14831i), vec4<i32>(12375i, -12321i, -1i, 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -200f, 944f, 1093f))), -u_input.a.zxw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1287f + -1063f)))), !any(select(var_0, var_0, vec4<bool>(true, var_0.x, var_0.x, true))), select(vec4<u32>(u_input.c.x & u_input.d, ~u_input.c.x, ~(~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(8285u, u_input.c.x, 8291u, u_input.b.x), u_input.b)), u_input.b, !var_0));
    var_1 = Struct_5(-2147483647i >> (~u_input.b.x % 32u), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), false, var_1.e);
    var_1 = Struct_5(~2147483647i, Struct_4(Struct_2(max(reverseBits(u_input.a), var_1.b.d.c.a), select(-vec2<i32>(var_1.a, var_1.b.b.d), func_2(44109u, var_1.b.d.b.d.zz).b.yy, !var_0.yx), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-24135i, var_1.a, var_1.a, var_1.b.d.c.c.x), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.b.a.d)) * _wgslsmith_f_op_vec4_f32(select(var_1.b.d.c.d, var_1.b.a.d, true)))), Struct_1(false, ~min(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(var_1.a, 0i, var_1.b.d.d.x)), !(!vec4<bool>(var_1.d, true, var_0.x, var_1.d)), abs(-22610i)), !(select(false, var_0.x, true) & var_1.d), var_1.b.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1193f * var_1.c))) - 134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.c, var_1.c), _wgslsmith_f_op_f32(abs(var_1.b.a.d.x)))) + _wgslsmith_f_op_f32(trunc(-1686f))))), true, vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(68272u, var_1.e.x), vec2<u32>(var_1.e.x, 4294967295u)), _wgslsmith_mod_vec2_u32(var_1.e.zz, vec2<u32>(18829u, 31419u))), var_1.e.x), (~u_input.c.x >> (abs(20131u) % 32u)) | _wgslsmith_sub_u32(u_input.c.x & 0u, ~9640u), 57600u));
    var_1 = Struct_5(1i, Struct_4(Struct_2(vec4<i32>(var_1.a, firstTrailingBit(u_input.a.x), -2147483647i, var_1.b.b.b.x), reverseBits(abs(u_input.a.xx)), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.b.d.b.d, var_1.b.a.d)))), Struct_1(any(!var_0.xx), var_1.b.b.b, !func_2(1u, vec2<f32>(739f, -1174f)).c, -2147483647i >> (var_1.e.x % 32u)), !var_1.b.b.c.x, Struct_3(var_1.b.d.a, Struct_2(select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 28585i, -33835i), true), var_1.b.d.a.b.zz, _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.b.b.x, var_1.a, 3117i, -49730i), u_input.a), _wgslsmith_f_op_vec4_f32(-var_1.b.a.d)), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -23506i, 2147483647i) | vec4<i32>(var_1.a, var_1.a, 39449i, var_1.b.b.b.x), ~u_input.a.ww, firstLeadingBit(var_1.b.d.b.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 815f, var_1.c, 169f))), vec3<i32>(firstLeadingBit(u_input.a.x), -45467i, u_input.a.x))), -116f, !func_2(~47481u >> (~4294967295u % 32u), vec2<f32>(_wgslsmith_f_op_f32(sign(1612f)), _wgslsmith_f_op_f32(-584f - var_1.c))).c.x, u_input.b);
    var var_2 = Struct_5(_wgslsmith_mod_i32(-1i, u_input.a.x) & u_input.a.x, Struct_4(var_1.b.d.c, Struct_1(!func_2(var_1.e.x, vec2<f32>(-868f, 579f)).a, vec3<i32>(_wgslsmith_dot_vec4_i32(var_1.b.a.c, var_1.b.d.b.c), u_input.a.x, _wgslsmith_dot_vec2_i32(var_1.b.a.b, vec2<i32>(39145i, u_input.a.x))), var_0, var_1.b.b.d), all(vec4<bool>(true, var_0.x && var_1.d, false, !var_1.d)), Struct_3(Struct_1(true, min(var_1.b.b.b, vec3<i32>(25426i, 2147483647i, var_1.b.b.b.x)), !vec4<bool>(true, var_1.d, var_0.x, var_1.b.d.a.c.x), u_input.a.x ^ var_1.b.d.c.b.x), var_1.b.d.b, var_1.b.d.b, var_1.b.a.a.wwz >> ((vec3<u32>(0u, u_input.b.x, u_input.b.x) ^ u_input.b.yyx) % vec3<u32>(32u)))), -268f, true, vec4<u32>(func_4(Struct_1(false, var_1.b.b.b, select(vec4<bool>(var_0.x, false, true, var_1.b.c), var_1.b.b.c, vec4<bool>(var_1.b.c, var_1.d, false, var_0.x)), -var_1.b.a.b.x), var_1.b, Struct_3(func_2(44764u, var_1.b.a.d.yy), var_1.b.d.c, Struct_2(vec4<i32>(-26237i, -2147483647i, -17722i, 2147483647i), vec2<i32>(-1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -29828i, -1i), vec4<f32>(-1365f, var_1.b.d.b.d.x, 402f, var_1.c)), vec3<i32>(var_1.a, 2147483647i, -34495i)), var_1.b.d.b), u_input.d, _wgslsmith_mod_u32(reverseBits(4294967295u), ~var_1.e.x), 0u & var_1.e.x));
    var_2 = Struct_5(countOneBits(firstLeadingBit(min(var_2.a, -1i))), var_2.b, _wgslsmith_div_f32(236f, var_2.c), func_2(4294967295u, var_2.b.d.c.d.xw).a, firstLeadingBit(vec4<u32>(var_2.e.x, u_input.c.x, ~44611u, ~(~34876u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.a.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(840f + 707f), _wgslsmith_f_op_f32(var_2.b.a.d.x - 1063f)), 1569f, var_2.c)), var_1.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * 290f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1456f, var_1.b.d.b.d.x)))), _wgslsmith_div_f32(var_1.b.d.c.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(347f - var_1.c), var_1.c)))), select(var_1.e.xz, ~var_1.e.xw, var_0.zz), var_1.b.d.c.d.x);
}

