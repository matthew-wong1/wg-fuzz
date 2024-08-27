struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(8218u, 1u, 1u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_clamp_u32(~u_input.b.x, ~(~select(u_input.a.x, global0.x, false)), ~max(~global0.x, 0u));
    global0 = ~_wgslsmith_add_vec4_u32(select(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(var_0, 4294967295u, var_0, global0.x)), u_input.a, (1u | global0.x) != _wgslsmith_div_u32(4294967295u, var_0)), ~max(max(vec4<u32>(global0.x, 1u, 1u, var_0), u_input.a), u_input.a));
    let var_1 = vec3<f32>(1378f, -319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 331f, _wgslsmith_f_op_f32(select(-1957f, var_1.x, true)), _wgslsmith_f_op_f32(853f + 443f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 713f, -1521f, 546f), vec4<f32>(-202f, -648f, var_1.x, 1412f), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, var_1.x, var_1.x, 2061f) + vec4<f32>(var_1.x, var_1.x, 1233f, var_1.x)))), var_1.yx, _wgslsmith_sub_i32(select(1i, 45492i, true), abs(12919i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1532f, -1690f, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 422f, var_1.x, var_1.x) - vec4<f32>(500f, -420f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 652f, 786f, var_1.x))), true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(681f, -1185f), _wgslsmith_f_op_vec2_f32(-var_1.yx), vec2<bool>(false, false))))), _wgslsmith_dot_vec4_i32(vec4<i32>(select(0i, 1i, true), _wgslsmith_div_i32(51595i, -33988i), -64427i >> (1u % 32u), i32(-1i) * -1i), -vec4<i32>(-1i, -2114i, -2147483647i, -2147483647i))));
    let var_3 = _wgslsmith_f_op_f32(var_2.b.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2370f - var_2.b.b.x) * -1012f)), _wgslsmith_f_op_f32(round(var_1.x))));
    return global0.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    var var_0 = vec3<bool>(!(!all(!vec4<bool>(arg_2, arg_2, false, arg_1.x))), !((i32(-1i) * -13257i) == min(44587i, firstTrailingBit(-1i))), !(!(true | arg_1.x) == (~u_input.b.x <= countOneBits(u_input.a.x))));
    var_0 = arg_1.yyx;
    let var_1 = false;
    global0 = max(select(firstTrailingBit(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 0u))), vec4<u32>(56171u, global0.x, max(_wgslsmith_div_u32(arg_0.a, 1u), 68578u), min(global0.x, 14842u)), !any(select(arg_1, vec4<bool>(var_1, var_0.x, false, var_1), arg_1))), firstLeadingBit(vec4<u32>(0u, u_input.a.x >> (u_input.b.x % 32u), ~u_input.a.x, ~arg_0.a)) >> (u_input.a % vec4<u32>(32u)));
    var var_2 = arg_1.wwy;
    return 53368i;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = ~func_4(Struct_3(func_3(), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-658f, arg_0, arg_0)))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))) & countOneBits(abs(abs(2147483647i) >> (u_input.b.x % 32u)));
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -133f), arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, 1276f, arg_0)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(-247f, 1242f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, -633f))), vec2<f32>(_wgslsmith_f_op_f32(sign(157f)), 1408f), !any(vec4<bool>(true, true, true, false)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0 | -25030i, var_0), firstLeadingBit(var_0), ~20696i)));
    var var_2 = Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(var_1.a.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1185f, 354f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_1.a.a.x) * var_1.a.a.xx)), _wgslsmith_f_op_vec2_f32(min(var_1.a.b, var_1.a.a.ww)))), _wgslsmith_sub_i32(1i, abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-29385i, -6265i, var_1.a.c, var_1.a.c), vec4<i32>(1i, var_1.a.c, var_1.a.c, -28151i)), -var_0))));
    var_2 = var_1.a;
    var var_3 = arg_0;
    return -(~1i);
}

