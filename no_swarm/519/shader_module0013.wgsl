struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0;
    var var_1 = vec4<u32>(4294967295u, u_input.a.x, ~u_input.a.x, ~_wgslsmith_dot_vec3_u32(reverseBits(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 14016u))), countOneBits(~vec3<u32>(0u, u_input.a.x, 7445u))));
    let var_2 = Struct_3(true, Struct_2(var_0.c, !var_0.c.c, var_0.c, _wgslsmith_f_op_f32(step(-321f, 610f)), _wgslsmith_f_op_f32(sign(-1051f))), select(arg_0.c.a.x ^ ~countOneBits(arg_0.c.a.x), min(var_0.a.a.x, -_wgslsmith_mult_i32(arg_0.c.a.x, 11963i)), (_wgslsmith_dot_vec2_i32(arg_0.c.a.yx, vec2<i32>(-1i, arg_0.c.a.x)) < ~var_0.c.a.x) || false), !(!arg_0.c.b), arg_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - 408f), 315f, any(!var_0.c.b.xx)))));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.a.a, arg_0.a.a.b.x, arg_0.a.c, arg_0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1582f)));
    let var_1 = _wgslsmith_f_op_f32(-136f - 773f);
    var_0 = arg_0.a;
    let var_2 = arg_0;
    var var_3 = Struct_4(arg_0.a, false, Struct_2(var_2.a.a, select(var_2.c.b, var_0.b, arg_0.b), Struct_1(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 18540i, 1i, var_2.c.c.a.x), vec3<bool>(false, all(var_0.c.b), -91050i <= var_0.a.a.x), select(any(vec3<bool>(var_0.a.c, arg_0.b, true)), !var_2.c.c.c, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.c.e, arg_0.c.d))), _wgslsmith_f_op_f32(-var_0.e)));
    return select(vec4<bool>(all(select(!vec4<bool>(var_0.a.b.x, var_2.b, var_2.c.c.c, true), vec4<bool>(true, var_2.a.c.c, var_0.a.b.x, true), select(vec4<bool>(var_3.b, var_0.b, var_0.b, var_3.a.a.b.x), vec4<bool>(arg_0.c.a.b.x, true, false, var_3.b), arg_0.b))), true, var_0.b, false), vec4<bool>(all(vec4<bool>(any(vec2<bool>(var_0.c.b.x, false)), false, 4294967295u < u_input.a.x, var_2.c.c.b.x)), true, all(!select(arg_0.a.a.b.yx, var_2.a.a.b.zy, false)), var_2.b), vec4<bool>(var_0.c.c, !((var_2.c.e > arg_0.a.e) | true), !(~arg_0.a.a.a.x > -35817i), true));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = arg_0.c.c.a.zyw;
    var_0 = min(vec3<i32>((_wgslsmith_clamp_i32(var_0.x, arg_0.c.a.a.x, var_0.x) ^ arg_0.a.c.a.x) ^ (-1i & _wgslsmith_div_i32(1i, arg_0.a.a.a.x)), _wgslsmith_clamp_i32(~0i, var_0.x, 2147483647i), arg_0.a.a.a.x), _wgslsmith_mult_vec3_i32(arg_0.a.c.a.xzy, abs(_wgslsmith_add_vec3_i32(arg_0.c.c.a.zzx, -arg_0.a.c.a.ywz))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.a)) * arg_0.c.d), -744f), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.e + _wgslsmith_div_f32(686f, arg_0.a.d)), arg_0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.e))))));
    return !func_3(Struct_4(Struct_2(arg_0.a.a, true | arg_0.b, Struct_1(vec4<i32>(arg_0.a.c.a.x, -2147483647i, -1i, arg_0.c.c.a.x), vec3<bool>(arg_0.a.c.c, true, arg_0.a.a.c), false), _wgslsmith_f_op_f32(808f - 1693f), arg_0.a.e), arg_0.a.c.b.x, Struct_2(Struct_1(vec4<i32>(4939i, arg_0.a.c.a.x, -32033i, arg_0.a.a.a.x), vec3<bool>(arg_0.c.a.c, arg_0.c.c.b.x, arg_0.c.b), arg_0.c.c.b.x), arg_0.c.c.b.x, Struct_1(vec4<i32>(var_0.x, 0i, arg_0.c.a.a.x, -41839i), vec3<bool>(arg_0.c.c.c, false, arg_0.b), false), arg_0.c.e, _wgslsmith_f_op_f32(ceil(-1972f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = any(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true), func_1(Struct_4(Struct_2(Struct_1(vec4<i32>(2147483647i, 25540i, -7016i, 66876i), vec3<bool>(false, false, true), true), false, Struct_1(vec4<i32>(49475i, -55839i, -9040i, -2647i), vec3<bool>(true, true, false), true), -1452f, -1000f), true, Struct_2(Struct_1(vec4<i32>(-53945i, 22352i, 2147483647i, -2147483647i), vec3<bool>(false, false, true), true), false, Struct_1(vec4<i32>(0i, 0i, -2147483647i, 2147483647i), vec3<bool>(true, true, true), true), -1849f, 1113f)))), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), true), vec4<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)), true), true), true));
    var_0 = true;
    var var_1 = Struct_1(~(~(-vec4<i32>(-1i, 38100i, -2147483647i, 14997i))), vec3<bool>(false, func_3(Struct_4(Struct_2(Struct_1(vec4<i32>(-23204i, -2147483647i, 15695i, -2147483647i), vec3<bool>(true, false, false), true), false, Struct_1(vec4<i32>(1i, 37761i, -2147483647i, -31604i), vec3<bool>(false, true, false), true), -795f, -809f), true, Struct_2(Struct_1(vec4<i32>(-1i, 42185i, 1i, -18362i), vec3<bool>(true, true, false), false), true, Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 32568i), vec3<bool>(true, false, true), true), 1910f, 305f))).x, all(vec3<bool>(all(vec2<bool>(true, false)), true, true))), !(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false))));
    let var_2 = -962f;
    var var_3 = vec2<f32>(-1250f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f * -1113f) - var_2), -251f))));
    let var_4 = Struct_4(Struct_2(Struct_1(~(~var_1.a), var_1.b, any(vec2<bool>(var_1.c, var_1.c))), var_1.b.x, Struct_1(abs(var_1.a | vec4<i32>(1665i, 0i, var_1.a.x, 0i)), vec3<bool>(any(var_1.b.yy), var_1.c, true), var_1.c || all(vec4<bool>(true, false, var_1.c, var_1.c))), var_3.x, _wgslsmith_f_op_f32(200f - var_3.x)), !var_1.c, Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(3415i, var_1.a.x), vec2<i32>(var_1.a.x, var_1.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, -42502i, 52055i), vec3<i32>(2147483647i, var_1.a.x, var_1.a.x)), var_1.a.x, -var_1.a.x), var_1.b, func_3(Struct_4(Struct_2(Struct_1(var_1.a, vec3<bool>(var_1.b.x, false, false), false), false, Struct_1(var_1.a, vec3<bool>(false, var_1.c, var_1.c), true), var_3.x, var_3.x), var_1.b.x, Struct_2(Struct_1(vec4<i32>(-2147483647i, var_1.a.x, -4132i, var_1.a.x), vec3<bool>(true, var_1.b.x, false), var_1.b.x), var_1.c, Struct_1(var_1.a, vec3<bool>(false, true, var_1.b.x), false), 999f, var_2))).x), false, Struct_1(select(min(vec4<i32>(var_1.a.x, -1i, var_1.a.x, 0i), var_1.a), select(vec4<i32>(26473i, -5988i, -1i, -1i), vec4<i32>(var_1.a.x, var_1.a.x, 2147483647i, -64362i), var_1.c), !vec4<bool>(var_1.b.x, var_1.c, true, false)), var_1.b, var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + var_3.x), 217f) - 1f), -214f));
    let var_5 = Struct_3(any(select(vec2<bool>(-567i != var_4.a.c.a.x, true), var_4.c.a.b.xx, !var_1.b.zz)), var_4.c, -11920i, !var_4.c.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -393f) - _wgslsmith_f_op_f32(round(842f))) + var_4.c.e), var_4.a.d)));
    var var_6 = ~(max(abs(~u_input.a.x), ~11325u) & 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.a, select(vec2<u32>(1u, u_input.a.x), u_input.a, var_5.d.x)));
}

