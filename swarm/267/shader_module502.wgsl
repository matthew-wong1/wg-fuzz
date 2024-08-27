struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(1u, 1u, 79921u, 4294967295u), vec4<u32>(50777u, 10853u, 44842u, 62585u), vec4<u32>(26592u, 32391u, 4294967295u, 0u));

var<private> global3: Struct_5 = Struct_5(vec2<f32>(-1575f, 1202f));

var<private> global4: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(32959u, 0u), vec2<u32>(0u, 10535u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 30389u), vec2<u32>(4294967295u, 13107u), vec2<u32>(0u, 62666u), vec2<u32>(0u, 1u), vec2<u32>(0u, 41342u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23851u, 69585u), vec2<u32>(105486u, 60144u), vec2<u32>(30215u, 28185u), vec2<u32>(62004u, 7154u), vec2<u32>(95270u, 27404u), vec2<u32>(4294967295u, 4682u), vec2<u32>(109096u, 0u), vec2<u32>(1u, 94159u), vec2<u32>(28819u, 1u), vec2<u32>(0u, 17305u), vec2<u32>(1u, 13161u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = global0.x;
    global2 = array<vec4<u32>, 3>();
    global4 = array<vec2<u32>, 23>();
    global4 = array<vec2<u32>, 23>();
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.c.zyz, u_input.c.zyw), abs(u_input.d.x) << (_wgslsmith_div_u32(101353u, u_input.a) % 32u)), _wgslsmith_clamp_u32(u_input.d.x << (~1u % 32u), _wgslsmith_sub_u32(48170u >> (u_input.a % 32u), ~94590u), u_input.d.x >> (1u % 32u))), _wgslsmith_div_f32(-461f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x * -192f) + arg_3.x), _wgslsmith_f_op_f32(-494f - arg_2.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-7049i, 0i, arg_0, 25897i), vec4<i32>(-1i, arg_0, u_input.e.x, arg_0) >> (vec4<u32>(u_input.c.x, 0u, u_input.a, 72846u) % vec4<u32>(32u))), global0.x), _wgslsmith_add_vec3_i32((vec3<i32>(-2147483647i, u_input.b.x, 2021i) | vec3<i32>(1i, -67075i, global0.x)) | -vec3<i32>(-33007i, u_input.e.x, u_input.e.x), _wgslsmith_add_vec3_i32(vec3<i32>(28i, -2147483647i, -1i) >> (u_input.c.zxx % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global0.x, -1i), vec3<i32>(6468i, u_input.e.x, arg_0))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))))))), _wgslsmith_f_op_f32(1000f + -1274f));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(2147483647i, arg_1.xxw, vec4<f32>(662f, global3.a.x, 552f, -196f), global3.a)) - _wgslsmith_f_op_f32(f32(-1f) * -1082f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.x)))))));
    let var_1 = 8710i;
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(27162u, 35610u), arg_0, select(_wgslsmith_mult_u32(arg_0, 4294967295u), ~30963u, true)), 1u), var_0.a, abs(vec3<i32>(0i >> (1u % 32u), global0.x, global0.x)) ^ vec3<i32>(global0.x, _wgslsmith_add_i32(min(global0.x, var_1), ~(-23839i)), -53319i));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, var_2.b, 677f)));
    global3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f * -553f)), any(select(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, 661f, global3.a.x, var_3.x))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.x, arg_1.zyx, vec4<f32>(760f, 1274f, 181f, var_3.x), var_3.xx)) * _wgslsmith_f_op_f32(step(-659f, var_3.x))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f + global3.a.x)), _wgslsmith_f_op_f32(-1723f * _wgslsmith_f_op_f32(var_0.a - var_3.x)))), vec3<u32>(arg_0, ~abs(~arg_0), 1u), Struct_1(~u_input.c.yw, var_2.b, var_2.c));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    global2 = array<vec4<u32>, 3>();
    global4 = array<vec2<u32>, 23>();
    let var_0 = arg_0.a.a.yx;
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1041f, global3.a.x) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(124f, -122f)))));
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<u32>, 3>();
    global3 = func_4(Struct_4(func_2(~u_input.c.x, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), -1305f, Struct_3(-188f), vec2<bool>(true, true)), false);
    global2 = array<vec4<u32>, 3>();
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.e, u_input.b);
    var var_1 = select(func_2(~abs(4294967295u) & u_input.c.x, vec4<bool>(true, true, true, true)).c.c.x, global0.x, false);
    return func_2(~(~(~(~u_input.c.x))), vec4<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)), global0.x > global0.x, select(true, true, false)));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.a.a.xwx);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(~u_input.b.x), firstTrailingBit(_wgslsmith_mod_i32(0i, arg_1.a.c.c.x << (u_input.d.x % 32u))), arg_1.a.c.c.x), vec3<i32>(_wgslsmith_div_i32(max(global0.x, -2147483647i) >> (~u_input.c.x % 32u), (arg_1.a.c.c.x ^ u_input.b.x) | _wgslsmith_sub_i32(0i, -17447i)), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(u_input.b.x >> (u_input.d.x % 32u), ~23153i)), _wgslsmith_sub_i32(-14168i, u_input.b.x >> (4294967295u % 32u)) & arg_1.a.c.c.x));
    var var_2 = Struct_3(arg_0);
    var var_3 = u_input.c;
    var var_4 = func_4(Struct_4(func_2(~(~arg_1.a.c.a.x), vec4<bool>(arg_1.d.x && arg_1.d.x, all(vec2<bool>(arg_1.d.x, arg_1.d.x)), arg_1.d.x, true)), var_2.a, Struct_3(_wgslsmith_f_op_f32(floor(1093f))), !arg_1.d), true);
    return StorageBuffer(arg_1.a.b, ~(~(~var_3.yy) | vec2<u32>(countOneBits(arg_1.a.b.x), 0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.a.a.yz)) - func_2(1u & u_input.c.x, !vec4<bool>(arg_1.d.x, true, false, arg_1.d.x)).a.xx) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_4.a.x)), -1077f), global3.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-689f, -373f), func_2(_wgslsmith_sub_u32(firstTrailingBit(var_3.x), min(var_3.x, u_input.a)), select(!vec4<bool>(false, arg_1.d.x, arg_1.d.x, false), !vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, true), arg_1.d.x & false)).a.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.wzy;
    let var_1 = Struct_3(-258f);
    global3 = Struct_5(vec2<f32>(var_1.a, 249f));
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(643f, global3.a.x, -411f, var_1.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2264f, var_1.a, 613f, var_1.a) * vec4<f32>(var_1.a, var_1.a, var_1.a, global3.a.x))))))));
    let x = u_input.a;
    s_output = func_5(1302f, Struct_4(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-581f + -1878f)) * var_1.a), Struct_3(_wgslsmith_f_op_f32(min(global3.a.x, _wgslsmith_f_op_f32(-var_3.x)))), !vec2<bool>(any(vec3<bool>(true, false, false)), true)));
}

