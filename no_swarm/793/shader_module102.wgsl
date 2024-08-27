struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: vec2<f32>;

var<private> global2: vec3<f32> = vec3<f32>(-1482f, 1000f, 2121f);

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_2(vec3<u32>(arg_1.x, u_input.a, min(firstTrailingBit(arg_1.x), 91979u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), arg_1.x, 1u), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 0u), vec3<u32>(arg_1.x, u_input.a, 0u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, 1017f)) + 1525f)), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) & false, ~4294967295u, min(~max(18721i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 27240i), vec2<i32>(1i, -726i))), abs(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-1i, -34155i), 2147483647i))));
    var var_1 = all(!vec3<bool>(var_0.c, true, (var_0.c | var_0.c) && any(vec3<bool>(var_0.c, true, var_0.c))));
    var_1 = all(select(!vec4<bool>(var_0.c && true, false, var_0.c | var_0.c, u_input.a > 1u), !vec4<bool>(true, true, !var_0.c, var_0.c | true), !select(false, all(vec2<bool>(var_0.c, var_0.c)), var_0.c | var_0.c)));
    var_1 = all(vec2<bool>(var_0.c & true, true));
    var var_2 = Struct_1(0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-724f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-823f, arg_0.x, -1822f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, global1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1995f, var_0.b, arg_0.x) * vec3<f32>(1711f, -1476f, -721f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-764f)))), _wgslsmith_div_f32(1000f, global1.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_0.x, -707f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, arg_0.x, -575f) - vec3<f32>(var_0.b, arg_0.x, global2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, global1.x, 2043f)) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(-arg_0.x), global2.x)))));
    return _wgslsmith_mult_vec2_u32(arg_1, vec2<u32>(arg_1.x, 52948u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_3.e, -12780i, arg_3.e) & max(vec3<i32>(arg_3.e, arg_3.e, arg_3.e), vec3<i32>(2147483647i, -4222i, 30280i)), vec3<i32>(arg_3.e, -2147483647i, 1i)), countOneBits(vec3<i32>(arg_3.e, i32(-1i) * -1962i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.e, 0i), vec2<i32>(13554i, -2147483647i))))));
    let var_1 = Struct_3(arg_0, 66371u, !vec2<bool>(arg_3.c, arg_3.c), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(reverseBits(arg_3.a.zx)), reverseBits(func_3(vec2<f32>(425f, arg_2), vec2<u32>(115370u, 0u)))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_3.a.zx, vec2<u32>(u_input.a, 1u), arg_3.a.xx), abs(arg_3.a.yz))));
    global0 = array<vec4<f32>, 6>();
    var var_2 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global2.x, var_1.a.c.x)), _wgslsmith_f_op_f32(arg_1.x - var_1.a.b.x)))), _wgslsmith_div_vec2_u32(arg_3.a.yx, vec2<u32>(1u, select(19187u, 1u >> (arg_3.d % 32u), any(vec3<bool>(arg_3.c, true, arg_3.c)))))).x;
    global2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(-718f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b.x))), -1000f)));
    return _wgslsmith_mult_i32(firstLeadingBit(var_0.x), max(_wgslsmith_dot_vec3_i32(min(max(vec3<i32>(arg_3.e, -1i, 2147483647i), vec3<i32>(arg_3.e, 0i, -2147483647i)), vec3<i32>(var_0.x, 2537i, 33309i)), select(vec3<i32>(arg_3.e, -1i, 56318i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, 1830i), vec3<i32>(-60191i, var_0.x, 1i), vec3<i32>(var_0.x, var_0.x, arg_3.e)), vec3<bool>(var_1.c.x, var_1.c.x, true))), arg_3.e));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = -(~(~vec2<i32>(_wgslsmith_add_i32(arg_1, -36672i), reverseBits(arg_1))));
    var var_1 = Struct_3(Struct_1(23460u, _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-749f, global2.x, -642f)))), _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -632f, global2.x) * vec3<f32>(global2.x, -1348f, 221f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, -420f))))), _wgslsmith_div_u32(max(u_input.a, ~(~4294967295u)), u_input.a), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), 0i > arg_1), false), true), reverseBits(reverseBits(33054u)));
    var var_2 = var_1.a;
    var_1 = Struct_3(Struct_1(~_wgslsmith_mod_u32(~var_1.d, var_1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a.b)))), var_2.b), func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.x - var_2.c.x) * 1723f), arg_0.x), vec2<u32>(u_input.a >> (firstLeadingBit(var_2.a) % 32u), u_input.a)).x, !select(vec2<bool>(var_1.c.x && true, any(vec2<bool>(false, false))), !vec2<bool>(true, var_1.c.x), all(vec4<bool>(var_1.c.x, false, false, true)) & true), var_2.a);
    var var_3 = Struct_4(Struct_2(~select(~vec3<u32>(var_1.b, u_input.a, var_2.a), ~vec3<u32>(0u, 0u, 10582u), select(vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(false, true, true), true)), -1486f, true, var_1.a.a, max(min(44575i, var_0.x), abs(~arg_1))), 798f, any(vec4<bool>(var_1.c.x, select(any(vec2<bool>(var_1.c.x, true)), true, false), true, all(select(vec4<bool>(true, var_1.c.x, var_1.c.x, false), vec4<bool>(var_1.c.x, true, false, true), vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x))))), Struct_1(~8811u, var_2.b, _wgslsmith_f_op_vec3_f32(select(arg_0, var_1.a.c, vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b))), -134f));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec2<f32>(-515f, _wgslsmith_div_f32(-267f, 315f));
    global2 = arg_2.b;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1210f * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-585f - arg_2.c.x))), _wgslsmith_f_op_f32(func_4(arg_2.c, -_wgslsmith_sub_i32(func_2(Struct_1(u_input.a, vec3<f32>(global1.x, global1.x, var_0.x), vec3<f32>(511f, global2.x, -1000f)), global2.zx, global1.x, Struct_2(arg_1.wzx, global2.x, true, arg_0.d, -22602i)), _wgslsmith_mod_i32(28462i, -19922i)), -2147483647i)));
    var var_2 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(383f, -2473f)) * global1.x) < _wgslsmith_f_op_f32(1000f * arg_2.c.x), arg_0.c.x, arg_0.c.x, any(select(vec3<bool>(true, false, true), vec3<bool>(arg_0.c.x, false, arg_0.c.x), any(vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x)))));
    let var_3 = arg_0;
    return Struct_3(Struct_1(~_wgslsmith_mod_u32(u_input.a, max(4393u, arg_0.d)), var_1.zzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(645f * var_0.x), var_1.x, -911f) * arg_2.b)), ~((~arg_0.d & _wgslsmith_add_u32(arg_0.b, 0u)) ^ u_input.a), vec2<bool>(all(var_2.zw) & var_3.c.x, all(select(vec3<bool>(arg_0.c.x, var_2.x, var_2.x), var_2.xzw, true))), arg_1.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    global3 = 2147483647i;
    let var_0 = arg_3.a.b;
    let var_1 = -reverseBits(vec3<i32>(arg_1.a.e, abs(arg_3.a.e ^ 2147483647i), func_2(func_1(arg_0, vec4<u32>(0u, 1u, arg_3.a.a.x, 56874u), arg_1.d).a, arg_2.c.yy, _wgslsmith_f_op_f32(min(1000f, arg_3.a.b)), arg_3.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) * _wgslsmith_f_op_f32(-510f - _wgslsmith_f_op_f32(global1.x * -238f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = reverseBits(1i);
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + global2.x) * _wgslsmith_f_op_f32(func_5(func_1(Struct_3(Struct_1(4294967295u, vec3<f32>(2094f, global2.x, 322f), vec3<f32>(931f, global2.x, -541f)), 1u, vec2<bool>(false, true), u_input.a), vec4<u32>(0u, u_input.a, 11819u, u_input.a), Struct_1(4294967295u, vec3<f32>(-1220f, global1.x, global1.x), vec3<f32>(109f, global2.x, global2.x))), Struct_4(Struct_2(vec3<u32>(u_input.a, 51137u, u_input.a), 953f, true, 1u, 2147483647i), 1501f, false, Struct_1(1u, vec3<f32>(285f, global1.x, global2.x), vec3<f32>(-1046f, -1332f, 584f))), func_1(Struct_3(Struct_1(u_input.a, vec3<f32>(-1148f, 859f, -980f), vec3<f32>(1238f, global1.x, 740f)), u_input.a, vec2<bool>(false, true), 65336u), vec4<u32>(u_input.a, u_input.a, 0u, 1u), Struct_1(u_input.a, vec3<f32>(826f, global1.x, global2.x), vec3<f32>(-578f, -1000f, 130f))).a, Struct_4(Struct_2(vec3<u32>(u_input.a, u_input.a, 24225u), global1.x, false, 0u, -8488i), global1.x, false, Struct_1(1u, vec3<f32>(global2.x, global2.x, 440f), vec3<f32>(-1882f, global2.x, global2.x)))))) - -166f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f + 691f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1357f - _wgslsmith_f_op_f32(global1.x * -1257f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(abs(-976f))))), true));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2069f, global1.x, 1692f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-126f, 1000f, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, var_1, var_1))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-579f, -897f), 172f) * vec3<f32>(global1.x, 464f, global2.x))));
    let var_3 = !func_1(Struct_3(func_1(Struct_3(Struct_1(u_input.a, var_2, var_2), 189u, vec2<bool>(true, false), u_input.a), ~vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a), Struct_1(u_input.a, vec3<f32>(global1.x, 451f, global2.x), vec3<f32>(-1115f, 149f, -1145f))).a, ~4294967295u | (4294967295u << (u_input.a % 32u)), vec2<bool>(func_1(Struct_3(Struct_1(u_input.a, var_2, vec3<f32>(global1.x, 414f, 1000f)), u_input.a, vec2<bool>(false, true), 1u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), Struct_1(9225u, vec3<f32>(global1.x, -644f, 583f), vec3<f32>(global2.x, global1.x, -337f))).c.x, false), ~(~u_input.a)), firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(136716u, u_input.a, 698u, u_input.a), vec4<u32>(u_input.a, 0u, 1u, u_input.a))), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 - vec3<f32>(global1.x, 324f, -2166f))), _wgslsmith_f_op_vec3_f32(floor(var_2)))).c;
    var var_4 = u_input.a;
    let var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(exp2(var_2.x)))))));
    let var_6 = Struct_4(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(3942u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), var_2.x, !(global2.x > var_5), _wgslsmith_mod_u32(75368u, _wgslsmith_sub_u32(~u_input.a, ~u_input.a)), i32(-1i) * -select(-1i, 1i, var_3.x)), _wgslsmith_f_op_f32(280f * -1535f), func_1(func_1(Struct_3(func_1(Struct_3(Struct_1(67595u, vec3<f32>(var_1, 564f, 1222f), var_2), u_input.a, var_3, u_input.a), vec4<u32>(33814u, u_input.a, u_input.a, u_input.a), Struct_1(u_input.a, var_2, var_2)).a, min(u_input.a, u_input.a), var_3, func_1(Struct_3(Struct_1(76874u, var_2, var_2), u_input.a, var_3, 19707u), vec4<u32>(0u, 16266u, u_input.a, u_input.a), Struct_1(u_input.a, var_2, var_2)).a.a), _wgslsmith_mod_vec4_u32(vec4<u32>(47371u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), func_1(Struct_3(Struct_1(1u, var_2, var_2), u_input.a, vec2<bool>(true, var_3.x), 0u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) ^ vec4<u32>(0u, u_input.a, 2670u, 52565u), func_1(Struct_3(Struct_1(u_input.a, var_2, vec3<f32>(var_0, -1960f, var_5)), u_input.a, vec2<bool>(var_3.x, var_3.x), 48130u), vec4<u32>(88806u, 64918u, 58930u, 7141u), Struct_1(u_input.a, var_2, vec3<f32>(575f, 2274f, var_0))).a).a), select(~vec4<u32>(u_input.a, 85715u, 1u, u_input.a) >> (abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4941u, u_input.a)) ^ vec4<u32>(691u, 1u, u_input.a, 0u), true), Struct_1(reverseBits(u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(-1523f, var_1, 420f), _wgslsmith_f_op_vec3_f32(round(var_2))), _wgslsmith_f_op_vec3_f32(-var_2))).c.x, Struct_1(u_input.a, var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_2))))));
    var var_7 = vec3<bool>(true, (var_6.a.e & ~_wgslsmith_sub_i32(-23897i, -38443i)) < ~_wgslsmith_sub_i32(~var_6.a.e, -2147483647i), !(!(!(!var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-var_2), var_6.a.e ^ _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_6.a.e, -92901i), vec2<i32>(var_6.a.e, var_6.a.e)), vec2<i32>(var_6.a.e, var_6.a.e)), ~(~(var_6.a.e << (u_input.a % 32u))))), u_input.a);
}

