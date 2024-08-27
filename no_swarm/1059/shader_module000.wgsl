struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    var var_0 = !(!arg_3.d.c);
    var var_1 = !vec4<bool>(!(!arg_3.d.c) && !any(vec4<bool>(arg_1.c, true, arg_3.d.c, true)), any(vec2<bool>(!arg_1.c, true)), arg_1.c, 22060u < abs(_wgslsmith_add_u32(u_input.d.x, 4294967295u)));
    let var_2 = Struct_4(~countOneBits(u_input.c.x), Struct_2(_wgslsmith_mult_i32(arg_3.c.a, ~43051i) | arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.b))), Struct_1(_wgslsmith_add_i32(-arg_1.b.x, -arg_3.d.b.x), min(_wgslsmith_clamp_vec4_i32(arg_3.c.b, arg_3.e.b, vec4<i32>(2147483647i, u_input.c.x, 0i, -19408i)), abs(arg_1.b)), all(vec4<bool>(arg_1.c, arg_3.c.c, arg_3.e.c, arg_1.c))), arg_1, arg_3.d), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f + -959f)), arg_0)))), 0i, arg_3.e);
    var var_3 = reverseBits(u_input.a.x);
    var var_4 = !(!(!var_1.yy));
    return !(max(17323i, u_input.b) >= ~(~arg_2.x << (1u % 32u)));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = false;
    var var_1 = Struct_3(Struct_2(-10292i, _wgslsmith_f_op_f32(-763f * 1000f), Struct_1(u_input.b, _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(u_input.b, 2147483647i, u_input.c.x, u_input.c.x) << (vec4<u32>(4294967295u, 18384u, 56119u, u_input.a.x) % vec4<u32>(32u))), all(!vec3<bool>(var_0, false, var_0))), Struct_1(u_input.b, (vec4<i32>(u_input.b, 0i, 7387i, 2147483647i) >> (vec4<u32>(arg_0.x, 35520u, arg_0.x, 0u) % vec4<u32>(32u))) & -vec4<i32>(-38626i, u_input.c.x, -1i, u_input.c.x), _wgslsmith_add_i32(-34459i, u_input.b) < firstLeadingBit(-2147483647i)), Struct_1(i32(-1i) * -2147483647i, select(~vec4<i32>(-56563i, u_input.b, u_input.c.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-5306i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.c.x, -25230i, 9507i, -1i)), !vec4<bool>(false, false, false, var_0)), !func_3(-182f, Struct_1(-44732i, vec4<i32>(-13574i, u_input.c.x, u_input.c.x, u_input.c.x), false), u_input.c, Struct_2(u_input.c.x, -309f, Struct_1(u_input.c.x, vec4<i32>(u_input.c.x, 55027i, u_input.c.x, u_input.c.x), false), Struct_1(29143i, vec4<i32>(1i, 1i, -14704i, 0i), var_0), Struct_1(u_input.c.x, vec4<i32>(9312i, u_input.c.x, -54576i, u_input.c.x), false))))), ~40763u);
    return _wgslsmith_add_i32(i32(-1i) * -49144i, u_input.c.x >> (abs(var_1.b) % 32u)) ^ (u_input.c.x ^ u_input.c.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(-(i32(-1i) * -37886i), -42512i);
    var var_1 = func_2(vec3<u32>(~u_input.a.x, max(15366u, 0u), ~u_input.a.x));
    var var_2 = ~1u;
    var var_3 = select(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(11578u, 43283u, u_input.d.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x) % vec3<u32>(32u)), vec3<u32>(countOneBits(9949u), _wgslsmith_mod_u32(u_input.a.x, 3494u), 86922u)), firstTrailingBit(u_input.d.x)), reverseBits(_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x), u_input.a)), ~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.d.x, 1u)), vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)))), vec2<bool>(!arg_0, !arg_0));
    var_2 = firstLeadingBit(var_3.x);
    return Struct_2(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2768f), _wgslsmith_div_f32(523f, 924f), true)))), _wgslsmith_f_op_f32(1460f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f * 1506f) + _wgslsmith_f_op_f32(trunc(-1824f))))), Struct_1(-(~(-56482i)), abs(~min(vec4<i32>(u_input.c.x, -9596i, var_0, u_input.c.x), vec4<i32>(2107i, var_0, -1i, u_input.c.x))), _wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(select(-238f, -287f, arg_0))) < -484f), Struct_1(~func_2(~vec3<u32>(var_3.x, var_3.x, 7215u)), ~reverseBits(~vec4<i32>(2147483647i, 1i, u_input.b, 1i)), !all(vec4<bool>(arg_0, false, arg_0, arg_0))), Struct_1(~(-_wgslsmith_div_i32(54072i, 1i)), ~vec4<i32>(countOneBits(u_input.c.x), abs(1i), ~35312i, ~2147483647i), all(select(!vec4<bool>(true, arg_0, true, true), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), arg_0), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, true, arg_0, arg_0))))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> vec4<u32> {
    var var_0 = min(vec2<u32>(1u, (firstTrailingBit(u_input.d.x) | ~u_input.d.x) | 0u), u_input.d);
    let var_1 = func_1(arg_1.e.c);
    var var_2 = firstLeadingBit(1u);
    var_0 = max(~_wgslsmith_div_vec2_u32(~u_input.a, vec2<u32>(abs(20011u), 37199u ^ var_0.x)), u_input.a);
    var var_3 = var_1.e.b;
    return ~_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), var_0.x, 0u, var_0.x & 1u), countOneBits(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x))) << (abs(vec4<u32>(u_input.a.x, 105436u, min(1u, u_input.a.x), ~var_0.x >> (abs(4294967295u) % 32u))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(arg_2.d.b, -(-arg_2.d.b >> (~vec4<u32>(1u, arg_3.x, 1u, u_input.a.x) % vec4<u32>(32u)))), Struct_2(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.x)), -397f), Struct_1(arg_2.c.b.x, vec4<i32>(-2147483647i, ~(-10610i), 50787i, u_input.b), true), Struct_1(22041i, arg_2.e.b, 524f == _wgslsmith_f_op_f32(round(arg_2.b))), arg_2.d), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-28319i, arg_2.e.b.x, 74352i, u_input.b), vec4<i32>(arg_2.c.b.x, -74813i, arg_2.c.b.x, arg_2.a)) & _wgslsmith_div_vec4_i32(arg_2.c.b, arg_2.e.b), arg_2.e.b), -_wgslsmith_add_vec4_i32(arg_2.c.b, abs(arg_2.d.b))), arg_2.c);
    let var_1 = Struct_4(arg_2.e.b.x, Struct_2(reverseBits(u_input.b), 1645f, Struct_1(var_0.e.b.x, ~abs(var_0.b.e.b), arg_2.c.c), arg_2.c, Struct_1(_wgslsmith_add_i32(-var_0.b.e.a, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_2.e.b, vec4<i32>(var_0.d, u_input.b, var_0.e.b.x, var_0.b.c.a)), -vec4<i32>(2147483647i, var_0.a, var_0.e.a, var_0.d)), arg_0.x < _wgslsmith_div_u32(arg_0.x, arg_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(var_0.c * var_0.b.b)) * var_0.b.b), 1000f), 1i, var_0.b.c);
    let var_2 = -316f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, _wgslsmith_f_op_f32(step(var_2, 507f)), _wgslsmith_f_op_f32(select(-1268f, arg_2.b, arg_2.d.c))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, arg_1.x, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1841f, var_2, -893f))))))));
    var_0 = var_1;
    return Struct_2(~max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_2.a) & u_input.c, max(var_0.b.d.b.zy, arg_2.c.b.wy)), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.b.b)))), func_1(true).e, var_0.b.d, arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true | !all(vec2<bool>(true, false)), true, true);
    let var_1 = func_5(func_4(164f, Struct_4(u_input.b, func_1(!var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1757f, -710f))), 10774i | u_input.b, Struct_1(1i, vec4<i32>(u_input.c.x, u_input.b, 0i, u_input.b) ^ vec4<i32>(u_input.b, 77440i, u_input.c.x, -43127i), var_0.x & false)), _wgslsmith_div_f32(1144f, 1157f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1253f, 880f, -3262f, -1193f)))))))), Struct_2(~u_input.c.x, 1f, Struct_1(u_input.b, -(vec4<i32>(0i, u_input.c.x, -44803i, 968i) | vec4<i32>(u_input.b, 2147483647i, u_input.b, -2147483647i)), false), func_1(!any(var_0)).d, func_1(true).d), vec2<u32>(_wgslsmith_div_u32(min(firstTrailingBit(u_input.d.x), 16196u | u_input.d.x), _wgslsmith_clamp_u32(~u_input.a.x, ~1u, _wgslsmith_add_u32(1u, u_input.d.x))), _wgslsmith_mod_u32(firstLeadingBit(~u_input.d.x), _wgslsmith_add_u32(u_input.a.x, 4294967295u) & countOneBits(9898u))));
    let var_2 = var_1.c.b.yy;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(func_5(vec4<u32>(u_input.a.x, u_input.d.x, 0u, 1u), vec4<f32>(var_1.b, var_1.b, 462f, var_1.b), var_1, u_input.d).b)), _wgslsmith_f_op_f32(abs(var_1.b)), 2701f)));
    let var_4 = vec2<i32>(~(-1i), 2147483647i);
    let var_5 = Struct_3(func_5(firstTrailingBit(~(~vec4<u32>(u_input.d.x, u_input.a.x, 4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 234f, var_1.b, 1171f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, var_1.b, var_3.x, var_1.b)))), func_5(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, 41098u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1000f, -1056f, 333f) - vec4<f32>(var_3.x, var_3.x, 589f, var_1.b))), var_1, ~(~vec2<u32>(1u, u_input.a.x))), vec2<u32>(~0u, ~u_input.a.x)), 0u);
    let var_6 = vec2<u32>(4294967295u, var_5.b);
    let var_7 = func_1(true);
    var var_8 = Struct_4(-20651i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_7.c.b.x, u_input.b << (0u % 32u), reverseBits(var_5.a.e.b.x), 2147483647i), _wgslsmith_clamp_vec4_i32(func_1(var_1.c.c).e.b, -var_1.d.b, reverseBits(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x)))), func_1(!(-594f < _wgslsmith_f_op_f32(-var_1.b))), 1320f, i32(-1i) * -1i, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_7.b, 1349f, 166f, var_7.b), vec4<f32>(var_3.x, -752f, -345f, 3347f))))), vec2<u32>(min(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), var_5.b)), 10545u), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(func_5(vec4<u32>(5307u, 24706u, 60876u, 8829u), vec4<f32>(1167f, -281f, -2280f, -1123f), Struct_2(var_2.x, -242f, var_5.a.d, Struct_1(-1i, var_5.a.e.b, var_7.e.c), var_7.e), vec2<u32>(u_input.a.x, u_input.d.x)).b)), -1551f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + var_1.b) * var_8.b.b), func_1(false).b), var_7.b, 1075f), var_8.b.b);
}

