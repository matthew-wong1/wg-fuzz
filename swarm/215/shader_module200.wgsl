struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(492f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-550f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(-305f, arg_0.x)))))), _wgslsmith_f_op_f32(trunc(arg_0.x)));
    let var_1 = Struct_1(vec3<bool>(true, u_input.d <= u_input.a.x, all(vec4<bool>(!arg_1.c.x, !arg_1.b, all(vec3<bool>(arg_1.c.x, arg_1.a, arg_1.c.x)), true))), _wgslsmith_f_op_f32(floor(arg_0.x)));
    var var_2 = Struct_3(Struct_1(!select(vec3<bool>(false, arg_1.d, true), select(var_1.a, var_1.a, vec3<bool>(var_1.a.x, var_1.a.x, false)), var_1.a.x != arg_1.b), -1066f), _wgslsmith_dot_vec2_u32(min(u_input.a ^ (u_input.a << (vec2<u32>(u_input.d, u_input.a.x) % vec2<u32>(32u))), ~vec2<u32>(11920u, 1u)), ~(~u_input.a) & vec2<u32>(~39449u, 1u)), !(!select(select(vec4<bool>(true, var_1.a.x, arg_1.a, true), vec4<bool>(false, var_1.a.x, true, true), false), !vec4<bool>(var_1.a.x, false, var_1.a.x, arg_1.a), select(vec4<bool>(false, var_1.a.x, var_1.a.x, arg_1.c.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, arg_1.a), true))), _wgslsmith_mult_i32(-1i, u_input.e >> ((max(12675u, u_input.d) & u_input.d) % 32u)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1342f - var_0.x))))))), _wgslsmith_f_op_f32(-627f - var_1.b));
    let var_4 = true;
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.b))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - 770f), _wgslsmith_f_op_f32(arg_0.x * var_0.x)))));
}

