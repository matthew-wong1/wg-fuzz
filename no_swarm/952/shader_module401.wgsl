struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2163f + -533f)))), _wgslsmith_f_op_f32(round(-505f))), reverseBits(firstTrailingBit(~vec3<u32>(26515u, u_input.a.x, u_input.a.x) ^ max(vec3<u32>(u_input.a.x, u_input.a.x, 15987u), vec3<u32>(u_input.a.x, 1u, u_input.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(885f))) + -238f))), ~(~abs(vec2<i32>(arg_0.x, global0.x))), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a));
    var_0 = Struct_1(vec2<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.c)), -1931f))), reverseBits(abs(min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(9996u, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(1i, var_0.d.x)), vec2<i32>(-2147483647i, global0.x)), ~0u);
    var var_1 = max(vec2<u32>(var_0.b.x, 4294967295u), ~reverseBits(min(_wgslsmith_mult_vec2_u32(u_input.a.wy, vec2<u32>(var_0.e, 46150u)), _wgslsmith_mod_vec2_u32(var_0.b.yy, vec2<u32>(41790u, 40276u)))));
    var var_2 = _wgslsmith_f_op_f32(var_0.c + -583f);
    var_1 = ~_wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(u_input.a.x, var_0.b.x))), var_0.b.zz) & (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a.x, var_0.b.x)), vec2<u32>(~u_input.a.x, u_input.a.x)) ^ u_input.a.wy);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-667f * 1000f), _wgslsmith_f_op_f32(select(-202f, var_0.c, false))))) + _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 971f)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-353f, _wgslsmith_f_op_f32(step(arg_1.c, arg_1.a.x)), arg_0.a.x, arg_0.a.x)))))));
    let var_1 = -236f;
    var var_2 = Struct_2(any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)))), max(_wgslsmith_div_vec2_i32(vec2<i32>(25170i, -arg_1.d.x), reverseBits(vec2<i32>(-44068i, 3566i))), -arg_0.d), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f, 875f), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.d.x, 1i, global0.x), -vec3<i32>(arg_0.d.x, -21350i, arg_0.d.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_1.d.x, -6152i), vec3<i32>(arg_1.d.x, arg_0.d.x, 22549i))))), abs(~u_input.a.xyy), -420f, abs(abs(global0.zx)), 62115u));
    let var_3 = arg_0;
    let var_4 = arg_1.b.x << (~(~(~(52726u << (u_input.a.x % 32u)))) % 32u);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-844f, -1842f)) * -420f))), arg_0.c), ~u_input.a.zwy, _wgslsmith_f_op_f32(f32(-1f) * -459f), global0.xz, select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, arg_0.e, var_4, var_4)), countOneBits(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(var_4, 47444u, var_2.d.e, arg_1.b.x)))), ~var_2.d.e, var_2.a));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    global0 = ~vec3<i32>(reverseBits(-2147483647i), 46746i, -13820i);
    global0 = _wgslsmith_add_vec3_i32(-abs(~vec3<i32>(-2147483647i, global0.x, global0.x)), ~(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(2147483647i, global0.x, -11969i))));
    let var_0 = Struct_3(vec3<bool>(select(false, true, false), true, true), func_2(arg_0, arg_0), vec3<f32>(_wgslsmith_div_f32(1807f, arg_0.c), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.c, arg_0.c), _wgslsmith_f_op_f32(-1025f - _wgslsmith_f_op_f32(f32(-1f) * -1358f)))), -1141f));
    let var_1 = -vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(arg_1), ~abs(var_0.b.d.x)), -(_wgslsmith_sub_i32(-1i, arg_1) | 20708i), -global0.x ^ -28367i);
    var var_2 = Struct_2(var_0.a.x, min(vec2<i32>(~var_0.b.d.x, ~(-2147483647i)) & vec2<i32>(global0.x, arg_0.d.x), select(firstLeadingBit(global0.zy), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 2147483647i) >> (vec2<u32>(arg_0.e, 16252u) % vec2<u32>(32u)), global0.yx), select(var_0.a.yy, vec2<bool>(false, true), var_0.a.xy))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.d.x, 2147483647i, global0.x), var_1, var_1))).x, 1405f, var_0.c.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), arg_0.c), vec3<u32>(~_wgslsmith_mod_u32(arg_0.b.x, arg_0.e), 33327u, var_0.b.b.x), var_0.c.x, max(-vec2<i32>(-9526i, -2147483647i), vec2<i32>(11710i, _wgslsmith_dot_vec2_i32(var_1.xz, var_0.b.d))), _wgslsmith_mult_u32(~4294967295u | reverseBits(u_input.a.x), 0u)));
    return Struct_2(var_2.a, _wgslsmith_mult_vec2_i32(var_1.yz, firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i) ^ var_2.b, ~var_2.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_div_f32(102f, _wgslsmith_f_op_f32(step(var_0.c.x, var_2.d.a.x))), -319f)), func_2(func_2(Struct_1(vec2<f32>(arg_0.c, -1000f), vec3<u32>(arg_3.x, arg_3.x, arg_2), 781f, -vec2<i32>(-1i, var_2.d.d.x), arg_2), Struct_1(arg_0.a, abs(vec3<u32>(1u, var_0.b.e, arg_2)), 2435f, vec2<i32>(-9939i, arg_0.d.x), ~39830u)), Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.b.c, arg_0.a.x), var_0.c.x), ~var_2.d.b, _wgslsmith_f_op_f32(f32(-1f) * -675f), max(vec2<i32>(-1i, var_1.x) & var_2.d.d, vec2<i32>(-23721i, 2147483647i)), var_0.b.e)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: i32) -> Struct_3 {
    global0 = ~(min(vec3<i32>(_wgslsmith_div_i32(global0.x, global0.x), 2441i, i32(-1i) * -1i), ~vec3<i32>(-4303i, arg_0.d.d.x, -1i)) >> ((min(vec3<u32>(31742u, arg_1.x, u_input.a.x), u_input.a.yzz) << (arg_0.d.b % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_0 = Struct_3(vec3<bool>(arg_0.a, true, arg_0.a), func_4(func_2(func_4(func_2(arg_0.d, Struct_1(vec2<f32>(-483f, -874f), arg_2, arg_0.d.a.x, vec2<i32>(arg_3, arg_0.d.d.x), arg_2.x)), arg_0.b.x, firstTrailingBit(arg_0.d.b.x), arg_2.zz).d, arg_0.d), _wgslsmith_dot_vec2_i32(arg_0.d.d, vec2<i32>(countOneBits(-1i), -2147483647i)), ~(~4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 43858u), abs(vec2<u32>(51801u, 43867u)))).d, arg_0.c);
    let var_1 = -arg_3;
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-81769i), 2147483647i, _wgslsmith_sub_i32(-16033i, var_0.b.d.x), i32(-1i) * -2147483647i), vec4<i32>(arg_0.d.d.x, -26856i, 57967i, 5935i) ^ -vec4<i32>(var_0.b.d.x, -19086i, -1i, arg_3)), func_2(func_2(Struct_1(vec2<f32>(arg_0.d.a.x, 282f), vec3<u32>(u_input.a.x, 1u, 27359u), 338f, vec2<i32>(var_1, global0.x), arg_2.x), arg_0.d), arg_0.d).d.x, func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.a.x, var_0.b.a.x) + vec2<f32>(var_0.c.x, var_0.c.x)), arg_0.d.b, _wgslsmith_f_op_f32(-arg_0.d.a.x), vec2<i32>(37146i, arg_3), _wgslsmith_add_u32(arg_0.d.b.x, arg_0.d.e)), func_4(func_2(Struct_1(vec2<f32>(1068f, arg_0.c.x), vec3<u32>(arg_2.x, 34515u, arg_1.x), 971f, global0.yx, arg_2.x), Struct_1(vec2<f32>(var_0.b.a.x, arg_0.c.x), vec3<u32>(0u, 4294967295u, arg_2.x), arg_0.c.x, vec2<i32>(var_0.b.d.x, 54541i), 9109u)), ~(-1i), 4294967295u, arg_1 & vec2<u32>(1u, arg_2.x)).d).d.x), abs(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.b, -arg_0.b), -45463i, i32(-1i) * -2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2152f, arg_0.c.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(980f, 441f))))));
    return Struct_3(!(!var_0.a), Struct_1(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~arg_0.d.b, _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -300f))), _wgslsmith_mult_vec2_i32(firstLeadingBit(abs(var_0.b.d)), -vec2<i32>(12768i, -24937i)), ~(~var_0.b.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3224f, arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f * arg_0.d.a.x)))));
}

