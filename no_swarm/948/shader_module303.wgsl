struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(select(u_input.b, u_input.b, false), ~vec2<u32>(u_input.e, 20296u)) & _wgslsmith_mod_vec2_u32(u_input.a.yw, _wgslsmith_div_vec2_u32(u_input.a.ww, u_input.a.zy))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.a.x, 4294967295u), firstLeadingBit(vec3<u32>(u_input.e, u_input.c, u_input.b.x))) & ~(~reverseBits(4294967295u)), ~(~min(u_input.d & u_input.c, 0u)));
    let var_1 = _wgslsmith_mod_i32(i32(-1i) * -19714i, (-1i | (arg_2.c << (1u % 32u))) | arg_2.c);
    let var_2 = select(u_input.a, (_wgslsmith_mod_vec4_u32(vec4<u32>(25399u, u_input.e, var_0, u_input.b.x), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) | (select(vec4<u32>(u_input.c, u_input.b.x, 41597u, var_0), u_input.a, false) ^ ~vec4<u32>(37540u, 1u, var_0, var_0))) ^ _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, firstTrailingBit(60071u), 1u, var_0)), vec4<bool>(false, true, !(var_1 >= countOneBits(2147483647i)), true));
    let var_3 = 73236u > max(~63471u, firstTrailingBit(1u));
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(-arg_2.a.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.c.yz) - arg_2.a.yw), vec2<f32>(-270f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.a.x, arg_0.a.a.x), _wgslsmith_f_op_f32(-arg_0.a.a.x)))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-694f, _wgslsmith_f_op_f32(step(arg_3.c.x, 392f)))))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1637f)), _wgslsmith_f_op_f32(-arg_0.a.a.x)));
    var var_2 = select(!(_wgslsmith_f_op_f32(abs(880f)) <= _wgslsmith_f_op_f32(sign(arg_3.a.x))), any(!select(select(vec3<bool>(true, arg_0.b, false), vec3<bool>(arg_0.b, false, false), arg_0.b), vec3<bool>(false, true, true), arg_0.b)), arg_0.b);
    let var_3 = vec3<bool>(true, select(any(!select(vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, arg_0.b))), false & any(!vec2<bool>(arg_0.b, arg_0.b)), arg_0.b), arg_0.b);
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2074f)), -430f), _wgslsmith_f_op_vec2_f32(ceil(arg_0.a.c.xz)), !any(vec4<bool>(arg_0.b, true, false, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) - _wgslsmith_f_op_f32(round(arg_0.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 182f), arg_2.c.x))), var_3.xy));
    return 28058i;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<i32>(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, -1280f, arg_2.a.x, -1755f) - arg_2.a), ~arg_0, _wgslsmith_f_op_vec4_f32(arg_2.a + arg_2.c), 4084i), false, 0i), _wgslsmith_mult_i32(-1i, arg_2.d) << (~(~u_input.c) % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a)), -1i, vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x), arg_2.c.x, _wgslsmith_f_op_f32(func_3(-2224i, arg_2.c.x, Struct_2(Struct_1(vec4<f32>(163f, -470f, -1721f, 1837f), arg_2.b, vec4<f32>(arg_2.c.x, arg_2.a.x, arg_2.c.x, 294f), arg_2.b), false, arg_0), vec4<i32>(arg_0, arg_2.b, 0i, arg_0))), -239f), _wgslsmith_div_i32(0i, 57755i)), arg_2), -23384i, ~0i, -_wgslsmith_add_i32(2147483647i, reverseBits(arg_2.d)) >> ((u_input.a.x & 4294967295u) % 32u));
    var_0 = min(min(~vec4<i32>(var_0.x, -3216i, arg_0, -1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 65022u, 11294u, u_input.a.x), vec4<u32>(u_input.c, 76063u, 4294967295u, u_input.d)) % vec4<u32>(32u)), ~(vec4<i32>(0i, var_0.x, arg_0, 1i) ^ vec4<i32>(1i, arg_2.b, var_0.x, -1i))) & countOneBits(-(vec4<i32>(arg_0, arg_0, -1i, arg_0) | vec4<i32>(var_0.x, 2147483647i, 2147483647i, 1i))), -reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, 7166i, arg_2.d, 18745i), vec4<i32>(-37649i, 0i, 2147483647i, 2147483647i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.a.x) % vec4<u32>(32u)))));
    var var_1 = vec3<bool>(all(vec3<bool>(true, arg_1.x, all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, false, true), false)))), arg_2.a.x != arg_2.c.x, var_0.x < arg_2.d);
    let var_2 = vec3<bool>(any(select(!(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), !(!vec4<bool>(var_1.x, true, arg_1.x, arg_1.x)), vec4<bool>(true, var_1.x, all(vec3<bool>(var_1.x, arg_1.x, var_1.x)), false))), all(vec4<bool>(!(!var_1.x), true, arg_2.a.x >= _wgslsmith_f_op_f32(arg_2.a.x * 434f), true)), var_1.x);
    var_0 = vec4<i32>(var_0.x, _wgslsmith_mult_i32(48863i, -((1i << (u_input.c % 32u)) | ~(-1i))), -_wgslsmith_clamp_i32(-33809i, ~(-38339i), var_0.x ^ -2147483647i), -firstLeadingBit(_wgslsmith_mod_i32(var_0.x, arg_0)));
    return 644f;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = u_input.e;
    var_0 = 34830u;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * -538f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(func_2(1i, vec2<bool>(false, true), Struct_1(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 159f), 20451i, vec4<f32>(arg_1.x, -615f, arg_1.x, arg_1.x), -1i))), _wgslsmith_f_op_f32(select(2835f, arg_1.x, true)))), 10015i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-935f + arg_1.x) + -289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -1269f, true))), _wgslsmith_f_op_f32(func_2(-17050i, vec2<bool>(false, true), Struct_1(vec4<f32>(arg_1.x, 1088f, 326f, 682f), -48347i, vec4<f32>(117f, arg_1.x, arg_1.x, arg_1.x), 38667i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 545f) * 436f)), -9189i), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), ~(-44967i));
    var_0 = abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxz, max(_wgslsmith_mod_vec3_u32(arg_0.zwx, vec3<u32>(19106u, 1u, arg_0.x)), arg_0.xzw)), u_input.c));
    var_0 = arg_0.x;
    return var_1;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var_0 = Struct_2(arg_1.a, true, var_0.c);
    var var_1 = func_1(~(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.b.x)))), arg_3.c.wzx);
    var_0 = func_1(~(~vec4<u32>(1u, u_input.b.x, u_input.e, u_input.a.x) | _wgslsmith_mod_vec4_u32(~vec4<u32>(10394u, 1u, 19347u, 4294967295u), firstLeadingBit(vec4<u32>(47860u, u_input.b.x, 24444u, 0u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a.xxw + var_0.a.c.ywz) + _wgslsmith_f_op_vec3_f32(select(arg_1.a.a.yxy, vec3<f32>(1000f, -507f, -777f), vec3<bool>(true, var_1.b, arg_1.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(253f, -519f, var_1.a.c.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(324f, -1213f, var_1.a.c.x), vec3<f32>(arg_1.a.c.x, -1910f, arg_2.c.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.a.x - var_0.a.a.x), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-arg_1.a.a.x)) + arg_2.c.ywz))));
    var var_2 = Struct_2(arg_1.a, ~57361u != u_input.b.x, _wgslsmith_sub_i32(-24397i, arg_0.x) >> (_wgslsmith_mod_u32(u_input.e, u_input.e) % 32u));
    return _wgslsmith_add_vec2_i32(max(arg_0.xy | -vec2<i32>(var_0.a.d, arg_3.d), vec2<i32>(~35i, _wgslsmith_add_i32(arg_2.d, arg_3.d))), arg_0.xz) ^ arg_0.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(154f));
    let var_1 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(~1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -10052i), vec2<i32>(-1i, -1149i))), func_5(vec3<i32>(1i, 1i, 1i), func_1(~vec4<u32>(u_input.b.x, 22249u, 5009u, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, 218f, 1144f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1892f, 322f, 985f, -1943f)), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1203f, -2949f, -676f, 275f) * vec4<f32>(656f, -1472f, -430f, 1081f)), i32(-1i) * -8127i), func_1(u_input.a, vec3<f32>(-1435f, -1432f, -367f)).a)), min(-vec2<i32>(firstTrailingBit(25795i), -8911i), firstTrailingBit(~vec2<i32>(3088i, -10i)) ^ -(~vec2<i32>(1i, 37792i))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(func_1(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(375f)), 557f, 249f)).a.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(-1823f + -654f)) * func_1(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, -228f, 1063f))).a.a.x)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(607f + -106f) - _wgslsmith_f_op_f32(f32(-1f) * -959f))) + 512f);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(679f, -1168f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f * 942f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(998f, -707f)), _wgslsmith_div_f32(773f, -1283f))))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(151f))), _wgslsmith_f_op_f32(func_2(-var_1.x, vec2<bool>(true, true), Struct_1(vec4<f32>(-893f, 732f, 1000f, 1104f), 37483i, vec4<f32>(-1000f, 190f, -227f, -438f), -1i))))), -996f, 1248f));
    let var_3 = abs(u_input.a.zwy << (vec3<u32>(u_input.e, 30831u, u_input.c) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(min(vec2<u32>(var_3.x, var_3.x), vec2<u32>(u_input.a.x, 92533u))), vec2<u32>(u_input.d, 1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), vec4<u32>(u_input.e, 4294967295u, 1u, 41183u)), select(firstLeadingBit(1u), var_3.x ^ 0u, true))), var_3.zx, -var_1, u_input.a.xzx & abs(~vec3<u32>(var_3.x, 46899u, u_input.b.x)));
}

