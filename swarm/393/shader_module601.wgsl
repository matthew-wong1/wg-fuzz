struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> bool {
    var var_0 = 34720u;
    let var_1 = !any(vec3<bool>(false, false, all(vec3<bool>(arg_0.x, true, arg_0.x)) != true));
    var var_2 = select(select(arg_0.xx, !(!vec2<bool>(var_1, true)), any(!vec4<bool>(var_1, arg_0.x, var_1, false))), !vec2<bool>(false, !all(arg_0)), arg_0.xx);
    var var_3 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_sub_i32(abs(u_input.c.x), select(0i, -69907i, var_1)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, u_input.c.x, 0i), -vec3<i32>(u_input.c.x, -45952i, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1033f, -743f, -692f, 457f))))));
    var_2 = arg_0.zx;
    return !(1u == select(reverseBits(u_input.e), u_input.d.x, arg_0.x));
}

fn func_2(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = u_input.b.x;
    var var_1 = false;
    let var_2 = Struct_3(4294967295u);
    var_1 = -1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(311f, -1545f))))));
    let var_3 = vec2<bool>(func_3(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), Struct_3(_wgslsmith_mod_u32(max(61231u, 38130u), reverseBits(arg_0.x)))), any(vec3<bool>(false, all(vec2<bool>(true, true)), true)));
    return abs(~vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, u_input.c.x, -39879i)), select(u_input.c.x, u_input.c.x, all(var_3)), 16970i, ~31324i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(1u, ~_wgslsmith_clamp_u32(1u, 1u ^ u_input.e, ~u_input.b.x) | (_wgslsmith_clamp_u32(firstTrailingBit(u_input.d.x), u_input.d.x, select(u_input.d.x, u_input.b.x, true)) >> (u_input.e % 32u)), ~_wgslsmith_mult_u32(u_input.d.x, select(u_input.a.x, u_input.e, false) ^ 10660u));
    var var_1 = vec2<u32>(select(~_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(50024u, 1572u))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), 16809u), 1u, 45218u), !arg_2.x), 2704u);
    var var_2 = arg_1.b;
    var_0 = ~u_input.d.x;
    var var_3 = 4294967295u;
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(5360u);
    var var_1 = Struct_2(func_4(func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d), vec4<u32>(arg_0, 4294967295u, 51718u, 0u), ~vec4<u32>(47361u, 2058u, u_input.d.x, 21078u))), Struct_1(~u_input.c, vec4<f32>(944f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1077f), 817f)), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), true, true), false)));
    var_1 = Struct_2(var_1.a);
    var_0 = Struct_3(~abs(~(~25911u)));
    var_0 = Struct_3(_wgslsmith_div_u32(50630u, reverseBits(~u_input.a.x)));
    return Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 1i), u_input.c), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(-27517i, u_input.c.x, u_input.c.x, 33943i), vec4<i32>(var_1.a.a.x, 1i, 1i, -1i)), Struct_1(vec2<i32>(-3104i, u_input.c.x), var_1.a.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d >> (u_input.d % vec4<u32>(32u));
    let var_1 = func_1(abs(abs(abs(_wgslsmith_add_u32(var_0.x, u_input.a.x)))), 1u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(973f, -1666f, 678f, 1977f) + vec4<f32>(-681f, -759f, 124f, -1109f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, 380f, -2379f, 740f) * vec4<f32>(1075f, -1217f, -1000f, 1425f)), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1652f), -770f, _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-1587f * -326f))))));
    var var_2 = Struct_3(u_input.d.x >> (4294967295u % 32u));
    var var_3 = var_1.a.a.x;
    let var_4 = vec4<bool>(false, any(select(vec3<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false)), select(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)))), !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.b.x)))) == var_1.a.b.x), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.b.x + -242f), _wgslsmith_f_op_f32(trunc(var_1.a.b.x))), !(!func_3(vec3<bool>(true, false, false), Struct_3(13560u))), true & (-357f < _wgslsmith_f_op_f32(-var_1.a.b.x))));
    let var_5 = Struct_3(select(abs(var_2.a), ~99661u, select(-332f > var_1.a.b.x, any(var_4.yyw), false) | !(u_input.c.x < 17237i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_4(vec4<i32>(func_1(var_0.x, 0u, var_1.a.b).a.a.x, -71370i, -u_input.c.x, -2147483647i), func_1(~var_5.a, ~41824u, _wgslsmith_div_vec4_f32(var_1.a.b, var_1.a.b)).a, vec3<bool>(true, true, var_4.x && true)).b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-113f, var_1.a.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(249f, var_1.a.b.x)) + var_1.a.b.x)), 2415f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.b.x, var_1.a.b.x) * _wgslsmith_f_op_f32(sign(720f))), _wgslsmith_f_op_f32(f32(-1f) * -223f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(var_1.a.b.yz))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(919f, var_1.a.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.b.x, var_1.a.b.x, false))))), vec2<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(trunc(var_1.a.b.x))), 189f))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, 9092u, 64076u) | vec4<u32>(59641u, var_0.x, var_0.x, 41766u), vec4<u32>(var_2.a, u_input.a.x, 4294967295u, 25575u)), ~_wgslsmith_mod_u32(var_5.a, ~var_2.a)));
}

