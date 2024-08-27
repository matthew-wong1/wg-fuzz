struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec2<i32> {
    let var_0 = vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), u_input.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, u_input.b), vec4<u32>(53243u, u_input.b, u_input.c, u_input.d.x))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(u_input.d.x, abs(u_input.c))), ~(~u_input.b >> (arg_1.x % 32u))));
    let var_1 = Struct_1(vec2<bool>(true, true), 23294i >= -_wgslsmith_dot_vec2_i32(vec2<i32>(20283i, arg_0.a), u_input.a.xx));
    let var_2 = _wgslsmith_add_vec2_u32(max(_wgslsmith_mod_vec2_u32(max(vec2<u32>(1u, var_0.x), abs(vec2<u32>(0u, arg_1.x))), ~arg_1 ^ vec2<u32>(1u, 0u)), ~u_input.d), countOneBits(arg_1));
    var var_3 = var_1;
    return abs(vec2<i32>(firstTrailingBit(-arg_2), countOneBits(arg_0.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32) -> vec4<f32> {
    let var_0 = !(arg_0.c.x < (u_input.a.x << (reverseBits(arg_0.b) % 32u)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(max(6018u, arg_0.b), 4294967295u), 0u);
    let var_2 = vec3<bool>(arg_0.a.b.b, any(select(select(!vec3<bool>(false, var_0, var_0), !vec3<bool>(var_0, var_0, true), select(vec3<bool>(var_0, arg_0.e, false), vec3<bool>(var_0, var_0, true), var_0)), vec3<bool>(var_0 || true, var_0, u_input.a.x != arg_0.c.x), vec3<bool>(false, any(vec2<bool>(arg_0.e, true)), arg_0.e))), false);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(592f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.a.a.x)), arg_0.a.a.x))))), arg_0.a.b, any(vec3<bool>(var_0, var_0, true)));
    let var_4 = abs(-vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, -1i, arg_0.c.x, -23722i), vec4<i32>(arg_0.c.x, arg_0.c.x, u_input.a.x, -2147483647i)), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x) | ~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, 2147483647i, -37355i), vec4<i32>(arg_0.c.x, 27626i, arg_0.c.x, u_input.a.x)), -vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1572f, -201f)) + arg_0.a.a.x), arg_2, arg_0.a.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, -26622i), vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(-4306i, 33173i, -24162i, -u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2363f, -395f) * vec2<f32>(2160f, 747f))), Struct_1(vec2<bool>(true, true), all(vec2<bool>(true, true))), true), ~11391u, -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a.x), func_3(Struct_2(-11350i), vec2<u32>(4294967295u, u_input.d.x), var_0.a)), vec3<f32>(-596f, 2094f, -1000f), true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1154f - _wgslsmith_f_op_f32(-1625f - -664f)) * 413f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f + -645f)))), 1342f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.zy), Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), true), false);
    var var_3 = u_input.d.x;
    var var_4 = (abs(_wgslsmith_mod_u32(4294967295u, ~u_input.d.x)) | ~u_input.c) ^ u_input.c;
    return Struct_2(var_0.a);
}

fn func_1() -> Struct_4 {
    let var_0 = true;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - 713f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f - 1000f) * _wgslsmith_f_op_f32(max(2061f, -874f))))));
    var var_3 = vec2<bool>(!any(vec4<bool>(true, all(vec2<bool>(var_0, true)), all(vec4<bool>(var_0, true, var_0, false)), true)), var_0);
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(48225u, u_input.d.x)), ~u_input.c) | select(_wgslsmith_sub_u32(u_input.c, u_input.d.x), _wgslsmith_mod_u32(u_input.c, 1u), true), abs(_wgslsmith_div_u32(45097u, u_input.c)), _wgslsmith_mult_u32(~(~30998u), ~min(u_input.c, u_input.c))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(6059u, 63016u, 33160u), select(vec3<u32>(0u, 41983u, u_input.c), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(var_0, var_0, false))), vec3<u32>(1u, u_input.b, 26994u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 63625u, u_input.d.x) & vec3<u32>(1u, 4294967295u, u_input.d.x), select(vec3<u32>(13619u, 4294967295u, u_input.d.x), vec3<u32>(1u, u_input.c, 19883u), true))));
    return Struct_4(Struct_3(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1554f)), Struct_1(!vec2<bool>(var_3.x, true), 4229u != max(1u, u_input.d.x)), select(true, true, var_3.x) && (var_2 >= var_2)), ~u_input.d.x & _wgslsmith_add_u32(~(1u >> (u_input.b % 32u)), _wgslsmith_sub_u32(u_input.b, 39111u) << (36449u % 32u)), abs(countOneBits(-vec2<i32>(var_1.a, 29038i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_3(vec2<f32>(var_2, var_2), Struct_1(vec2<bool>(var_3.x, true), var_3.x), false), var_4.x, u_input.a.yx, vec3<f32>(870f, var_2, -177f), var_3.x), vec3<f32>(-1988f, var_2, var_2), var_2)).x, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(trunc(var_2)), var_2))), select(all(vec4<bool>(1180f > var_2, true, false != var_0, true)), 1u <= countOneBits(var_4.x), any(!vec4<bool>(var_3.x, false, true, var_3.x)) | var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1208f, -2019f, true)), -1000f)))));
    var var_1 = func_1();
    var var_2 = Struct_5(vec4<bool>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.x))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_3(var_1.a.a, var_1.a.b, true), 0u, vec2<i32>(27519i, -2147483647i), var_1.d, true), var_1.d, -1000f)).x, _wgslsmith_f_op_f32(716f * var_1.d.x))), var_1.a.b.a.x, false));
    let var_3 = false;
    var_1 = Struct_4(var_1.a, ~(~reverseBits(_wgslsmith_sub_u32(var_1.b, u_input.c))), _wgslsmith_mod_vec2_i32(-(~var_1.c << (vec2<u32>(u_input.c, 1184u) % vec2<u32>(32u))), vec2<i32>((u_input.a.x | u_input.a.x) ^ ~(-36213i), max(-u_input.a.x, 46423i))), var_1.d, false);
    var var_4 = vec2<bool>(any(!select(var_2.a, var_2.a, var_2.a)), any(vec3<bool>(all(!vec2<bool>(var_3, var_2.a.x)), false, any(!var_2.a))));
    let var_5 = func_1().a;
    var_4 = func_1().a.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(~var_1.b), 1u, abs(reverseBits(1u))), countOneBits(-(_wgslsmith_dot_vec2_i32(vec2<i32>(2769i, 1i), u_input.a.xy) << (~0u % 32u))));
}

