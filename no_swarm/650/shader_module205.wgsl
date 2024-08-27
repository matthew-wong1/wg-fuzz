struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: i32) -> vec2<u32> {
    var var_0 = arg_1.b;
    var var_1 = Struct_2(arg_1.b.b.x, true | arg_1.b.c.x, Struct_1(_wgslsmith_sub_u32(~1u, var_0.a.x), var_0.b, vec3<i32>(arg_2, -u_input.a | _wgslsmith_sub_i32(-2147483647i, -2147483647i), u_input.a)), ~countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, var_0.a.x, 34752u), ~4294967295u)));
    var var_2 = 265f;
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) + _wgslsmith_f_op_f32(f32(-1f) * -1966f))), var_1.b, var_1.c, 33662u);
    let var_3 = vec2<bool>((~var_0.a.x | var_0.a.x) == 4294967295u, var_0.c.x);
    return var_0.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_vec2_u32(select(~(~vec2<u32>(1u, 1u)), vec2<u32>(26138u, _wgslsmith_clamp_u32(99076u, 1u, 1u)), !any(vec2<bool>(true, true))), select(min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(60839u, 4294967295u), vec2<u32>(49284u, 1u), vec2<u32>(0u, 60167u)), ~vec2<u32>(4738u, 0u)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-349f, -253f))), Struct_4(1f, Struct_3(vec2<u32>(1u, 0u), vec3<f32>(-104f, -678f, 331f), vec2<bool>(false, true))), -abs(0i)), vec2<bool>(true, true)));
    let var_1 = abs(u_input.a);
    var var_2 = Struct_3(abs(_wgslsmith_sub_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 605u), vec2<u32>(var_0.x, var_0.x)), vec2<u32>(var_0.x, 10757u) << (vec2<u32>(52396u, 20013u) % vec2<u32>(32u)), true), vec2<u32>(4294967295u, 0u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(640f, 255f, -549f) - vec3<f32>(1000f, 1135f, -311f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -714f), -450f, 1378f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1326f, -507f) - vec3<f32>(-1572f, -200f, 907f))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true)), vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true))), true));
    var var_3 = !vec4<bool>(!(!(!var_2.c.x)), false, false, !(!(!var_2.c.x)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(652f - _wgslsmith_div_f32(var_2.b.x, var_2.b.x)), 231f))), var_3.x, Struct_1(~40483u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1824f, var_2.b.x, var_2.b.x))))), countOneBits(-max(vec3<i32>(-2147483647i, -19998i, 1i), vec3<i32>(-26406i, u_input.a, 54738i)))), 4294967295u);
    return -select(min(-_wgslsmith_mult_i32(40000i, var_1), u_input.a), var_1, !(1000f > var_2.b.x));
}

