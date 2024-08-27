struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 16>;

var<private> global1: i32 = 12812i;

var<private> global2: f32 = 441f;

var<private> global3: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-11124i, 37241i), vec2<i32>(-1i, -30895i), vec2<i32>(0i, 1087i), vec2<i32>(-17061i, -42694i), vec2<i32>(i32(-2147483648), 18882i), vec2<i32>(-12960i, 57366i), vec2<i32>(42006i, -54357i), vec2<i32>(-28536i, 2276i), vec2<i32>(-13708i, 14727i), vec2<i32>(178i, 40874i), vec2<i32>(30428i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-7567i, 16660i), vec2<i32>(-27247i, i32(-2147483648)), vec2<i32>(-20558i, 1i), vec2<i32>(2147483647i, -48289i), vec2<i32>(37410i, -17040i), vec2<i32>(0i, -10284i), vec2<i32>(-49521i, 0i), vec2<i32>(i32(-2147483648), -9497i), vec2<i32>(1i, 1i), vec2<i32>(-85294i, -2243i), vec2<i32>(25610i, 0i), vec2<i32>(9907i, 0i), vec2<i32>(69925i, 19600i), vec2<i32>(-37202i, 15110i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -23429i), vec2<i32>(0i, -44566i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    global3 = array<vec2<i32>, 29>();
    global1 = u_input.c;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(-1208f - -353f)) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1144f), 185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1703f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, 427f, -174f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2221f, -1000f, -935f)) + vec3<f32>(-587f, -424f, 992f))))));
    global1 = -1i;
    global0 = array<Struct_5, 16>();
    return _wgslsmith_f_op_f32(abs(1000f));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(710f - -149f))) < arg_0;
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = vec4<i32>(arg_2, 13352i, ~max(_wgslsmith_clamp_i32(u_input.d.x, arg_1.b.c.c >> (u_input.b.x % 32u), countOneBits(-21754i)), ~1i), ~1i);
    var var_3 = ~vec2<u32>(~u_input.a, (~0u >> (countOneBits(1u) % 32u)) ^ abs(_wgslsmith_dot_vec3_u32(arg_1.b.a.yxw, arg_1.b.a.wzz)));
    var var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1000f), -1000f), 46241u, -u_input.d.x, _wgslsmith_mult_u32(var_3.x, 4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.d.a * arg_1.b.b), _wgslsmith_f_op_f32(select(arg_0, -1255f, true)), _wgslsmith_div_f32(691f, arg_1.b.d.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.b.d.e, arg_1.b.c.e))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1217f, 624f, 283f) - arg_1.b.c.e))), !(_wgslsmith_f_op_f32(360f * arg_1.b.c.a) != _wgslsmith_f_op_f32(arg_0 - -1969f)))));
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-342f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))));
    let var_1 = any(vec4<bool>(false, true, all(vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec4<bool>(false, false, true, true)), false)), !(!(36225u == u_input.b.x))));
    let var_2 = -883f;
    global2 = _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-480f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1589f, arg_0, false))))));
    global0 = array<Struct_5, 16>();
    return select(select(!select(vec4<bool>(true, var_1, var_1, var_1), !vec4<bool>(true, true, var_1, false), vec4<bool>(true, var_1, var_1, var_1)), !select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true)), var_1), select(!func_3(_wgslsmith_f_op_f32(-var_0.x), Struct_3(57177u, Struct_2(vec4<u32>(u_input.a, u_input.b.x, 23982u, 0u), -535f, Struct_1(var_0.x, u_input.a, -2147483647i, u_input.a, vec3<f32>(1706f, -685f, 523f)), Struct_1(423f, u_input.b.x, u_input.c, u_input.a, var_0))), 0i), vec4<bool>(true, all(vec2<bool>(false, var_1)), select(u_input.d.x == u_input.d.x, var_1, true), true), !(!var_1)), select(vec4<bool>(true, var_1, _wgslsmith_add_i32(u_input.c, -1i) < _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.d.x)), 12547i == u_input.c), !func_3(_wgslsmith_f_op_f32(f32(-1f) * -755f), Struct_3(4294967295u, Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 43552u), -457f, Struct_1(arg_0, u_input.b.x, 0i, 0u, var_0), Struct_1(var_2, 5894u, 2147483647i, 4294967295u, var_0))), u_input.c | u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(82935u, u_input.b.x, 40234u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(7143u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(3927u, 4294967295u, 1u, u_input.a), vec4<u32>(u_input.a, 25258u, 0u, 1u))) == ~15201u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_f32(-2625f, _wgslsmith_f_op_f32(1f - -1776f)));
    var_0 = !select(!(!(!vec4<bool>(var_0.x, var_0.x, false, true))), vec4<bool>(false, true, var_0.x, u_input.c != u_input.c), true);
    global0 = array<Struct_5, 16>();
    var var_1 = 1u;
    global0 = array<Struct_5, 16>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1983f * _wgslsmith_f_op_f32(f32(-1f) * -991f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1336f))))));
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x << (~u_input.a % 32u), ~abs(u_input.b.x)), ~firstLeadingBit(18374u), 7328u, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1408f - 141f) - -132f) - 1976f)), Struct_1(_wgslsmith_div_f32(-795f, 377f), 0u, (-11698i | u_input.d.x) ^ _wgslsmith_sub_i32(firstTrailingBit(u_input.c), -2147483647i), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(894f, -884f, 1000f)))))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), u_input.b.x, ~_wgslsmith_dot_vec2_i32(reverseBits(u_input.d.wy), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.ww)), 1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + 431f)), -3711f, _wgslsmith_f_op_f32(min(-231f, _wgslsmith_f_op_f32(-1055f + 1370f))))));
    let x = u_input.a;
    s_output = StorageBuffer(8337i, max(vec3<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(57787i, var_2.c.c)), global3[_wgslsmith_index_u32(firstTrailingBit(var_2.d.b), 29u)]), _wgslsmith_add_i32(-1i, select(-32918i, var_2.c.c, var_0.x)), -87697i), abs(vec3<i32>(reverseBits(var_2.c.c), -1i, var_2.c.c))), reverseBits(reverseBits(u_input.d)), u_input.d.x);
}

