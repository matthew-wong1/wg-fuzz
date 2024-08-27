struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -1759f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b << (u_input.b % 32u), max(~firstLeadingBit(u_input.a.x), 1u)), vec2<u32>(u_input.a.x, u_input.a.x));
    global1 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.c)), _wgslsmith_div_f32(-527f, global0.a))), global0.a, false)))));
    var var_1 = ~_wgslsmith_mod_vec3_i32(-(~vec3<i32>(-2147483647i, 1903i, 2036i)), vec3<i32>(abs(1i), -_wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -52991i), -vec2<i32>(-4322i, 3638i))));
    return -535f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(-617f)), 599f, _wgslsmith_div_f32(global0.a, global0.c), _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a, -540f, global0.c, global0.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -921f, _wgslsmith_f_op_f32(floor(763f)), -470f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global0.c, global0.c, global0.c), _wgslsmith_div_vec4_f32(vec4<f32>(-871f, global0.a, -209f, global0.c), vec4<f32>(-2074f, global0.a, global0.a, 946f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c, 1000f, 2684f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(-261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.c))))))));
    var var_1 = u_input.b;
    var var_2 = vec2<i32>(abs(_wgslsmith_dot_vec3_i32(max(vec3<i32>(8382i, -2147483647i, -1i), vec3<i32>(1i, 2147483647i, -1i)) & (vec3<i32>(1i, -49403i, 2147483647i) >> (vec3<u32>(u_input.b, 12120u, u_input.a.x) % vec3<u32>(32u))), -vec3<i32>(2147483647i, 19258i, -2147483647i))), ~(-1i) >> (u_input.a.x % 32u));
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, var_2.x, 0i), ~vec3<i32>(2147483647i, var_2.x, var_2.x) << (~vec3<u32>(19147u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) & select(1i << (abs(u_input.b) % 32u), 1i, true));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(global0.c * 875f))))), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f * 769f) + -530f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = 447f;
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-98890i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.x, arg_1.x, 0i), vec4<i32>(arg_1.x, 0i, arg_1.x, 59836i)))), arg_1.x) & _wgslsmith_dot_vec3_i32(arg_1, arg_1);
    var var_1 = vec2<bool>(all(!(!select(vec4<bool>(arg_0.b, global0.b, arg_2.b, arg_0.b), vec4<bool>(arg_2.b, arg_0.b, arg_2.b, arg_2.b), global0.b))), !global0.b);
    let var_2 = max(-1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_0, arg_1.x & var_0, abs(-6045i), ~arg_1.x), ~select(vec4<i32>(var_0, var_0, 3021i, -2147483647i), vec4<i32>(arg_1.x, arg_1.x, var_0, var_0), vec4<bool>(arg_2.b, arg_0.b, arg_0.b, true)))));
    global0 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - -342f)))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + arg_2.a))), 1f)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global0.c)), -389f, var_1.a, 173f);
    var_1 = arg_2;
    let var_3 = arg_1.yyw;
    return func_4(Struct_1(var_1.a, any(select(select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(false, true, true), var_1.b), select(vec3<bool>(false, true, global0.b), vec3<bool>(true, true, global0.b), vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_f32(func_4(Struct_1(211f, false, -1552f), var_3, arg_2).c + var_1.a)), min(arg_1.xyz, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-6520i, -15447i, 0i), arg_1.yzw), countOneBits(-var_3), arg_1.zwx & (vec3<i32>(arg_1.x, arg_1.x, -2147483647i) << (u_input.a.zzz % vec3<u32>(32u))))), func_2());
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global0 = func_5(func_4(func_2(), -max(vec3<i32>(-2147483647i, -2147483647i, -8312i), vec3<i32>(37737i, 804i, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), !(global0.a > 1407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-929f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(min(-8402i << (1u % 32u), countOneBits(15382i)), 1i, countOneBits(1i), 1748i), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-25037i, 48432i), 1i, _wgslsmith_mod_i32(-5047i, 340i), _wgslsmith_clamp_i32(0i, 33829i, -35205i)), reverseBits(vec4<i32>(-17870i, -2147483647i, 1i, -7942i)))), func_4(func_4(Struct_1(_wgslsmith_f_op_f32(global0.a + -210f), true, _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 6144i, -9640i) >> (u_input.a.wzy % vec3<u32>(32u)), vec3<i32>(0i, -26629i, 17213i), vec3<i32>(22931i, -42631i, -1i)), Struct_1(-874f, true, -362f)), vec3<i32>(-9725i, _wgslsmith_div_i32(i32(-1i) * -1i, -2147483647i >> (u_input.a.x % 32u)), reverseBits(1i)), func_2()));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(abs(global0.c)))), global0.b, _wgslsmith_f_op_f32(378f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1100f) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(global0.a))))));
    let var_0 = Struct_1(1f, true, _wgslsmith_f_op_f32(func_5(func_2(), abs(vec4<i32>(1i, -15431i, 1i, -1i)) ^ select(vec4<i32>(15807i, 0i, -35804i, -41144i), vec4<i32>(18610i, 1i, 1i, 42613i), vec4<bool>(true, arg_0.x, false, true)), func_2()).a + 1459f));
    let var_1 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + -1000f), _wgslsmith_f_op_f32(var_0.c * var_0.a)), !(!all(vec4<bool>(true, global0.b, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-641f, _wgslsmith_f_op_f32(-var_0.a)))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-56826i, 10211i, -10162i)), vec3<i32>(-34583i, ~87186i, 1i)), var_0);
    global0 = Struct_1(-711f, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-12486i, 2147483647i, 2147483647i, 10820i), ~vec4<i32>(36583i, -1i, -39472i, 2147483647i)) < _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, -1i), _wgslsmith_sub_i32(-50833i, -27227i)), vec2<i32>(1i, countOneBits(2147483647i))), global0.c);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(1u, 8063u), 1u, _wgslsmith_sub_u32(min(~u_input.b, ~7674u), 1u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, ~4294967295u, u_input.b, ~41314u), ~(~vec4<u32>(u_input.b, 70722u, 12606u, u_input.b))), firstLeadingBit(~vec4<u32>(4294967295u, u_input.b, 19547u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(-global0.a)))))));
    var var_0 = false;
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a * global0.c), _wgslsmith_f_op_f32(-global0.a)));
    let var_1 = vec2<bool>(false, true);
    global0 = Struct_1(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -284f))), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(1374f + -748f))), -1387f)));
    let var_2 = select(select(!(!(!vec4<bool>(var_1.x, true, false, false))), !select(vec4<bool>(global0.b, global0.b, true, var_1.x), select(vec4<bool>(global0.b, false, var_1.x, var_1.x), vec4<bool>(true, false, true, var_1.x), true), !vec4<bool>(global0.b, var_1.x, true, false)), vec4<bool>(var_1.x, true, func_1(vec3<bool>(true, true, global0.b)) == ~u_input.a.x, !all(var_1))), select(select(!select(vec4<bool>(true, var_1.x, global0.b, true), vec4<bool>(var_1.x, false, true, global0.b), vec4<bool>(var_1.x, true, global0.b, var_1.x)), vec4<bool>(true, any(vec2<bool>(global0.b, var_1.x)), true, var_1.x), true), vec4<bool>(select(select(false, false, false), global0.b, var_1.x || global0.b), !global0.b, _wgslsmith_f_op_f32(exp2(global0.a)) >= _wgslsmith_f_op_f32(1653f + global0.c), all(select(vec4<bool>(var_1.x, false, false, global0.b), vec4<bool>(true, var_1.x, false, global0.b), true))), !vec4<bool>(true, false, any(vec4<bool>(global0.b, var_1.x, true, false)), func_5(Struct_1(global0.a, global0.b, global0.c), vec4<i32>(-42989i, -31096i, -49579i, 2147483647i), Struct_1(-1011f, false, global0.a)).b)), any(select(select(var_1, !vec2<bool>(var_1.x, true), any(vec4<bool>(false, true, false, false))), !var_1, !(!vec2<bool>(false, global0.b)))));
    let var_3 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, -10865i, 0i, 25595i) << (vec4<u32>(var_3, var_3, 1u, 8658u) % vec4<u32>(32u))), true), _wgslsmith_f_op_f32(round(-169f)), ~(~u_input.b), select(34789i, countOneBits(i32(-1i) * -1i), var_1.x || select(true, !var_1.x, true)));
}

