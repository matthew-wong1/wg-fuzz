struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_1(vec4<f32>(-210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1930f, -1882f))) - _wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(792f)) + 154f) - 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(607f, -545f) + _wgslsmith_f_op_f32(-1174f * -360f))))));
    global1 = !vec4<bool>(any(select(select(global1.zwx, global1.wzw, global1.x), !global1.yzy, all(vec2<bool>(global1.x, global1.x)))), all(select(!vec4<bool>(false, false, arg_2.x, true), !vec4<bool>(false, false, global1.x, arg_2.x), select(vec4<bool>(false, true, true, arg_2.x), vec4<bool>(true, true, global1.x, true), global1.x))), true, true);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(round(-816f)), _wgslsmith_div_f32(-1240f, -383f), -1960f))) + _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1101f, var_0.a.x, 139f) * vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))))));
    global0 = -21714i;
    let var_1 = Struct_5(~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a.yzx))))), var_0.a.yyx);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(var_1.b.x + var_0.a.x)), 1114f))) * vec4<f32>(_wgslsmith_f_op_f32(max(1020f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1413f, var_1.b.x))))), _wgslsmith_f_op_f32(658f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(265f)) + -636f)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - var_1.c.x))));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(0u, ~arg_1), arg_1, arg_1);
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(1140f * _wgslsmith_f_op_f32(max(arg_0, -155f)))), arg_0), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(u_input.a.x), Struct_2(u_input.a.x)), vec4<i32>(u_input.a.x, 23121i, 0i, u_input.a.x) | vec4<i32>(-18381i, 49251i, 1i, -16323i), global1.wzz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2199f, arg_0, arg_0, 484f) * vec4<f32>(arg_0, 1366f, -518f, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1000f, 639f) * vec4<f32>(1588f, -551f, 580f, arg_0))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1429f, arg_0) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1346f, arg_0), vec2<f32>(arg_0, arg_0), vec2<bool>(global1.x, global1.x)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-363f, arg_0), vec2<f32>(-645f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 713f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(716f, -444f) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -946f))))), ~vec3<i32>(-(~0i), u_input.a.x, _wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 43899i, u_input.a.x, u_input.a.x), vec4<i32>(0i, -1i, u_input.a.x, u_input.a.x)), u_input.a.x ^ u_input.a.x)), true);
    var var_2 = Struct_4(Struct_2(min(min(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(29624i, -2147483647i, 1i), vec3<i32>(18693i, u_input.a.x, -31279i))), u_input.a.x)), Struct_2(-31548i));
    let var_3 = select(countOneBits(~(~(-var_1.d))), vec3<i32>(1i, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-1i, i32(-1i) * -u_input.a.x)), global1.xzw);
    var_0 = vec3<u32>(~select(arg_1, 4294967295u, false) >> (1u % 32u), max(~(arg_1 ^ 4294967295u), var_0.x), _wgslsmith_mod_u32(var_0.x, ~var_0.x) >> (arg_1 % 32u));
    return ~_wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(20947u, arg_1, arg_1), vec3<u32>(79890u, 0u, 4294967295u)), vec3<u32>(1u, var_0.x, 14723u))), max(select(vec3<u32>(var_0.x, 10546u, 1u), vec3<u32>(arg_1, 64853u, arg_1) >> (vec3<u32>(4294967295u, 24949u, var_0.x) % vec3<u32>(32u)), vec3<bool>(var_1.e, true, true)), vec3<u32>(~17320u, max(var_0.x, arg_1), var_0.x)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(1503f)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1358f), _wgslsmith_f_op_f32(abs(arg_3)), arg_3, arg_3)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-784f, 1752f))), vec2<f32>(arg_3, -1055f), true || global1.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2538f), arg_3))), !vec2<bool>(arg_0, any(vec4<bool>(global1.x, false, arg_0, false))))), countOneBits(vec3<i32>(~11851i, u_input.a.x ^ u_input.a.x, ~(-368i)) ^ vec3<i32>(-1i, ~(-7351i), -10454i)), all(vec4<bool>(_wgslsmith_f_op_f32(arg_3 - arg_3) > _wgslsmith_f_op_f32(-arg_3), !arg_0, !(!global1.x), all(vec3<bool>(true, false, true)))));
    global0 = u_input.a.x;
    global1 = !select(vec4<bool>(~arg_2 < 0u, arg_2 > _wgslsmith_add_u32(arg_2, arg_1.x), arg_0, global1.x), select(!select(vec4<bool>(true, true, false, global1.x), vec4<bool>(arg_0, false, arg_0, var_0.e), vec4<bool>(global1.x, true, true, false)), vec4<bool>(global1.x, true, var_0.e, arg_0), !(true == arg_0)), select(vec4<bool>(any(global1.ywx), true, global1.x, !global1.x), vec4<bool>(arg_0, any(global1.yzx), !var_0.e, !arg_0), !(!arg_0)));
    let var_1 = abs(arg_1) >> (arg_1 % vec4<u32>(32u));
    let var_2 = Struct_3(-1000f, var_0.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, arg_3)), var_0.b.a.yz, global1.yz)), vec2<f32>(-789f, var_0.b.a.x))), ~min(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.d, vec3<i32>(-65075i, -2147483647i, -639i)), firstLeadingBit(var_0.d)), -vec3<i32>(2147483647i, 0i, var_0.d.x)), max(1u, ~_wgslsmith_add_u32(4294967295u, var_1.x)) != (_wgslsmith_div_u32(select(arg_2, 48146u, false), var_1.x) & reverseBits(func_2(-989f, arg_2).x)));
    return Struct_4(Struct_2(var_2.d.x), Struct_2(5399i));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_1 {
    global1 = select(!vec4<bool>(all(!global1.zxw), all(select(vec3<bool>(true, global1.x, global1.x), global1.xzy, vec3<bool>(global1.x, true, global1.x))), all(global1.wz), any(global1.yw)), vec4<bool>(true, true, _wgslsmith_dot_vec3_i32(arg_3.yxy | vec3<i32>(-3893i, -24729i, arg_1.a.a), arg_3.zwy & arg_3.zzy) <= _wgslsmith_sub_i32(func_4(global1.x, vec4<u32>(6407u, 46201u, 77714u, 81588u), 1u, -952f).b.a, _wgslsmith_div_i32(arg_3.x, arg_3.x)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, global1.x, false), !vec4<bool>(global1.x, false, global1.x, global1.x)))), select(vec4<bool>(!(false == global1.x), true, true, all(!vec4<bool>(global1.x, global1.x, true, global1.x))), !select(select(vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, true, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec4<bool>(false, false, false, false), vec4<bool>(global1.x, global1.x, global1.x, false)), true));
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(909f, 1301f, -2196f, -778f) * vec4<f32>(277f, -409f, 1055f, -709f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1242f, 449f, -265f, -2072f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, -936f, -1068f, 312f) + vec4<f32>(-115f, 1632f, 398f, -1463f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-308f, 715f, 915f, -1408f), vec4<f32>(473f, -919f, -706f, 1972f))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1228f, -1000f, 712f, 700f)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = func_5(~u_input.a.x, func_4(any(vec2<bool>(!global1.x, false)), vec4<u32>(~42645u, ~1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 1u, 39085u), firstTrailingBit(103755u)), 11523u), _wgslsmith_dot_vec3_u32(~vec3<u32>(22513u, 0u, 8512u), func_2(-639f, max(0u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-652f - -825f), _wgslsmith_f_op_f32(f32(-1f) * -173f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1573f, -137f, global1.x)) * 1323f))), func_4(true, vec4<u32>(~26534u, select(4294967295u << (0u % 32u), ~1u, global1.x), ~(~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(16438u, 1u), vec2<u32>(13476u, 70629u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 47799u, 4294967295u), vec3<u32>(11003u, 56502u, 0u)), vec3<u32>(1u, 1u, 1u)), ~select(vec3<u32>(34080u, 0u, 16132u), vec3<u32>(26407u, 0u, 4294967295u), global1.x)), 1000f), select(vec4<i32>(1i, _wgslsmith_mult_i32(13122i, _wgslsmith_mod_i32(arg_0.x, arg_0.x)), u_input.a.x, -u_input.a.x >> (~13914u % 32u)), vec4<i32>(abs(arg_0.x | u_input.a.x), -30183i, u_input.a.x, -(~72369i)), !(!(!vec4<bool>(global1.x, true, global1.x, true)))));
    var var_1 = global1.x;
    let var_2 = var_0.a;
    let var_3 = func_4(true, countOneBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(9145u, 0u, 0u, 1u), vec4<u32>(35969u, 25785u, 0u, 1u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(0u, 27394u, 1u, 78619u), vec4<u32>(1u, 10385u, 51261u, 4294967295u)), firstLeadingBit(vec4<u32>(52183u, 0u, 14397u, 0u))) % vec4<u32>(32u))), abs(0u), 1000f);
    var var_4 = ~select((_wgslsmith_mult_vec3_i32(vec3<i32>(10212i, 0i, u_input.a.x), vec3<i32>(var_3.b.a, u_input.a.x, u_input.a.x)) >> (vec3<u32>(86786u, 10898u, 4294967295u) % vec3<u32>(32u))) & (vec3<i32>(-1i) * -vec3<i32>(-32081i, -2147483647i, 0i)), ~vec3<i32>(var_3.a.a, -17833i, var_3.a.a), !any(select(global1.zw, vec2<bool>(global1.x, false), global1.x)));
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-779f * 638f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1387f), vec4<u32>(firstTrailingBit(countOneBits(0u)) | 1u, 81311u, min(~1u, max(~55141u, ~4294967295u)), ~1u), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(~56528u, 1u), 26728u), 896f).a;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_1 = firstLeadingBit(~vec3<u32>(_wgslsmith_mult_u32(arg_1, arg_1), countOneBits(4294967295u), 1u) & _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, arg_1, arg_1), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1) >> (vec3<u32>(4294967295u, 73651u, arg_1) % vec3<u32>(32u)), select(vec3<u32>(arg_1, 36047u, arg_1), vec3<u32>(4294967295u, arg_1, arg_1), global1.wxw))));
    var_1 = vec3<u32>(~arg_1, 32511u << (_wgslsmith_sub_u32(select(~arg_1, _wgslsmith_dot_vec2_u32(var_1.yx, var_1.zz), !global1.x), arg_1) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(88333u, arg_1, 1u, var_1.x), vec4<u32>(var_1.x, 4294967295u, 1u, 0u))) >> (vec2<u32>(7084u, 1u) % vec2<u32>(32u)), ~(~_wgslsmith_mult_vec2_u32(var_1.yz, var_1.yx))));
    var var_2 = 1i;
    var var_3 = !select(global1.yz, !vec2<bool>(global1.x, global1.x), !select(!vec2<bool>(global1.x, true), !vec2<bool>(global1.x, false), any(vec4<bool>(false, global1.x, global1.x, global1.x))));
    return !select(!vec4<bool>(any(vec4<bool>(var_3.x, global1.x, var_3.x, global1.x)), !var_3.x, true, !var_3.x), select(!vec4<bool>(var_3.x, true, true, global1.x), select(vec4<bool>(global1.x, var_3.x, true, true), !vec4<bool>(false, global1.x, var_3.x, global1.x), global1.x), vec4<bool>(5079u == var_1.x, global1.x, true, false)), select(vec4<bool>(false, true, !var_3.x, false), vec4<bool>(true, global1.x, var_3.x, true), vec4<bool>(global1.x, global1.x, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(func_6(func_1(vec2<i32>(-39874i, u_input.a.x)), select(~1u, 1u, false), Struct_4(Struct_2(1008i), Struct_2(u_input.a.x)), func_1(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a))), func_6(func_1(vec2<i32>(28850i, u_input.a.x)), ~countOneBits(4294967295u), Struct_4(Struct_2(1i), func_4(global1.x, vec4<u32>(18382u, 1u, 0u, 4294967295u), 53350u, -1331f).a), func_4(all(vec3<bool>(global1.x, true, global1.x)), reverseBits(vec4<u32>(4294967295u, 67178u, 0u, 59088u)), ~15030u, -727f).b), vec4<bool>(!any(vec2<bool>(global1.x, true)), global1.x, select(global1.x && global1.x, false, true), false));
    var var_0 = func_4(true, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(15734u, 4294967295u, 1u, 12124u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_u32(~18965u, 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_div_f32(func_5(-u_input.a.x, Struct_4(Struct_2(-2147483647i), Struct_2(u_input.a.x)), Struct_4(Struct_2(u_input.a.x), Struct_2(-2147483647i)), firstLeadingBit(vec4<i32>(u_input.a.x, 11555i, u_input.a.x, 0i))).a.x, _wgslsmith_f_op_f32(floor(1897f)))))).a;
    var var_1 = true | all(select(func_6(func_4(true, vec4<u32>(24938u, 57278u, 1u, 8360u), 25672u, -1000f).a, 1u, Struct_4(Struct_2(var_0.a), Struct_2(var_0.a)), func_1(u_input.a)), func_6(Struct_2(u_input.a.x), ~1u, func_4(false, vec4<u32>(4294967295u, 4294967295u, 59476u, 43306u), 74296u, -768f), func_1(u_input.a)), func_6(func_1(u_input.a), 1u, func_4(global1.x, vec4<u32>(2436u, 0u, 0u, 0u), 0u, -1007f), func_4(false, vec4<u32>(24778u, 0u, 32019u, 0u), 0u, -916f).a)));
    let var_2 = -(~13064i);
    let var_3 = max(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(11377u, 0u), abs(3138u), firstLeadingBit(1u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1628f * -414f), -590f)) - -638f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) * _wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(min(1f, 832f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(round(-960f)), _wgslsmith_f_op_f32(-546f + 1582f), -772f, _wgslsmith_f_op_f32(func_5(31240i, Struct_4(Struct_2(2147483647i), Struct_2(var_0.a)), Struct_4(Struct_2(-2147483647i), Struct_2(31185i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, 40979i, 0i), vec4<i32>(var_2, -1i, -38438i, u_input.a.x))).a.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(var_0.a), Struct_2(u_input.a.x)), vec4<i32>(u_input.a.x, 39100i, 14169i, var_2), global1.zxz)).x, -282f)))));
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(479f - var_4.x) + -317f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) + _wgslsmith_f_op_f32(abs(-1068f)))));
    let var_6 = select(global1.wx, vec2<bool>(true, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(31597u, 0u) >> ((~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3, 1u), vec2<u32>(95470u, var_3), vec2<u32>(var_3, var_3)) ^ func_2(1577f, 67071u).yy) % vec2<u32>(32u)), select(reverseBits(~(~vec4<u32>(0u, var_3, var_3, var_3))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3, 20885u, 69439u, var_3), firstLeadingBit(vec4<u32>(119944u, 34127u, 29057u, var_3))), ~(~4294967295u), 1u, 3739u), vec4<bool>(true, all(select(vec2<bool>(var_6.x, var_6.x), vec2<bool>(true, var_6.x), vec2<bool>(true, true))), 1i <= var_0.a, all(!global1.xyx))));
}