fn func_2() -> bool {
    let var_0 = Struct_2(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1337f, 539f))), Struct_2(true, true, vec2<bool>(all(vec3<bool>(true, true, false)), true), true)), all(vec3<bool>(true, true, true)), select(select(vec2<bool>(-2147483647i > u_input.e, select(false, false, false)), vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true)), vec2<bool>(select(true, 73740u <= u_input.d, true), true), !vec2<bool>(true, func_3(vec2<f32>(-2004f, -1284f), Struct_2(true, false, vec2<bool>(true, false), false)))), true);
    var var_1 = _wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(525u, u_input.d, 4294967295u) ^ vec3<u32>(u_input.a.x, u_input.d, u_input.d), select(vec3<u32>(u_input.d, 1u, 20249u), vec3<u32>(0u, 0u, u_input.d), var_0.a))), ~(1u << (_wgslsmith_add_u32(0u, u_input.d) % 32u))) | abs(~u_input.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(201f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1271f - -435f) + 936f), -324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -580f)))))));
    var var_3 = Struct_3(Struct_1(!vec3<bool>(var_2.x > var_2.x, any(vec2<bool>(true, var_0.b)), any(vec3<bool>(var_0.d, false, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.x))))))), u_input.a.x, vec4<bool>(func_3(var_2.xz, Struct_2(true, false, select(var_0.c, var_0.c, vec2<bool>(true, true)), !var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) == _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-var_2.x))), false, false), 14916i);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.b, var_3.a.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a.b, -1243f)) + var_3.a.b))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.a.b), -511f, false == var_3.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b * 247f))))));
    return var_3.c.x;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(!select(vec3<bool>(arg_0, arg_1.b.c.x, arg_2.b.a), !select(vec3<bool>(arg_1.b.b, false, arg_0), vec3<bool>(arg_1.b.d, arg_1.b.b, arg_2.b.a), arg_0), vec3<bool>(arg_0, true, true)), 315f);
    var var_1 = ~vec3<u32>(u_input.d, ~99499u, 61839u);
    let var_2 = select(~((vec4<i32>(arg_2.a, u_input.b, u_input.c, arg_2.a) << (vec4<u32>(var_1.x, 0u, 0u, var_1.x) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 19042u, 29441u, 1u), vec4<u32>(var_1.x, 4294967295u, 47158u, 113146u)) % vec4<u32>(32u))), abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, arg_2.a, 2147483647i, -2147483647i), countOneBits(vec4<i32>(u_input.b, arg_2.a, arg_2.a, arg_1.a)))), !(!any(vec4<bool>(arg_1.b.b, false, true, true)))) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.d, 1u, 63364u, 60752u)), vec4<u32>(39109u, var_1.x, select(37190u, _wgslsmith_add_u32(52219u, 1u), true), u_input.d)) % vec4<u32>(32u));
    var var_3 = Struct_2(true, func_2(), vec2<bool>(!(!arg_2.b.c.x), !arg_1.b.a), true);
    var var_4 = Struct_1(vec3<bool>(true, arg_0, arg_1.b.d), _wgslsmith_f_op_f32(var_0.b * 1150f));
    return Struct_3(Struct_1(vec3<bool>(false, arg_1.b.a, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * 372f), var_0.b))), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_1.x << (1u % 32u), 27560u, ~u_input.a.x), ~(~(var_1.x & 103556u)), 4294967295u), !(!(!vec4<bool>(var_4.a.x, var_0.a.x, arg_1.b.a, var_4.a.x))), 1052i);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = !any(vec2<bool>(true, true)) && true;
    var var_1 = ~4294967295u;
    var_1 = firstLeadingBit(0u);
    var var_2 = func_4(func_2(), Struct_4(0i, Struct_2(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec2<bool>(true, true), true)), Struct_4(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, -2147483647i, u_input.e), vec4<i32>(u_input.e, u_input.c, u_input.e, -33720i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, 29381i), vec3<i32>(-46908i, -13687i, -2147483647i))) >> (4294967295u % 32u), Struct_2(true, u_input.c == u_input.e, vec2<bool>(false, true), true)));
    var var_3 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(51274i, u_input.c))), -reverseBits(vec2<i32>(u_input.c, -1i) << (vec2<u32>(1u, 16387u) % vec2<u32>(32u)))), ~var_2.d, ~var_2.d);
    return func_4(any(select(var_2.c.wzx, var_2.a.a, false)), Struct_4(_wgslsmith_mod_i32(u_input.c, 48055i), Struct_2(false, _wgslsmith_f_op_f32(-var_2.a.b) == _wgslsmith_f_op_f32(abs(-2317f)), vec2<bool>(true, all(var_2.a.a)), 0i <= reverseBits(var_3.x))), Struct_4(u_input.c, Struct_2(!var_2.c.x || (33221u == arg_0), true, vec2<bool>(func_3(vec2<f32>(1097f, 1004f), Struct_2(var_2.c.x, true, vec2<bool>(var_2.c.x, true), true)), var_2.a.a.x | true), var_2.a.b > _wgslsmith_div_f32(494f, var_2.a.b)))).a;
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_mod_i32(~u_input.b, u_input.b) <= (-2147483647i & u_input.e);
    var var_2 = ~reverseBits(_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.d, u_input.a.x, u_input.d), vec3<u32>(u_input.d, 0u, u_input.a.x)), ~vec3<u32>(0u, u_input.a.x, 4294967295u))) & ~countOneBits(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x));
    var var_3 = select(vec3<u32>(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x & 20261u, 41724u, 13223u), vec4<u32>(var_2.x, firstTrailingBit(var_2.x), var_2.x | 117628u, var_2.x)), 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, u_input.a.x, 94285u)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_2.x), vec3<u32>(u_input.d, u_input.a.x, 41047u)))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_2.x, var_2.x, var_2.x)), firstLeadingBit(vec3<u32>(10033u, 23618u, var_2.x)))), !select(func_4(var_0, Struct_4(u_input.b, Struct_2(false, arg_0.a.x, vec2<bool>(arg_0.a.x, var_0), false)), Struct_4(30398i, Struct_2(arg_0.a.x, false, vec2<bool>(false, arg_0.a.x), arg_0.a.x))).a.a, select(!arg_0.a, vec3<bool>(var_0, true, var_0), arg_0.a), true));
    var var_4 = arg_0.b;
    return any(func_4(true, Struct_4(-1i, Struct_2(false, !arg_0.a.x, vec2<bool>(true, false), all(vec3<bool>(true, true, true)))), Struct_4(u_input.b, Struct_2(true, true, func_4(true, Struct_4(u_input.b, Struct_2(arg_0.a.x, arg_0.a.x, vec2<bool>(var_0, true), false)), Struct_4(u_input.e, Struct_2(arg_0.a.x, arg_0.a.x, vec2<bool>(false, false), arg_0.a.x))).a.a.yy, true))).c.ww);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-2147483647i);
    var var_1 = Struct_1(vec3<bool>(func_5(func_1(_wgslsmith_mult_u32(u_input.a.x, 0u), select(114259u, u_input.d, false))), true, func_1(u_input.a.x, 1u).a.x), _wgslsmith_f_op_f32(113f * 1739f));
    var_1 = Struct_1(!func_4(true, Struct_4(25949i, Struct_2(var_1.a.x, var_1.a.x, var_1.a.xy, var_1.a.x)), Struct_4(select(-2009i, -1626i, true), Struct_2(true, false, vec2<bool>(var_1.a.x, var_1.a.x), false))).c.xyx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-258f, var_1.b)))) + -383f));
    var_1 = func_1(countOneBits(u_input.a.x), ~4294967295u);
    var_1 = Struct_1(select(!(!(!var_1.a)), vec3<bool>(var_1.a.x && var_1.a.x, var_1.a.x, all(vec2<bool>(false, var_1.a.x))), true), _wgslsmith_f_op_f32(var_1.b + var_1.b));
    let var_2 = ~abs(vec3<u32>(81827u, _wgslsmith_dot_vec2_u32(~u_input.a, ~vec2<u32>(u_input.d, u_input.a.x)), select(u_input.d << (u_input.a.x % 32u), ~138740u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~((var_2.xy >> (var_2.xy % vec2<u32>(32u))) ^ vec2<u32>(u_input.d, 1u)) >> (vec2<u32>(var_2.x, 25673u) % vec2<u32>(32u)), ~vec2<i32>(1i, ~(~u_input.c)), vec4<u32>(abs(u_input.a.x), min(~firstLeadingBit(25239u), 1u), u_input.d, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(940f + var_1.b) * -387f) * var_1.b)), _wgslsmith_add_vec2_u32(u_input.a, ~(~firstLeadingBit(vec2<u32>(53831u, var_2.x)))));
}

