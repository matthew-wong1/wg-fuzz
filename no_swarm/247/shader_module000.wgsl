struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_4(any(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, arg_1.a.x, false), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), false), false)));
    var var_1 = Struct_2(!(!(!(!vec3<bool>(var_0.a, arg_1.a.x, false)))), u_input.b | arg_0.zwy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f), 649f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -340f), 689f)))));
    var_1 = Struct_2(var_1.a, u_input.b, _wgslsmith_f_op_f32(step(-270f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-543f, -440f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, -1504f, -393f), vec3<f32>(309f, -1000f, var_1.c)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(741f, var_1.c, -669f), vec3<f32>(-1534f, 1622f, var_1.c), true))) - _wgslsmith_div_vec3_f32(vec3<f32>(1521f, var_1.c, 341f), vec3<f32>(var_1.c, var_1.c, var_1.c)))));
    var var_3 = any(!vec2<bool>(true, !(!var_1.a.x)));
    return select(var_1.a.yy, !var_1.a.yx, arg_1.a);
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = 1652f;
    var var_1 = Struct_3(Struct_1(!func_3(abs(vec4<i32>(u_input.b.x, 60309i, -1i, 1i)), Struct_5(arg_0.a.xz), ~19324u), vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, u_input.d), vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x)), 1u, u_input.d), 1000f), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(abs(u_input.b.x), u_input.b.x, _wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.b.x))), vec3<i32>(abs(u_input.b.x) << (_wgslsmith_mod_u32(4294967295u, 13401u) % 32u), (u_input.b.x << (u_input.c.x % 32u)) & ~(-1i), u_input.b.x)));
    var_1 = Struct_3(Struct_1(vec2<bool>(!var_1.a.a.x, true), vec4<u32>(_wgslsmith_dot_vec3_u32(~var_1.a.b.wxx, var_1.a.b.xwz), 1u, firstTrailingBit(~u_input.d), select(27132u, 47535u | var_1.a.b.x, false)), _wgslsmith_f_op_f32(max(arg_0.c, arg_0.c))), ~((min(arg_0.b, vec3<i32>(arg_0.b.x, arg_0.b.x, -14730i)) ^ vec3<i32>(0i, arg_0.b.x, 1i)) | ~arg_0.b));
    let var_2 = Struct_4(var_1.a.a.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * var_1.a.c)), var_1.a.c, all(select(vec2<bool>(var_1.a.a.x, true), vec2<bool>(var_2.a, false), select(vec2<bool>(var_2.a, var_2.a), arg_0.a.yz, var_2.a))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a.c, -1136f))) * var_1.a.c));
    return _wgslsmith_clamp_vec4_u32(~reverseBits(var_1.a.b), vec4<u32>(~((u_input.a.x & var_1.a.b.x) & 78387u), 21423u, ~(~u_input.c.x), 0u), vec4<u32>(min(~0u, 11970u), ~_wgslsmith_clamp_u32(~25550u, var_1.a.b.x | 4294967295u, 90731u ^ u_input.c.x), ~(~0u), u_input.a.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(func_3(-select(countOneBits(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -5557i)), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), func_3(vec4<i32>(u_input.b.x, 2147483647i, 4433i, 44271i), Struct_5(arg_1.a), 4294967295u).x), Struct_5(vec2<bool>(!arg_1.a.x, !arg_1.a.x)), 4294967295u), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1.c)))));
    let var_1 = u_input.b.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, var_0.c))))), -1037f);
    var_2 = arg_2.yy;
    let var_3 = Struct_3(Struct_1(select(select(!vec2<bool>(arg_1.a.x, false), vec2<bool>(true, false), !vec2<bool>(arg_1.a.x, arg_1.a.x)), !vec2<bool>(var_0.a.x, false), select(true & arg_1.a.x, var_0.a.x, func_3(vec4<i32>(19410i, u_input.b.x, var_1, 2147483647i), Struct_5(vec2<bool>(true, var_0.a.x)), arg_1.b.x).x)), ~(~firstTrailingBit(arg_1.b)), _wgslsmith_f_op_f32(min(-286f, var_2.x))), abs(vec3<i32>(~_wgslsmith_mod_i32(0i, var_1), ~abs(-2949i), -(~var_1))));
    return false;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = Struct_2(!vec3<bool>(_wgslsmith_mult_u32(arg_1.x, arg_1.x) > ~arg_0.x, !arg_3 | (216f >= arg_2), _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(99521u, 1u, arg_1.x, arg_1.x)) > u_input.d), -u_input.b | u_input.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(119f)))))));
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(7114i, (-2147483647i & u_input.b.x) & ~(-29351i), -(~u_input.b.x)) >> (_wgslsmith_mod_vec3_u32(arg_1.yyz, arg_1.zyx) % vec3<u32>(32u)), select(vec3<i32>(-1i) * -(var_1.b << (vec3<u32>(1u, u_input.a.x, arg_1.x) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 13071i), _wgslsmith_mod_vec3_i32(var_1.b, var_1.b)), vec3<bool>(!arg_3 | func_3(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), Struct_5(var_1.a.yz), arg_1.x).x, false, !(8093i != u_input.b.x))), vec3<i32>(-((i32(-1i) * -6840i) | var_1.b.x), -2147483647i, -(reverseBits(u_input.b.x) << (abs(u_input.c.x) % 32u))));
    let var_3 = Struct_3(Struct_1(vec2<bool>(arg_3 & false, all(vec4<bool>(var_1.a.x, arg_3, false, arg_3))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), ~vec4<u32>(1u, 6472u, 75952u, arg_0.x)), -1000f), select(vec3<i32>(u_input.b.x, _wgslsmith_add_i32(-2147483647i, var_2.x), var_2.x) & select(vec3<i32>(-2147483647i, var_1.b.x, 10616i) | vec3<i32>(1i, 1i, var_1.b.x), select(vec3<i32>(2147483647i, -1i, var_1.b.x), var_2, vec3<bool>(true, false, var_1.a.x)), var_1.a.x), vec3<i32>(var_2.x, i32(-1i) * -20854i, u_input.b.x), true));
    let var_4 = var_1;
    return Struct_3(var_3.a, firstTrailingBit(~select(var_2, var_4.b, false)));
}

