struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = vec4<i32>(12522i, -_wgslsmith_div_i32(-arg_1.x, 17829i), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-39484i, arg_2.c & arg_1.x), abs(-arg_1.x)), _wgslsmith_div_i32(-46312i << (~4294967295u % 32u), arg_1.x));
    var var_1 = Struct_3(vec3<u32>(u_input.a.x, ~u_input.a.x, firstTrailingBit(~(u_input.a.x | 0u))), arg_2.a.x && ((~8211u >> (~u_input.a.x % 32u)) < min(4294967295u, u_input.a.x)));
    var_1 = Struct_3(u_input.a.zwz, true);
    let var_2 = -1631f;
    var var_3 = 316f;
    return false;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    let var_0 = arg_0.a.x;
    let var_1 = Struct_3(vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(~39145u, _wgslsmith_add_u32(_wgslsmith_mult_u32(30557u, 1u), abs(u_input.a.x)), 0u)), false);
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(floor(-1095f));
    var var_4 = u_input.a.x;
    return Struct_4(818f, -746f, Struct_1(!select(vec3<bool>(var_1.b, arg_3, var_0), select(vec3<bool>(var_1.b, false, true), arg_0.a, true), arg_0.a.x), _wgslsmith_div_f32(-2078f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-498f * 693f)))), 28837i, _wgslsmith_add_vec2_i32(~vec2<i32>(16797i, 1i), firstLeadingBit(vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1368f, -1183f, arg_2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(2672f, var_2.x, arg_1.x), arg_2))) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_3)), -236f, _wgslsmith_f_op_f32(step(arg_2.x, arg_1.x))))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = 2147483647i;
    let var_1 = Struct_2(select(vec3<bool>(all(vec4<bool>(false, false, false, false)), arg_3.c.a.x, arg_1.x), select(vec3<bool>(arg_3.c.c < var_0, arg_1.x, true), func_3(Struct_2(arg_1.zxw, arg_3.c.e.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1570f, arg_3.b)), _wgslsmith_f_op_vec3_f32(floor(arg_3.c.e)), true).c.a, func_3(Struct_2(vec3<bool>(false, arg_1.x, arg_3.c.a.x), vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-arg_3.c.e.yy), arg_3.c.e, true).c.a), arg_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), arg_2), 2062f)));
    let var_2 = func_3(var_1, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-634f, arg_2), _wgslsmith_f_op_f32(round(arg_0)))), 335f), var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), 1000f, -105f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.c.e))), any(arg_1.xz)).c;
    return arg_3.c.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) - _wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.e.x))) + arg_2.e.x)));
    let var_1 = arg_0.xzw;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(961f, !(!vec4<bool>(arg_2.a.x, arg_2.a.x, true, true)), -170f, func_3(Struct_2(vec3<bool>(arg_2.a.x, false, arg_2.a.x), vec2<f32>(-161f, arg_2.e.x)), arg_2.e.zz, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, arg_2.b, -373f), vec3<f32>(981f, 2023f, 1149f))), func_2(arg_2.e.x, arg_0, Struct_1(vec3<bool>(arg_2.a.x, true, arg_2.a.x), 750f, arg_2.d.x, arg_2.d, arg_2.e), vec3<f32>(arg_2.b, -1000f, var_0.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -687f)))), _wgslsmith_f_op_f32(max(-1044f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(863f, arg_2.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -1071f))))));
    var var_3 = u_input.a.yz;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_4(var_0.x, select(!vec4<bool>(false, true, arg_2.a.x, arg_2.a.x), !vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x)), func_3(Struct_2(arg_2.a, vec2<f32>(1000f, -255f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(arg_2.e * arg_2.e), false).b, Struct_4(arg_2.b, _wgslsmith_div_f32(var_0.x, arg_2.b), func_3(Struct_2(arg_2.a, vec2<f32>(1196f, var_0.x)), vec2<f32>(arg_2.e.x, arg_2.b), vec3<f32>(1171f, var_0.x, -620f), false).c))).xx) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_2.e.yx + arg_2.e.xx))));
    return _wgslsmith_dot_vec3_i32(var_1, arg_0.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(1i & _wgslsmith_div_i32(func_1(vec4<i32>(-2147483647i, 35933i, -1i, -6946i), u_input.a, Struct_1(vec3<bool>(true, false, false), -523f, 9516i, vec2<i32>(-1i, -1i), vec3<f32>(479f, 1377f, -1216f))) & max(0i, -15838i), -2147483647i), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 61763i), 47493i)));
    let var_1 = Struct_2(vec3<bool>(true, false, u_input.a.x > u_input.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2299f, -322f), vec2<f32>(-973f, 284f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, -1708f))), vec2<f32>(-1515f, -963f))), vec2<f32>(1f, 1f))));
    var var_2 = -19825i;
    let var_3 = select(select(~vec2<i32>(~var_0, _wgslsmith_mod_i32(49381i, 39299i)), vec2<i32>(-1i, ~(var_0 >> (u_input.a.x % 32u))), var_1.a.yz), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, 29404i), vec4<i32>(var_0, 24706i, 2047i, var_0)), -vec4<i32>(var_0, 1i, 31980i, -2147483647i))) ^ reverseBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 1995i))), select(func_3(var_1, _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(621f, var_1.b.x, var_1.b.x))), true).c.a.xz, !vec2<bool>(var_1.a.x, var_1.a.x || var_1.a.x), select(vec2<bool>(true, var_1.a.x), vec2<bool>(1691f >= var_1.b.x, false), var_1.a.yy)));
    var_2 = _wgslsmith_div_i32(-1i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(-246f, vec4<bool>(var_1.a.x, true, var_1.a.x, false), 1000f, Struct_4(var_1.b.x, 496f, Struct_1(var_1.a, -612f, 40010i, vec2<i32>(var_0, var_0), vec3<f32>(var_1.b.x, 615f, var_1.b.x))))).x)))));
}

