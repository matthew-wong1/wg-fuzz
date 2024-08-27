struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = !(!(!vec2<bool>(arg_1.b, false)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_2(true);
    return var_2;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = vec2<bool>(((_wgslsmith_mult_u32(68897u, arg_1) ^ _wgslsmith_div_u32(u_input.e.x, 66268u)) & _wgslsmith_add_u32(arg_1, u_input.b.x)) > u_input.e.x, arg_3.a || arg_3.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.d.x)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1122f * 336f), arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(754f + arg_2.a), 1f, false)), !arg_3.a && false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a * -259f), _wgslsmith_f_op_f32(1097f + arg_0))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1929f, _wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(trunc(arg_0))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1231f, -2018f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * arg_2.d.zzz))) + arg_2.d.zxx));
    let var_3 = arg_3;
    var_1 = arg_3.a;
    return countOneBits(2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(func_3(-549f, ~arg_0.x & abs(1u), Struct_1(_wgslsmith_f_op_f32(-1000f - 382f), false, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, u_input.c, arg_3), u_input.d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1000f, -462f, -702f), vec4<f32>(-1701f, -470f, 1000f, 185f)))), func_2(arg_3, Struct_1(-476f, arg_1.a, u_input.d, vec4<f32>(370f, 2519f, 266f, -394f)), 76646u)) ^ -12001i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_3, u_input.c, arg_3, u_input.d.x), vec4<i32>(arg_3, -1i, -1i, arg_3) & vec4<i32>(-24115i, 0i, u_input.d.x, u_input.c)), u_input.c), u_input.d.yz), func_2(i32(-1i) * -(~(-29872i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(407f, 253f)) - _wgslsmith_f_op_f32(f32(-1f) * -1529f)), func_2(u_input.c, Struct_1(1000f, arg_1.a, vec3<i32>(-5107i, u_input.c, 26303i), vec4<f32>(-1870f, -1355f, -1750f, 464f)), arg_0.x).a, reverseBits(-u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-772f, 1501f, -515f, 1542f), vec4<f32>(-136f, 982f, -166f, 390f), arg_1.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1749f, -371f, -193f, 546f) * vec4<f32>(-2069f, 1594f, 502f, -1067f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zy, ~vec2<u32>(54432u, 4294967295u)), abs(~vec2<u32>(arg_0.x, arg_0.x)))));
    let var_1 = Struct_3(~abs(-var_0.b), _wgslsmith_add_i32(abs(-2147483647i) >> (_wgslsmith_add_u32(4294967295u, u_input.a) % 32u), ~2147483647i), func_2(-_wgslsmith_add_i32(-1i, i32(-1i) * -14886i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1119f) * -1628f), var_0.c.a, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d, u_input.d), -vec3<i32>(4561i, arg_3, 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1144f, 807f, -874f, 1168f))), 1u));
    let var_2 = func_2(0i, Struct_1(1337f, any(!(!vec4<bool>(false, var_0.c.a, var_1.c.a, arg_1.a))), ~(abs(u_input.d) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 17217u, u_input.a), vec3<u32>(0u, arg_0.x, u_input.e.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1268f, -1025f, 537f))))), _wgslsmith_sub_u32(~(u_input.e.x << (68384u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.wxw, u_input.b.zxx, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2, arg_0.x), u_input.e.xxz)), abs(_wgslsmith_sub_vec3_u32(u_input.b.yxz, u_input.b.wyy)))));
    var var_3 = _wgslsmith_mult_i32(41079i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_3, 1i), u_input.d.x, _wgslsmith_sub_i32(select(_wgslsmith_add_i32(1i, var_0.b), u_input.c & var_1.b, !var_0.c.a), -1i << (~u_input.a % 32u))));
    var var_4 = _wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(-13147i, -1i >> (min(u_input.e.x, arg_2) % 32u)));
    return Struct_2(!var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~vec2<u32>(3616u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), ~u_input.b)), Struct_2(((1i << (u_input.e.x % 32u)) ^ -5839i) == _wgslsmith_add_i32(u_input.c, max(u_input.d.x, -2147483647i))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(~95235u, u_input.e.x << (0u % 32u), 53800u, ~26646u), ~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), vec4<bool>(true, false, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, u_input.a | 1u), vec4<u32>(4294967295u, _wgslsmith_add_u32(22157u, 1u), u_input.b.x & 70932u, 25524u))), min(u_input.c, -u_input.c));
    var_0 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(14603i, -countOneBits(-18719i), firstTrailingBit(select(-2147483647i, u_input.d.x, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-375f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1032f)) - _wgslsmith_f_op_f32(f32(-1f) * -1547f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, i32(-1i) * -1i, 33539i >> (u_input.a % 32u), u_input.d.x) ^ ~(~vec4<i32>(u_input.d.x, 1i, -1i, 2147483647i)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 12578i, u_input.d.x, 1i), vec4<i32>(u_input.d.x, -55184i, u_input.c, u_input.d.x))) | countOneBits(-vec4<i32>(u_input.c, 0i, u_input.d.x, 60524i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(31934i, u_input.d.x, u_input.d.x, 11374i), vec4<i32>(u_input.c, -2147483647i, -10242i, 0i))), ~firstTrailingBit((u_input.c & u_input.c) >> (56584u % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -708f)))))));
}

