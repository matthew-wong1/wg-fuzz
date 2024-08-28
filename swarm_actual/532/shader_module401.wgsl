struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-346f, -178f), vec2<f32>(-338f, 1526f), vec2<f32>(1000f, 1000f), vec2<f32>(-114f, 1177f), vec2<f32>(2250f, 1000f), vec2<f32>(-644f, -721f), vec2<f32>(1023f, 1030f), vec2<f32>(-1049f, 684f), vec2<f32>(-220f, -2263f), vec2<f32>(1200f, 1000f), vec2<f32>(597f, -183f), vec2<f32>(681f, -879f), vec2<f32>(-557f, -830f), vec2<f32>(822f, 1477f), vec2<f32>(867f, -1455f), vec2<f32>(547f, -1120f), vec2<f32>(1699f, -845f), vec2<f32>(400f, -1313f));

var<private> global1: array<i32, 14> = array<i32, 14>(0i, 0i, 34734i, 16948i, -1i, 1687i, -1i, 38759i, -20826i, 0i, 25177i, -1i, 1i, i32(-2147483648));

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = ~(-1i);
    global1 = array<i32, 14>();
    return arg_2.c.a;
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(abs(firstTrailingBit(vec2<u32>(31838u, 22332u))), ~(~vec2<u32>(41982u, 1u)))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x | _wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), select(min(82560u, var_0.x), ~4294967295u, all(vec3<bool>(global2.x, global2.x, global2.x)))), abs(vec2<u32>(~24381u, _wgslsmith_div_u32(var_0.x, var_0.x))));
    var var_2 = any(!(!vec4<bool>(all(vec2<bool>(global2.x, global2.x)), false, !global2.x, global2.x)));
    global1 = array<i32, 14>();
    let var_3 = global2.x;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, -1323f, -474f, -1716f) * vec4<f32>(-1393f, -645f, -254f, 1495f)) + _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, false, true), Struct_2(Struct_1(vec4<f32>(854f, 673f, -826f, -553f), vec4<bool>(false, true, global2.x, global2.x), vec4<f32>(882f, 350f, 465f, 916f)), vec4<i32>(-46234i, global1[_wgslsmith_index_u32(var_0.x, 14u)], 1i, global1[_wgslsmith_index_u32(var_0.x, 14u)]), Struct_1(vec4<f32>(921f, 799f, 926f, -696f), vec4<bool>(true, false, global2.x, global2.x), vec4<f32>(-1885f, 1585f, 743f, -1000f)), false, vec3<bool>(false, global2.x, true)), vec2<u32>(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, -943f, -706f, 499f) * vec4<f32>(-278f, 930f, -688f, 283f)) + vec4<f32>(620f, 303f, -210f, 911f))), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, global2.x, true), !select(vec3<bool>(global2.x, true, true), vec3<bool>(false, global2.x, false), global2.x), Struct_2(Struct_1(vec4<f32>(-2596f, 1531f, 1096f, -625f), vec4<bool>(global2.x, global2.x, false, true), vec4<f32>(809f, -256f, 1114f, -2512f)), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 14u)], u_input.a.x, u_input.a.x), Struct_1(vec4<f32>(-645f, 616f, -1071f, 485f), vec4<bool>(global2.x, false, false, false), vec4<f32>(-814f, 883f, 205f, -350f)), global2.x, !vec3<bool>(global2.x, true, global2.x)), vec2<u32>(1u, var_0.x) | firstLeadingBit(vec2<u32>(var_0.x, 25356u))))), select(select(!(!vec4<bool>(true, global2.x, false, global2.x)), !(!vec4<bool>(false, global2.x, false, true)), global2.x), select(!(!vec4<bool>(false, global2.x, global2.x, false)), vec4<bool>(!global2.x, all(vec3<bool>(true, global2.x, global2.x)), true, all(vec3<bool>(global2.x, false, true))), !vec4<bool>(false, false, global2.x, global2.x)), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-264f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1530f, 1000f)) * _wgslsmith_f_op_f32(floor(-395f))), 1000f, _wgslsmith_f_op_f32(ceil(-499f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-796f, 449f, 1000f, 945f)))))));
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 14>();
    var var_0 = all(!select(!vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(false, !global2.x, true, false), select(!vec4<bool>(global2.x, false, global2.x, global2.x), select(vec4<bool>(true, false, true, global2.x), vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(true, global2.x, true, global2.x)), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1131f - _wgslsmith_f_op_f32(f32(-1f) * -300f)));
    var var_2 = var_1;
    global1 = array<i32, 14>();
    return Struct_2(func_2(), -select(select(vec4<i32>(global1[_wgslsmith_index_u32(1958u, 14u)], u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(1i, 2147483647i, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(101605u, 14u)]), global2.x) ^ -vec4<i32>(2147483647i, -26709i, global1[_wgslsmith_index_u32(25991u, 14u)], -1i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(41656u, 61547u, 4294967295u, 32445u) % vec4<u32>(32u)), global2.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, -469f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1019f, 610f, var_1, -441f), vec4<f32>(var_1, var_1, 403f, -1709f), vec4<bool>(global2.x, global2.x, global2.x, global2.x))))), select(!vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(all(vec3<bool>(true, global2.x, false)), true, true, select(false, false, global2.x)), false), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1)))), _wgslsmith_div_f32(-600f, _wgslsmith_div_f32(var_1, var_1)), -723f, _wgslsmith_f_op_f32(559f * -350f))), all(!vec4<bool>(true, true, !global2.x, var_1 >= var_1)), !func_2().b.wxx);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    global2 = select(arg_2.a.b.yy, !func_2().b.zw, true);
    let var_0 = select(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(min(27630u, 4343u), arg_0.x, ~0u)), firstTrailingBit(vec3<u32>(4294967295u, abs(4294967295u), arg_0.x))), vec3<u32>(_wgslsmith_add_u32(1u, ~6109u), ~arg_0.x, min(_wgslsmith_div_u32(~41146u, _wgslsmith_mod_u32(arg_0.x, arg_0.x)), arg_0.x)), vec3<bool>(!(false || any(arg_2.a.b)), arg_2.e.x, func_2().b.x));
    global1 = array<i32, 14>();
    let var_1 = arg_2.a.c.x;
    let var_2 = vec2<i32>(61010i, -(~(~arg_1)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.c.c)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = (_wgslsmith_clamp_vec3_i32(max(u_input.a, func_1().b.www), -u_input.a, vec3<i32>(~2147483647i, -59368i, -1260i)) >> (vec3<u32>(~1u, ~1u, abs(~4294967295u)) % vec3<u32>(32u))) & (firstTrailingBit(vec3<i32>(arg_0.x, min(global1[_wgslsmith_index_u32(1u, 14u)], -1i), -28702i)) & -_wgslsmith_mult_vec3_i32(-u_input.a, ~vec3<i32>(arg_0.x, 2147483647i, u_input.a.x)));
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    return Struct_2(Struct_1(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, _wgslsmith_div_f32(678f, -542f)), vec4<bool>(true, !global2.x, true, select(true, all(vec3<bool>(false, global2.x, global2.x)), !global2.x)), _wgslsmith_f_op_vec4_f32(-func_1().a.a)), -_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 1i, u_input.a.x, -2147483647i), vec4<i32>(1i, -543i, -2147483647i, -2147483647i), !vec4<bool>(global2.x, global2.x, true, global2.x)), ~max(vec4<i32>(u_input.a.x, var_0.x, arg_0.x, arg_0.x), vec4<i32>(u_input.a.x, 2147483647i, 68712i, 32538i))), func_1().c, false, !select(!(!vec3<bool>(true, global2.x, global2.x)), vec3<bool>(true, global2.x, global2.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_div_i32(u_input.a.x, 29858i)), abs(vec2<i32>(_wgslsmith_mult_i32(-32936i, -1i), u_input.a.x >> (1u % 32u)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(abs(vec2<u32>(58122u, 57032u)), -2147483647i, func_1())))));
    var var_1 = var_0.a.b.yz;
    let var_2 = -1i;
    let var_3 = any(!(!select(select(vec3<bool>(false, var_0.e.x, global2.x), var_0.a.b.zyy, vec3<bool>(var_0.c.b.x, true, true)), vec3<bool>(var_0.e.x, var_1.x, false), var_0.c.b.xyz)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1754f)) + 1000f)) >= 1869f;
    let var_5 = any(var_0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(-386f, ~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(106811u, 0u, 4294967295u), vec3<u32>(1u, 0u, 33813u)), vec3<u32>(1u, 1u, 1u))), -25672i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(u_input.a.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(347f, -823f, 408f, -1726f) * vec4<f32>(var_0.c.a.x, var_0.a.a.x, 540f, -723f))).c.c.x * -1000f))));
}

