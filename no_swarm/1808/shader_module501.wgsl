struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    return vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true)), false, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-597f))) >= _wgslsmith_f_op_f32(ceil(100f))), true);
}

fn func_2() -> Struct_3 {
    let var_0 = any(select(vec4<bool>(true, true, any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true))), func_3(), vec4<bool>(true, select(any(vec4<bool>(false, false, false, false)), true, true), any(vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))))));
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1078f, -876f))));
    var var_2 = _wgslsmith_f_op_f32(exp2(var_1.a.a.x));
    let var_3 = _wgslsmith_add_vec4_u32(reverseBits(~abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.d.x, 1502u))) ^ ~(~vec4<u32>(6979u, 1u, u_input.a.x, 4294967295u)), (vec4<u32>(4294967295u, ~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 14422u), vec4<u32>(u_input.d.x, u_input.a.x, 46445u, u_input.d.x)), 29009u) | min(vec4<u32>(u_input.d.x, 40087u, u_input.d.x, u_input.a.x), select(vec4<u32>(15844u, 0u, 0u, 1u), vec4<u32>(u_input.a.x, u_input.d.x, 11724u, 4294967295u), false))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(4010u, 1u, 16527u, 72138u), vec4<u32>(3244u, 1u, u_input.d.x, 0u)));
    var var_4 = Struct_2(Struct_1(2392u, !select(vec3<bool>(true, true, true), select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0), false), !var_0), 58850i));
    return Struct_3(var_1.a.a.x, vec3<bool>(false, var_4.a.b.x, var_4.a.b.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_5(arg_1.a);
    let var_1 = func_2().b.yz;
    var_0 = arg_1;
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f)), _wgslsmith_f_op_f32(-arg_1.a.a.x))), var_0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x * 2146f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1112f))))));
    return ~(~(~arg_2.x));
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.d.x, 6499u, 46671u, 24766u) | vec4<u32>(0u, 15338u, arg_0, arg_0)), max(vec4<u32>(u_input.a.x, arg_0, u_input.d.x, arg_0) << (vec4<u32>(1u, 1u, arg_0, arg_0) % vec4<u32>(32u)), ~vec4<u32>(arg_0, 1u, u_input.d.x, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, arg_0, u_input.d.x), vec4<u32>(0u, u_input.a.x, 1u, 1u), vec4<u32>(0u, u_input.d.x, 1u, arg_0)), vec4<u32>(arg_0, 4294967295u, 4294967295u, 123922u) ^ vec4<u32>(0u, arg_0, arg_0, 0u))));
    var var_1 = reverseBits(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.x, 0u)), u_input.a.x), select(_wgslsmith_mod_u32(abs(4294967295u), ~25354u), 1u, true), ~u_input.d.x, func_4(func_2(), Struct_5(Struct_4(vec2<f32>(906f, 1599f))), vec2<u32>(var_0.x ^ arg_0, ~80003u))));
    var_1 = ~min(firstTrailingBit(abs(~vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 1u))), reverseBits(~(~vec4<u32>(var_0.x, 4294967295u, arg_0, 4294967295u))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-508f + 1431f), -818f));
    var var_3 = !vec3<bool>(!func_2().b.x, true, u_input.b.x > (i32(-1i) * -38073i));
    return Struct_1(min(~var_0.x, min(_wgslsmith_div_u32(~0u, ~var_1.x), var_0.x)), !func_3().zzz, countOneBits(_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_add_i32(979i, u_input.c))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = !vec4<bool>(arg_0.b.x, true, ~arg_0.a != ~41810u, arg_0.b.x);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-649f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -453f)))) - 952f), arg_0.b);
    let var_2 = firstLeadingBit(max(vec4<i32>(min(u_input.e.x, u_input.e.x), ~(-1i), 0i, u_input.b.x) & (select(vec4<i32>(17396i, 25507i, 1i, -11403i), vec4<i32>(arg_0.c, arg_0.c, 1i, 14259i), vec4<bool>(true, arg_1, true, arg_1)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 37202i, 2147483647i, 2i), vec4<i32>(u_input.c, u_input.e.x, 85i, u_input.e.x))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(59179i, arg_0.c, -2147483647i, 17127i), vec4<i32>(arg_0.c, arg_0.c, -2745i, arg_0.c) ^ vec4<i32>(u_input.e.x, u_input.b.x, 0i, u_input.c)))));
    var var_3 = select(!select(!select(vec4<bool>(var_0.x, false, true, arg_0.b.x), vec4<bool>(false, true, var_0.x, arg_1), vec4<bool>(false, arg_0.b.x, arg_1, true)), vec4<bool>(-2147483647i > arg_0.c, true, var_0.x, var_0.x || var_1.b.x), false), select(select(func_3(), vec4<bool>(true, true, any(vec4<bool>(true, true, arg_0.b.x, true)), true), arg_0.a < ~arg_2.x), !select(vec4<bool>(arg_0.b.x, true, arg_1, false), !vec4<bool>(false, var_1.b.x, false, arg_0.b.x), !vec4<bool>(arg_1, false, true, arg_0.b.x)), !vec4<bool>(all(vec4<bool>(var_0.x, arg_0.b.x, false, true)), false, !var_1.b.x, func_3().x)), any(select(vec2<bool>(arg_1, var_0.x), vec2<bool>(arg_1, true), vec2<bool>(arg_0.b.x, false))) && all(vec3<bool>(all(var_0.wzy), arg_1 && arg_1, true)));
    let var_4 = true;
    return func_2();
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = !(!(true & any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    var var_1 = 1i;
    var_1 = u_input.e.x;
    var_1 = 0i;
    var_1 = 1i;
    return func_6(func_5(func_4(func_2(), Struct_5(Struct_4(vec2<f32>(-1000f, 129f))), ~u_input.d)), true, u_input.a);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_3(arg_0.a, vec3<bool>(func_3().x, arg_0.b.x, false));
    var var_1 = vec4<f32>(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-614f, arg_0.a)))), func_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 12032i, arg_1.a.c), u_input.b) & select(vec3<i32>(62128i, -1472i, arg_1.a.c), u_input.b, vec3<bool>(arg_0.b.x, false, arg_0.b.x)), u_input.b)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, var_0.a)))));
    let var_2 = 47531i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, arg_1.a.a), select(~u_input.a, u_input.a, true & arg_1.a.b.x)) >> (~arg_1.a.a % 32u)) % 32u);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(191f, var_1.x, var_1.x, -1000f), vec4<f32>(-1592f, var_1.x, -1313f, 1686f))))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, var_1.x, var_0.a, 1745f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-871f, 799f, arg_0.a, 1766f), vec4<f32>(1076f, 309f, 886f, 1756f), arg_0.b.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, 695f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, arg_0.a, -203f, 204f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1167f, var_1.x, arg_0.a, arg_0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, 486f, -379f))) - vec4<f32>(arg_0.a, var_1.x, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = vec4<u32>(abs(76542u), 80809u, 62686u ^ _wgslsmith_add_u32(func_4(Struct_3(var_1.x, vec3<bool>(true, false, arg_0.b.x)), Struct_5(Struct_4(vec2<f32>(-187f, -1010f))), u_input.a) | 1u, arg_1.a.a), u_input.d.x);
    return select(select(select(vec4<bool>(arg_0.b.x, all(vec4<bool>(arg_0.b.x, arg_1.a.b.x, arg_1.a.b.x, arg_0.b.x)), true, func_5(12654u).b.x), vec4<bool>(u_input.d.x >= 1720u, true, true, arg_1.a.b.x), arg_0.b.x), !vec4<bool>(var_0.b.x & arg_1.a.b.x, var_0.b.x, !arg_1.a.b.x, !arg_0.b.x), !(!func_2().b.x)), !(!vec4<bool>(select(var_0.b.x, arg_0.b.x, var_0.b.x), true, !var_0.b.x, true)), func_2().b.x);
}

