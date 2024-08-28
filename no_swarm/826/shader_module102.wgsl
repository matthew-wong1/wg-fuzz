struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-361f, -321f, 1034f, -436f), 4294967295u, 10324i, vec3<i32>(-45665i, 25883i, 2147483647i), vec2<f32>(1057f, -173f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = -(~_wgslsmith_mod_vec2_i32(u_input.c.zz, global0.d.zy));
    global0 = Struct_1(vec4<f32>(-846f, arg_2.a.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_2.a.a.x, _wgslsmith_f_op_f32(-arg_2.a.e.x), true)))), _wgslsmith_f_op_f32(arg_2.a.a.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e.x * global0.a.x), _wgslsmith_f_op_f32(ceil(global0.a.x)))))), _wgslsmith_dot_vec2_u32(u_input.a.yz >> (abs(vec2<u32>(global0.b, arg_2.a.b)) % vec2<u32>(32u)), ~(u_input.a.wx << (u_input.a.xx % vec2<u32>(32u)))), ~1i, ~(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, 1i, var_0.x), vec3<i32>(global0.c, -1i, -11395i))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1184f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a.x) - arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-116f))))));
    let var_1 = arg_2;
    let var_2 = ~(~(~var_0.x));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a.a), ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(34616u, var_1.a.b, global0.b, var_1.a.b)), vec4<u32>(u_input.b, 1u, var_1.a.b, arg_2.a.b)) << (_wgslsmith_div_u32(select(0u, 12350u, true), 43978u) % 32u)), select(1i, -45779i, select(true, var_1.a.e.x < var_1.a.e.x, true) && true), ~(vec3<i32>(~(-31076i), var_0.x, -4845i << (arg_2.a.b % 32u)) ^ ~reverseBits(vec3<i32>(var_2, 16232i, global0.c))), _wgslsmith_f_op_vec2_f32(sign(var_1.a.e)));
    return min(vec4<i32>(~select(_wgslsmith_div_i32(21939i, arg_0.x), u_input.c.x, true), ~min(global0.d.x, abs(-62870i)), 22052i, -1i), ~vec4<i32>(_wgslsmith_clamp_i32(min(u_input.c.x, global0.c), select(arg_2.a.c, var_1.a.c, false), arg_2.a.d.x), ~select(60471i, var_0.x, false), min(global0.d.x ^ 31967i, firstLeadingBit(17005i)), _wgslsmith_clamp_i32(-global0.d.x, var_2, var_2)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.e.x, -484f, _wgslsmith_f_op_f32(sign(298f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_2.e.x, global0.e.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_1.b, global0.a.x) - arg_2.a.ywz))))));
    let var_1 = ~(arg_2.d.x << ((arg_2.b >> (1u % 32u)) % 32u));
    global0 = arg_2;
    global0 = arg_2;
    let var_2 = ~_wgslsmith_div_vec4_u32(u_input.a, ~(u_input.a ^ ~vec4<u32>(u_input.a.x, global0.b, global0.b, 2766u)));
    return _wgslsmith_f_op_f32(step(-1000f, global0.a.x));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(961f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + 1f), _wgslsmith_f_op_f32(trunc(-1535f)), -996f)), global0.b, 0i, ~(~global0.d), vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(func_4(min(-vec4<i32>(u_input.c.x, -25527i, 47229i, global0.c), vec4<i32>(global0.c, u_input.c.x, 2147483647i, u_input.c.x)), Struct_2(true, _wgslsmith_f_op_f32(floor(global0.a.x))), Struct_1(vec4<f32>(global0.e.x, 1601f, global0.e.x, global0.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(15136u, u_input.b, u_input.b), u_input.a.wxy), u_input.c.x, global0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -691f) + global0.e)), firstLeadingBit(func_3(global0.d, vec2<f32>(-1564f, -1000f), Struct_3(Struct_1(global0.a, u_input.a.x, global0.d.x, u_input.c, global0.e))))))));
    let var_0 = vec3<i32>(~(~(~(~2147483647i))), -2147483647i, -119052i);
    let var_1 = Struct_1(global0.a, reverseBits(u_input.b), 1i, firstTrailingBit(var_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) - _wgslsmith_f_op_vec2_f32(global0.e + global0.a.zz))), vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(-global0.e.x)), true)));
    let var_2 = vec2<bool>(false, true);
    let var_3 = ~(~(_wgslsmith_mult_u32(~u_input.a.x, global0.b) >> (abs(~1u) % 32u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_4(vec4<i32>(i32(-1i) * -1i, 1i, ~global0.c, firstTrailingBit(1i)), Struct_2(var_2.x && false, _wgslsmith_f_op_f32(-var_1.a.x)), var_1, vec4<i32>(var_0.x, -8675i, abs(-2147483647i), 18748i))), global0.e.x, _wgslsmith_f_op_f32(min(384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-367f, global0.e.x)) - _wgslsmith_f_op_f32(trunc(-1016f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f + _wgslsmith_f_op_f32(-global0.e.x)))), 1u, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -26790i, 0i, firstLeadingBit(var_0.x)) ^ vec4<i32>(545i, -var_1.d.x, var_0.x, -8559i), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -61450i, var_0.x), vec3<i32>(global0.d.x, -1i, global0.c)), var_0.x, _wgslsmith_dot_vec3_i32(~var_1.d, -vec3<i32>(var_0.x, -3675i, 17135i)))), select(_wgslsmith_sub_vec3_i32(~reverseBits(vec3<i32>(u_input.c.x, 0i, -1i)), vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, global0.d.x, 1i), i32(-1i) * -15219i, 0i)), ~(~global0.d), select(!(!vec3<bool>(var_2.x, false, var_2.x)), select(!vec3<bool>(false, var_2.x, true), select(vec3<bool>(false, true, false), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x)), !vec3<bool>(false, var_2.x, var_2.x)), vec3<bool>(any(vec2<bool>(false, true)), true, true))), var_1.a.yw);
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    var var_0 = func_2();
    var var_1 = Struct_3(func_2());
    var var_2 = var_1.a;
    var var_3 = ~var_0.b;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = vec4<bool>(((global0.a.x != 1165f) | ((u_input.b >= 1u) && false)) || true, select(false | any(vec2<bool>(false, true)), true, false | select(true, true, u_input.c.x > u_input.c.x)), select(_wgslsmith_f_op_f32(-func_2().a.x) > _wgslsmith_f_op_f32(591f - -1000f), any(vec3<bool>(true, global0.b != global0.b, -1000f >= global0.a.x)), all(vec2<bool>(true, true)) && false), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1281f), _wgslsmith_f_op_f32(abs(-503f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-416f)), -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(global0.a.x, global0.e.x, global0.e.x, -333f), var_0.x)))))), 4294967295u, func_2().c, -vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.c), ~vec3<i32>(0i, 23903i, 1i)), func_2().d.x, ~global0.d.x >> (0u % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(343f, global0.a.x), _wgslsmith_f_op_vec2_f32(global0.e - vec2<f32>(global0.e.x, 693f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, _wgslsmith_f_op_f32(floor(global0.a.x))))));
    var_1 = Struct_1(vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x * -1001f), -519f))), max(firstTrailingBit(_wgslsmith_div_u32(u_input.b, 158466u) >> (var_1.b % 32u)), 14689u), 2147483647i, u_input.c, var_1.e);
    var var_2 = select(vec4<bool>(~var_1.b >= 43137u, (_wgslsmith_sub_u32(0u, global0.b) << ((global0.b >> (var_1.b % 32u)) % 32u)) < 62967u, false, !var_0.x == true), !var_0, select(select(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), true), vec4<bool>(true, !var_0.x || (var_0.x | false), any(vec2<bool>(var_0.x, var_0.x)), all(vec2<bool>(var_0.x, var_0.x))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_div_vec3_u32(u_input.a.xyz, vec3<u32>(1u, u_input.b, 1u))), -vec3<i32>(func_2().d.x, u_input.c.x, 2147483647i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e.x, 1040f, _wgslsmith_f_op_f32(sign(196f)), -1928f))))));
}