fn func_1() -> i32 {
    let var_0 = func_5(func_4(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-121f, -846f))), _wgslsmith_sub_vec3_u32(u_input.a.wwy, u_input.a.wwx), _wgslsmith_f_op_f32(f32(-1f) * -377f), ~global0.xy, ~4294967295u), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1062f, -1935f), vec2<f32>(-1847f, -1575f)), _wgslsmith_mod_vec3_u32(vec3<u32>(61423u, 1u, 23136u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), -860f, _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, global0.x), global0.yz), u_input.a.x)), global0.x, u_input.a.x, u_input.a.zz), vec2<u32>(~(~_wgslsmith_add_u32(1u, 0u)), select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.wy, u_input.a.xy), ~u_input.a.yw), 17447u, true)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x & u_input.a.x), u_input.a.zwz), global0.x);
    global0 = countOneBits(countOneBits(firstLeadingBit(vec3<i32>(countOneBits(0i), global0.x & 2147483647i, -global0.x))));
    let var_1 = select(vec4<u32>(~max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(33892u, var_0.b.e, u_input.a.x), var_0.b.b, vec3<u32>(21037u, var_0.b.b.x, u_input.a.x)), vec3<u32>(u_input.a.x, var_0.b.e, var_0.b.b.x)), firstTrailingBit(u_input.a.x), 0u) ^ ((select(u_input.a, u_input.a, vec4<bool>(false, false, false, var_0.a.x)) << ((vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) >> (vec4<u32>(42230u, 3408u, 6125u, var_0.b.e) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(16812u, _wgslsmith_clamp_u32(4271u, 1028u, 79301u), _wgslsmith_mult_u32(4294967295u, var_0.b.e), var_0.b.e) % vec4<u32>(32u))), ~((~vec4<u32>(0u, 4294967295u, 0u, var_0.b.e) | vec4<u32>(42543u, u_input.a.x, var_0.b.b.x, var_0.b.e)) ^ (reverseBits(u_input.a) & firstLeadingBit(vec4<u32>(var_0.b.e, 0u, 190u, 0u)))), !(!vec4<bool>(true, true, !var_0.a.x, true)));
    let var_2 = ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wxy, vec3<u32>(34446u, 7084u, 4294967295u)), var_1.xwz));
    global0 = vec3<i32>(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-13200i, global0.x), vec2<i32>(global0.x, var_0.b.d.x)), vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(func_5(Struct_2(false, vec2<i32>(var_0.b.d.x, var_0.b.d.x), vec3<f32>(-953f, var_0.c.x, var_0.c.x), Struct_1(vec2<f32>(-938f, var_0.c.x), vec3<u32>(var_2, var_2, 64242u), -1520f, vec2<i32>(global0.x, var_0.b.d.x), 4294967295u)), var_1.yw, vec3<u32>(var_1.x, var_2, 4294967295u), -1i).b.d.x, -43365i))), -(~(-2147483647i)), reverseBits(var_0.b.d.x | abs(76780i)));
    return var_0.b.d.x;
}

