struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(false, true, Struct_1(8982u, 2147483647i, true, vec3<bool>(false, true, false)), vec2<f32>(1941f, -589f), vec4<u32>(27380u, 35632u, 42039u, 58410u)), Struct_2(true, false, Struct_1(31824u, i32(-2147483648), true, vec3<bool>(true, true, false)), vec2<f32>(-1060f, 1386f), vec4<u32>(42090u, 4294967295u, 65001u, 4294967295u)), Struct_2(false, true, Struct_1(42266u, -1i, false, vec3<bool>(true, true, false)), vec2<f32>(303f, 1587f), vec4<u32>(0u, 14813u, 1u, 47077u)), Struct_2(true, true, Struct_1(1u, 40578i, false, vec3<bool>(true, true, true)), vec2<f32>(1009f, -259f), vec4<u32>(0u, 4294967295u, 34292u, 29452u)), Struct_2(true, false, Struct_1(4294967295u, 2147483647i, true, vec3<bool>(true, false, false)), vec2<f32>(179f, -445f), vec4<u32>(42410u, 0u, 4294967295u, 1u)), Struct_2(true, true, Struct_1(1u, 0i, false, vec3<bool>(false, true, true)), vec2<f32>(-156f, 1000f), vec4<u32>(47295u, 1u, 4294967295u, 36964u)), Struct_2(true, true, Struct_1(4294967295u, -66533i, true, vec3<bool>(false, false, true)), vec2<f32>(2907f, 389f), vec4<u32>(4294967295u, 11243u, 0u, 0u)), Struct_2(true, false, Struct_1(13793u, 28642i, true, vec3<bool>(true, true, false)), vec2<f32>(-693f, -1430f), vec4<u32>(4294967295u, 17952u, 41365u, 47946u)), Struct_2(false, true, Struct_1(83630u, 1i, false, vec3<bool>(true, true, false)), vec2<f32>(1477f, 204f), vec4<u32>(92953u, 6476u, 1u, 0u)), Struct_2(false, false, Struct_1(10663u, -13769i, false, vec3<bool>(true, false, true)), vec2<f32>(1000f, 1000f), vec4<u32>(68531u, 44025u, 67622u, 4294967295u)), Struct_2(true, false, Struct_1(1u, -3696i, true, vec3<bool>(false, false, true)), vec2<f32>(1552f, 810f), vec4<u32>(4294967295u, 1u, 62284u, 4294967295u)), Struct_2(false, true, Struct_1(0u, 55451i, false, vec3<bool>(true, false, false)), vec2<f32>(1590f, 1000f), vec4<u32>(35300u, 1u, 0u, 3660u)), Struct_2(true, true, Struct_1(4294967295u, -15376i, true, vec3<bool>(true, false, false)), vec2<f32>(488f, -509f), vec4<u32>(52536u, 6267u, 50955u, 7113u)), Struct_2(false, true, Struct_1(0u, -1i, true, vec3<bool>(false, false, true)), vec2<f32>(-267f, 526f), vec4<u32>(4294967295u, 5017u, 39135u, 1u)), Struct_2(true, false, Struct_1(1526u, -1i, true, vec3<bool>(false, true, true)), vec2<f32>(2122f, 1269f), vec4<u32>(1u, 7364u, 126137u, 12096u)), Struct_2(false, true, Struct_1(150865u, 1i, false, vec3<bool>(false, true, false)), vec2<f32>(707f, 1486f), vec4<u32>(0u, 50645u, 0u, 85656u)));

var<private> global1: array<Struct_4, 16>;

var<private> global2: array<Struct_3, 25>;

var<private> global3: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false));

