struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-1550f, -1256f, -1820f, -685f), Struct_1(0u, false, vec3<f32>(1455f, -843f, 1855f), vec3<f32>(614f, 1842f, -1642f), 663f), 79762u);

var<private> global1: vec4<u32>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = global2.a;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(752f)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - -105f)), global2.a.x)), global2.b, 4294967295u);
    let var_1 = _wgslsmith_div_vec2_f32(global0.a.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, global2.a.x)), _wgslsmith_f_op_f32(-global2.b.e)))));
    let var_2 = -363f;
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(~global1.x & firstTrailingBit(10603u), 1u), global1.x);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> f32 {
    var var_0 = global2.b;
    global1 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65502u, global1.x, 105824u) << (vec4<u32>(1u, 0u, 0u, global2.c) % vec4<u32>(32u)), ~vec4<u32>(arg_1.a.a, global0.b.a, 1u, 72612u)), func_3(), global0.c & (global1.x | 30751u))), countOneBits(reverseBits(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(36650u, global2.c, arg_1.a.a, 11507u)), vec4<u32>(var_0.a, 1u, 54157u, global1.x) >> (vec4<u32>(arg_1.a.a, global1.x, global0.b.a, 1u) % vec4<u32>(32u))))));
    let var_1 = !select(vec3<bool>(false, !all(vec3<bool>(true, true, false)), (var_0.b && global2.b.b) & true), !vec3<bool>(!arg_1.b.b, global0.b.b, all(vec4<bool>(true, arg_1.b.b, arg_1.a.b, false))), true);
    let var_2 = Struct_1(4294967295u, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.b.d, _wgslsmith_f_op_vec3_f32(arg_1.a.c - var_0.c))) + vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(var_0.c.x)), select(var_1.x, var_1.x, global2.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f - -633f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1047f, arg_1.a.c.x)), global0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.xxw), _wgslsmith_f_op_vec3_f32(abs(global2.b.c))), _wgslsmith_f_op_vec3_f32(-global0.a.yxz), select(vec3<bool>(arg_1.b.b, true, false), select(var_1, var_1, global2.b.b), select(var_1, vec3<bool>(true, true, true), var_1)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.zzx)), arg_1.b.d, !select(var_1, var_1, true)))), 839f);
    let var_3 = _wgslsmith_div_i32(arg_1.c, _wgslsmith_add_i32(0i, -_wgslsmith_mod_i32(-22350i, arg_1.c)));
    return global0.b.e;
}

