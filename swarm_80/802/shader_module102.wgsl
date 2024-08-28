struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(614f, 418f))) + 555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1583f - 323f) + _wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1062f, 1000f))))));
    let var_1 = Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, true), 2947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)), reverseBits(2147483647i)), -(i32(-1i) * -u_input.b)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 504f)) + _wgslsmith_f_op_f32(step(-591f, var_0))), _wgslsmith_f_op_f32(step(-707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, 664f)) + _wgslsmith_f_op_f32(2142f + 632f)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, u_input.b), 8874i)));
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(true, var_1.b.a.x, true), vec3<bool>(false, select(var_1.a.a.a.x, var_1.a.a.a.x, var_1.a.a.a.x), true), var_1.b.a), _wgslsmith_f_op_f32(select(var_1.a.a.b, var_1.b.c, var_1.a.a.a.x)), var_0, var_1.b.d), select(select(vec4<bool>(any(vec2<bool>(var_1.b.a.x, var_1.a.a.a.x)), true, any(vec4<bool>(true, var_1.a.a.a.x, true, var_1.a.a.a.x)), -40302i >= u_input.b), vec4<bool>(var_1.b.a.x, var_1.a.a.a.x, !var_1.a.a.a.x, all(vec3<bool>(false, var_1.b.a.x, var_1.b.a.x))), vec4<bool>(all(vec4<bool>(var_1.b.a.x, true, false, var_1.b.a.x)), any(vec2<bool>(var_1.b.a.x, var_1.b.a.x)), any(var_1.a.a.a.xz), true)), vec4<bool>(u_input.a.x >= ~0u, var_1.b.a.x || var_1.a.a.a.x, var_1.a.a.a.x, var_1.a.a.a.x), any(!(!var_1.b.a))), vec4<bool>(-649f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-232f, var_0, false))), select(any(vec3<bool>(false, var_1.a.a.a.x, true)), false, any(vec3<bool>(var_1.a.a.a.x, false, var_1.b.a.x))) & any(!vec3<bool>(var_1.b.a.x, false, true)), any(vec2<bool>(!var_1.a.a.a.x, false)), var_1.a.a.a.x));
    let var_3 = !select(!vec4<bool>(select(var_2.a.a.x, true, var_1.b.a.x), true, false, true), select(!(!var_2.b), vec4<bool>(1000f == var_1.b.b, true, any(var_1.a.a.a.xx), all(vec3<bool>(true, var_1.b.a.x, true))), select(select(var_2.c, var_2.c, vec4<bool>(true, false, true, false)), var_2.b, !vec4<bool>(var_1.a.a.a.x, var_1.b.a.x, var_1.b.a.x, false))), var_2.c);
    var var_4 = _wgslsmith_mod_u32(69200u, ~(~(~(~13248u))));
    return select(vec4<bool>(select(true, true, all(var_2.b.xzz)) | (_wgslsmith_dot_vec2_i32(vec2<i32>(-14464i, u_input.b), vec2<i32>(2147483647i, var_2.a.d)) < -var_2.a.d), ~(-60185i) < ~(1i << (u_input.a.x % 32u)), all(var_3), var_3.x), vec4<bool>(all(var_2.a.a.yx), !(!var_3.x), var_3.x, false || var_1.a.a.a.x), var_3.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(arg_1.a, -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -34361i, 1i, arg_1.a.d), -vec4<i32>(-44159i, arg_1.a.d, -4045i, -14127i)), -1i));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1807f - arg_1.a.c)))));
    var var_2 = select(arg_1.a.a.xz, !(!select(var_0.a.a.zx, arg_0.wx, vec2<bool>(true, false))), vec2<bool>(any(select(arg_1.c.yw, arg_0.zx, true)) && false, arg_0.x));
    var var_3 = var_0.a.a.zy;
    return vec4<u32>(_wgslsmith_mult_u32(~min(4294967295u, u_input.a.x), ~u_input.a.x), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 21601u)), ~(u_input.a.x << (u_input.a.x % 32u)))), ~4336u, u_input.a.x << (8943u % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(!(!(!vec3<bool>(true, true, arg_0.x))), 182f, -333f, 1i << (u_input.a.x % 32u)), 0i);
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.b);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f - 546f) * _wgslsmith_f_op_f32(trunc(-740f))), _wgslsmith_f_op_f32(-375f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(223f, 168f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-819f * var_0.a.c), _wgslsmith_f_op_f32(round(var_1)), true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(643f, _wgslsmith_f_op_f32(round(var_1))) - var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(190f))))));
    var_0 = Struct_3(var_0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -5927i, u_input.b, 2147483647i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_2, arg_2), vec4<u32>(arg_2, 47470u, 40719u, 0u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -57260i, 9262i, 2147483647i), select(vec4<i32>(30694i, -1i, u_input.b, 44441i), vec4<i32>(-61005i, -1i, -24149i, var_0.b), true), ~vec4<i32>(var_0.a.d, -27133i, 66332i, 2147483647i))), ~min(vec4<i32>(-1i, var_0.b, 1i, -19009i), vec4<i32>(44203i, var_0.a.d, u_input.b, var_0.a.d)) >> (func_4(func_3(), Struct_2(var_0.a, vec4<bool>(arg_1.x, arg_1.x, var_0.a.a.x, true), arg_1)) % vec4<u32>(32u))));
    var var_3 = !arg_1;
    return Struct_4(Struct_3(var_0.a, min(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.d, u_input.b), vec2<i32>(u_input.b, -25732i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 3765i), vec2<i32>(var_0.a.d, -1i))), firstLeadingBit(var_0.b))), Struct_1(!vec3<bool>(any(arg_1.wxw), false, false), -256f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1))), _wgslsmith_clamp_i32(max(var_0.a.d & u_input.b, 1i), u_input.b, _wgslsmith_add_i32(0i, max(var_0.b, var_0.a.d)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(select(arg_2.a.a, !arg_0.a, arg_3.b.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -113f))), _wgslsmith_f_op_f32(f32(-1f) * -943f), -36142i);
    let var_1 = ~(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1364f, _wgslsmith_div_f32(-467f, arg_0.c), -803f, 1f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.b, arg_2.a.b, var_0.b, -747f) + vec4<f32>(arg_3.b.c, 937f, 1337f, 1708f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-670f, -1108f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_2.a.c)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, _wgslsmith_div_f32(-1769f, -661f), arg_2.a.b, var_0.b))));
    var var_3 = any(select(!arg_2.a.a, func_2(var_0.a.zz, vec4<bool>(false, arg_0.c == var_0.b, true, 17967i < var_0.d), func_4(!vec4<bool>(false, true, arg_2.a.a.x, false), Struct_2(Struct_1(arg_3.a.a.a, -972f, 437f, -53383i), arg_2.b, arg_2.b)).x).a.a.a, !arg_2.a.a.x));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-995f, arg_0.c, -825f, -1427f), vec4<f32>(-2546f, 1219f, var_2.x, -217f), true))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1997f, -274f, arg_2.a.b) + vec4<f32>(var_2.x, arg_2.a.b, -229f, arg_2.a.c)))))));
    return func_2(vec2<bool>(arg_2.b.x, arg_3.b.a.x), arg_2.b, func_4(select(vec4<bool>(arg_3.b.a.x, arg_3.b.a.x & arg_0.a.x, all(arg_0.a.xy), true), select(arg_2.c, func_3(), !vec4<bool>(false, false, arg_0.a.x, arg_2.c.x)), arg_3.b.d > reverseBits(var_1)), arg_2).x).b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_2(func_5(arg_3.b, ~_wgslsmith_sub_i32(arg_1.b.d, -arg_1.b.d), Struct_2(arg_0.a, !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_1.b.a.x, true), select(!vec4<bool>(true, false, true, arg_3.a.a.a.x), vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, arg_3.b.a.x), !vec4<bool>(arg_0.a.a.x, true, arg_1.a.a.a.x, false))), func_2(select(arg_0.a.a.zy, !arg_0.a.a.xy, arg_1.a.a.a.yy), select(vec4<bool>(arg_3.a.a.a.x, true, arg_3.b.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, false, arg_1.b.a.x, arg_1.a.a.a.x), true || arg_3.a.a.a.x), ~abs(u_input.a.x))), vec4<bool>(false, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(79790u, 20598u)) != u_input.a.x, arg_0.a.a.x, arg_3.b.a.x), vec4<bool>(arg_1.a.a.a.x, any(vec4<bool>(arg_1.b.a.x, true, true & arg_1.b.a.x, arg_3.a.a.d > 1i)), true, true));
    let var_1 = func_2(arg_0.a.a.yz, !vec4<bool>(all(vec4<bool>(var_0.b.x, arg_3.b.a.x, false, var_0.c.x)), var_0.c.x, arg_0.a.a.x, true), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(select(586f, _wgslsmith_div_f32(arg_3.a.a.c, var_0.a.b), !(!(!var_0.a.a.x))));
    var var_3 = arg_2.x;
    var var_4 = Struct_3(func_2(func_5(var_0.a, 0i, var_0, Struct_4(var_1.a, Struct_1(vec3<bool>(arg_3.b.a.x, var_0.c.x, false), -1449f, 305f, u_input.b))).a.yy, vec4<bool>(true, true, false, !(true || arg_0.a.a.x)), _wgslsmith_mod_u32(abs(func_4(vec4<bool>(arg_3.b.a.x, var_0.a.a.x, arg_1.b.a.x, false), var_0).x), 12094u)).b, var_1.a.b);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.a.c))) * arg_3.a.a.b), _wgslsmith_div_f32(-156f, _wgslsmith_f_op_f32(-var_1.a.a.b)), !func_3().x));
}