fn func_1() -> Struct_5 {
    let var_0 = func_5(u_input.c, firstTrailingBit(firstTrailingBit((vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 31457u) & vec4<u32>(u_input.d, u_input.c.x, 1u, u_input.a.x)) ^ ~vec4<u32>(40818u, 4294967295u, 1u, 4294967295u))), 857f, select(func_4(vec4<u32>(1u, u_input.d, ~27615u, u_input.c.x), Struct_1(vec2<bool>(false, false), func_2(Struct_2(vec3<bool>(false, false, false), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -1000f)), -551f), vec4<f32>(1f, 1f, 1f, 1f)), !any(vec4<bool>(false, false, true, false)) | !func_4(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.d), Struct_1(vec2<bool>(true, false), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.d), 629f), vec4<f32>(-1492f, 655f, 1000f, -673f)), any(vec3<bool>(true, true, true)) && true));
    var var_1 = (_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b.x, -2147483647i), ~abs(vec3<i32>(var_0.b.x, 23581i, -25418i))) | -var_0.b) | vec3<i32>(-(~u_input.b.x), ~max(_wgslsmith_mult_i32(u_input.b.x, 18631i), max(u_input.b.x, var_0.b.x)), reverseBits(~(i32(-1i) * -32574i)));
    var_1 = ~u_input.b;
    var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.b.x, 20440i) >> ((vec2<u32>(7503u, var_0.a.b.x) >> (vec2<u32>(var_0.a.b.x, var_0.a.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(u_input.b.x, -2147483647i))), ~select(countOneBits(var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, -2028i, var_1.x), vec4<i32>(1i, var_1.x, var_1.x, 1i)), all(vec4<bool>(false, true, true, var_0.a.a.x)))), var_0.b.x >> (_wgslsmith_add_u32(u_input.d, ~86448u >> (firstLeadingBit(var_0.a.b.x) % 32u)) % 32u), _wgslsmith_dot_vec2_i32(select(-_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_0.b.zz), func_5(u_input.c, vec4<u32>(4294967295u, 7235u, var_0.a.b.x, u_input.d), -1000f, any(vec4<bool>(var_0.a.a.x, false, false, false))).b.zy, false), select(vec2<i32>(var_0.b.x, 1152i), vec2<i32>(-86647i, u_input.b.x), !var_0.a.a) >> ((~var_0.a.b.zx << (~vec2<u32>(4294967295u, var_0.a.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_1 = vec3<i32>(_wgslsmith_clamp_i32(~(~var_1.x), _wgslsmith_mult_i32(-2147483647i, 1i), -var_1.x), _wgslsmith_clamp_i32(firstTrailingBit(max(var_1.x, -23282i)), (-13832i << (u_input.c.x % 32u)) ^ u_input.b.x, select(i32(-1i) * -869i, var_0.b.x, any(var_0.a.a))), 1i) >> (var_0.a.b.zyx % vec3<u32>(32u));
    return Struct_5(vec2<bool>(any(vec4<bool>(true, true, true, true)), false & var_0.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(716f, 670f, true)))))), _wgslsmith_div_f32(386f, _wgslsmith_f_op_f32(f32(-1f) * -501f)), _wgslsmith_f_op_f32(405f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(505f, _wgslsmith_f_op_f32(abs(1000f)))))));
    var var_2 = Struct_2(select(vec3<bool>(func_4(~vec4<u32>(13020u, 51678u, 4294967295u, u_input.a.x), func_5(vec2<u32>(1u, u_input.c.x), vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, 40807u), 541f, var_0.a.x).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, var_1.x, -1521f, var_1.x))), var_0.a.x, true), vec3<bool>(true, true, true), !(11206u == _wgslsmith_mod_u32(u_input.c.x, 1u))), u_input.b, var_1.x);
    let var_3 = Struct_4(all(select(!select(var_2.a, vec3<bool>(var_2.a.x, true, var_2.a.x), var_2.a.x), !(!vec3<bool>(var_0.a.x, false, true)), vec3<bool>(!var_0.a.x, true, any(var_2.a.yx)))));
    var var_4 = func_5(~((vec2<u32>(4294967295u, u_input.c.x) << (u_input.a % vec2<u32>(32u))) & vec2<u32>(8402u, u_input.d)), vec4<u32>(~(~16066u), 0u, ~(1u | u_input.d), 4294967295u) ^ vec4<u32>(2227u, ~0u, 1u, reverseBits(u_input.a.x)), 627f, true).a;
    var_4 = Struct_1(func_1().a, vec4<u32>(34946u, abs(u_input.d) & _wgslsmith_mult_u32(1214u, 52576u), 10340u, ~reverseBits(u_input.c.x)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_4.b.x, 8097u, var_4.b.x, 46812u), vec4<u32>(8351u, u_input.c.x, u_input.a.x, 1u)), vec4<u32>(u_input.c.x, u_input.c.x, var_4.b.x, u_input.c.x)), var_4.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(var_4.c, 217f)));
    var_4 = func_5(vec2<u32>(u_input.d ^ _wgslsmith_sub_u32(58298u, ~4294967295u), var_4.b.x), ~(func_5(vec2<u32>(var_4.b.x, 4294967295u), ~var_4.b, _wgslsmith_f_op_f32(step(-236f, var_2.c)), var_2.a.x).a.b ^ countOneBits(vec4<u32>(0u, u_input.a.x, var_4.b.x, u_input.a.x))), var_4.c, true).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

