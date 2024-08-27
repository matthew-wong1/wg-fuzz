struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-7477i, -11116i), vec2<i32>(29382i, -56010i), vec2<i32>(12151i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 25642i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(2152i, 25631i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(68618i, i32(-2147483648)), vec2<i32>(-7485i, -35980i), vec2<i32>(-1i, 1i), vec2<i32>(14687i, -7149i), vec2<i32>(-25258i, 1i), vec2<i32>(-27001i, 3249i), vec2<i32>(7277i, -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 40944i), vec2<i32>(i32(-2147483648), -4873i), vec2<i32>(10102i, 14018i), vec2<i32>(-39267i, 1i), vec2<i32>(-31123i, -27359i), vec2<i32>(78667i, -89440i), vec2<i32>(40654i, -11114i), vec2<i32>(-1i, 21431i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -27658i), vec2<i32>(6090i, i32(-2147483648)), vec2<i32>(-3925i, 633i), vec2<i32>(-79023i, 3207i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_sub_u32(arg_0, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.x, arg_0, arg_2.x), _wgslsmith_div_vec4_u32(vec4<u32>(61286u, 0u, arg_2.x, 43066u), vec4<u32>(1u, 23021u, 0u, arg_2.x))) | (vec4<u32>(arg_2.x, arg_0, arg_2.x, 43904u) << (~vec4<u32>(arg_0, 4294967295u, arg_0, 4674u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_2.x, arg_2.x, 1u), vec4<u32>(arg_2.x, 4294967295u, 1u, 1u)), 1u, firstLeadingBit(11776u), 31441u) ^ firstTrailingBit(abs(vec4<u32>(42093u, arg_2.x, 0u, arg_2.x)))));
    var var_0 = Struct_1(arg_3.a, arg_3.b);
    var_0 = arg_3;
    global0 = 4294967295u;
    global1 = array<vec2<i32>, 30>();
    return ~1i >> (_wgslsmith_clamp_u32(4294967295u, ~arg_0, arg_0) % 32u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1730f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(572f, -532f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1342f * _wgslsmith_div_f32(-494f, -611f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(220f, 1180f)))))));
    global1 = array<vec2<i32>, 30>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -621f, 518f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, var_1.x, var_1.x)))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.c.x, 61383i, 1i)) | abs(u_input.a), vec3<i32>(~2147483647i, _wgslsmith_sub_i32(21140i, 18653i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 7533i, 46274i, u_input.c.x), vec4<i32>(u_input.b, u_input.b, 1i, -2147483647i)))), u_input.a));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.a))), -u_input.a);
    return var_2.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_1;
    return u_input.c.x;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c.x, 36721i), -1i, 1i), min(abs(-30726i), 24737i)), select(u_input.a, u_input.a, vec3<bool>(u_input.a.x >= u_input.a.x, true, false))), (u_input.a >> (~(~vec3<u32>(80046u, 49952u, 0u)) % vec3<u32>(32u))) >> (vec3<u32>(abs(firstLeadingBit(3740u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(98579u, 1u, 73282u), vec3<u32>(25319u, 48137u, 4294967295u)))) % vec3<u32>(32u)));
    global1 = array<vec2<i32>, 30>();
    var var_1 = _wgslsmith_mod_i32(1i, ~(-2147483647i ^ u_input.c.x));
    var var_2 = !(_wgslsmith_add_i32(var_0.x, -(~1i)) <= func_2(1u, any(vec2<bool>(true, true)), vec3<u32>(34664u, ~4294967295u, 41020u), Struct_1(vec3<f32>(603f, -921f, -578f), -u_input.a)));
    var_1 = func_4(firstLeadingBit(1u) & max(1u, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(222u, 19946u)))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1791f), _wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(f32(-1f) * -314f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-340f, -1000f, -362f) * _wgslsmith_div_vec3_f32(vec3<f32>(-495f, -748f, -182f), vec3<f32>(-3012f, -1310f, 311f)))), vec3<i32>(~_wgslsmith_mult_i32(var_0.x, u_input.c.x), ~func_3(), (u_input.a.x ^ u_input.b) << (463u % 32u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, 755f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1733f, 562f, 758f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1705f, 845f, 752f))))), select(~var_0, u_input.a, vec3<bool>(true, false, true))));
    return 1i;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~1u), firstTrailingBit(select(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, 0u), arg_3.x)) ^ firstLeadingBit(vec2<u32>(19424u, arg_2))), arg_2, all(select(vec2<bool>(true, arg_3.x), !(!arg_3.yz), !any(vec3<bool>(false, true, true)))));
    var var_1 = u_input.a.x >= _wgslsmith_dot_vec2_i32(~u_input.a.yx, firstLeadingBit(vec2<i32>(-1i, 2530i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f * -816f) * _wgslsmith_div_f32(-850f, 747f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, 539f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(769f * -727f))), 758f)));
    var var_3 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(319f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(285f - 633f), _wgslsmith_f_op_f32(1000f + var_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(401f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + var_2.x)))), !arg_3.x)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -513f)), 1178f);
    var_1 = false;
    return Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1702f, _wgslsmith_f_op_f32(round(var_2.x)))), 584f), u_input.a);
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = 4294967295u;
    global1 = array<vec2<i32>, 30>();
    global1 = array<vec2<i32>, 30>();
    global1 = array<vec2<i32>, 30>();
    global0 = ~countOneBits(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 12715u, 0u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)));
    return abs(~select(~1u, 11432u, (arg_0.b.x != 13041i) & (arg_0.b.x > arg_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 30>();
    global1 = array<vec2<i32>, 30>();
    var var_0 = func_6(func_5(_wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(6231i, u_input.b), global1[_wgslsmith_index_u32(6788u, 30u)], true)), vec2<i32>(u_input.a.x, countOneBits(-1i))), func_1(), _wgslsmith_clamp_u32(45313u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u), select(vec4<bool>(select(false, false, false), true, true, select(true, true, true)), vec4<bool>(u_input.b < -28988i, true, false, any(vec2<bool>(false, false))), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2260f)))) <= -1000f);
    let var_1 = ~max(u_input.a.x, (u_input.a.x | ~u_input.b) & _wgslsmith_div_i32(u_input.c.x, -1i));
    global1 = array<vec2<i32>, 30>();
    let var_2 = select(select(vec2<bool>(true, !any(vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(false, false, true, false))), true), vec2<bool>((min(6141u, 4294967295u) >= _wgslsmith_clamp_u32(1u, 4294967295u, 27095u)) && true, false), true);
    global1 = array<vec2<i32>, 30>();
    var var_3 = -814f;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(36424u, 29460u), vec2<u32>(39802u, 4294967295u)), ~90860u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 65872u), vec3<u32>(4294967295u, 30268u, 4294967295u))), 1u), vec3<u32>(min(22521u, 1u), 94625u >> (_wgslsmith_clamp_u32(4294967295u, 0u, 21159u) % 32u), 1u), ~vec3<u32>(_wgslsmith_div_u32(96300u, 117368u), 4294967295u, 16388u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1555f), -1651f, 116f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-638f, -1264f, 628f), vec3<f32>(701f, 736f, 413f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1982f, 635f, -226f) * vec3<f32>(149f, 148f, 743f)), vec3<f32>(-471f, 327f, 443f))))), vec4<i32>(0i, u_input.b, 53307i, var_1));
}

