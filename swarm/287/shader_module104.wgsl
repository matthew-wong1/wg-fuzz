struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    return select(28125u, 9733u, arg_1);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(func_3(select(vec4<i32>(-2147483647i, -1i, 1i, -29945i), select(vec4<i32>(-7474i, -39454i, -1i, 1613i), vec4<i32>(-42208i, -63868i, 1i, 1i), true), true), true), u_input.a, 1u, _wgslsmith_mod_u32(1u, abs(_wgslsmith_add_u32(0u, global0.a.x)))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_mult_u32(select(u_input.b, u_input.a, all(vec2<bool>(true, true))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, global0.a.x), global0.a.x), 0u)) | 79598u;
    var var_2 = Struct_3(~vec4<u32>(_wgslsmith_mult_u32(1u, reverseBits(global0.a.x)), _wgslsmith_add_u32(34929u, 1u) >> (func_3(vec4<i32>(-30497i, -1i, 2115i, 45048i), true) % 32u), ~firstTrailingBit(4294967295u), 4294967295u));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-393f, 987f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -102f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1097f)), -524f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1905f, -1000f, 1125f, -1797f)), vec4<f32>(-1068f, 442f, 120f, -185f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1172f, 201f, -1000f, -554f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, 142f, 1704f, 461f)))))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(-1i >> (var_0.x % 32u), max(-1i, 9529i)), (_wgslsmith_clamp_i32(28189i, -9342i, 1i) >> (~var_0.x % 32u)) << (~var_2.a.x % 32u), 0i), vec3<i32>(1i, -1i, 1i));
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2236f))));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(1439f, 672f)))), 17608u, Struct_1(-42562i, vec2<i32>(-38204i, -1i), all(vec3<bool>(true, true, true)))), Struct_1(~firstTrailingBit(-arg_0), vec2<i32>(countOneBits(arg_0), 45939i), !(!all(vec4<bool>(true, true, false, false)))), Struct_1(arg_0, vec2<i32>(-2147483647i | func_2(), arg_0), true == !any(vec2<bool>(false, true))), Struct_3(global0.a & global0.a), ~(~u_input.a));
    global0 = Struct_3(global0.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(779f, var_1.a.a, var_0.x, -1000f))))));
    let var_3 = Struct_5(Struct_3(~_wgslsmith_mod_vec4_u32(global0.a, select(var_1.d.a, vec4<u32>(4294967295u, global0.a.x, 22068u, 1u), var_1.c.c))), var_1.d, vec4<u32>(23194u, countOneBits(1u), ~2235u | _wgslsmith_mult_u32(6976u & u_input.a, 1u), _wgslsmith_div_u32(61714u, ~u_input.a)));
    return ~(~var_3.b.a.x);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1058f, -735f))), _wgslsmith_div_u32(func_4(_wgslsmith_div_i32(func_2(), 1i)), ~27024u), Struct_1(0i, (vec2<i32>(-1i) * -vec2<i32>(arg_0, arg_0)) >> ((firstTrailingBit(global0.a.xw) << (global0.a.zz % vec2<u32>(32u))) % vec2<u32>(32u)), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    global0 = Struct_3(global0.a);
    var var_1 = var_0;
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(ceil(1068f)), max(_wgslsmith_clamp_u32(global0.a.x, 13192u, var_1.b), ~4294967295u) ^ global0.a.x, var_0.c), Struct_1(85409i, vec2<i32>(var_1.c.b.x, -abs(18839i)), false), Struct_1(_wgslsmith_mult_i32(~(~(-32274i)), ~1i), -var_1.c.b, var_1.c.c), Struct_3(abs(~global0.a)), ~36195u);
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.a))), _wgslsmith_dot_vec3_u32(var_2.d.a.xzy, global0.a.yxw), var_2.c), Struct_1(-1i, vec2<i32>(685i, 10853i), true == !(!var_0.c.c)), var_2.b, Struct_3(vec4<u32>(4294967295u, 4294967295u, 26211u, 108040u)), max(~1187u, (5912u & select(var_1.b, var_1.b, var_2.c.c)) ^ func_4(1i)));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(1i, _wgslsmith_add_i32(func_1(-(~45963i)), 27699i), func_2());
    let var_1 = _wgslsmith_f_op_f32(-1369f * _wgslsmith_f_op_f32(-1f));
    let var_2 = Struct_4(Struct_2(189f, abs(7730u), Struct_1(firstTrailingBit(var_0.x << (4294967295u % 32u)), -vec2<i32>(var_0.x, 0i), all(vec4<bool>(true, false, true, false)) || (var_1 > -2098f))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-29231i ^ var_0.x, 35976i, var_0.x, 20253i), ~(vec4<i32>(var_0.x, -12894i, -29913i, var_0.x) | vec4<i32>(215i, var_0.x, 0i, var_0.x))), var_0.xx, global0.a.x == u_input.b), Struct_1(reverseBits(~36688i >> (max(u_input.b, 16554u) % 32u)), vec2<i32>(-2147483647i, abs(_wgslsmith_div_i32(var_0.x, -10306i))), true), Struct_3(~global0.a), _wgslsmith_div_u32(max(61826u, _wgslsmith_mult_u32(~global0.a.x, 34845u)), _wgslsmith_clamp_u32(global0.a.x, ~4294967295u, 1u)));
    global0 = var_2.d;
    let var_3 = var_2.b.b.x;
    var var_4 = -(abs(vec3<i32>(var_2.b.b.x, 0i, i32(-1i) * -31695i)) | var_0);
    let var_5 = ~1u;
    var var_6 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595f - 227f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 1946f)) - _wgslsmith_f_op_f32(max(-494f, _wgslsmith_f_op_f32(-1781f - 435f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(205f - _wgslsmith_f_op_f32(var_1 * var_2.a.a)), var_5);
}

