struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> vec4<f32> {
    let var_0 = max(-49849i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(2274i, u_input.a, arg_1.b.x, 34149i)), vec4<i32>(arg_1.b.x, u_input.a, arg_0, 40798i) & vec4<i32>(arg_1.b.x, 24905i, arg_0, 1i)), -firstTrailingBit(~vec4<i32>(u_input.a, 2147483647i, 27578i, u_input.a))));
    var var_1 = arg_1;
    var var_2 = any(select(select(select(select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_1.e.b, var_1.e.b, arg_1.e.b), var_1.e.b), vec3<bool>(false, arg_2, arg_2), any(vec2<bool>(true, false))), select(!vec3<bool>(var_1.e.b, arg_2, var_1.e.b), !vec3<bool>(true, arg_2, arg_2), any(vec4<bool>(arg_1.e.b, arg_1.e.b, true, var_1.e.b))), !select(vec3<bool>(arg_1.e.b, var_1.e.b, true), vec3<bool>(true, arg_1.e.b, false), false)), vec3<bool>(var_1.e.b, arg_2 | true, true), !vec3<bool>(var_1.e.b && arg_2, var_1.e.b, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 472f, _wgslsmith_f_op_f32(round(-1243f)), -358f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1759f)) * -654f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-588f))), _wgslsmith_f_op_f32(var_1.e.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_3) * _wgslsmith_f_op_f32(arg_3 - 3017f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.a, 630f))))), !vec4<bool>(var_1.e.b & (var_1.c.x > u_input.b.x), all(vec4<bool>(arg_2, var_1.e.b, arg_2, true)), any(select(vec4<bool>(false, var_1.e.b, false, var_1.e.b), vec4<bool>(var_1.e.b, true, false, false), vec4<bool>(arg_2, true, true, arg_1.e.b))), true)));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f - var_1.e.c)), _wgslsmith_f_op_f32(-arg_3)))), var_3.xw);
    return vec4<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + -449f), _wgslsmith_f_op_f32(floor(211f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f) - _wgslsmith_f_op_f32(round(883f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = select(select(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, false, false, var_0.x), true), !(!var_0.x)), vec4<bool>(var_0.x & true, u_input.a != _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 2147483647i, -20066i, 1i), arg_1.a), false, select(var_0.x, all(vec2<bool>(var_0.x, var_0.x)), true)), var_0.x), select(!vec4<bool>(!var_0.x, 1i < arg_3, !var_0.x, !var_0.x), select(select(!vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, true, true, var_0.x), !var_0.x), vec4<bool>(false | var_0.x, var_0.x, true, any(var_0.wz)), select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), true)), !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x))), vec4<bool>(var_0.x, select(true, false & var_0.x, any(vec2<bool>(false, false))) || (u_input.a >= min(1i, arg_3)), var_0.x, var_0.x));
    var_0 = vec4<bool>(true, true, var_0.x & any(vec4<bool>(!var_0.x, true, false | var_0.x, var_0.x | false)), false);
    var_0 = vec4<bool>(any(var_0.xyw), true, true, true);
    var_0 = select(select(!select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), false), vec4<bool>(false, var_0.x, true, true), all(vec4<bool>(var_0.x, true, true, var_0.x))), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, 42906u < arg_1.c.x, var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x), var_0.x);
    return arg_1.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2537f)) + _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) - arg_0.x);
    var_0 = 454f;
    let var_1 = Struct_4(firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, -2147483647i, 102523i), -vec4<i32>(arg_1, u_input.a, arg_1, 1i)), firstTrailingBit(vec4<i32>(61976i, 9045i, u_input.a, arg_1)))), vec2<u32>(u_input.b.x, 4294967295u), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b.x), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b.x, 1u)), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b | select(u_input.b, u_input.b, false)), u_input.b), vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_0.x));
    return vec2<bool>(false, true);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = all(func_5(vec2<f32>(_wgslsmith_f_op_f32(min(-1534f, _wgslsmith_f_op_f32(-975f - 433f))), 444f), _wgslsmith_div_i32(func_4(_wgslsmith_f_op_vec4_f32(func_3(1i, Struct_2(-1015f, vec2<i32>(49154i, 20924i), vec4<u32>(0u, 85408u, u_input.b.x, u_input.b.x), vec3<u32>(25479u, 49451u, u_input.b.x), Struct_1(-2147483647i, true, -1564f, vec3<u32>(30928u, u_input.b.x, 40465u))), false, 2159f)), Struct_4(vec4<i32>(u_input.a, -31960i, 27332i, 1i), vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, vec2<f32>(-455f, -702f)), -328f, arg_0.x | u_input.a), u_input.a)));
    let var_1 = (!var_0 && any(select(vec3<bool>(false, true, true), select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, var_0)), false))) && true;
    var var_2 = Struct_2(1f, vec2<i32>(~(-26634i), select(reverseBits(-64227i), 2147483647i, u_input.b.x != u_input.b.x) & 0i), select(select(vec4<u32>(u_input.b.x, abs(23971u), _wgslsmith_mult_u32(4294967295u, u_input.b.x), 43940u), ~vec4<u32>(u_input.b.x, 83527u, 4294967295u, u_input.b.x) ^ (vec4<u32>(34220u, 12583u, 87975u, 0u) & vec4<u32>(u_input.b.x, 12912u, 88627u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -2079f) > _wgslsmith_f_op_f32(floor(-930f))), _wgslsmith_mult_vec4_u32(vec4<u32>(48122u ^ u_input.b.x, u_input.b.x, 4294967295u >> (0u % 32u), ~4294967295u), reverseBits(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))), select(vec4<bool>(false, !var_1, !var_0, true), vec4<bool>(false, all(vec4<bool>(false, false, var_1, false)), !var_0, true), select(!vec4<bool>(true, var_0, false, var_1), select(vec4<bool>(var_0, var_1, false, true), vec4<bool>(false, var_0, true, false), var_1), u_input.b.x >= u_input.b.x))), _wgslsmith_clamp_vec3_u32((min(vec3<u32>(54879u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) << (~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) & ~vec3<u32>(28357u, 0u, 1u), ~select(~vec3<u32>(11321u, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u)), vec3<bool>(var_0, true, true)), countOneBits(vec3<u32>(~u_input.b.x, 0u, 54147u))), Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(55929i, 23512i, 30098i, 1i), arg_0, true), _wgslsmith_sub_vec4_i32(~arg_0, arg_0)), true && (_wgslsmith_mod_u32(47722u, u_input.b.x) <= max(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1180f, _wgslsmith_f_op_f32(463f + -487f), true))), ~(select(vec3<u32>(12193u, u_input.b.x, 31035u), vec3<u32>(u_input.b.x, 26325u, 4294967295u), var_0) ^ min(vec3<u32>(1u, 33617u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 10434u)))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(round(var_2.a)))), _wgslsmith_f_op_f32(-var_2.a), !var_0)), vec2<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, -13758i), vec2<i32>(19704i, -1i)), arg_0.yx), ~(~var_2.e.a) | ((i32(-1i) * -8928i) >> (~var_2.d.x % 32u))), firstLeadingBit(vec4<u32>(~u_input.b.x, ~u_input.b.x, abs(u_input.b.x), ~var_2.c.x) >> (var_2.c % vec4<u32>(32u))), vec3<u32>(var_2.c.x, var_2.e.d.x, _wgslsmith_sub_u32(~72074u, _wgslsmith_add_u32(max(var_2.e.d.x, 46694u), min(63879u, var_2.e.d.x)))), var_2.e);
    return u_input.b.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = vec3<u32>(u_input.b.x, 9476u, func_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(59982i, u_input.a, u_input.a, u_input.a), vec4<i32>(-40705i, -2147483647i, u_input.a, u_input.a)), -vec4<i32>(-48389i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))) << (max(min((vec3<u32>(7052u, 46328u, u_input.b.x) | vec3<u32>(28498u, 22891u, 302u)) ^ (vec3<u32>(1u, 1u, u_input.b.x) >> (vec3<u32>(u_input.b.x, 1328u, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 41109u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 37571u)) & abs(vec3<u32>(u_input.b.x, 51743u, 0u))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1700u, 5629u), vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 0u, u_input.b.x)) % vec3<u32>(32u));
    var var_1 = -925f;
    var var_2 = select(!select(vec2<bool>(false, true), vec2<bool>(select(true, false, false), any(vec3<bool>(true, true, true))), true), !func_5(vec2<f32>(1f, 1f), u_input.a), vec2<bool>(true, any(vec4<bool>(any(vec2<bool>(false, false)), true, u_input.b.x > var_0.x, false))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f - 502f))), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, u_input.a))), vec4<u32>(1u, max(~4294967295u, 1u), _wgslsmith_mod_u32(abs(var_0.x), 32681u), ~select(1u, 1u, var_2.x)), vec3<u32>(var_0.x, 1u, 1u), Struct_1(~u_input.a, -15409i <= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, u_input.a)), _wgslsmith_f_op_f32(ceil(-1000f)), var_0)), 4294967295u, reverseBits(abs(~vec4<u32>(var_0.x, 1u, 59791u, var_0.x)) | ~(~vec4<u32>(0u, var_0.x, var_0.x, u_input.b.x))), var_0.x, Struct_2(1f, -vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-1i, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 7427u, 1u, u_input.b.x) ^ ~vec4<u32>(1u, 85449u, var_0.x, var_0.x), vec4<u32>(~4294967295u, 24120u, ~1u, countOneBits(u_input.b.x))), countOneBits(~(var_0 | var_0)), Struct_1(abs(~u_input.a), var_2.x, -135f, ~var_0)));
    var_1 = 1f;
    return _wgslsmith_div_vec4_u32(vec4<u32>(~(~19772u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, 11804u), var_3.b), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_3.c, vec4<u32>(4795u, 0u, var_0.x, 11458u)), ~var_3.a.c), ~80655u), ~var_3.c) & var_3.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))))));
    let var_1 = abs(~reverseBits(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
    let var_2 = 0u;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -u_input.a, firstTrailingBit(var_1.x & 1i)), ~_wgslsmith_add_vec2_i32(~vec2<i32>(var_1.x, 1i), ~vec2<i32>(var_1.x, 72858i))), ~(~vec4<u32>(var_2, 114021u, 1u, u_input.b.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 7517u, 0u), func_1()) % vec4<u32>(32u))), vec3<u32>(_wgslsmith_add_u32(1u >> (var_2 % 32u), u_input.b.x) >> (firstTrailingBit(var_2 | u_input.b.x) % 32u), ~(~firstLeadingBit(var_2)), _wgslsmith_div_u32(var_2, ~u_input.b.x) ^ 0u), Struct_1(44014i, all(vec4<bool>(true, true, true, true)), var_0.x, ~vec3<u32>(var_2, var_2, ~var_2)));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1002f)));
    var var_5 = Struct_3(var_3, u_input.b.x, _wgslsmith_mult_vec4_u32(firstTrailingBit((vec4<u32>(u_input.b.x, 60729u, 4294967295u, var_3.d.x) | var_3.c) ^ var_3.c), select(vec4<u32>(var_2, abs(u_input.b.x), var_3.e.d.x, firstLeadingBit(4294967295u)), vec4<u32>(1u, firstTrailingBit(13729u), 4294967295u, u_input.b.x ^ 43446u), !any(vec2<bool>(var_3.e.b, false)))), 1u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-855f * var_3.e.c) - var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) * _wgslsmith_f_op_f32(var_3.a + 1714f))), vec2<i32>(var_3.e.a, _wgslsmith_sub_i32(1i, var_3.b.x)), ~var_3.c, ~(~vec3<u32>(0u, u_input.b.x, u_input.b.x)), Struct_1(var_3.e.a, var_3.e.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), -140f), firstLeadingBit(firstTrailingBit(var_3.c.wxz)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-890f + _wgslsmith_f_op_f32(-1485f + _wgslsmith_f_op_f32(var_0.x - var_3.e.c)))), 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(309f, -1000f, var_5.e.a, -2324f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_5.e.e.c, -723f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(922f, _wgslsmith_f_op_f32(-1000f + var_3.e.c), -816f, -610f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 314f, -468f, var_5.a.e.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1515f, -1153f, 859f, -1079f))))), ~max(var_5.a.d.x, 67540u) << (~var_5.e.d.x % 32u));
}

