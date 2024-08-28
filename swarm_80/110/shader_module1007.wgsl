struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = vec3<u32>(u_input.d.x, 13429u, abs(17058u));
    var var_1 = ~((~2147483647i << (0u % 32u)) | countOneBits(0i | u_input.b)) <= (-2147483647i | _wgslsmith_div_i32(u_input.b, (0i | u_input.a.x) ^ u_input.b));
    let var_2 = vec4<i32>(~u_input.b, max(_wgslsmith_dot_vec2_i32(min(u_input.a.yz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yz)), countOneBits(u_input.a.xz) ^ vec2<i32>(-2147483647i, u_input.a.x)), select(countOneBits(u_input.a.x), -45844i, false) >> (_wgslsmith_mult_u32(7564u, u_input.c << (u_input.d.x % 32u)) % 32u)), ~countOneBits(~u_input.b), ~(-7833i));
    let var_3 = Struct_4(454f, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-297f, 549f, 341f, -2017f), vec4<f32>(-1403f, 1003f, -1036f, 534f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, 552f, 1000f, -315f) + vec4<f32>(-1442f, 676f, -992f, 962f)))))));
    let var_4 = Struct_3(-1966f, Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_3.b.a))), Struct_2(var_2.xzy, min(~vec4<u32>(0u, 22497u, var_0.x, u_input.d.x) | (vec4<u32>(4294967295u, 1u, u_input.d.x, var_0.x) ^ vec4<u32>(42694u, 0u, var_0.x, var_0.x)), max(~vec4<u32>(u_input.d.x, u_input.c, 1u, 6042u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 153873u), vec4<u32>(4294967295u, 1u, var_0.x, var_0.x)))), u_input.a.x, var_3.b, var_3.b), abs(vec4<u32>(var_0.x, var_0.x, 4294967295u & var_0.x, ~firstLeadingBit(14669u))), var_3.b);
    return var_3.a;
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-876f, -619f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(all(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), any(vec2<bool>(true, false))))), Struct_1(vec4<f32>(-885f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-490f + -904f), _wgslsmith_f_op_f32(floor(1745f)), true)), -364f, 204f)));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(firstTrailingBit(~u_input.a), abs(firstLeadingBit(vec4<u32>(88455u, 101284u, u_input.d.x, 1u) >> (vec4<u32>(u_input.d.x, u_input.c, 38809u, 0u) % vec4<u32>(32u)))), ~(-2147483647i) & min(1i, -u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 2387f, -279f) * vec4<f32>(315f, 137f, -500f, arg_0.a))))), func_2().b);
    var_0 = Struct_2(var_0.a, abs(max(max(var_0.b, vec4<u32>(0u, u_input.c, u_input.c, u_input.c)), select(vec4<u32>(1u, u_input.d.x, 4294967295u, 1u), vec4<u32>(30253u, 75840u, 0u, 9265u), vec4<bool>(true, true, true, true))) << (vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, ~4294967295u) % vec4<u32>(32u))), var_0.a.x, arg_0.b, func_2().b);
    let var_1 = ~(~(~u_input.d));
    var var_2 = _wgslsmith_f_op_f32(func_3(true));
    var var_3 = Struct_2(u_input.a, firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(7280u, 4294967295u, ~33599u, 42369u), _wgslsmith_mod_vec4_u32(var_0.b, ~var_0.b))), firstLeadingBit(u_input.b & _wgslsmith_dot_vec4_i32(vec4<i32>(-44996i, 48622i, u_input.a.x, 5068i), vec4<i32>(u_input.b, 32172i, u_input.b, -1i))) >> (_wgslsmith_div_u32(~4294967295u ^ ~var_1.x, var_1.x) % 32u), var_0.d, arg_0.b);
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_1(arg_0.c.d.a);
    let var_1 = select(vec3<bool>(true, true, false), select(select(!select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1), false), select(vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, arg_1), arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, true), arg_1)), !arg_1), vec3<bool>(true, arg_1, false), !any(vec3<bool>(arg_1, arg_1, arg_1))), true);
    var_0 = func_2().b;
    var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(min(1f, func_4(func_2()).a.x)), func_4(func_2())));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) - _wgslsmith_f_op_f32(-arg_2.a.x)), arg_0.e.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1453f)))))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(round(269f)), func_4(func_2()), Struct_2(vec3<i32>(min(2147483647i, u_input.a.x), 1i ^ u_input.a.x, abs(-1782i)), ~select(vec4<u32>(0u, 0u, u_input.d.x, 130125u), vec4<u32>(127589u, u_input.c, u_input.c, 73200u), vec4<bool>(true, true, false, false)), ~(-2147483647i) << (abs(u_input.c) % 32u), func_2().b, func_4(Struct_4(-306f, Struct_1(vec4<f32>(-950f, 1000f, 819f, -418f))))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.c, u_input.c, 9915u, u_input.d.x), vec4<u32>(13451u, 39640u, u_input.c, 4294967295u), false), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d.x, 68803u, u_input.d.x)), vec4<u32>(u_input.d.x, 65372u, 4294967295u, u_input.c), firstLeadingBit(vec4<u32>(1u, u_input.d.x, u_input.c, 59778u)))), func_2().b), any(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(809f, -153f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2771f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1484f, 1544f)))), vec4<u32>(abs(53570u), countOneBits(u_input.d.x), _wgslsmith_mult_u32(~u_input.c, 0u), ~(u_input.d.x | 6260u)));
    let var_1 = _wgslsmith_mod_i32(~var_0.c.c, ~2147483647i);
    let var_2 = func_5(Struct_3(-2035f, func_4(Struct_4(_wgslsmith_f_op_f32(abs(1248f)), var_0.e)), var_0.c, var_0.c.b, Struct_1(var_0.b.a)), all(vec4<bool>(true, true, true, true)), func_2().b, var_0.d);
    let var_3 = select(vec4<bool>(all(vec2<bool>(true, any(vec3<bool>(false, false, false)))), any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_2.a < var_0.c.e.a.x, true), true), select(vec4<bool>(true, select(true, false, false), true, true), vec4<bool>(true, true, true, true), true), false), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), 65520u <= var_2.c.b.x)), false));
    var var_4 = any(var_3.yy);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1660f, _wgslsmith_f_op_f32(var_2.e.a.x + var_2.e.a.x), _wgslsmith_f_op_f32(f32(-1f) * -546f)) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.d.a.x), _wgslsmith_div_f32(var_0.e.a.x, 1f), _wgslsmith_f_op_f32(-var_2.c.d.a.x), var_2.b.a.x)));
}

