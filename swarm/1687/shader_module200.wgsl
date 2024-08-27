struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<f32>(1950f, 251f, -1000f));

var<private> global1: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(14259i, 2147483647i, 1i), vec3<i32>(1i, 25451i, 0i), vec3<i32>(0i, -7041i, 1i), vec3<i32>(-17271i, 2147483647i, 2147483647i), vec3<i32>(-2298i, i32(-2147483648), 0i), vec3<i32>(33982i, -27181i, -1i), vec3<i32>(14766i, -41599i, 8524i), vec3<i32>(i32(-2147483648), -12810i, i32(-2147483648)), vec3<i32>(33608i, 14813i, 2147483647i), vec3<i32>(-29054i, 17142i, -25918i), vec3<i32>(-1i, 15774i, -1i), vec3<i32>(0i, i32(-2147483648), 10752i), vec3<i32>(56631i, 26893i, i32(-2147483648)), vec3<i32>(2147483647i, -17832i, 18643i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(8798i, -16366i, 1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> bool {
    let var_0 = countOneBits(abs(~firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 30949i, arg_1.e), u_input.b.yxy))));
    global1 = array<vec3<i32>, 16>();
    global1 = array<vec3<i32>, 16>();
    var var_1 = Struct_4(arg_1, Struct_1(vec3<bool>(2147483647i <= ~arg_1.e, false, select(true, global0.a.x, false) && true), _wgslsmith_f_op_vec3_f32(-arg_1.a.b)), Struct_2(true, arg_1.a), vec4<u32>(4294967295u, abs(_wgslsmith_div_u32(u_input.a.x ^ arg_0, ~u_input.a.x)), arg_0, _wgslsmith_dot_vec3_u32(select(u_input.a.zyy, vec3<u32>(u_input.a.x, 4294967295u, arg_0) | vec3<u32>(1u, 12440u, 0u), !arg_1.b), abs(u_input.a.yyz))), arg_1);
    var var_2 = Struct_2(all(!vec3<bool>(var_1.c.b.b.x > global0.b.x, any(vec2<bool>(false, true)), var_1.b.a.x)), var_1.b);
    return !var_1.a.b.x;
}

