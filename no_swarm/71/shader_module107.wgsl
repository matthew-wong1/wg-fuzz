struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1091f, 1403f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, arg_3.x)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 1053f)), _wgslsmith_div_f32(-1053f, 594f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a)))))));
    var var_2 = _wgslsmith_add_i32(i32(-1i) * -1i, -(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -13659i), vec3<i32>(-2147483647i, u_input.a.x, 2147483647i)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(var_0.x, var_0.x), ~arg_2.b), u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), -316f, _wgslsmith_f_op_f32(ceil(-365f)), arg_3.x)));
    var_3 = Struct_2(arg_2, arg_0.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.c, _wgslsmith_f_op_vec4_f32(var_3.c + var_3.c)))));
    return _wgslsmith_add_i32(-13566i, u_input.a.x);
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = u_input.a;
    var var_1 = vec3<i32>(20259i, var_0.x, _wgslsmith_sub_i32(u_input.a.x, ~_wgslsmith_mult_i32(func_3(u_input.b, vec2<f32>(686f, 170f), Struct_1(527f, 1u), vec3<f32>(199f, -637f, 445f)), _wgslsmith_clamp_i32(u_input.a.x, 8439i, 2147483647i))));
    var_1 = (vec3<i32>(select(var_0.x, u_input.a.x, true), func_3(u_input.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-707f, 1222f))), Struct_1(-1357f, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, 728f, -1000f) - vec3<f32>(981f, 220f, -222f))), -2147483647i) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.zy, vec2<i32>(-2147483647i, 1i)), i32(-1i) * -27400i, i32(-1i) * -37726i))) | vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(23915i, -3333i, var_0.x, var_0.x), vec4<i32>(u_input.a.x, var_0.x, var_0.x, var_0.x)) << (60966u % 32u), 39230i, _wgslsmith_add_i32(~(-1i << (1u % 32u)), u_input.a.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1907f)))), u_input.c.x), arg_0.ww, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-227f, _wgslsmith_f_op_f32(-182f - -1019f), -731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1029f)) - _wgslsmith_f_op_f32(f32(-1f) * -573f))))));
    var_1 = ~vec3<i32>(18552i, min(var_1.x, -func_3(u_input.b, vec2<f32>(620f, 451f), var_2.a, vec3<f32>(var_2.c.x, var_2.a.a, var_2.a.a))), var_1.x);
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3.c.xwx, vec3<f32>(_wgslsmith_f_op_f32(max(arg_3.a.a, -1291f)), _wgslsmith_f_op_f32(arg_3.c.x + arg_3.a.a), arg_3.c.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(876f)), 2870f, arg_3.c.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.a, -1351f, arg_3.c.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c.wyw) - _wgslsmith_f_op_vec3_f32(floor(arg_3.c.wyw)))))))));
    let var_1 = Struct_1(var_0.x, min(_wgslsmith_div_u32(arg_2, 4294967295u), ~abs(arg_1)));
    let var_2 = ~(-12364i);
    let var_3 = arg_3;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c.yyw) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c.xzx), var_3.c.zzx)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x * arg_3.a.a)), arg_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(169f)) - var_3.c.x))));
    return var_1;
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    var var_0 = ~(~(-(u_input.a.x >> (26167u % 32u)) >> (_wgslsmith_mult_u32(~u_input.d.x, ~39365u) % 32u)));
    var_0 = arg_0.x;
    let var_1 = func_4(-2147483647i & ~func_2(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(1u, u_input.b.x, u_input.d.x, u_input.d.x))), ~4294967295u, 4240u, Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-1000f, -1158f)), _wgslsmith_mod_u32(reverseBits(0u), 1u)), ~select(vec2<u32>(u_input.b.x, 25003u), u_input.c.yz ^ vec2<u32>(u_input.d.x, 1u), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -1222f, -575f, 569f)) - vec4<f32>(526f, 845f, 502f, 238f))))));
    let var_2 = _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(106f, var_1.a, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))))), !(!any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))));
    var var_3 = Struct_2(Struct_1(var_1.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.d.x, var_1.b, u_input.b.x), u_input.b.yxz), u_input.b.xxw ^ u_input.b.wwy), 1u, u_input.b.x)), firstLeadingBit(u_input.c.yy), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-170f, 784f, 1199f, var_2))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, -1986f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, var_2, var_1.a, var_2)))))));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(1u, u_input.d.x, 4294967295u, 33532u))), func_1(~vec4<i32>(u_input.a.x, -7390i, u_input.a.x, -37063i)))), ~u_input.d.x, 102192u);
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(848f, _wgslsmith_f_op_f32(sign(1494f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(787f - -400f) + _wgslsmith_f_op_f32(-118f + -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(344f, -574f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1f)));
    var var_2 = Struct_3(-vec3<i32>(min(-34484i, 1i) & _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), max(u_input.a.x, 6107i), u_input.a.x), -2123f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(var_1.zy)))), var_1.zx)));
    var_1 = vec4<f32>(-765f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) + 1933f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1234f * _wgslsmith_f_op_f32(-var_2.b)), var_1.x)), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(u_input.a.x >> (~u_input.b.x % 32u), u_input.a.x)), func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(5520i, u_input.a.x), var_2.a.x, max(var_2.a.x, var_2.a.x), var_2.a.x), reverseBits(~vec4<i32>(-11905i, 12891i, -1i, u_input.a.x))), countOneBits(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), ~u_input.b.x, Struct_2(func_4(firstTrailingBit(u_input.a.x), ~u_input.c.x, u_input.d.x, Struct_2(Struct_1(var_2.b, u_input.b.x), vec2<u32>(u_input.b.x, 0u), vec4<f32>(var_1.x, var_3.x, -553f, -1013f))), countOneBits(select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(1u, 68132u), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, 244f, var_1.x, 2747f), vec4<f32>(var_1.x, var_3.x, var_2.b, var_2.b))))))).b, vec4<f32>(567f, -206f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_3.x, var_2.b))) - _wgslsmith_f_op_f32(round(-257f))), -376f), _wgslsmith_f_op_vec2_f32(round(var_1.zy)));
}