fn func_5(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(-1709f, -928f)))), 210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-145f, 878f, false)) + _wgslsmith_f_op_f32(-1484f * 980f)) - _wgslsmith_f_op_f32(f32(-1f) * -624f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-389f)) + _wgslsmith_f_op_f32(max(-581f, -1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-949f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(616f, _wgslsmith_f_op_f32(trunc(747f))) * 1f)), abs(arg_0.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1096f, 1966f, 1427f, var_0.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, -845f, -151f, var_0.a.x)))), vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), true))), var_0.a.yw, -func_4(Struct_3(u_input.b.x, vec3<f32>(var_0.a.x, var_0.b.x, 599f)), vec4<bool>(true, true, true, true), true));
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-971f - 816f), _wgslsmith_f_op_f32(step(-1000f, var_0.b.x))) * vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(-1495f * -1096f))), select(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -2147483647i, 0i), arg_0.x, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), var_0.b, -arg_0.x));
    var var_2 = abs(-vec4<i32>(_wgslsmith_div_i32(arg_0.x, -1i), reverseBits(var_1.b.c), -var_0.c, _wgslsmith_dot_vec2_i32(arg_0.xx, vec2<i32>(-2147483647i, 1i))) & ~((vec4<i32>(-88743i, 2514i, var_1.a.c, var_1.a.c) | vec4<i32>(2147483647i, var_1.b.c, 2147483647i, var_1.b.c)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, var_1.a.c, var_1.a.c), vec4<i32>(0i, var_1.b.c, -18708i, -37112i))));
    var var_3 = _wgslsmith_add_i32(firstLeadingBit(-2147483647i), -var_1.a.c);
    return Struct_4(Struct_3(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.a.yyy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_1.b.a.x, -625f))))));
}

fn func_1() -> i32 {
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~(~u_input.a.x)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, global0.x, global0.x))) | ~firstLeadingBit(5299u), global0.x, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.yw), global0.x, ~29489u)), countOneBits((vec4<u32>(4294967295u, 0u, u_input.b.x, global0.x) >> (~vec4<u32>(0u, global0.x, u_input.b.x, u_input.a.x) % vec4<u32>(32u))) ^ vec4<u32>(10676u, _wgslsmith_div_u32(35763u, 4294967295u), global0.x, ~4294967295u)));
    let var_0 = func_5(vec3<i32>(2147483647i, -countOneBits(countOneBits(0i)), func_2(_wgslsmith_div_f32(-456f, 101f))));
    let var_1 = var_0;
    global0 = reverseBits(select(u_input.a, abs(u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))) ^ _wgslsmith_clamp_vec4_u32(~(u_input.a << (u_input.a % vec4<u32>(32u))), abs(abs(vec4<u32>(u_input.b.x, u_input.b.x, var_1.a.a, u_input.a.x))), _wgslsmith_mult_vec4_u32(~u_input.a, vec4<u32>(22780u, u_input.b.x, 21142u, 4294967295u) >> (vec4<u32>(4294967295u, 4294967295u, u_input.b.x, var_0.a.a) % vec4<u32>(32u)))));
    global0 = reverseBits(vec4<u32>(~u_input.b.x, _wgslsmith_mod_u32(~var_1.a.a, 1u), abs(5312u), 56514u));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x | _wgslsmith_clamp_u32(17869u, 1u, ~countOneBits(0u));
    let var_1 = vec2<i32>(-(~_wgslsmith_div_i32(1i, 1i)), 1i);
    var_0 = _wgslsmith_sub_u32(35818u, ~(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(1u, u_input.a.x))));
    let var_2 = var_1;
    var_0 = 50284u;
    var var_3 = _wgslsmith_add_i32(~((~var_1.x >> (32741u % 32u)) ^ ~func_1()), _wgslsmith_add_i32(_wgslsmith_mod_i32(abs(i32(-1i) * -1i), _wgslsmith_sub_i32(1i, -var_1.x)), -var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f)), -621f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-624f + 355f), -1411f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(409f, -436f))), vec2<f32>(1f, 1f)))), reverseBits(_wgslsmith_add_vec3_i32(firstLeadingBit(~vec3<i32>(0i, 1i, var_2.x)), vec3<i32>(0i, var_2.x, _wgslsmith_sub_i32(var_2.x, var_1.x)))), select(u_input.a, countOneBits(select(~u_input.a, vec4<u32>(u_input.a.x, 1u, 4294967295u, global0.x), vec4<bool>(true, true, true, true))), func_5(vec3<i32>(var_2.x, var_2.x, var_2.x)).a.b.x > -847f));
}