fn func_2() -> vec3<u32> {
    let var_0 = ~(~vec2<i32>(~(u_input.b.x << (6983u % 32u)), countOneBits(2147483647i & u_input.b.x)));
    var var_1 = Struct_3(Struct_1(vec3<bool>(global0.a.x, func_3(u_input.a.x << (u_input.a.x % 32u), Struct_3(Struct_1(global0.a, vec3<f32>(global0.b.x, global0.b.x, 730f)), vec3<bool>(global0.a.x, false, false), vec2<i32>(u_input.b.x, var_0.x), -457f, -1i)), true), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_f_op_f32(-165f - global0.b.x), global0.a.x && global0.a.x)))), global0.a, -abs(_wgslsmith_mult_vec2_i32(u_input.b.wx, _wgslsmith_mod_vec2_i32(u_input.b.wy, vec2<i32>(var_0.x, 11011i)))), _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(ceil(global0.b.x)))), 1i);
    var var_2 = Struct_3(Struct_1(var_1.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-881f, 324f, var_1.d) - vec3<f32>(global0.b.x, -116f, 514f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 208f, 575f) + vec3<f32>(global0.b.x, -1054f, var_1.a.b.x))))), select(vec3<bool>(u_input.a.x == 7896u, true, all(vec2<bool>(global0.a.x, true))), vec3<bool>(!var_1.b.x, all(global0.a), all(vec3<bool>(true, var_1.a.a.x, var_1.a.a.x))), all(!vec4<bool>(var_1.b.x, false, global0.a.x, true))), -_wgslsmith_add_vec2_i32(~vec2<i32>(-20804i, u_input.b.x), reverseBits(u_input.b.xz)), -1177f, -_wgslsmith_sub_i32(u_input.b.x, max(abs(var_0.x), -29152i)));
    var_2 = Struct_3(var_1.a, !var_2.b, u_input.b.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b.x - var_1.a.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -369f)))), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) << ((u_input.a.x >> ((_wgslsmith_dot_vec3_u32(u_input.a.wxz, vec3<u32>(34005u, u_input.a.x, 4294967295u)) >> (10140u % 32u)) % 32u)) % 32u));
    let var_3 = Struct_4(Struct_3(Struct_1(!vec3<bool>(var_2.a.a.x, true, global0.a.x), _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(-var_2.a.b))), vec3<bool>((global0.a.x & var_2.a.a.x) || true, true, all(var_1.b) | false), select(var_2.c, vec2<i32>(u_input.b.x, 34087i), vec2<bool>(false, global0.a.x)) ^ -u_input.b.ww, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)))), i32(-1i) * -2147483647i), Struct_1(vec3<bool>(global0.a.x, var_1.b.x, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 150f, 1222f)))), Struct_2(global0.a.x, Struct_1(!var_2.b, var_2.a.b)), u_input.a, Struct_3(var_2.a, !select(var_2.b, !global0.a, !vec3<bool>(false, global0.a.x, true)), ~u_input.b.wy >> (vec2<u32>(~u_input.a.x, u_input.a.x ^ u_input.a.x) % vec2<u32>(32u)), global0.b.x, var_0.x));
    return vec3<u32>(~reverseBits(~u_input.a.x) | u_input.a.x, _wgslsmith_dot_vec4_u32(select(min(vec4<u32>(27791u, 4294967295u, 0u, u_input.a.x) >> (vec4<u32>(var_3.d.x, u_input.a.x, var_3.d.x, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, var_3.d.x, var_3.d.x, var_3.d.x)), u_input.a, var_2.a.a.x), vec4<u32>(reverseBits(var_3.d.x), ~(~107492u), _wgslsmith_mult_u32(~4294967295u, ~16156u), ~1u)), u_input.a.x);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.xxz;
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, ~(~(var_0.x | 1u))), select(u_input.a.yxw, func_2(), global0.a.x));
    var var_1 = Struct_2(all(vec3<bool>(true, false, ~0i == select(u_input.b.x, u_input.b.x, false))), Struct_1(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, global0.b.x, 444f))), global0.b)));
    let var_2 = Struct_3(Struct_1(!vec3<bool>(var_1.b.b.x == global0.b.x, true, var_1.b.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.b), var_1.b.b) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1787f, global0.b.x, var_1.b.b.x))))), vec3<bool>(true, !(global0.a.x || true) || (firstTrailingBit(u_input.b.x) != _wgslsmith_dot_vec3_i32(vec3<i32>(-33737i, -2147483647i, 1i), vec3<i32>(u_input.b.x, -1i, 5480i))), func_3(var_0.x, Struct_3(Struct_1(vec3<bool>(false, true, var_1.b.a.x), vec3<f32>(var_1.b.b.x, 1753f, -680f)), select(var_1.b.a, global0.a, vec3<bool>(true, global0.a.x, false)), u_input.b.wx, _wgslsmith_f_op_f32(global0.b.x + var_1.b.b.x), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)))), ~((vec2<i32>(-1i) * -u_input.b.xz) | vec2<i32>(~u_input.b.x, -1i)), var_1.b.b.x, -2147483647i);
    var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ 48564u, ~1u, 69850u), func_2().x), _wgslsmith_sub_u32(var_0.x, ~5852u), select(countOneBits(_wgslsmith_div_u32(0u, 18455u)) ^ var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(57181u, ~1u, _wgslsmith_sub_u32(var_0.x, 15708u)), vec3<u32>(firstTrailingBit(9156u), 0u, ~1u)), global0.a.x));
    return Struct_2(!var_2.b.x, Struct_1(vec3<bool>(true, all(select(var_2.b.xz, vec2<bool>(true, var_1.a), var_2.a.a.x)), func_3(~var_0.x, Struct_3(var_1.b, vec3<bool>(false, true, var_2.a.a.x), vec2<i32>(u_input.b.x, 0i), -612f, -2147483647i))), _wgslsmith_f_op_vec3_f32(sign(var_1.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 16>();
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-global0.b);
    global1 = array<vec3<i32>, 16>();
    var var_2 = func_1();
    var_1 = var_2.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -814f), vec4<f32>(-845f, 193f, 1413f, var_2.b.b.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * -1078f), _wgslsmith_f_op_f32(-var_1.x), -868f, var_1.x))), vec3<u32>(u_input.a.x, ~(~35795u), firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(2505f)), global0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-699f, -519f))))));
}