fn func_8(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1077f, 1069f, -792f, 782f)))), vec4<f32>(_wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(select(-2205f, 1473f, arg_1.x))), 1748f, 430f, -384f), arg_1.x)));
    let var_1 = reverseBits(u_input.c);
    var var_2 = func_5(abs(select(arg_2.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 51966u, u_input.d.x, arg_0)), vec4<u32>(arg_2.x, 4294967295u, 4294967295u, u_input.d.x)), true)));
    var var_3 = _wgslsmith_f_op_f32(func_1(vec3<i32>(-2147483647i, -2464i, _wgslsmith_div_i32(7188i, 1i))).a + var_0.x);
    var var_4 = vec4<i32>(2147483647i, ~532i, 1i, -42165i);
    return Struct_1(abs(arg_0), vec3<bool>(true, all(vec2<bool>(all(arg_1), any(vec3<bool>(var_2.b.x, arg_1.x, false)))), false), -(~reverseBits(-2147483647i << (arg_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2671i >> (_wgslsmith_div_u32(~(~1u), u_input.a.x) % 32u);
    let var_1 = true;
    let var_2 = func_8(firstTrailingBit(1u), select(!(!(!vec4<bool>(true, var_1, var_1, true))), select(select(!vec4<bool>(var_1, var_1, true, var_1), !vec4<bool>(false, true, var_1, var_1), true), !vec4<bool>(false, true, true, var_1), !select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, var_1, var_1, var_1), true)), !func_7(func_1(u_input.b), Struct_2(Struct_1(56120u, vec3<bool>(true, true, true), -1i)))), ~(~(~(vec4<u32>(43787u, u_input.d.x, u_input.d.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.d.x, u_input.d.x, u_input.a.x)))));
    var_0 = select(0i, func_5(var_2.a).c, var_2.c == 1i);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1759f, 887f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1820f, 695f) + vec2<f32>(2287f, 399f)), vec2<f32>(1f, 1f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-113f, 683f), vec2<f32>(795f, -1430f)))))));
    var_0 = ~(var_2.c << (firstTrailingBit(var_2.a) % 32u));
    let var_4 = Struct_2(Struct_1(u_input.d.x, !vec3<bool>(false, var_2.b.x, true), firstLeadingBit(0i)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), -805f))));
    var_0 = ~var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(select(var_3.a.x, -413f, var_1))));
}

