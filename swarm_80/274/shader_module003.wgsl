struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = u_input.d.zxy;
    var var_1 = abs(firstTrailingBit(max(vec3<i32>(-1i) * -vec3<i32>(var_0.x, u_input.d.x, arg_2), abs(var_0))));
    var var_2 = Struct_1(-arg_2, firstLeadingBit(~max(~4294967295u, u_input.a.x)));
    let var_3 = ~(~abs(vec4<u32>(4323u, u_input.c, ~u_input.c, ~4294967295u)));
    var_1 = _wgslsmith_div_vec3_i32(u_input.d.zxw, vec3<i32>(~2147483647i, -8016i, var_0.x));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1082f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1032f, -1558f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1270f - -564f))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = !(!(!arg_3.c));
    let var_1 = 9176i;
    var var_2 = Struct_2(Struct_1(0i, _wgslsmith_clamp_u32(arg_2.x, arg_0.x, abs(arg_0.x))), Struct_1(-30623i, ~4294967295u | arg_0.x), Struct_1(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(28174i, -1i, var_1, 24779i), u_input.d)) >> (_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.a.x, u_input.a.x)) % 32u), 4294967295u), vec2<u32>(u_input.e.x, 75186u));
    let var_3 = arg_3;
    var_2 = Struct_2(Struct_1(0i, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), min(u_input.a, vec2<u32>(var_2.c.b, 25887u))), 4294967295u)), Struct_1(_wgslsmith_dot_vec4_i32(-u_input.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(-9015i, 5040i, -2147483647i, var_1), u_input.d, firstTrailingBit(u_input.d))), _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(u_input.e, u_input.e), vec4<u32>(6076u, 63677u, var_2.d.x, arg_2.x)), vec4<u32>(1u, u_input.c | 35660u, 1u, abs(5094u)))), var_2.c, arg_2.xx);
    return reverseBits(arg_2);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    let var_0 = ~(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, u_input.c, arg_1) << (vec3<u32>(0u, 1u, arg_1) % vec3<u32>(32u)), func_3(vec2<u32>(arg_1, arg_1), 1705f, vec3<u32>(u_input.a.x, 4294967295u, arg_1), Struct_3(arg_0.a, arg_0.b, true)))) & _wgslsmith_mod_vec3_u32(~u_input.e.xxz, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, arg_1, u_input.e.x), u_input.e.xww))));
    let var_1 = _wgslsmith_div_vec2_u32(~(~u_input.a), ~u_input.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -567f), -608f, -730f, 412f);
    var var_3 = vec4<i32>(arg_0.a.x, u_input.d.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(37775i, u_input.b), _wgslsmith_sub_vec2_i32(arg_0.a.yx, ~vec2<i32>(arg_0.a.x, arg_0.a.x))), ~(-arg_0.a.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~1u, ~(~var_1.x), 30374u), u_input.e) % vec4<u32>(32u));
    let var_4 = ~var_0;
    return Struct_1(1i, firstLeadingBit(arg_1));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = u_input.e.yyw;
    let var_1 = arg_1.b;
    var var_2 = arg_1;
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), select(select(true, true, true), false, true), true), vec4<bool>(all(vec3<bool>(true, true, false)) || true, true, !any(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)))), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, arg_0 != arg_0, true), all(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), false), true || any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true))), all(!vec2<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)))));
    var_0 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, _wgslsmith_sub_u32(arg_1.b.b, 0u) & _wgslsmith_sub_u32(57417u, u_input.e.x), reverseBits(1u))), firstLeadingBit(u_input.e.zxx));
    return Struct_2(func_2(Struct_3(~vec3<i32>(arg_1.c.a, var_1.a, var_2.c.a), _wgslsmith_mod_u32(4294967295u, 4647u) != reverseBits(var_1.b), !all(vec4<bool>(false, var_3.x, false, var_3.x))), reverseBits(~_wgslsmith_add_u32(var_1.b, var_0.x))), func_2(Struct_3(vec3<i32>(arg_1.a.a, u_input.b, arg_1.b.a) & u_input.d.zyx, (var_3.x || false) & true, !all(vec3<bool>(false, var_3.x, true))), countOneBits(var_2.b.b)), var_2.b, reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(~26848u, arg_1.b.b), ~vec2<u32>(var_0.x, 20206u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(598f, -302f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 836f)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(268f, _wgslsmith_f_op_f32(-290f + 2104f)) + vec2<f32>(761f, _wgslsmith_f_op_f32(f32(-1f) * -498f))), u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1484f))), Struct_2(func_2(Struct_3(vec3<i32>(-1i, u_input.d.x, 32483i), select(false, true, false), all(vec3<bool>(true, true, true))), _wgslsmith_mod_u32(firstLeadingBit(3860u), 1u)), func_2(Struct_3(vec3<i32>(-13635i, -1i, u_input.b), true, true), func_2(Struct_3(u_input.d.yyy, true, false), u_input.e.x).b ^ abs(112384u)), Struct_1(firstTrailingBit(i32(-1i) * -2147483647i), abs(_wgslsmith_mod_u32(u_input.a.x, u_input.e.x))), vec2<u32>(u_input.a.x, u_input.c)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -698f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1148f, 378f), vec2<f32>(258f, -186f), u_input.d.x, 308f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1970f, 363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1167f)) * -1736f), 1000f), vec4<f32>(_wgslsmith_f_op_f32(abs(666f)), _wgslsmith_f_op_f32(f32(-1f) * -2162f), _wgslsmith_f_op_f32(sign(-360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2282f))))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1165f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), -1896f)) - _wgslsmith_f_op_f32(abs(var_1.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(529f, _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x), _wgslsmith_add_i32(14708i, var_0.a.a), var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f * var_1.x)), _wgslsmith_f_op_f32(round(-1000f)))), -463f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = vec3<bool>(_wgslsmith_add_i32(-43098i, var_0.a.a) < var_0.a.a, !(_wgslsmith_sub_i32(2147483647i, ~u_input.b) >= max(_wgslsmith_mod_i32(u_input.b, var_0.b.a), u_input.d.x)), select(!any(vec3<bool>(true, false, true)) & true, all(vec2<bool>(true, true)) & all(vec4<bool>(true, true, false, false)), true));
    var var_4 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -831f), func_4(_wgslsmith_div_f32(483f, _wgslsmith_f_op_f32(abs(-1866f))), func_4(_wgslsmith_f_op_f32(-var_1.x), func_4(-575f, func_4(var_1.x, Struct_2(Struct_1(-1i, 0u), var_0.a, Struct_1(-12020i, 24360u), var_0.d))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -255f, 205f, var_1.x) - vec4<f32>(var_1.x, var_1.x, 717f, -944f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, -460f, var_1.x, -2585f) * vec4<f32>(var_1.x, var_1.x, 1161f, 455f)), all(vec4<bool>(var_3.x, true, false, var_3.x))))))) * vec4<f32>(582f, _wgslsmith_f_op_f32(trunc(-1088f)), 489f, 620f));
    var var_5 = select(u_input.d.xz, _wgslsmith_sub_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(26975i, 29931i)), -select(vec2<i32>(-1i, 2147483647i), ~vec2<i32>(2147483647i, 6788i), !var_3.x)), var_3.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-2068f, -226f, max(~var_0.a.b, 10536u) != ~func_3(u_input.e.xy, var_1.x, vec3<u32>(33517u, 0u, 11663u), Struct_3(u_input.d.xzz, false, false)).x)));
}

