struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_3;

var<private> global2: i32 = -8182i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, -1i)), vec2<i32>(i32(-1i) * -24241i, ~(-18072i))), u_input.a, 90741i);
    global1 = Struct_3(false, ~abs(_wgslsmith_add_vec3_u32(~global1.b, global1.b)));
    let var_1 = Struct_1(true, _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, firstTrailingBit(var_0.x)), 11382i), _wgslsmith_f_op_f32(1652f + arg_0), reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-64759i, var_0.x, 37560i, 105045i), ~vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(1463f * -182f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, -279f))))));
    global2 = var_1.d;
    var var_2 = -(~_wgslsmith_mult_i32(u_input.a, -2147483647i) ^ -47160i) ^ u_input.a;
    return ~(global1.b ^ countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 1u, 55510u), global1.b)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global2 = -16649i;
    global1 = Struct_3(!(!(!arg_0.a) != any(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(global1.a, false, global1.a), vec3<bool>(arg_0.a, arg_0.a, false)))), (firstTrailingBit(~vec3<u32>(4294967295u, 1u, global1.b.x)) & func_3(_wgslsmith_f_op_f32(-arg_0.c))) >> (global1.b % vec3<u32>(32u)));
    let var_0 = global1.b.x;
    var var_1 = u_input.b;
    return Struct_2(true, vec3<i32>(u_input.a, u_input.a, -11122i));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_add_u32(u_input.d, ~1u) != _wgslsmith_dot_vec4_u32(abs(max(countOneBits(vec4<u32>(global1.b.x, 38267u, 27558u, 10539u)), ~vec4<u32>(global1.b.x, 0u, global1.b.x, u_input.d))), select(_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, 83330u, global1.b.x, 59235u), vec4<u32>(1u, u_input.c, 4294967295u, 1u)), vec4<u32>(global1.b.x, 1u, global1.b.x, global1.b.x), !vec4<bool>(false, arg_0.a, arg_0.a, global1.a)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, 7561u, global1.b.x, 4294967295u), vec4<u32>(29559u, global1.b.x, 26768u, global1.b.x) ^ vec4<u32>(11780u, 2811u, global1.b.x, 0u)));
    global0 = abs(arg_0.b.x);
    var var_1 = ~global1.b.xy;
    let var_2 = firstTrailingBit(-abs(arg_0.b.x | arg_0.b.x)) << (4294967295u % 32u);
    let var_3 = Struct_1(!(var_0 || false), 36341i, 793f, max(arg_0.b.x, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, arg_1)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(560f, 1000f), vec2<f32>(-1626f, -1327f)))))));
    return Struct_4(countOneBits(4294967295u ^ abs(~global1.b.x)), Struct_1(var_0, -1i, _wgslsmith_f_op_f32(-var_3.c), func_2(Struct_1(var_0, -35247i, _wgslsmith_f_op_f32(arg_1 * arg_1), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1351f, 154f)))).b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.e.x, arg_1), vec2<f32>(462f, 1000f))) + _wgslsmith_f_op_vec2_f32(-var_3.e))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32) -> bool {
    let var_0 = ~arg_1.x;
    global1 = Struct_3(4294967295u < u_input.b, max(vec3<u32>(arg_1.x, u_input.d, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, u_input.d), var_0, global1.b.x ^ var_0), countOneBits(vec3<u32>(arg_2, 46060u, 4781u)))));
    var var_1 = func_4(func_2(Struct_1(!(global1.a != global1.a), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f - -727f)), 13824i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1569f, -294f) + vec2<f32>(131f, -1000f))))), 1618f);
    let var_2 = select(_wgslsmith_clamp_u32(arg_2, ~abs(u_input.b), min(abs(max(var_0, 26380u)), ~(~var_1.a))), arg_1.x, false);
    var var_3 = any(!vec4<bool>(global1.a, true, !any(vec2<bool>(false, var_1.b.a)), var_1.b.a & !var_1.b.a));
    return select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(753f - var_1.b.e.x), 120f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.b.e.x, var_1.b.e.x)), var_1.b.c, u_input.a >= u_input.a)) - _wgslsmith_f_op_f32(-var_1.b.c)), !(global1.a && (_wgslsmith_div_i32(var_1.b.d, var_1.b.d) == u_input.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<i32>(max(u_input.a, 1i), -u_input.a, 25005i, 2147483647i), global1.b, u_input.c);
    global2 = u_input.a;
    let var_1 = global1.b;
    var var_2 = Struct_1(false, 5677i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1674f)), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-424f, -1052f) * vec2<f32>(841f, -1244f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1078f, -1965f) * vec2<f32>(-164f, 1200f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1719f, -866f), vec2<f32>(-542f, 1340f), vec2<bool>(global1.a, true)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1475f), -855f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2183f, 1424f), vec2<f32>(1637f, -1281f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(213f, 179f)))))));
    var var_3 = Struct_4((_wgslsmith_dot_vec2_u32(vec2<u32>(9654u, u_input.d), reverseBits(var_1.yx)) ^ (90815u & func_3(188f).x)) ^ (~var_1.x | ~(~u_input.b)), func_4(func_2(func_4(func_2(Struct_1(false, var_2.d, 811f, var_2.d, vec2<f32>(var_2.e.x, var_2.e.x))), -1145f).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e.x))))).b);
    var_2 = func_4(Struct_2(!(!var_3.b.a & func_2(var_3.b).a), vec3<i32>(countOneBits(_wgslsmith_div_i32(0i, -15893i)), -1i, 6954i)), _wgslsmith_f_op_f32(exp2(var_2.c))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(774f - var_2.c) - _wgslsmith_f_op_f32(f32(-1f) * -486f)))), var_3.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) - 1553f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) - _wgslsmith_div_f32(var_3.b.c, var_2.c))), -countOneBits(-(vec4<i32>(u_input.a, var_3.b.d, u_input.a, var_2.d) ^ vec4<i32>(10111i, 27728i, -1i, -66432i))), 2147483647i, -412f, vec2<i32>(var_2.d, 2147483647i));
}

