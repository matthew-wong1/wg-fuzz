struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, vec3<bool>(true, true, false), 0i, vec3<f32>(356f, 801f, -526f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: u32) -> vec3<i32> {
    var var_0 = ~reverseBits(firstTrailingBit(abs(vec4<u32>(arg_3, 0u, arg_3, 0u))) ^ ~(vec4<u32>(1u, arg_3, 55559u, u_input.b.x) | vec4<u32>(arg_3, 1072u, u_input.b.x, 0u)));
    let var_1 = global0.c;
    global0 = Struct_4(-global0.a, select(vec3<bool>(any(!vec3<bool>(false, arg_2.x, arg_1.x)), false, true), vec3<bool>(any(global0.b), true, arg_2.x), false), 2147483647i, _wgslsmith_f_op_vec3_f32(global0.d * global0.d));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.d.xy, global0.d.yy) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, -251f) - global0.d.yx), _wgslsmith_f_op_vec2_f32(max(global0.d.zx, global0.d.yx))), _wgslsmith_f_op_vec2_f32(ceil(global0.d.yx)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1011f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), -1687f)), _wgslsmith_mod_u32(var_0.x ^ var_0.x, firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), ~_wgslsmith_mod_u32(arg_3, _wgslsmith_sub_u32(var_0.x, var_0.x)), ~var_0.x, arg_2.x), global0.d.x, Struct_1(global0.d.zy, ~(~_wgslsmith_dot_vec3_u32(var_0.ywx, var_0.zzw)), arg_3, ~_wgslsmith_mult_u32(u_input.b.x, 22522u) >> (1u % 32u), arg_1.x), -u_input.a);
    global0 = Struct_4(10700i >> (var_2.d.c % 32u), select(select(vec3<bool>(global0.b.x, all(arg_2.xx), true), select(select(arg_2.wwx, vec3<bool>(arg_2.x, true, true), arg_0.x), vec3<bool>(arg_1.x, true, arg_1.x), !global0.b), !select(vec3<bool>(true, true, false), global0.b, arg_2.xwx)), arg_2.yzx, all(!global0.b)), _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(global0.a, global0.c), select(max(-1i, -11318i), ~(-26522i), any(vec2<bool>(false, false))), countOneBits(global0.a))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d + vec3<f32>(global0.d.x, 1032f, -311f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-3077f)), _wgslsmith_f_op_f32(ceil(var_2.b.a.x)), -1041f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1200f, -1000f, global0.d.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -1875f, -237f) - global0.d))));
    return -var_2.e;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(arg_0.e.a.x, _wgslsmith_f_op_f32(f32(-1f) * -426f));
    let var_1 = -(~(-5595i));
    let var_2 = _wgslsmith_dot_vec3_i32(func_3(arg_0.c.zx, global0.b.zx, !(!arg_0.c), arg_0.d.b), _wgslsmith_add_vec3_i32(vec3<i32>(19412i, u_input.a.x, firstTrailingBit(global0.a)), vec3<i32>(_wgslsmith_sub_i32(~0i, -23454i), _wgslsmith_add_i32(15104i, ~global0.a), _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(-2147483647i, arg_0.a)))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(404f, global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f))));
    var var_4 = !(!vec2<bool>(var_2 <= ~var_1, arg_0.d.e));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + -1000f)), arg_0.e, global0.d.x, arg_0.e, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -28282i, u_input.a.x), max(u_input.a, u_input.a)), -u_input.a), u_input.a, ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    return func_2(Struct_3(~(-2147483647i), vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) * _wgslsmith_div_f32(global0.d.x, global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1313f)) * -444f)), vec4<bool>(true, true, true, !arg_3.d.e), arg_0.d, arg_3.b));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(func_2(Struct_3(global0.c, vec4<f32>(-1334f, 515f, 1147f, arg_0.b.a.x), vec4<bool>(arg_0.b.e, arg_1.x, false, arg_1.x), arg_0.b, Struct_1(vec2<f32>(global0.d.x, -1055f), arg_0.d.d, arg_0.d.d, arg_0.d.c, global0.b.x))).e ^ arg_0.e, -(vec3<i32>(global0.a, global0.a, 41829i) >> (vec3<u32>(1u, u_input.b.x, arg_0.b.d) % vec3<u32>(32u)))), select(vec3<i32>(-firstLeadingBit(-53863i), i32(-1i) * -u_input.a.x, -(arg_2 ^ global0.a)), vec3<i32>(u_input.a.x, global0.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, global0.a), vec2<i32>(2147483647i, global0.c))), select(global0.b, vec3<bool>(arg_0.d.e, arg_1.x, true), vec3<bool>(all(vec2<bool>(arg_1.x, false)), global0.b.x, true))));
    let var_1 = !vec4<bool>(true, false, arg_0.b.e | true, 4294967295u < reverseBits(arg_0.b.c >> (931u % 32u)));
    var var_2 = arg_0.e;
    var_2 = arg_0.e;
    let var_3 = func_4(func_4(Struct_2(arg_0.b.a, func_4(Struct_2(vec2<f32>(global0.d.x, arg_0.d.a.x), arg_0.d, arg_0.c, arg_0.d, arg_0.e), vec2<f32>(global0.d.x, global0.d.x), arg_0.d.e, Struct_2(vec2<f32>(-1244f, global0.d.x), arg_0.d, -1361f, Struct_1(vec2<f32>(arg_0.c, 2554f), 43714u, arg_0.d.b, 1u, var_1.x), vec3<i32>(19485i, -7093i, -1i))).d, -996f, Struct_1(arg_0.a, func_2(Struct_3(var_2.x, vec4<f32>(2272f, 441f, 1140f, global0.d.x), var_1, Struct_1(vec2<f32>(global0.d.x, -1000f), 4294967295u, arg_0.b.b, 0u, false), arg_0.b)).b.b, arg_0.b.b, ~4294967295u, true), firstTrailingBit(vec3<i32>(-15600i, u_input.a.x, var_0.x)) ^ -arg_0.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.a))), true, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, 1229f))), arg_0.d, 1885f, func_2(Struct_3(6700i, vec4<f32>(-1164f, -1893f, -539f, global0.d.x), var_1, Struct_1(arg_0.d.a, 95481u, 21722u, 20521u, false), Struct_1(vec2<f32>(1669f, arg_0.c), 1719u, 1u, 1u, true))).b, u_input.a)), vec2<f32>(-166f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f + -312f) - _wgslsmith_f_op_f32(ceil(192f))), global0.d.x)), func_4(func_2(Struct_3(-arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 440f, 515f, 1000f) * vec4<f32>(-1180f, 342f, arg_0.a.x, -246f)), var_1, arg_0.b, Struct_1(arg_0.d.a, arg_0.d.c, u_input.b.x, u_input.b.x, arg_0.b.e))), global0.d.yy, arg_1.x, func_2(Struct_3(-2147483647i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d.x, -1335f, global0.d.x, 772f), vec4<f32>(238f, global0.d.x, -818f, arg_0.b.a.x))), vec4<bool>(false, false, var_1.x, global0.b.x), Struct_1(global0.d.xx, arg_0.d.b, u_input.b.x, u_input.b.x, arg_0.d.e), func_2(Struct_3(-54210i, vec4<f32>(350f, -2755f, -620f, arg_0.a.x), var_1, arg_0.d, arg_0.b)).d))).b.e, func_4(arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1328f, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec2_f32(arg_0.b.a * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(375f, -247f)))), !(!vec2<bool>(global0.b.x, arg_0.d.e)))), var_1.x, func_2(Struct_3(arg_2, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d.a.x, 283f, global0.d.x, -1023f))), vec4<bool>(false, true, global0.b.x, true), arg_0.d, func_2(Struct_3(arg_2, vec4<f32>(-855f, -1075f, -306f, global0.d.x), vec4<bool>(arg_0.b.e, true, var_1.x, true), arg_0.d, arg_0.d)).d)))).b;
    return Struct_1(vec2<f32>(-112f, 1233f), 1u, var_3.d, _wgslsmith_mult_u32(~0u << (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(34396u, arg_0.b.c), arg_0.d.b & 34729u, arg_0.d.c & u_input.b.x, _wgslsmith_mod_u32(arg_0.d.d, 70918u)), vec4<u32>(~u_input.b.x, 57335u >> (var_3.d % 32u), 1u, arg_0.b.c))), var_3.e);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, firstLeadingBit(~arg_2.a)), ~max(-53480i, -2147483647i)), select(select(select(vec3<bool>(true, true, arg_0.b.x), vec3<bool>(true, global0.b.x, false), arg_0.b.x), select(arg_2.c.zwz, !arg_3, vec3<bool>(false, true, arg_2.c.x)), select(select(vec3<bool>(arg_2.e.e, false, false), vec3<bool>(arg_2.d.e, arg_3.x, arg_2.d.e), false), !arg_3, all(global0.b))), select(select(vec3<bool>(true, global0.b.x, false), !arg_0.b, arg_2.c.xxw), global0.b, !(!vec3<bool>(arg_0.b.x, false, true))), vec3<bool>(global0.b.x, true, arg_0.b.x)), firstTrailingBit(firstLeadingBit(26622i)), arg_0.d);
    global0 = Struct_4(global0.a, !vec3<bool>(true, arg_2.e.e, !(arg_2.e.e & arg_0.b.x)), u_input.a.x, vec3<f32>(1270f, _wgslsmith_f_op_f32(sign(-1119f)), _wgslsmith_f_op_f32(floor(arg_0.d.x))));
    let var_0 = vec2<f32>(948f, 377f);
    let var_1 = func_2(Struct_3(-3258i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-758f)), _wgslsmith_f_op_f32(global0.d.x - global0.d.x), 1f, -469f)), arg_2.c, arg_2.d, func_5(func_4(func_4(Struct_2(vec2<f32>(arg_2.e.a.x, arg_0.d.x), arg_2.d, 1000f, arg_2.d, vec3<i32>(global0.a, arg_2.a, u_input.a.x)), vec2<f32>(arg_0.d.x, 919f), arg_2.d.e, Struct_2(vec2<f32>(551f, 242f), arg_2.e, global0.d.x, arg_2.e, u_input.a)), _wgslsmith_f_op_vec2_f32(-arg_2.e.a), !global0.b.x, Struct_2(var_0, Struct_1(global0.d.yz, u_input.b.x, 2138u, 1u, true), 112f, Struct_1(global0.d.xx, u_input.b.x, arg_2.d.b, 50137u, arg_3.x), vec3<i32>(arg_1, 2147483647i, global0.a))), arg_3, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 24685i, 2147483647i, arg_1), vec4<i32>(66864i, 18981i, 2147483647i, -87777i))))));
    global0 = Struct_4(select(u_input.a.x, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + 1000f) < -662f), !select(select(!global0.b, vec3<bool>(false, false, false), vec3<bool>(var_1.d.e, arg_3.x, true)), global0.b, 19256u <= select(8628u, 1u, false)), var_1.e.x, _wgslsmith_f_op_vec3_f32(arg_0.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(410f, var_1.b.a.x, global0.d.x), arg_0.d)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-265f, var_1.c, var_0.x)))))));
    return Struct_4(countOneBits(-_wgslsmith_div_i32(u_input.a.x, 12388i) | 8256i), arg_2.c.xxx, 90799i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d * arg_0.d))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-538f, arg_0.d.x, arg_2.e.a.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, global0.d.x, 195f)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-3108f, 182f), _wgslsmith_f_op_f32(abs(-146f))))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> bool {
    global0 = func_6(Struct_4(abs(-min(global0.c, global0.a)), !select(!global0.b, select(vec3<bool>(global0.b.x, true, false), global0.b, false), true), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, -1000f, 241f) - vec3<f32>(global0.d.x, 664f, 819f)) - vec3<f32>(global0.d.x, global0.d.x, -403f)))), firstLeadingBit(1i), Struct_3(max(-3192i, -16624i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.d.x, -326f, -937f, global0.d.x), vec4<f32>(-630f, global0.d.x, -1185f, 674f))) * _wgslsmith_div_vec4_f32(vec4<f32>(348f, 230f, 1583f, global0.d.x), vec4<f32>(global0.d.x, global0.d.x, -369f, global0.d.x)))), vec4<bool>(all(!vec4<bool>(false, global0.b.x, false, true)), true, global0.b.x != !global0.b.x, global0.b.x), func_5(func_4(func_2(Struct_3(u_input.a.x, vec4<f32>(-292f, -1000f, global0.d.x, global0.d.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), Struct_1(vec2<f32>(global0.d.x, 952f), 31220u, arg_0, 1u, false), Struct_1(vec2<f32>(-394f, -633f), 25641u, 31148u, arg_1.x, false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.x, 1000f), vec2<f32>(global0.d.x, -1000f), false)), true, Struct_2(vec2<f32>(global0.d.x, global0.d.x), Struct_1(global0.d.xz, 1u, 4294967295u, arg_1.x, global0.b.x), global0.d.x, Struct_1(vec2<f32>(549f, 925f), arg_0, 17116u, 48844u, true), u_input.a)), select(!vec3<bool>(global0.b.x, global0.b.x, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.b), ~_wgslsmith_mult_i32(9000i, global0.c)), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.d.zx), 51378u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0, u_input.b.x), vec4<u32>(0u, 20940u, arg_1.x, 16518u)), arg_1.x), firstLeadingBit(64024u), false)), vec3<bool>(u_input.a.x == (_wgslsmith_mod_i32(27912i, global0.c) >> (~4294967295u % 32u)), !(global0.b.x && true), false));
    let var_0 = any(vec4<bool>(any(select(!global0.b, vec3<bool>(global0.b.x, true, true), global0.d.x >= -229f)), all(select(select(vec2<bool>(global0.b.x, true), vec2<bool>(false, global0.b.x), vec2<bool>(global0.b.x, global0.b.x)), !global0.b.zy, 45940u < u_input.b.x)), global0.b.x, any(select(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), !vec4<bool>(global0.b.x, false, false, true), select(vec4<bool>(global0.b.x, global0.b.x, true, false), vec4<bool>(global0.b.x, false, global0.b.x, false), global0.b.x)))));
    global0 = Struct_4(reverseBits(~(i32(-1i) * -49352i)), global0.b, -11986i, global0.d);
    var var_1 = ~(~u_input.b | firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(arg_1.x, 4294967295u))));
    var var_2 = !select(select(select(func_6(Struct_4(-14051i, global0.b, u_input.a.x, global0.d), u_input.a.x, Struct_3(0i, vec4<f32>(-1230f, global0.d.x, global0.d.x, -1163f), vec4<bool>(true, false, var_0, global0.b.x), Struct_1(global0.d.yz, arg_0, var_1.x, var_1.x, false), Struct_1(vec2<f32>(global0.d.x, 102f), 1u, u_input.b.x, 20690u, global0.b.x)), vec3<bool>(false, global0.b.x, true)).b, !vec3<bool>(false, true, var_0), global0.b), global0.b, !func_6(Struct_4(-617i, vec3<bool>(false, true, true), -73902i, vec3<f32>(-1393f, global0.d.x, -1604f)), global0.c, Struct_3(1i, vec4<f32>(global0.d.x, 1198f, global0.d.x, global0.d.x), vec4<bool>(true, global0.b.x, true, global0.b.x), Struct_1(global0.d.yx, 4294967295u, 4294967295u, 11996u, var_0), Struct_1(vec2<f32>(global0.d.x, 543f), 0u, 1u, 0u, false)), vec3<bool>(var_0, false, global0.b.x)).b), !global0.b, global0.b.x);
    return func_5(Struct_2(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(exp2(global0.d.x))), func_5(func_4(Struct_2(global0.d.xy, Struct_1(global0.d.xy, 0u, 17267u, 0u, var_0), 509f, Struct_1(global0.d.yx, 52655u, var_1.x, 16003u, var_2.x), vec3<i32>(global0.c, global0.a, u_input.a.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(759f, global0.d.x))), global0.d.x == global0.d.x, func_4(Struct_2(global0.d.yz, Struct_1(vec2<f32>(-568f, global0.d.x), 21558u, arg_0, 8290u, false), 1435f, Struct_1(global0.d.xx, 4294967295u, 4294967295u, 64295u, var_0), u_input.a), vec2<f32>(global0.d.x, -113f), true, Struct_2(global0.d.zx, Struct_1(vec2<f32>(2386f, global0.d.x), 108119u, 1u, arg_1.x, global0.b.x), -362f, Struct_1(global0.d.yy, arg_1.x, arg_1.x, 1u, true), vec3<i32>(global0.a, 46718i, u_input.a.x)))), !vec3<bool>(global0.b.x, var_0, global0.b.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) >> ((arg_0 & 4294967295u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d.x, global0.d.x, true)))), func_2(Struct_3(min(u_input.a.x, -10688i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-320f, global0.d.x, global0.d.x, global0.d.x), vec4<f32>(-161f, global0.d.x, -306f, 520f), var_0)), !vec4<bool>(global0.b.x, global0.b.x, false, false), Struct_1(global0.d.zx, 0u, arg_0, var_1.x, var_0), Struct_1(global0.d.zz, var_1.x, 83223u, 36037u, false))).b, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x)), Struct_1(global0.d.xx, arg_0, arg_1.x, var_1.x, true), _wgslsmith_f_op_f32(-1000f + global0.d.x), func_2(Struct_3(-20034i, vec4<f32>(global0.d.x, global0.d.x, -255f, -353f), vec4<bool>(true, false, var_0, false), Struct_1(global0.d.yx, 56366u, arg_0, 43948u, var_0), Struct_1(vec2<f32>(global0.d.x, global0.d.x), u_input.b.x, 59286u, u_input.b.x, global0.b.x))).b, firstLeadingBit(vec3<i32>(u_input.a.x, 26603i, global0.a))), _wgslsmith_f_op_vec2_f32(global0.d.yy + vec2<f32>(-989f, -963f)), true && (-2147483647i < u_input.a.x), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x)), func_4(Struct_2(global0.d.zy, Struct_1(vec2<f32>(global0.d.x, -1313f), 1u, 68299u, u_input.b.x, var_2.x), global0.d.x, Struct_1(vec2<f32>(global0.d.x, 1000f), arg_0, var_1.x, arg_1.x, var_0), u_input.a), global0.d.yz, var_0, Struct_2(global0.d.yx, Struct_1(global0.d.xy, arg_1.x, arg_1.x, 4294967295u, false), global0.d.x, Struct_1(global0.d.yz, 12149u, arg_1.x, 1u, var_2.x), u_input.a)).d, func_6(Struct_4(1i, vec3<bool>(true, var_2.x, true), -68357i, vec3<f32>(global0.d.x, global0.d.x, global0.d.x)), -2147483647i, Struct_3(2147483647i, vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.b.x, global0.b.x, var_0, global0.b.x), Struct_1(vec2<f32>(-120f, 1000f), 32430u, 24274u, 0u, false), Struct_1(global0.d.yz, arg_1.x, 14188u, 4294967295u, var_0)), vec3<bool>(true, false, false)).d.x, Struct_1(vec2<f32>(588f, global0.d.x), 1u, 4294967295u, u_input.b.x, var_2.x), reverseBits(vec3<i32>(-20307i, global0.c, u_input.a.x)))).e), vec3<bool>(true, var_2.x, var_0), global0.c).e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!vec4<bool>(true, all(global0.b.yz), func_1(u_input.b.x, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(false, true, global0.b.x))));
    let var_1 = _wgslsmith_div_i32(firstTrailingBit(~abs(-35657i)), i32(-1i) * -13095i);
    global0 = func_6(func_6(Struct_4(var_1, global0.b, max(-51874i, global0.a) << (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, 227f, -240f) * vec3<f32>(1337f, 1000f, -284f)))), var_1, Struct_3(func_4(Struct_2(vec2<f32>(-943f, global0.d.x), Struct_1(vec2<f32>(164f, global0.d.x), u_input.b.x, 18867u, u_input.b.x, true), 1098f, Struct_1(global0.d.xx, 57849u, u_input.b.x, u_input.b.x, true), u_input.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.d.x, -424f), vec2<f32>(global0.d.x, global0.d.x))), global0.b.x | global0.b.x, Struct_2(vec2<f32>(global0.d.x, global0.d.x), Struct_1(vec2<f32>(global0.d.x, 227f), u_input.b.x, 70189u, 1u, global0.b.x), 266f, Struct_1(global0.d.zx, u_input.b.x, 0u, 1u, global0.b.x), u_input.a)).e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, global0.d.x, global0.d.x, 1000f) * vec4<f32>(-707f, global0.d.x, -1681f, global0.d.x))), !vec4<bool>(global0.b.x, global0.b.x, true, false), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1039f, -164f), vec2<f32>(global0.d.x, 1183f))), ~u_input.b.x, _wgslsmith_div_u32(0u, u_input.b.x), u_input.b.x, func_1(4294967295u, vec3<u32>(74820u, u_input.b.x, u_input.b.x))), func_5(func_2(Struct_3(global0.c, vec4<f32>(-583f, -550f, -729f, -1650f), vec4<bool>(var_0, true, var_0, true), Struct_1(global0.d.yz, 26370u, u_input.b.x, u_input.b.x, var_0), Struct_1(global0.d.zx, 1u, 1u, u_input.b.x, global0.b.x))), global0.b, _wgslsmith_div_i32(2147483647i, 14947i))), !vec3<bool>(global0.d.x < -272f, 19490u == u_input.b.x, false)), _wgslsmith_mod_i32(global0.c, u_input.a.x), Struct_3(max(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1, -61294i)), u_input.a.yy), ~(~u_input.a.x)), vec4<f32>(global0.d.x, global0.d.x, _wgslsmith_f_op_f32(-global0.d.x), 1316f), !select(!vec4<bool>(global0.b.x, true, false, false), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, global0.b.x, var_0), vec4<bool>(true, false, true, true)), vec4<bool>(global0.b.x, false, true, global0.b.x)), func_4(Struct_2(global0.d.xx, Struct_1(vec2<f32>(global0.d.x, -804f), u_input.b.x, u_input.b.x, u_input.b.x, global0.b.x), _wgslsmith_f_op_f32(-global0.d.x), func_5(Struct_2(vec2<f32>(-1902f, 124f), Struct_1(vec2<f32>(global0.d.x, global0.d.x), u_input.b.x, u_input.b.x, 7295u, var_0), -120f, Struct_1(global0.d.xy, u_input.b.x, u_input.b.x, 1u, false), u_input.a), global0.b, u_input.a.x), u_input.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(800f, global0.d.x))))), !(global0.d.x != 153f), func_4(func_2(Struct_3(13465i, vec4<f32>(global0.d.x, -274f, global0.d.x, global0.d.x), vec4<bool>(true, true, global0.b.x, global0.b.x), Struct_1(vec2<f32>(global0.d.x, -1000f), 1u, 14837u, 0u, var_0), Struct_1(vec2<f32>(106f, global0.d.x), u_input.b.x, 0u, 1u, global0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, 2041f)), func_6(Struct_4(var_1, vec3<bool>(true, global0.b.x, true), u_input.a.x, global0.d), u_input.a.x, Struct_3(u_input.a.x, vec4<f32>(global0.d.x, -2556f, -170f, 2031f), vec4<bool>(true, var_0, true, var_0), Struct_1(global0.d.yz, 48581u, 1u, u_input.b.x, global0.b.x), Struct_1(global0.d.yz, u_input.b.x, u_input.b.x, 1u, global0.b.x)), vec3<bool>(global0.b.x, var_0, true)).b.x, func_2(Struct_3(6055i, vec4<f32>(global0.d.x, -1110f, global0.d.x, -1291f), vec4<bool>(var_0, false, true, global0.b.x), Struct_1(global0.d.yx, u_input.b.x, u_input.b.x, 64307u, false), Struct_1(vec2<f32>(1119f, global0.d.x), u_input.b.x, u_input.b.x, u_input.b.x, true))))).b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.zz)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), abs(5980u)), 78033u, 1u, true)), global0.b);
    var var_2 = global0.d.zx;
    let var_3 = vec3<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(2147483647i, u_input.a.x, 11156i, global0.a)), vec4<i32>(-global0.c, min(19431i, u_input.a.x), func_2(Struct_3(-2147483647i, vec4<f32>(575f, -665f, -176f, 2659f), vec4<bool>(var_0, true, false, var_0), Struct_1(global0.d.zx, u_input.b.x, 33963u, u_input.b.x, global0.b.x), Struct_1(vec2<f32>(-1593f, var_2.x), 53203u, u_input.b.x, 1u, false))).e.x, global0.a)), var_1), ~(u_input.a.x | _wgslsmith_sub_i32(-31430i, _wgslsmith_clamp_i32(2786i, u_input.a.x, u_input.a.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(305f, 1471f))))));
    var var_5 = vec3<i32>(1i, ~(-_wgslsmith_div_i32(u_input.a.x, 1i)), -func_6(func_6(Struct_4(31729i, vec3<bool>(true, var_0, true), u_input.a.x, global0.d), ~(-2147483647i), Struct_3(2147483647i, vec4<f32>(1443f, var_2.x, var_2.x, 646f), vec4<bool>(var_0, true, true, global0.b.x), Struct_1(vec2<f32>(global0.d.x, global0.d.x), u_input.b.x, u_input.b.x, 4294967295u, var_0), Struct_1(vec2<f32>(-495f, -356f), u_input.b.x, u_input.b.x, 66830u, true)), vec3<bool>(false, true, global0.b.x)), -2147483647i, Struct_3(reverseBits(2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, -924f, var_2.x, global0.d.x)), !vec4<bool>(true, var_0, false, true), Struct_1(global0.d.yy, 21845u, u_input.b.x, 0u, true), func_4(Struct_2(vec2<f32>(-1645f, global0.d.x), Struct_1(global0.d.xz, 4294967295u, u_input.b.x, 4294967295u, false), var_2.x, Struct_1(global0.d.zy, 14320u, 70167u, u_input.b.x, var_0), vec3<i32>(-37767i, -651i, 25025i)), vec2<f32>(-173f, var_2.x), var_0, Struct_2(vec2<f32>(global0.d.x, -1995f), Struct_1(global0.d.yx, u_input.b.x, 1u, 1u, false), -328f, Struct_1(global0.d.xy, u_input.b.x, 1u, 4294967295u, global0.b.x), vec3<i32>(var_1, global0.c, 19041i))).d), vec3<bool>(global0.b.x | true, false, var_0)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(~1i, -var_1), _wgslsmith_clamp_i32(reverseBits(-2147483647i), 0i, _wgslsmith_div_i32(-16602i, var_5.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.a), vec2<i32>(var_3.x, -65426i))), -firstTrailingBit(vec4<i32>(global0.a, -2147483647i, 2147483647i, global0.c)) & firstLeadingBit(max(vec4<i32>(-3099i, 50909i, -1i, var_5.x), vec4<i32>(-72021i, u_input.a.x, var_3.x, u_input.a.x)))));
}

