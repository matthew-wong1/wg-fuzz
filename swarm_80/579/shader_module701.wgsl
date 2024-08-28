struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, false), Struct_1(1000f, -10337i, vec4<f32>(414f, -1852f, 202f, -763f)), false, i32(-2147483648), Struct_1(-321f, -1i, vec4<f32>(723f, 943f, 179f, -738f)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(global0.a, arg_0, all(vec4<bool>(!all(global0.a), true, false, any(vec4<bool>(false, false, true, global0.a.x)))), -30914i, global0.e);
    global0 = var_0;
    global0 = var_0;
    let var_1 = u_input.b & vec3<u32>(min(~u_input.b.x, ~15759u) & 18601u, u_input.b.x, firstTrailingBit(~4294967295u));
    var var_2 = Struct_1(arg_0.c.x, global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_0.b.c, global0.b.c))))) - vec4<f32>(global0.e.a, arg_0.c.x, -415f, -329f)));
    return ~(~_wgslsmith_add_i32(~10251i, -19741i ^ arg_0.b));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = Struct_2(global0.a, Struct_1(arg_0.x, -2147483647i, arg_0), !(!select(all(vec4<bool>(false, false, global0.c, global0.c)), true, true)), 39240i, arg_1);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1570f + arg_1.a)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_1.b, 925i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(global0.e.b, u_input.a, u_input.a), vec3<i32>(global0.d, global0.e.b, global0.b.b)), ~(~vec3<i32>(arg_1.b, 1i, 1i))), -1i & func_3(Struct_1(arg_0.x, global0.b.b, vec4<f32>(arg_1.c.x, global0.b.a, global0.e.c.x, arg_1.a))), true), arg_0);
    let var_1 = var_0;
    global0 = Struct_2(vec3<bool>(true, true, false), Struct_1(_wgslsmith_f_op_f32(-109f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f + arg_0.x) + 1000f)), min(_wgslsmith_add_i32(global0.d, _wgslsmith_add_i32(var_1.b, var_1.b)), reverseBits(_wgslsmith_sub_i32(var_1.b, var_1.b))), arg_1.c), !(global0.a.x || true) & (_wgslsmith_clamp_u32(reverseBits(u_input.b.x), 10045u, countOneBits(13254u)) == 0u), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -1i), -arg_1.b), arg_1);
    global0 = Struct_2(global0.a, global0.e, _wgslsmith_f_op_f32(floor(arg_1.c.x)) < var_0.a, countOneBits(24550i), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1076f, var_0.a)), 1301f)))), select(_wgslsmith_mod_i32(abs(global0.d), _wgslsmith_sub_i32(-2147483647i, var_1.b)), 1i, _wgslsmith_mod_i32(var_0.b, global0.d) < ~global0.b.b), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * var_0.a) - var_1.c.x), -1096f, _wgslsmith_f_op_f32(ceil(arg_0.x)))));
    return Struct_2(select(global0.a, select(!(!global0.a), vec3<bool>(true, true, global0.c), global0.a), vec3<bool>(!global0.c, !global0.a.x, true)), var_1, global0.c, 1i, var_1);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.e.c.x, 193f, -288f, -407f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.c.x, -1381f, global0.e.c.x, 1253f), global0.b.c)))) * global0.e.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-763f)), arg_1.b.a, _wgslsmith_f_op_f32(-arg_1.e.a), _wgslsmith_f_op_f32(274f + -1000f)))), func_2(_wgslsmith_f_op_vec4_f32(-arg_1.e.c), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1928f, -762f, 741f, global0.b.c.x)), func_2(_wgslsmith_f_op_vec4_f32(select(global0.b.c, global0.e.c, global0.a.x)), global0.e).e).b).e);
    var var_0 = select(vec2<u32>(1u << (u_input.b.x % 32u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5838u, arg_0.x, u_input.b.x, u_input.b.x), vec4<u32>(arg_0.x, u_input.b.x, 1u, 39612u)), ~vec4<u32>(21399u, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_mult_vec2_u32(u_input.b.yz, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.x), ~u_input.b.xy), _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.x, 16600u), 0u, ~158791u))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, -276f, -789f, arg_1.b.c.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-227f, global0.b.a, 201f, arg_1.b.c.x))))), func_2(vec4<f32>(-304f, 946f, 1f, _wgslsmith_f_op_f32(floor(152f))), func_2(_wgslsmith_f_op_vec4_f32(global0.b.c - arg_1.e.c), arg_1.e).b).b).c);
    let var_1 = true;
    let var_2 = !(-abs(0i) != select(-12362i, min(global0.b.b, u_input.a), var_0.x > 23720u));
    let var_3 = _wgslsmith_mult_i32((max(0i, reverseBits(arg_1.d)) | -18446i) >> (min(u_input.b.x, 57267u) % 32u), u_input.a);
    return global0.e;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    global0 = arg_2;
    let var_0 = arg_2.c;
    let var_1 = ~reverseBits(vec2<u32>(0u, ~(~u_input.b.x)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -1376f);
    let var_3 = -global0.b.b;
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    let var_0 = vec2<bool>(true, arg_3);
    let var_1 = func_5(Struct_1(global0.b.c.x, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.x, global0.e.b) ^ _wgslsmith_clamp_i32(30435i, global0.e.b, arg_2.x), global0.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global0.b.c.x, 258f, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.c.x, -952f, -511f, 1580f) * global0.b.c) - global0.e.c), select(!vec4<bool>(false, false, arg_3, true), !vec4<bool>(false, false, true, arg_3), true)))), arg_1, Struct_2(!select(select(global0.a, global0.a, global0.a), vec3<bool>(global0.c, global0.a.x, arg_3), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(var_0.x, true, arg_3), false)), global0.b, false, ~firstTrailingBit(arg_2.x), func_4(~(~u_input.b.xz), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, arg_1, -1331f, arg_1) + vec4<f32>(226f, arg_1, global0.e.a, arg_1)), global0.e))));
    global0 = var_1;
    let var_2 = global0.b;
    let var_3 = 2805f;
    return 32763u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec4<bool>(all(vec3<bool>(global0.c, false, global0.a.x)), !(global0.b.b == u_input.a), global0.a.x, true)), (select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 75696i), vec2<i32>(0i, global0.b.b)), ~1i, u_input.b.x >= u_input.b.x) > -_wgslsmith_sub_i32(28199i, 14223i)) || !global0.a.x, !any(!(!global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(reverseBits(1u), func_1(true, -399f, vec4<i32>(2147483647i, 590i, global0.d, 32222i), var_0.x), _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.zy)) & vec3<u32>(~_wgslsmith_div_u32(1u, u_input.b.x), select(~u_input.b.x, ~u_input.b.x, !global0.a.x), ~4294967295u), vec2<u32>(firstTrailingBit(45618u), ~(~abs(19641u))), _wgslsmith_f_op_vec3_f32(global0.b.c.yyz - func_5(Struct_1(_wgslsmith_f_op_f32(-global0.e.c.x), 0i, global0.e.c), _wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.b.x, 4294967295u), Struct_2(vec3<bool>(var_0.x, true, false), Struct_1(-2781f, u_input.a, global0.b.c), true, -1i, Struct_1(804f, u_input.a, vec4<f32>(global0.e.c.x, global0.b.a, 391f, -419f)))).c.x * global0.e.a), func_5(func_2(vec4<f32>(470f, global0.e.a, -629f, global0.e.c.x), Struct_1(global0.b.a, global0.d, global0.b.c)).e, _wgslsmith_f_op_f32(-923f + global0.b.a), Struct_2(global0.a, global0.e, true, -2147483647i, global0.b))).e.c.yyw));
}