fn func_6(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = func_4(func_2()).a.x;
    var_0 = -2127f;
    var_0 = _wgslsmith_f_op_f32(ceil(arg_0.a.x));
    let var_1 = _wgslsmith_div_u32(7448u, 70214u);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(241f))) + -622f)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-498f, 777f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) - _wgslsmith_f_op_f32(834f * 443f)), 595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f - -337f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -1000f, 446f, -1000f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1738f, 1506f, -290f, 266f))))))));
    var var_1 = ~(~vec3<i32>(-12207i, u_input.b, _wgslsmith_sub_i32(select(-24573i, u_input.b, false), max(u_input.a.x, u_input.a.x))));
    var_1 = u_input.a;
    let var_2 = true;
    let var_3 = _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(max(8387i, 0i), ~4380i), var_1.x), reverseBits(u_input.a.yx));
    var_1 = ~func_6(func_1());
    var var_4 = -21534i;
    let var_5 = Struct_2(-vec3<i32>(_wgslsmith_add_i32(func_6(Struct_1(vec4<f32>(2175f, 862f, 2087f, -1000f))).x, var_3.x), 1i, var_3.x), vec4<u32>(u_input.c, firstLeadingBit(1u), firstTrailingBit(0u), ~_wgslsmith_mod_u32(16330u, 4294967295u) & ~(~u_input.c)), countOneBits(~u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a)))) + _wgslsmith_f_op_vec4_f32(abs(var_0.a)))), func_5(func_5(Struct_3(_wgslsmith_div_f32(2441f, 1000f), func_2().b, func_5(Struct_3(var_0.a.x, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -1344f, var_0.a.x)), Struct_2(u_input.a, vec4<u32>(1419u, u_input.d.x, u_input.c, u_input.d.x), -46035i, Struct_1(var_0.a), Struct_1(var_0.a)), vec4<u32>(u_input.c, u_input.d.x, 0u, 14828u), Struct_1(var_0.a)), var_2, Struct_1(var_0.a), vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 0u)).c, ~vec4<u32>(u_input.c, 32668u, u_input.d.x, 4294967295u), Struct_1(var_0.a)), var_2, Struct_1(vec4<f32>(-904f, -346f, 220f, var_0.a.x)), ~max(vec4<u32>(u_input.c, 9690u, 1u, u_input.d.x), vec4<u32>(0u, 4294967295u, u_input.d.x, u_input.d.x))), var_0.a.x != func_4(func_2()).a.x, func_4(func_2()), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 92256u), ~u_input.c, u_input.d.x, reverseBits(u_input.c)), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(select(vec4<u32>(var_5.b.x, 16728u, var_5.b.x, var_5.b.x), var_5.b, vec4<bool>(var_2, true, var_2, var_2)), _wgslsmith_add_vec4_u32(var_5.b, vec4<u32>(21793u, u_input.d.x, 89001u, u_input.c))), var_5.b), 229f, var_5.a.x, firstTrailingBit(firstTrailingBit(var_5.c)));
}

