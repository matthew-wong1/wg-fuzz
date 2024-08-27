struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = arg_0.x;
    var_0 = -20684i;
    let var_1 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-103f)), _wgslsmith_f_op_f32(f32(-1f) * -1230f)), 890f, _wgslsmith_f_op_f32(f32(-1f) * -625f)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(395f)), _wgslsmith_f_op_f32(ceil(569f)), arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, -1000f, -257f))), vec2<u32>(1u, ~0u))), true, vec3<bool>(!arg_1.x, arg_1.x, !(!arg_1.x)), ~u_input.e);
    let var_2 = var_1.a.b;
    var_0 = -min(1i, u_input.a.x);
    return var_1.a.b.c.x;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(sign(arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + 1057f), _wgslsmith_f_op_f32(select(787f, arg_1.x, false))) + _wgslsmith_f_op_f32(-955f * _wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x)));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(min(select(vec3<u32>(u_input.d, 1u, u_input.e), vec3<u32>(u_input.d, 6036u, u_input.d), arg_0), vec3<u32>(0u, u_input.d, 0u)), vec3<u32>(4294967295u ^ u_input.e, _wgslsmith_sub_u32(u_input.d, 0u), ~0u)), vec3<u32>(~_wgslsmith_sub_u32(1u, u_input.d), ~countOneBits(4294967295u), func_3(vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), vec4<bool>(true, true, true, true)))) & _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(10937u, 0u), vec2<u32>(1u, u_input.e)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26572u, u_input.d, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, u_input.d)), 4294967295u), vec3<u32>(0u, abs(u_input.d >> (u_input.e % 32u)), u_input.d));
    let var_2 = all(!select(vec4<bool>(u_input.b.x < u_input.b.x, false, !arg_0, all(vec4<bool>(arg_0, true, false, arg_0))), vec4<bool>(true, false, -303f <= arg_1.x, arg_0), vec4<bool>(false, arg_0, true, !arg_0)));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_1);
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * arg_1.x)), -318f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(310f, var_0.x, 576f), vec3<f32>(var_0.x, 1135f, -719f))), _wgslsmith_div_vec3_f32(vec3<f32>(544f, arg_1.x, -2290f), _wgslsmith_div_vec3_f32(arg_1, vec3<f32>(-535f, var_0.x, 1000f)))))));
    return Struct_2(vec3<f32>(-559f, 165f, -534f), Struct_1(798f, _wgslsmith_f_op_vec3_f32(trunc(arg_1)), max(~var_1.yy, select(~vec2<u32>(45526u, 4294967295u), vec2<u32>(u_input.e, 108u) ^ var_1.yy, vec2<bool>(true, true)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = func_2(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -246f), arg_0, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) + arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_1.a, arg_1.a))), vec3<bool>(true, !(arg_0 != arg_1.b.x), true))));
    var_0 = func_2(all(!vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true)), arg_1.b);
    var_0 = func_2((28045u < _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, 0u, var_0.b.c.x, u_input.d), vec4<u32>(arg_1.c.x, u_input.e, var_0.b.c.x, arg_1.c.x) | vec4<u32>(42223u, 50448u, var_0.b.c.x, u_input.e))) & any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), var_0.a);
    let var_1 = arg_1;
    var var_2 = Struct_3(func_2(false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, func_2(false, var_1.b).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1928f)), vec3<f32>(-279f, func_2(false, var_0.b.b).a.x, _wgslsmith_f_op_f32(max(var_1.a, 668f))), vec3<bool>(true, false, true)))), any(vec3<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), any(vec2<bool>(false, true)))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), true), 38925u);
    return ~arg_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(func_2(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0.b)), vec3<f32>(-480f, arg_0.b.x, arg_0.b.x)))), !(~func_3(vec2<i32>(1i, 2147483647i), vec4<bool>(false, true, arg_1, false)) <= arg_0.c.x), !select(!vec3<bool>(arg_1, arg_1, true), select(select(vec3<bool>(false, arg_1, true), vec3<bool>(false, true, arg_1), vec3<bool>(false, false, arg_1)), vec3<bool>(true, arg_1, false), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, false), vec3<bool>(true, true, arg_1))), !vec3<bool>(arg_1, true, true)), 24556u);
    let var_1 = abs(u_input.a.xzy);
    var var_2 = var_0;
    var_2 = var_0;
    var_2 = var_0;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, -706f, 1282f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(114f, -553f, -233f), vec3<f32>(-2634f, 1000f, 218f), vec3<bool>(false, false, false))))))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(max(19607u, u_input.d), ~1u), ~max(vec2<u32>(80476u, u_input.e), vec2<u32>(u_input.e, u_input.e))));
    let var_1 = func_4(Struct_1(-946f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b), var_0.b, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(func_1(-371f, Struct_1(-1537f, var_0.b, vec2<u32>(u_input.e, 17329u))), vec2<u32>(0u, var_0.c.x), ~var_0.c), countOneBits(~var_0.c))), any(vec4<bool>(true, true, true, true)));
    var var_2 = func_2(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(var_0.b.x != var_0.b.x, false, false), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1213f))), var_0.b.x, _wgslsmith_f_op_f32(sign(var_1.b.b.x))))).b;
    var var_3 = ~abs(~vec3<u32>(~18125u, var_2.c.x, var_2.c.x));
    var_3 = vec3<u32>(_wgslsmith_div_u32(~u_input.e, u_input.e), ~var_1.b.c.x, _wgslsmith_sub_u32(~1u, var_0.c.x));
    var_3 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_3.x, 33798u, 38428u) ^ vec3<u32>(4938u, 4294967295u, u_input.d)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(120729u, 4294967295u), var_1.b.c.x, 0u), ~1u, ~(1u << (u_input.d % 32u)))), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(abs(3905i), u_input.a.x), u_input.a.x), _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(u_input.b.x, u_input.c, u_input.c, 0i) >> (vec4<u32>(1u, 0u, 1u, var_2.c.x) % vec4<u32>(32u))), u_input.a), u_input.b.x);
}

