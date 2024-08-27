struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-639f, 565f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 135f) * 874f), 1f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -495f, arg_1) + vec4<f32>(arg_1, arg_1, 1246f, 245f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(395f, arg_1, -141f, 1000f) * vec4<f32>(arg_1, -1061f, arg_1, -297f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 2616f, arg_1))))))));
    let var_1 = !(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, 1u != arg_0, any(vec2<bool>(true, false)))));
    let var_2 = u_input.a;
    let var_3 = Struct_1(false, u_input.e, ~arg_0);
    var var_4 = Struct_2(Struct_1(var_3.a & !(!var_1.x), ~13708i, 114225u), var_2.x, Struct_1(var_1.x, u_input.e, 16340u), Struct_1(true & var_3.a, var_2.x, _wgslsmith_add_u32(~(~4294967295u), abs(_wgslsmith_clamp_u32(4294967295u, 42318u, 68521u)))), var_3);
    return u_input.d;
}

fn func_2() -> Struct_1 {
    var var_0 = countOneBits(0u);
    var_0 = abs(_wgslsmith_sub_u32(u_input.b, ~(~u_input.d))) | 52959u;
    var var_1 = u_input.e & u_input.e;
    var_0 = _wgslsmith_add_u32(~20258u, func_3(30113u & ~select(u_input.c.x, u_input.d, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1098f - _wgslsmith_f_op_f32(sign(-1000f))))));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.e, u_input.a.x)), vec3<i32>(u_input.e, u_input.e, -1i))) > u_input.a.x, -20788i, ~u_input.d);
    return Struct_1(any(select(vec4<bool>(any(vec4<bool>(true, var_2.a, var_2.a, false)), var_2.a, false, any(vec4<bool>(false, var_2.a, var_2.a, var_2.a))), !(!vec4<bool>(false, var_2.a, var_2.a, var_2.a)), vec4<bool>(var_2.a, any(vec4<bool>(var_2.a, true, var_2.a, var_2.a)), all(vec2<bool>(var_2.a, true)), u_input.e >= 2147483647i))), 54241i, ~(~var_2.c));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_1.x != _wgslsmith_mod_u32(arg_1.x, 9420u), 2147483647i, firstTrailingBit(~arg_1.x)), 2147483647i, Struct_1(2147483647i > _wgslsmith_add_i32(arg_0.x, firstTrailingBit(u_input.e)), 1i, ~abs(_wgslsmith_mod_u32(u_input.b, 0u))), func_2(), func_2());
    let var_1 = _wgslsmith_f_op_f32(step(521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(729f, 1249f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f) + _wgslsmith_f_op_f32(536f + 494f))) * -164f)));
    var var_2 = 4294967295u;
    var var_3 = Struct_2(var_0.e, _wgslsmith_add_i32(3030i, u_input.a.x), var_0.a, Struct_1(~(u_input.e & arg_0.x) > max(~14786i, abs(var_0.b)), 2147483647i, _wgslsmith_div_u32(64443u, u_input.d)), func_2());
    let var_4 = select(vec2<bool>(var_3.d.a, true), select(!select(!vec2<bool>(arg_2, false), vec2<bool>(var_0.d.a, var_3.d.a), vec2<bool>(arg_2, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2), !vec2<bool>(var_3.d.a, var_0.a.a), !vec2<bool>(true, var_0.d.a)), true), all(!vec2<bool>(var_3.e.a, var_3.a.a)) & false), false);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(vec3<i32>(-1i, u_input.a.x, i32(-1i) * -957i), u_input.c, false), ~u_input.a.x, func_2(), func_2(), Struct_1(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), -_wgslsmith_mod_i32(1i >> (u_input.b % 32u), 2147483647i), 20428u));
    let var_1 = Struct_3(true, ~u_input.c.x, select(~(~firstLeadingBit(vec2<u32>(73880u, var_0.d.c))), u_input.c, vec2<bool>(var_0.d.a, var_0.c.b <= _wgslsmith_mult_i32(43923i, var_0.d.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-278f, -134f, -795f, -126f), vec4<f32>(207f, -502f, -762f, -845f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(860f, -1388f, -274f, 364f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, 1335f, -441f, 871f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-443f))), _wgslsmith_f_op_f32(f32(-1f) * -301f))));
    global0 = array<vec2<f32>, 1>();
    var var_3 = select(!(!(!vec2<bool>(var_1.a, var_0.e.a))), select(!vec2<bool>(any(vec4<bool>(false, false, var_1.a, false)), var_0.a.a), !(!vec2<bool>(var_1.a, var_1.a)), !(!vec2<bool>(true, var_1.a))), 0i == var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~func_1(vec3<i32>(var_0.d.b, u_input.e, -2147483647i), var_1.c, true).b, -2147483647i), 5709i, var_2, var_0.e.b);
}