fn func_6(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = all(!vec3<bool>(false, arg_1.x, true));
    var var_1 = Struct_2(Struct_1(select(func_3().xyz, vec3<bool>(!arg_1.x, any(vec3<bool>(arg_1.x, arg_2, false)), u_input.b < -1i), !arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 * arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - arg_3))), ~_wgslsmith_sub_i32(min(u_input.b, 2147483647i), _wgslsmith_div_i32(u_input.b, -2147483647i))), select(!(!vec4<bool>(true, var_0, var_0, false)), vec4<bool>(false, arg_0, true, true), func_3()), !func_3());
    let var_2 = _wgslsmith_mod_vec3_u32(u_input.a.xyx, abs(u_input.a.xww));
    let var_3 = Struct_1(!vec3<bool>(true, true, !select(var_1.c.x, false, arg_2)), arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(900f - func_2(arg_1, var_1.c, 80360u).a.a.c))))), 1i);
    var_1 = Struct_2(func_2(vec2<bool>(var_1.b.x == any(vec4<bool>(var_3.a.x, arg_0, var_0, true)), !var_3.a.x), func_3(), ~(~(~52244u))).a.a, vec4<bool>(var_3.c < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.b - arg_3))), false, func_3().x, true), !vec4<bool>(true, true, var_3.a.x, all(func_3())));
    return func_2(!vec2<bool>(_wgslsmith_f_op_f32(var_1.a.b + -1591f) > _wgslsmith_div_f32(266f, -548f), !(var_3.d != u_input.b)), var_1.c, 1u).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = Struct_4(func_6(all(vec4<bool>(true, true, true, true)), vec2<bool>(!all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, true))), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec3<bool>(true, true, false), 2002f, -666f, u_input.b), u_input.b), Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, false), 421f, -324f, 11855i), u_input.b), Struct_1(vec3<bool>(true, true, true), -556f, -481f, 1i)), vec4<i32>(u_input.b, 23058i, 2147483647i, 2147483647i), Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, true), -826f, -1000f, 59294i), 29414i), Struct_1(vec3<bool>(true, false, true), -648f, 475f, u_input.b)))) * 208f))), Struct_1(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), ~0u != (u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - 1090f) - _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec3<bool>(false, true, false), -128f, 866f, u_input.b), u_input.b), Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, true), 230f, 656f, -18661i), 30062i), Struct_1(vec3<bool>(true, false, false), -1172f, -470f, u_input.b)), ~vec4<i32>(2147483647i, u_input.b, u_input.b, -14722i), Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, true), 1056f, 896f, u_input.b), -24997i), Struct_1(vec3<bool>(false, true, false), -837f, 1251f, -4408i))))), _wgslsmith_f_op_f32(round(-353f)), -(reverseBits(1i) ^ (0i | u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(min(var_1.a.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b - _wgslsmith_f_op_f32(min(var_1.b.c, var_1.b.b)))) * -424f)));
    var var_3 = firstLeadingBit(-12081i) >> (u_input.a.x % 32u);
    var_0 = firstTrailingBit(30419u);
    var_1 = func_2(var_1.a.a.a.zy, select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.a.a.d <= 2832i, var_1.a.a.a.x, true, var_1.a.a.a.x), func_3().x), ~(~u_input.a.x));
    var_3 = ~53887i << ((53141u << (((u_input.a.x ^ u_input.a.x) >> ((1u << (firstLeadingBit(u_input.a.x) % 32u)) % 32u)) % 32u)) % 32u);
    var_3 = _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-5433i, 43224i, u_input.b), vec3<i32>(var_1.a.b, ~u_input.b, -9551i)) ^ u_input.b);
    let var_4 = Struct_1(vec3<bool>(true, false, var_1.b.a.x), _wgslsmith_f_op_f32(min(1564f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1022f - _wgslsmith_div_f32(-422f, var_2)) * 101f))), var_1.b.b, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(376f, var_2)), _wgslsmith_f_op_f32(-1154f * _wgslsmith_f_op_f32(max(var_2, -1550f))), var_1.a.a.a.x)) * var_4.b));
}

