struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_1;
    var_0 = -firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_1.x, 2147483647i), _wgslsmith_mod_i32(2147483647i, -1i), _wgslsmith_dot_vec3_i32(arg_3, arg_3)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_1.x, arg_3.x, arg_1.x), vec3<i32>(arg_3.x, u_input.d, arg_3.x), vec3<bool>(true, true, true)), min(vec3<i32>(-2147483647i, u_input.d, arg_1.x), vec3<i32>(1i, -12841i, 1918i)), -arg_3)));
    var var_1 = Struct_3(Struct_2(34679i, -22226i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -1329f)) - _wgslsmith_f_op_f32(sign(arg_2))), Struct_1(u_input.b.x));
    var var_2 = Struct_3(Struct_2(u_input.e, select(~_wgslsmith_div_i32(var_0.x, -60623i), -(var_1.a.a & 10051i), select(any(vec3<bool>(false, false, false)), true, true))), 1f, Struct_1(_wgslsmith_mod_u32(0u, 4294967295u)));
    let var_3 = var_1.c;
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    return Struct_1(u_input.c >> (func_3(~vec3<u32>(1u, arg_2.c.a, arg_1.a.a), ~(~vec3<i32>(u_input.e, arg_1.d, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), vec3<i32>(-36290i, -15838i, ~u_input.e)) % 32u));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4) -> f32 {
    var var_0 = arg_0.b.c.zx;
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x)), -409f), vec2<f32>(-1506f, _wgslsmith_div_f32(913f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-864f + arg_0.b.c.x)))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-arg_2.c.x))))), 1507f);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-997f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * var_0.x), _wgslsmith_f_op_f32(max(548f, -953f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.c.x, var_0.x, arg_0.d.x || true)))), var_0.x, all(!(!select(arg_0.d.yyz, arg_0.d.yyz, true)))));
    let var_3 = -2147483647i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-322f + -245f), _wgslsmith_f_op_f32(1817f + var_0.x))), -275f)));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(func_4(Struct_5(u_input.b.x, Struct_4(func_2(all(vec4<bool>(true, false, true, true)), Struct_4(Struct_1(u_input.b.x), Struct_2(u_input.d, 10951i), vec4<f32>(-651f, -707f, 387f, -1822f), u_input.d), Struct_3(Struct_2(u_input.e, u_input.e), 407f, Struct_1(u_input.b.x))), Struct_2(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -43508i, u_input.d), vec3<i32>(u_input.e, -67552i, -22761i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 439f, -516f, -1040f))), ~reverseBits(-57289i)), ~firstLeadingBit(vec3<u32>(128244u, 0u, u_input.c)), vec4<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), true, any(vec3<bool>(false, false, true)))), func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, u_input.b.x), _wgslsmith_mult_u32(54965u, 0u), u_input.a.x), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.c, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x)), abs(vec3<u32>(4294967295u, u_input.a.x, 28472u)))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.d, u_input.e, u_input.e), ~(~vec3<i32>(u_input.e, u_input.d, u_input.e)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.d), -vec3<i32>(u_input.d, -1i, u_input.d))), -1817f, vec3<i32>(_wgslsmith_add_i32(-u_input.e, _wgslsmith_sub_i32(u_input.d, u_input.d)), ~(-u_input.e), countOneBits(u_input.d))), Struct_4(func_2(true, Struct_4(Struct_1(23928u), Struct_2(u_input.e, u_input.e), vec4<f32>(1852f, 1280f, -866f, 1127f), u_input.e), Struct_3(Struct_2(3742i, -29489i), _wgslsmith_f_op_f32(800f + 348f), func_2(false, Struct_4(Struct_1(40526u), Struct_2(7555i, u_input.d), vec4<f32>(131f, 1065f, -1857f, -457f), u_input.d), Struct_3(Struct_2(u_input.d, -1i), 1159f, Struct_1(u_input.a.x))))), Struct_2(2147483647i, u_input.d), vec4<f32>(610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - 2325f)), _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(f32(-1f) * -247f)), abs(u_input.e))));
    var var_0 = vec3<i32>(u_input.d, ~(~58667i), _wgslsmith_sub_i32(-17822i, -66016i) | _wgslsmith_sub_i32(~u_input.d, ~43856i));
    let var_1 = 1u;
    var var_2 = true;
    let var_3 = select(vec4<bool>(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)) <= _wgslsmith_f_op_f32(func_4(Struct_5(var_1, Struct_4(Struct_1(26782u), Struct_2(-2147483647i, var_0.x), vec4<f32>(1163f, 1245f, -754f, -1176f), var_0.x), vec3<u32>(u_input.b.x, 28051u, 38497u), vec4<bool>(true, false, false, true)), 84764u, Struct_4(Struct_1(u_input.a.x), Struct_2(var_0.x, u_input.d), vec4<f32>(-1294f, -1614f, -1552f, 623f), -2147483647i))), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(vec3<bool>(true, true, false)), true, true), vec4<bool>(true, true, select(true, true, any(vec2<bool>(false, true))), false)), true);
    return 426f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_4(Struct_5(1u, Struct_4(Struct_1(90779u), Struct_2(u_input.d, u_input.e), vec4<f32>(-370f, -1240f, -1158f, -423f), u_input.d), vec3<u32>(47679u, 37382u, 1u), vec4<bool>(true, false, false, false)), ~u_input.c, Struct_4(Struct_1(u_input.a.x), Struct_2(u_input.d, 0i), vec4<f32>(956f, 849f, -1661f, 159f), 48625i)))), _wgslsmith_f_op_f32(func_1()))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, 308f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1638f, 543f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(799f, 142f), vec2<f32>(-1000f, 1179f), vec2<bool>(false, true))))), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-419f, var_1.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.x, 1000f)), _wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -509f))), true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(-131f, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 969f))) - var_1.x));
    let var_3 = 9390i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b.x, 12u, 1u, 1u), vec4<u32>(63282u, u_input.a.x, 25257u, u_input.a.x), vec4<bool>(false, true, false, false)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 10340u, u_input.b.x, 63434u), vec4<u32>(0u, u_input.b.x, 37907u, u_input.b.x)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.c, u_input.b.x, 0u, 68840u)))), abs(var_3) ^ 2676i, 53075u);
}

