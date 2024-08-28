struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(16491u, 4294967295u, 4294967295u);

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(i32(-2147483648), 1i, -19249i, -33117i), vec4<i32>(29226i, -1i, 16836i, -26856i), vec4<i32>(i32(-2147483648), 0i, 1i, 0i), vec4<i32>(-18799i, 2147483647i, -2497i, i32(-2147483648)), vec4<i32>(-2981i, 41938i, 1i, 23148i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 69296i), vec4<i32>(-50293i, 29818i, i32(-2147483648), 11163i), vec4<i32>(-39178i, 0i, -20688i, -1i), vec4<i32>(i32(-2147483648), -36193i, 2147483647i, 27520i), vec4<i32>(i32(-2147483648), -25743i, -1257i, 0i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 30871i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), vec4<i32>(-1i, -12835i, -41827i, i32(-2147483648)), vec4<i32>(-32008i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(-28746i, i32(-2147483648), 68986i, 1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_3(~u_input.c, -521f, false != all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_mult_vec4_u32(firstTrailingBit(~u_input.c), u_input.c), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, 1115f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1399f)))))), ~u_input.c.zzy));
    let var_1 = vec4<i32>(u_input.b.x, ~(-42858i), 24557i ^ abs(~_wgslsmith_mult_i32(u_input.a, -1i)), 2147483647i);
    let var_2 = -327f;
    global0 = u_input.c.yzz;
    var var_3 = true;
    return (firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.e.b.zz, u_input.c.xx)) << (_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 29368u, global0.x, 0u), var_0.d), abs(~arg_0.x)) % 32u)) == countOneBits(~1529u);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(-2147483647i, ~u_input.c.x, select(select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), func_3(u_input.c.yww), true), vec4<bool>(false, 49457u <= global0.x, true, true), vec4<bool>(true, true, true, func_3(vec3<u32>(1u, u_input.c.x, global0.x)))), vec4<bool>(true, ~33240u > u_input.c.x, true | (global0.x == u_input.c.x), any(vec4<bool>(true, false, false, false))), vec4<bool>(!any(vec3<bool>(true, false, false)), true, true, u_input.a != -20245i)), Struct_3(abs(_wgslsmith_div_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), ~u_input.c)), -560f, true, ~u_input.c, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(floor(-177f))), (u_input.c.xxy & u_input.c.xwx) | vec3<u32>(58329u, global0.x, u_input.d))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.e.a.x, -622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(abs(342f)), false)) + 1f)));
    var var_2 = all(var_0.c);
    var_0 = Struct_4(_wgslsmith_div_i32(firstTrailingBit(var_0.a), -1i), ~(~43787u), select(select(var_0.c, !vec4<bool>(true, var_0.d.c, false, var_0.d.c), true), select(vec4<bool>(var_0.d.c, false, var_0.d.c & true, true), var_0.c, var_0.c.x), vec4<bool>(all(var_0.c), !(-13051i < u_input.a), var_0.c.x, _wgslsmith_f_op_f32(max(-1960f, var_1.x)) == _wgslsmith_f_op_f32(select(1631f, var_0.d.b, var_0.c.x)))), var_0.d);
    let var_3 = true;
    return var_0.d;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_5(func_2(), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, -580f) * vec2<f32>(-1209f, -274f)))), min(_wgslsmith_mod_vec3_u32(u_input.c.zwy, vec3<u32>(u_input.e, u_input.e, 27003u)), u_input.c.xww)), ~vec3<i32>(-u_input.b.x, _wgslsmith_add_i32(arg_0, arg_0), ~(-1i)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1308f), vec2<f32>(-1481f, -593f))))), ~(u_input.c.xww ^ u_input.c.xwx)), global0.x << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43814u, 1u), vec2<u32>(19694u, global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), global0.zx)) % 32u)), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), false), vec3<bool>(true, true, all(vec4<bool>(true, false, true, true)))), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), true), true, u_input.a != reverseBits(1i));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.e.a.x, 2021f)) * 517f) * var_0.a.e.a.x)));
    let var_3 = var_0;
    let var_4 = vec4<bool>(~var_3.b.b.x >= (_wgslsmith_mult_i32(-1i, var_3.b.b.x) & -1i), true, any(vec4<bool>(false, var_0.e, true, true)), false);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(max(u_input.a, u_input.b.x));
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.c.zx), 78967u, u_input.e), ~vec4<u32>(global0.x, 0u, u_input.d, 55518u) & vec4<u32>(global0.x, 0u, global0.x, u_input.c.x)), _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.d, var_0, var_0, func_1(u_input.a))), ~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-241f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), select(any(vec4<bool>(true, false, true, false)) & true, true, 1397i == _wgslsmith_mult_i32(u_input.b.x, -u_input.b.x)), ~(~u_input.c), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(547f + -1256f), _wgslsmith_f_op_f32(-439f + -464f)))), u_input.c.www));
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, 72475i, u_input.b.yx, u_input.c, -30404i);
}

