struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = Struct_2(~arg_0.zxx, _wgslsmith_div_vec3_f32(arg_2.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.e)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(149f, -668f, arg_2.b), arg_2.e))))), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(~32275u, reverseBits(0u), ~arg_1, 4294967295u)));
    var_0 = Struct_2(arg_0.xwx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -456f), 344f, _wgslsmith_f_op_f32(f32(-1f) * -1650f)), 32123u);
    var_0 = Struct_2(select(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, arg_0.x, arg_1), arg_0.yww), var_0.a, select(vec3<u32>(4294967295u, arg_0.x, 1u), ~var_0.a, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), _wgslsmith_mod_vec3_u32(var_0.a | vec3<u32>(arg_0.x, 0u, 9483u), arg_0.xzz) >> (~(~var_0.a) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), _wgslsmith_sub_i32(arg_2.a.x, 2147483647i) == 9823i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.e) * _wgslsmith_f_op_vec3_f32(round(arg_2.e))), false)))), firstTrailingBit(select(_wgslsmith_div_u32(51966u, 1u), ~11911u, true) >> (u_input.b % 32u)));
    var_0 = Struct_2(~var_0.a, var_0.b, _wgslsmith_dot_vec3_u32(arg_0.zwz, abs(~var_0.a & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_1, 117941u), arg_0.xzy))));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(arg_2.e, var_0.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 1000f))))), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_2.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -170f)));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d, u_input.d, u_input.b), vec3<u32>(u_input.a, u_input.b, 18483u), true), vec3<u32>(~42452u, 0u, 1u)) >> (5798u % 32u), u_input.c);
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = func_4(Struct_1(vec2<i32>(arg_2.x, arg_2.x), arg_0.b.x, arg_2.xx >> (min(_wgslsmith_mult_vec2_u32(arg_0.a.zy, arg_0.a.yx), arg_0.a.xz & arg_0.a.yx) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<u32>(arg_0.a.x, 18861u, u_input.b, u_input.c), 1u, Struct_1(arg_2.yx, 626f, vec2<i32>(arg_2.x, -14698i), arg_0.b.x, vec3<f32>(-1456f, 609f, arg_0.b.x)), 459f)), -461f))), _wgslsmith_f_op_vec3_f32(ceil(arg_0.b))));
    var var_1 = ~u_input.a;
    let var_2 = Struct_2(~select(~(arg_0.a & arg_0.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.c, u_input.b, u_input.d), ~arg_0.a), var_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(-arg_0.b))))), u_input.d);
    var var_3 = var_0;
    var var_4 = select(vec4<bool>(func_4(Struct_1(abs(vec2<i32>(arg_2.x, arg_2.x)), arg_0.b.x, vec2<i32>(0i, -19924i), _wgslsmith_f_op_f32(max(1000f, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(424f, arg_0.b.x, var_2.b.x))))).x, (var_2.a.x ^ 0u) < 81564u, true, select((arg_2.x < arg_2.x) | !arg_1, true, true)), vec4<bool>(false, select(!var_0.x, var_3.x, arg_2.x > reverseBits(arg_2.x)), true, ~abs(var_2.a.x) <= ~u_input.a), !select(!all(var_3.xz), false, true));
    return Struct_2(select(~(max(vec3<u32>(arg_0.a.x, arg_0.c, var_2.a.x), vec3<u32>(var_2.c, arg_0.c, arg_0.a.x)) << (max(vec3<u32>(var_2.c, 1u, 87415u), vec3<u32>(8055u, 1u, 4294967295u)) % vec3<u32>(32u))), ~(~var_2.a ^ vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x)), var_0), _wgslsmith_f_op_vec3_f32(-var_2.b), ~arg_0.c);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-122f, _wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, u_input.b, 0u, 0u), 0u, arg_1, arg_3.b.x)))), _wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.b.x)), arg_3.b.x), true)), _wgslsmith_f_op_f32(arg_1.b + -3214f)));
    return var_0.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(countOneBits(~vec2<i32>(_wgslsmith_add_i32(arg_1, 31342i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -3823i), vec3<i32>(-1i, arg_1, arg_1)))), _wgslsmith_f_op_f32(-723f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f - -1000f))))), ~(~vec2<i32>(~arg_0, 1i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(~(~46242u), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -1i), vec2<i32>(32440i, arg_0)), _wgslsmith_f_op_f32(712f * -942f), reverseBits(vec2<i32>(2147483647i, -8615i)), _wgslsmith_f_op_f32(-1002f - -677f), vec3<f32>(-1585f, -1837f, 1350f)), ~21691u, func_2(Struct_2(arg_2, vec3<f32>(1668f, 565f, -1173f), 0u), false, firstTrailingBit(vec3<i32>(-2147483647i, arg_0, 53579i))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(503f * -397f), -1104f, 1936f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1118f, -1000f) * vec3<f32>(124f, 1424f, -2035f)))))));
    return select(select(!vec4<bool>(arg_1 == var_0.c.x, var_0.e.x > var_0.b, true, true), vec4<bool>(false, _wgslsmith_f_op_f32(floor(984f)) >= _wgslsmith_f_op_f32(-414f * 357f), (arg_0 << (1u % 32u)) == -arg_1, true), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, ((arg_0 == 2147483647i) || any(vec2<bool>(true, false))) && true, !any(vec3<bool>(true, true, true))), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, any(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), func_1(0i, 0i, vec3<u32>(27694u, u_input.c, u_input.d)), vec4<bool>(true, true, true, true))), false, select(true, any(vec2<bool>(true, true)), select(true, all(vec2<bool>(true, true)), func_1(firstLeadingBit(-16833i), i32(-1i) * -6782i, vec3<u32>(1u, 1u, 1u)).x)));
    var var_1 = 1047f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(687f, _wgslsmith_f_op_f32(ceil(-1831f)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1245f)));
    let var_2 = vec3<bool>(!(!var_0.x), !(true && var_0.x), !var_0.x);
    var var_3 = !vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), ~vec2<u32>(25452u, u_input.c)) > 1u, all(var_0.xz), select(var_0.x, true, true) & var_0.x, true | (all(vec4<bool>(var_2.x, var_2.x, true, var_2.x)) | true));
    var_3 = vec4<bool>(var_3.x, var_3.x, !(!var_3.x), var_2.x);
    var var_4 = u_input.d;
    var var_5 = firstLeadingBit(abs(~(~vec4<u32>(64396u, u_input.a, u_input.b, 31217u)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 40596u, 1u), vec4<u32>(u_input.a, u_input.a, 9341u, 27962u)), firstTrailingBit(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.c))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-812f);
}