fn func_1(arg_0: vec4<bool>) -> Struct_5 {
    let var_0 = max(_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(-(func_2() | -u_input.a), -u_input.a));
    var var_1 = Struct_5(Struct_1(firstTrailingBit(~(~11872u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(462f, _wgslsmith_f_op_f32(floor(162f)), 603f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(278f, -661f, -2531f))) - vec3<f32>(1f, 1f, 1f))), -(~vec3<i32>(-13052i, -1i, var_0) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, 0i), vec3<i32>(0i, var_0, 19105i)))));
    var_1 = Struct_5(Struct_1(~82901u, var_1.a.b, reverseBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_1.a.c.x, 2147483647i), var_1.a.c))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) - 1000f))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-246f - _wgslsmith_f_op_f32(sign(-810f))), 1f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.b.x)))) * _wgslsmith_f_op_f32(-var_1.a.b.x));
    return Struct_5(Struct_1(~var_1.a.a << (var_1.a.a % 32u), var_1.a.b, _wgslsmith_clamp_vec3_i32(var_1.a.c, reverseBits(vec3<i32>(var_0, -2147483647i, 0i)), -reverseBits(var_1.a.c))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: u32) -> vec3<u32> {
    var var_0 = arg_3;
    var var_1 = !vec4<bool>(select(true, all(vec3<bool>(arg_1.b.c.x, false, arg_1.b.c.x)), !any(vec4<bool>(true, arg_1.b.c.x, false, false))), true, arg_1.b.c.x, !(!(!arg_1.b.c.x)));
    var var_2 = -(arg_0.a.c ^ vec3<i32>(max(~(-17143i), -arg_0.a.c.x), u_input.a >> (~4294967295u % 32u), u_input.a));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.b.x))), 663f)), arg_0.a.b.x);
    var_1 = !(!(!vec4<bool>(true, true, !var_1.x, var_1.x)));
    return arg_2.wzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(func_4(func_1(vec4<bool>(false, false, false, false)), Struct_4(-1168f, Struct_3(vec2<u32>(9057u, 39151u), vec3<f32>(-113f, 404f, -509f), vec2<bool>(false, false))), vec4<u32>(4294967295u, 73945u, 20489u, 4294967295u), ~0u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))), _wgslsmith_add_vec3_u32(~vec3<u32>(select(0u, 61274u, false), select(1u, 41698u, false), _wgslsmith_clamp_u32(48581u, 4294967295u, 0u)), vec3<u32>(max(~0u, func_3(vec2<f32>(195f, -161f), Struct_4(-577f, Struct_3(vec2<u32>(1u, 1u), vec3<f32>(585f, 797f, 1231f), vec2<bool>(true, false))), u_input.a).x), func_4(Struct_5(Struct_1(0u, vec3<f32>(223f, -1000f, 431f), vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_4(-1292f, Struct_3(vec2<u32>(0u, 42649u), vec3<f32>(-225f, -820f, 498f), vec2<bool>(false, true))), vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(4294967295u)).x, select(0u, 10321u, true) | abs(1u))));
    var var_1 = -132f;
    let var_2 = Struct_3(func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-344f, -1000f))) * vec2<f32>(-419f, 305f)))), Struct_4(_wgslsmith_f_op_f32(1f - 1000f), Struct_3(~vec2<u32>(69830u, 17034u), vec3<f32>(449f, 109f, 391f), vec2<bool>(false, true))), u_input.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(func_1(vec4<bool>(true, true, false, false)).a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1395f, 982f, 1438f), vec3<f32>(-918f, -953f, 432f))))), vec3<f32>(_wgslsmith_f_op_f32(-func_1(vec4<bool>(false, false, false, false)).a.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1095f), -975f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(round(951f)), all(vec2<bool>(true, false))))))), vec2<bool>(true, !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, -1923f, _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(f32(-1f) * -529f))) - var_2.b) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_2.b.x) + 540f)), var_2.b.x, _wgslsmith_div_f32(-122f, var_2.b.x)));
    var var_4 = Struct_5(func_1(select(vec4<bool>(true, true, !var_2.c.x, true), vec4<bool>(any(vec2<bool>(true, true)), var_2.c.x, !var_2.c.x, var_2.c.x), !(!var_2.c.x))).a);
    let var_5 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.a.b.x * var_2.b.x))), !(!var_2.c.x), Struct_1(reverseBits(var_4.a.a), _wgslsmith_f_op_vec3_f32(sign(var_2.b)), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a.c.x, var_4.a.c.x), vec2<i32>(-53917i, 1i))), abs(_wgslsmith_add_i32(0i, u_input.a)), 16677i)), var_2.a.x ^ ~(~57517u & var_2.a.x));
    var_1 = var_3.x;
    var_0 = func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a, _wgslsmith_f_op_f32(abs(var_4.a.b.x)))), var_3.zy, select(vec2<bool>(false, !var_2.c.x), select(select(var_2.c, vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, var_2.c.x), var_2.c, false), true || var_5.b), var_2.c))), Struct_4(_wgslsmith_f_op_f32(-var_3.x), var_2), ~countOneBits(var_4.a.c.x)).x;
    let var_6 = !select(!select(!vec4<bool>(var_5.b, false, false, var_5.b), select(vec4<bool>(true, true, false, true), vec4<bool>(var_5.b, var_2.c.x, var_2.c.x, true), var_2.c.x), any(vec3<bool>(false, var_2.c.x, var_5.b))), vec4<bool>(any(vec3<bool>(false, var_5.b, true)), any(vec4<bool>(false, true, false, false)), all(!vec4<bool>(true, true, var_2.c.x, true)), all(!vec2<bool>(var_2.c.x, true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(var_5.d, max(var_5.d, var_2.a.x >> (var_4.a.a % 32u)), 14515u), vec3<u32>(var_5.c.a, var_5.d << (var_2.a.x % 32u), min(var_2.a.x, _wgslsmith_sub_u32(var_5.c.a, var_2.a.x)))));
}