fn func_1() -> vec4<u32> {
    let var_0 = 0u;
    global2 = Struct_2(global2.a, global0.b, global1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, global2.a.x, global0.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))), Struct_1(22695u, true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b.c.x, _wgslsmith_f_op_f32(-global2.b.d.x), _wgslsmith_f_op_f32(func_2(Struct_5(-1i), Struct_4(global2.b, global0.b, -2147483647i)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, global2.a.x)), global0.b.d.x, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-global2.b.e)))), -149f), ~_wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(global0.c, 1u, global2.b.a, 9482u)), vec4<u32>(5242u, 76043u, 0u, global2.c) | vec4<u32>(65000u, global2.b.a, var_0, global1.x), true), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 1u, global2.c, 4294967295u), vec4<u32>(0u, 1u, 1057u, global1.x))));
    var var_2 = Struct_4(global2.b, Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(global1.xx), global1.zw), global0.b.b, vec3<f32>(_wgslsmith_f_op_f32(1611f * var_1.b.c.x), _wgslsmith_f_op_f32(1578f * var_1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-640f, global0.b.d.x, -496f), vec3<f32>(var_1.a.x, -1838f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1163f, -880f, global0.b.e))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global0.b.d, var_1.b.c, global0.b.b))))), -267f), 16990i);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, global2.a.x, -452f, var_2.a.e), vec4<f32>(global0.a.x, -1312f, 1061f, var_1.b.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.e, global0.b.c.x, 1000f, -2359f) - vec4<f32>(895f, 424f, 204f, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.d.x), -1027f, _wgslsmith_f_op_f32(-global0.a.x), -1245f)), !vec4<bool>(!var_2.b.b, global0.b.b, any(vec2<bool>(global2.b.b, false)), var_1.b.b))), var_1.b, ~var_1.c);
    return _wgslsmith_add_vec4_u32(max(~(~(~vec4<u32>(global1.x, 0u, 1u, 1u))), vec4<u32>(0u, select(reverseBits(0u), ~15087u, !var_1.b.b), (18133u ^ var_2.a.a) ^ ~global2.c, reverseBits(var_1.c ^ 1u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(~31823u, ~global0.c, ~58528u, ~1687u), ~vec4<u32>(global2.c, 23041u, var_0, 4267u), select(vec4<u32>(var_1.b.a, 60115u, var_2.a.a, var_0), abs(vec4<u32>(var_0, var_2.a.a, var_1.c, 37799u)), var_1.b.b) ^ vec4<u32>(4294967295u, ~global0.c, global2.c, 26947u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_1();
    var var_0 = vec4<i32>(u_input.a.x, -(select(min(u_input.a.x, 36264i), firstTrailingBit(-2147483647i), true) >> (func_3() % 32u)), max(max(1i, -17752i), abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, 1i), u_input.a.x, -32640i))), 26280i);
    global1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 24546u, global2.c, global0.b.a), abs(vec4<u32>(global1.x, 58726u, global1.x, 31232u))), _wgslsmith_div_vec4_u32(vec4<u32>(51745u, 0u, 0u, 52438u), vec4<u32>(46697u, global0.c, 1121u, 58187u)) << (~vec4<u32>(global0.b.a, 1u, 1u, 4294967295u) % vec4<u32>(32u))) >> (~max(~min(vec4<u32>(global1.x, global1.x, 946u, global2.c), vec4<u32>(0u, 1u, global1.x, global0.b.a)), vec4<u32>(43737u, global0.c, ~global1.x, ~global0.c)) % vec4<u32>(32u));
    let var_1 = Struct_4(Struct_1(global2.c >> (0u % 32u), global2.b.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(global0.a.zxx)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.d.x, 1063f, -197f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f) + _wgslsmith_f_op_f32(-global0.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 229f), _wgslsmith_f_op_f32(-global2.b.c.x)), Struct_1(countOneBits(_wgslsmith_add_u32(global1.x, 4294967295u)), all(!select(vec2<bool>(false, global2.b.b), vec2<bool>(global2.b.b, true), true)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.e), global2.a.x)), global2.b.c.x, global2.b.c.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.a.zzz - global0.b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.xww - vec3<f32>(733f, -676f, global2.a.x))))), global2.b.e), 9288i);
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-global2.a), global0.b, var_1.b.a & ~98877u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.x * global2.a.x)), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.a.e, -181f)), _wgslsmith_f_op_f32(global2.b.c.x - global2.b.c.x)))) * _wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.d.x, 684f, global2.b.e, 642f) + vec4<f32>(global2.a.x, global2.a.x, 667f, -225f)) - _wgslsmith_div_vec4_f32(global0.a, global0.a)), !vec4<bool>(global2.b.b, false, global0.b.b, global0.b.b)))), Struct_1(abs(global2.b.a), all(!(!vec2<bool>(true, global0.b.b))), _wgslsmith_f_op_vec3_f32(-global2.a.wzy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.e, 915f, -1221f), global2.a.wxy))), global0.b.d.x), 1u);
    global0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(-3315f, 522f)), global0.a.x, 242f, _wgslsmith_f_op_f32(f32(-1f) * -1508f)))), global2.a), var_1.a, ~_wgslsmith_add_u32(global1.x, 1u) & _wgslsmith_clamp_u32(countOneBits(~var_2.b.a), var_2.c, 13226u));
    var var_3 = !(_wgslsmith_f_op_f32(global0.a.x + -1246f) <= var_1.b.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.a << (var_2.b.a % 32u), ~4294967295u), global1.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-741f, global2.b.d.x)))), _wgslsmith_f_op_vec2_f32(min(global2.b.d.yy, _wgslsmith_f_op_vec2_f32(select(global0.a.zz, var_1.b.d.yz, true)))), ~var_2.b.a == global2.b.a))), select(_wgslsmith_sub_vec4_i32(reverseBits(~vec4<i32>(-1i, 0i, u_input.a.x, var_0.x)), vec4<i32>(2147483647i, var_0.x, 1i, -38712i) & (vec4<i32>(14045i, 0i, -27981i, -37601i) << (vec4<u32>(global1.x, var_1.a.a, global1.x, 71375u) % vec4<u32>(32u)))), -(vec4<i32>(var_0.x, -51298i, var_1.c, -8330i) & select(vec4<i32>(u_input.a.x, 36194i, 6020i, 38189i), vec4<i32>(2147483647i, -62113i, u_input.a.x, var_0.x), true)), any(vec4<bool>(false, all(vec4<bool>(true, true, false, false)), false, any(vec2<bool>(false, global0.b.b))))), abs(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(reverseBits(var_0.x), var_1.c))), ~_wgslsmith_add_u32(23972u, _wgslsmith_add_u32(~var_1.b.a, _wgslsmith_div_u32(14084u, global0.c))));
}

