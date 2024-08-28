struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_3.a, _wgslsmith_f_op_vec3_f32(arg_2.a.e.xyy - vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(arg_2.a.b.x + arg_3.e.x), _wgslsmith_f_op_f32(f32(-1f) * -787f))), arg_2.a.c, arg_2.a.e.zw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_3.e, arg_0.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x * arg_0.d.x)), abs(-1i), true);
    let var_1 = i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 46259i), u_input.b.xx) >> (_wgslsmith_mult_vec2_u32(u_input.c.zz, u_input.c.yz) % vec2<u32>(32u)), u_input.b.wy);
    let var_2 = ~u_input.b.yy;
    let var_3 = 4294967295u;
    var var_4 = arg_2;
    return _wgslsmith_add_u32(~(~(~0u)) | ~(55275u ^ _wgslsmith_mod_u32(4294967295u, var_3)), abs(~1u));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, u_input.c.x, 4294967295u), vec3<u32>(5347u, 1u, arg_1)), vec3<u32>(max(53316u, _wgslsmith_mult_u32(arg_1, arg_1)), _wgslsmith_div_u32(1u, func_3(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-123f, 724f, arg_0), 2147483647i, vec2<f32>(217f, 1000f), vec4<f32>(arg_0, arg_0, 1521f, 339f)), -258f, Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(arg_0, arg_0, -305f), -11202i, vec2<f32>(arg_0, arg_0), vec4<f32>(-851f, -343f, -1000f, arg_0)), arg_0, 0i, true), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-170f, arg_0, 1982f), u_input.a, vec2<f32>(arg_0, arg_0), vec4<f32>(arg_0, 929f, arg_0, arg_0)))), arg_1), !vec3<bool>(true, any(vec3<bool>(true, false, true)), u_input.a < -13503i)), u_input.c);
    var var_1 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(arg_0)));
    let var_2 = Struct_1(!vec3<bool>(max(64819u, arg_1) <= _wgslsmith_add_u32(32312u, 45309u), any(vec4<bool>(true, false, true, true)), false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, -2190f, -1145f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1055f, arg_0, -200f) + vec3<f32>(-384f, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, 1274f, -246f))))))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-30243i, select(u_input.b.x, 0i, false), reverseBits(u_input.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, -1i), _wgslsmith_mod_vec3_i32(u_input.b.yzz, vec3<i32>(-2147483647i, u_input.b.x, 6517i)))), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(184f, 1047f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 434f, 1768f, arg_0)), vec4<f32>(-644f, -543f, -135f, 1099f)), vec4<f32>(964f, _wgslsmith_div_f32(-188f, 1311f), _wgslsmith_f_op_f32(abs(633f)), -202f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -375f, -133f), vec4<f32>(1606f, 1459f, arg_0, arg_0), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, arg_0, 945f, 1239f)))));
    var var_3 = 303f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -854f))) + -786f));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 377f);
    return var_2;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(-1000f, _wgslsmith_add_u32(1u, 1u));
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(ceil(var_0.d.x)))), _wgslsmith_f_op_f32(-var_0.d.x)) * 981f), _wgslsmith_add_u32(1u, ~u_input.c.x >> (func_3(func_2(-853f, u_input.c.x), _wgslsmith_f_op_f32(527f - -2425f), Struct_2(Struct_1(var_0.a, vec3<f32>(var_0.e.x, -964f, 260f), var_0.c, var_0.d, vec4<f32>(1372f, 1000f, -1454f, -1936f)), 755f, u_input.a, true), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, u_input.b.x, vec2<f32>(var_0.b.x, var_0.d.x), vec4<f32>(var_0.e.x, var_0.b.x, var_0.d.x, var_0.b.x))) % 32u)));
    var_0 = func_2(2323f, 25329u);
    var_0 = Struct_1(var_0.a, var_0.b, var_0.c, var_0.b.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + var_0.d.x), 888f, var_0.d.x)));
    var var_1 = u_input.c.xy;
    return Struct_1(select(vec3<bool>(false, select(var_0.a.x, var_0.a.x, 23894u > var_1.x), all(var_0.a)), var_0.a, var_0.a), vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(416f + var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - -1917f))), min(0i, -_wgslsmith_div_i32(~0i, -1i << (0u % 32u))), vec2<f32>(_wgslsmith_f_op_f32(abs(602f)), -326f), _wgslsmith_f_op_vec4_f32(var_0.e - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.e)) + var_0.e))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = abs(u_input.c.x);
    var var_1 = vec3<bool>(10418u <= func_3(func_1(), -892f, arg_1, Struct_1(!arg_1.a.a, arg_1.a.b, u_input.a, _wgslsmith_f_op_vec2_f32(-arg_1.a.d), arg_1.a.e)), (all(func_1().a) != any(arg_1.a.a)) == arg_1.a.a.x, select(!(u_input.b.x < u_input.b.x), true, arg_1.a.a.x));
    var_1 = vec3<bool>(var_1.x, !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2)))) > 905f), !arg_1.d);
    var_1 = arg_1.a.a;
    var var_2 = _wgslsmith_div_u32(countOneBits(~var_0) << (36352u % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.c.x, 0u, var_0)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(20462u, 4294967295u, var_0, 0u), vec4<u32>(u_input.c.x, u_input.c.x, var_0, 28317u)))), _wgslsmith_div_u32(select(1u, 14378u, false), var_0)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true || any(select(vec2<bool>(true, u_input.c.x <= 4294967295u), vec2<bool>(true, true), true));
    var var_1 = func_4(18990i, Struct_2(func_1(), _wgslsmith_f_op_f32(-1529f + 1100f), i32(-1i) * -48549i, -544f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(2120f))))), -490f);
    var var_2 = u_input.b.wz;
    var var_3 = func_2(_wgslsmith_f_op_f32(max(-959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1473f + -585f) + var_1.d.x))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zy), ~u_input.c.x)), u_input.c)).e.x;
    let var_4 = var_1.b.x;
    var var_5 = var_1.b.x;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) - -1000f));
    var_2 = u_input.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.b));
}

