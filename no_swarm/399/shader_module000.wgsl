struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_1(!vec2<bool>(!select(false, false, true), true), vec3<bool>(true, true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(42889u, u_input.e.x, u_input.d, u_input.d), vec4<u32>(0u, 40907u, u_input.c.x, u_input.d)) == 4294967295u)), u_input.b, _wgslsmith_div_i32(_wgslsmith_mod_i32(~arg_0.x, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(0i, u_input.b))), (~arg_0.x >> (min(u_input.c.x, u_input.e.x) % 32u)) << (~0u % 32u)));
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(4294967295u, 0u, ~u_input.a.x, 44000u)), vec4<u32>(abs(~(u_input.e.x | 81339u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 22656u), vec4<u32>(u_input.c.x, 4294967295u, 25443u, u_input.c.x)) & abs(0u), firstTrailingBit(1u), ~19768u), 1u, select(_wgslsmith_mod_u32(5987u, ~25465u), u_input.e.x, var_0.a.x)));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(u_input.c.x), 5870u, 0u >> (~u_input.e.x % 32u)), 14830u) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.a, u_input.a) << (abs(vec4<u32>(var_1.x, u_input.c.x, u_input.a.x, var_1.x)) % vec4<u32>(32u))), u_input.a & _wgslsmith_mult_vec4_u32(countOneBits(u_input.c), u_input.c)) % 32u);
    let var_3 = !(!select(vec4<bool>(var_0.b.x && false, var_0.a.x, var_0.a.x, !var_0.b.x), select(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.b.x, true, var_0.a.x), !vec4<bool>(var_0.b.x, var_0.b.x, true, false)), !(u_input.b < arg_0.x)));
    var_1 = select(~select(~vec4<u32>(1u, 0u, 4294967295u, 2751u), u_input.c, var_3), _wgslsmith_mult_vec4_u32(~u_input.c, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zwz, var_1.xzx), abs(0u), max(15731u, 96918u), 1u)), true) & u_input.a;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(u_input.a.x), ~(~_wgslsmith_sub_u32(19457u, 0u)), _wgslsmith_add_u32(u_input.e.x, ~12193u), var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 31715u, 1u, u_input.d), ~(~u_input.c & ~u_input.a)), u_input.c);
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<i32>, 13>();
    var var_0 = u_input.a.x;
    var_0 = abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, u_input.e.x, 27897u, u_input.a.x)) >> (func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(-3130i, 0i), vec2<i32>(2147483647i, -2147483647i), vec2<i32>(21441i, u_input.b))) % vec4<u32>(32u)), select(~u_input.a, u_input.c, all(vec2<bool>(true, true)))));
    var var_1 = true;
    let var_2 = Struct_2(vec4<bool>(true, !(~u_input.e.x == ~u_input.d), true, !select(true, true, any(vec3<bool>(false, false, false)))), 1499f, 530f);
    return Struct_2(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2205f * -103f), _wgslsmith_f_op_f32(var_2.b - var_2.b)))), _wgslsmith_f_op_f32(sign(var_2.c)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec3<i32>, 13>();
    let var_0 = ~(~vec4<u32>(u_input.c.x, 118444u ^ (1u ^ u_input.a.x), 1u, 30369u));
    var var_1 = Struct_1(!(!select(!vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.zz)), vec3<bool>(false, true, !arg_0.a.x), max(2147483647i, -654i), i32(-1i) * -30989i);
    global0 = array<vec3<i32>, 13>();
    let var_2 = vec3<u32>(0u, ~select(abs(4294967295u), ~firstTrailingBit(u_input.c.x), all(!vec3<bool>(false, false, arg_0.a.x))), 83278u);
    return func_2();
}

fn func_1() -> vec4<bool> {
    let var_0 = func_4(func_2());
    global0 = array<vec3<i32>, 13>();
    var var_1 = _wgslsmith_clamp_i32(~(~(abs(-14359i) & (-30413i & u_input.b))), -2147483647i, -20154i);
    var_1 = -21256i >> (~abs(u_input.e.x) % 32u);
    let var_2 = Struct_1(vec2<bool>(var_0.a.x, !(all(vec3<bool>(true, var_0.a.x, false)) & var_0.a.x)), select(func_4(var_0).a.zwy, var_0.a.yyx, all(func_2().a.wz) == !var_0.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), reverseBits(vec4<i32>(u_input.b, u_input.b, 4461i, u_input.b))), reverseBits(vec4<i32>(abs(u_input.b), u_input.b, u_input.b, reverseBits(-52913i)))), u_input.b);
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec3<i32>, 13>();
    let var_0 = u_input.b;
    return Struct_1(arg_1.a.xz, arg_1.a.yxz, _wgslsmith_mult_i32(u_input.b, -2147483647i), min((abs(var_0) | ~1i) | 0i, min(firstTrailingBit(i32(-1i) * -2147483647i), firstTrailingBit(_wgslsmith_clamp_i32(var_0, u_input.b, 1i)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = -1761f;
    global0 = array<vec3<i32>, 13>();
    global0 = array<vec3<i32>, 13>();
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(1i, u_input.b) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), vec2<i32>(2147483647i, arg_0.c) ^ vec2<i32>(-2147483647i, 2147483647i)), select(select(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c, 2147483647i), vec2<i32>(1i, arg_0.d)), vec2<i32>(arg_0.c, arg_0.d), arg_0.a), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.b, arg_0.d), vec2<i32>(u_input.b, -6623i)), !func_1().wx)));
    global0 = array<vec3<i32>, 13>();
    return !func_4(Struct_2(select(!vec4<bool>(true, true, arg_0.a.x, arg_0.b.x), !vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.a.x), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x)), 323f, arg_2.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 13>();
    let var_0 = Struct_2(func_6(func_5(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), Struct_2(func_1(), -166f, -1459f)), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(f32(-1f) * -700f)), 577f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_f32(-1185f + _wgslsmith_f_op_f32(round(-136f)))), -569f, any(vec2<bool>(func_2().a.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(356f)) * _wgslsmith_f_op_f32(f32(-1f) * -2212f)));
    global0 = array<vec3<i32>, 13>();
    var var_1 = Struct_1(!var_0.a.wz, var_0.a.wxw, _wgslsmith_clamp_i32(-_wgslsmith_add_i32(~0i, abs(u_input.b)), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(19792i, -1i, 8509i), u_input.b), min(-2147483647i, -1i)), 0i);
    global0 = array<vec3<i32>, 13>();
    let var_2 = u_input.c.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