fn func_6(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 629f;
    global0 = abs(firstTrailingBit(select(vec3<i32>(2147483647i, arg_0.x, 1i), arg_0.zwz, false)) & countOneBits(vec3<i32>(-26169i, ~(-1i), -27705i)));
    global0 = vec3<i32>(-arg_2.d.x, abs(0i) & -(~(-1508i) >> (arg_2.e % 32u)), global0.x);
    var var_1 = vec3<bool>(!(!(true || all(vec2<bool>(true, false)))), _wgslsmith_mod_u32(~(~4294967295u), abs(func_4(arg_2, 47601i, u_input.a.x, u_input.a.yy).d.e)) <= ~56263u, func_4(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(628f, 2065f) + arg_2.a), vec3<u32>(67386u, 1u, u_input.a.x), _wgslsmith_f_op_f32(-arg_2.c), global0.xz, _wgslsmith_add_u32(arg_1, 1u)), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.x, -24121i), ~21838i), ~_wgslsmith_sub_u32(arg_2.b.x, arg_1), u_input.a.xw << (vec2<u32>(53043u, arg_1) % vec2<u32>(32u))).d, arg_0.x, _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 0u, 11175u, arg_2.e), u_input.a), vec4<u32>(u_input.a.x, arg_2.e, u_input.a.x, 4294967295u), vec4<bool>(true, true, true, true)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 1u, arg_2.e), vec4<u32>(arg_2.e, arg_1, arg_2.b.x, 0u)), countOneBits(vec4<u32>(arg_2.e, arg_1, arg_1, u_input.a.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), vec2<u32>(~u_input.a.x, arg_2.e)).a);
    var var_2 = Struct_3(!vec3<bool>(func_4(arg_2, global0.x, func_5(Struct_2(true, arg_0.xy, vec3<f32>(413f, -1674f, 1000f), arg_2), u_input.a.yx, vec3<u32>(arg_2.e, 28500u, arg_1), global0.x).b.e, ~vec2<u32>(arg_1, 1u)).a, arg_1 < ~arg_2.e, !(var_1.x | var_1.x)), func_5(Struct_2(true, global0.xx, _wgslsmith_div_vec3_f32(vec3<f32>(905f, 1394f, 1523f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 1784f, arg_2.c), vec3<f32>(var_0, arg_2.a.x, arg_2.a.x), false))), arg_2), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(4294967295u, arg_1)) << (_wgslsmith_div_vec2_u32(min(vec2<u32>(arg_2.e, 35442u), u_input.a.xy), arg_2.b.xy) % vec2<u32>(32u)), arg_2.b & _wgslsmith_sub_vec3_u32(~vec3<u32>(37119u, 0u, 1u), vec3<u32>(3483u, 4294967295u, arg_2.e)), -firstTrailingBit(-arg_2.d.x)).b, vec3<f32>(-362f, -499f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2276f - -543f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-423f + var_0), _wgslsmith_f_op_f32(-arg_2.c))))));
    return func_5(Struct_2(false, func_4(arg_2, var_2.b.d.x, 11430u, u_input.a.xx).b, vec3<f32>(204f, var_0, var_0), Struct_1(arg_2.a, ~vec3<u32>(0u, 51286u, u_input.a.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_0 - arg_2.a.x)), -_wgslsmith_sub_vec2_i32(global0.xz, global0.zx), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(66198u, u_input.a.x, 6565u, arg_1), vec4<u32>(u_input.a.x, 0u, arg_2.b.x, arg_2.b.x)), 22846u))), _wgslsmith_div_vec2_u32(~firstTrailingBit(vec2<u32>(arg_1, 0u)), arg_2.b.yx), vec3<u32>(var_2.b.e, arg_2.e, 22002u), ~arg_0.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(abs(vec4<i32>(global0.x, _wgslsmith_sub_i32(global0.x, global0.x) << ((0u >> (u_input.a.x % 32u)) % 32u), firstTrailingBit(func_1()), global0.x)), ~9560u, Struct_1(func_2(func_2(func_2(Struct_1(vec2<f32>(-164f, 1463f), vec3<u32>(u_input.a.x, u_input.a.x, 0u), -727f, vec2<i32>(global0.x, global0.x), u_input.a.x), Struct_1(vec2<f32>(-1086f, -364f), u_input.a.zwy, 542f, vec2<i32>(-2147483647i, 4206i), u_input.a.x)), func_4(Struct_1(vec2<f32>(-244f, 976f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -1098f, global0.yz, 0u), global0.x, 4294967295u, vec2<u32>(60312u, 1253u)).d), func_5(Struct_2(true, vec2<i32>(52888i, global0.x), vec3<f32>(532f, 330f, 2411f), Struct_1(vec2<f32>(-850f, 169f), u_input.a.wzx, 1842f, global0.xx, u_input.a.x)), ~u_input.a.zx, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(global0.x, global0.x)).b).a, u_input.a.yyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1615f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-461f, 941f) - _wgslsmith_f_op_f32(190f - 272f))), global0.yy, _wgslsmith_mod_u32(28495u, abs(4294967295u))));
    let var_1 = false;
    global0 = _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-9804i, _wgslsmith_mod_i32(var_0.d.x, var_0.d.x), _wgslsmith_mult_i32(global0.x, 1i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(func_4(Struct_1(var_0.a, vec3<u32>(u_input.a.x, 0u, 5693u), var_0.a.x, var_0.d, var_0.b.x), global0.x, 6978u, vec2<u32>(var_0.b.x, 6760u)).b.x, -global0.x), ~(global0.zz << (u_input.a.wx % vec2<u32>(32u)))), global0.x, var_0.d.x), ~_wgslsmith_mult_vec3_i32(min(vec3<i32>(var_0.d.x, 2147483647i, var_0.d.x), vec3<i32>(-1i, -2147483647i, global0.x)), firstTrailingBit(vec3<i32>(var_0.d.x, global0.x, global0.x))) | (max(select(vec3<i32>(4838i, -1i, 0i), vec3<i32>(-1i, global0.x, var_0.d.x), false), min(vec3<i32>(var_0.d.x, -1i, -1i), vec3<i32>(34566i, 2147483647i, global0.x))) << (vec3<u32>(u_input.a.x, func_4(var_0, global0.x, 0u, vec2<u32>(1u, var_0.b.x)).d.b.x, ~u_input.a.x) % vec3<u32>(32u))));
    global0 = vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(1i, global0.x, -2147483647i) << ((u_input.a.zww << (vec3<u32>(4294967295u, var_0.b.x, var_0.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = min(~(-23356i), -71239i);
    let var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(1u >> (0u % 32u), u_input.a.x), _wgslsmith_mod_u32(~(~var_0.e), 96360u)), u_input.a, vec3<i32>(~52509i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-23884i, -56035i), -var_0.d), _wgslsmith_sub_i32(1i, -var_2)), ~var_0.d.x), 1u, var_0.d.x);
}