var<private> global4: vec4<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~1904u, 8915u, ~u_input.a, _wgslsmith_sub_u32(4294967295u, min(arg_3, 38014u))), vec4<u32>(u_input.a, ~25210u, 1u, u_input.a)), 16u)];
    global2 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x * global4.x), _wgslsmith_f_op_f32(trunc(-1317f)))) * -658f), -312f);
    let var_2 = firstLeadingBit(~max(vec2<u32>(4294967295u, var_0.e.x), _wgslsmith_div_vec2_u32(vec2<u32>(28675u, u_input.a), vec2<u32>(51029u, 74242u))) & var_0.e.wy);
    var var_3 = var_0.c.d;
    return _wgslsmith_f_op_f32(-var_0.d.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), global4.x, global4.x), vec4<f32>(346f, -2080f, _wgslsmith_f_op_f32(global4.x + -1268f), _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, global4.x, global4.x, global4.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.x, 941f, global4.x, 1169f)))))), vec4<bool>(arg_1.d.x, false, !(!arg_0.x), any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))));
    global1 = array<Struct_4, 16>();
    global1 = array<Struct_4, 16>();
    var var_0 = arg_2.d.xx;
    var var_1 = _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(arg_1.b, ~(-1i), -arg_2.b)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_2.b, 1i), vec3<i32>(arg_2.b, arg_1.b, 1i)) ^ firstLeadingBit(vec3<i32>(16233i, 2147483647i, -21620i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(30300i, 0i, 1i), vec3<i32>(2147483647i, -47547i, 18688i), vec3<i32>(arg_2.b, 2147483647i, 59149i))), firstTrailingBit(~(~vec3<i32>(arg_2.b, -20673i, 0i)))));
    return !select(any(select(vec4<bool>(true, var_0.x, false, true), !vec4<bool>(arg_1.c, false, arg_0.x, var_0.x), any(vec4<bool>(true, arg_1.c, arg_0.x, true)))), false, true);
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_3(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(4294967295u, 73771u)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 67916u, 71850u), vec3<u32>(u_input.a, u_input.a, 4294967295u)) % 32u), ~firstTrailingBit(~u_input.a)), 16u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global4.x)), -961f, func_3(vec3<bool>(true, true, false), Struct_1(u_input.a, 1i, false, vec3<bool>(true, true, false)), Struct_1(0u, arg_0, true, vec3<bool>(false, true, true)), vec3<u32>(4294967295u, 51027u, 0u))))))), Struct_1(countOneBits(~u_input.a), -2147483647i, !func_3(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), Struct_1(57042u, -1i, true, vec3<bool>(false, false, true)), Struct_1(1u, -31308i, false, vec3<bool>(false, false, true)), select(vec3<u32>(u_input.a, 13366u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), true)), !vec3<bool>(63169u > u_input.a, global4.x <= global4.x, false)));
    var var_1 = Struct_4(true);
    let var_2 = var_0;
    global0 = array<Struct_2, 16>();
    let var_3 = u_input.a;
    return _wgslsmith_clamp_i32(var_2.d.b, 0i, -3190i);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_2, 16>();
    let var_0 = abs(~_wgslsmith_mod_u32(u_input.a, min(u_input.a, u_input.a)) & 9438u);
    var var_1 = Struct_1(abs(20305u), ~(~(-arg_2 >> (var_0 % 32u))), arg_1, !(!select(!vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, false), false), arg_1)));
    global1 = array<Struct_4, 16>();
    var_1 = Struct_1(reverseBits(_wgslsmith_mod_u32(u_input.a, min(4294967295u, min(27350u, 1u)))), firstLeadingBit(_wgslsmith_mult_i32(-3237i, -arg_2)) >> (12331u % 32u), var_1.c, vec3<bool>(true, var_1.c, arg_2 <= _wgslsmith_mod_i32(func_2(93188i), -71964i)));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.a, var_0, _wgslsmith_div_u32(4294967295u, var_1.a)), var_1.a), -firstTrailingBit(select(-16507i, var_1.b, false) >> (~u_input.a % 32u)), var_1.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_4(false), true, -1i, 1u)), _wgslsmith_f_op_f32(floor(-879f))))), -112f, _wgslsmith_f_op_f32(434f * _wgslsmith_f_op_f32(-global4.x)), global4.x));
    let var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), true, func_2(~2147483647i), global4.x);
    var var_1 = _wgslsmith_mod_vec2_i32(~(vec2<i32>(var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.b), vec2<i32>(var_0.b, var_0.b))) | countOneBits(~vec2<i32>(-2147483647i, 58905i))), vec2<i32>(var_0.b, firstTrailingBit(-var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(func_1(Struct_4(var_0.c), var_0.c, _wgslsmith_mod_i32(var_0.b, -46872i), ~1u))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, 458f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, 2674f, global4.x, global4.x), vec4<f32>(-301f, -1318f, global4.x, 1237f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.x, -372f, global4.x, global4.x))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1185f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global4.x, -734f, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -986f), -534f)), _wgslsmith_f_op_f32(trunc(global4.x))), select(vec4<bool>(any(var_0.d), true, var_0.c, !var_0.d.x), select(vec4<bool>(var_0.d.x, var_0.d.x, false, true), vec4<bool>(var_0.c, var_0.d.x, true, var_0.d.x), !vec4<bool>(var_0.c, true, var_0.c, var_0.c)), var_0.c == false))), 487f, ~20534u);
}

