struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = vec4<bool>(!var_0.d, any(vec2<bool>(true, true)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.d, true, false), true), !vec3<bool>(var_0.d, var_0.d, false), _wgslsmith_f_op_f32(-var_0.b) <= _wgslsmith_f_op_f32(arg_0.a.a.x - 600f))), select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1044f)))) > _wgslsmith_f_op_f32(abs(-1000f)), arg_0.a.d, false));
    let var_2 = !(!vec4<bool>(true, var_0.d, !(var_1.x | var_0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, var_0.e.x, 1u), vec3<u32>(var_0.e.x, 1u, 54049u)) != abs(u_input.c)));
    var var_3 = Struct_2(arg_0.a, 516f);
    var var_4 = Struct_2(var_3.a, _wgslsmith_f_op_f32(abs(var_3.a.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1f, var_4.a.b), _wgslsmith_f_op_f32(max(-1629f, var_4.a.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(851f * _wgslsmith_f_op_f32(f32(-1f) * -1063f)) - arg_0.b));
}

fn func_4(arg_0: f32) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(vec4<f32>(-589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * -1778f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0, select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.b.x, global0.x, -1i), vec4<i32>(u_input.b.x, u_input.b.x, global0.x, -1i) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), vec4<i32>(global0.x, _wgslsmith_clamp_i32(global0.x, global0.x, u_input.b.x), countOneBits(0i), 25346i), true), true, ~vec4<u32>(1u, ~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 13144u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1349f + arg_0))) * -529f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_0, -1000f)))) + arg_0), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(868f)), 1471f)) + var_0.b);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(arg_0 + var_1)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(629f * arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))))), 1879f));
    var var_3 = !(all(vec2<bool>(false, false)) & !(!select(false, var_0.a.d, false)));
    var_2 = -1263f;
    return select(select(vec2<bool>(false, all(select(vec3<bool>(false, var_0.a.d, true), vec3<bool>(var_0.a.d, var_0.a.d, false), false))), select(select(select(vec2<bool>(false, var_0.a.d), vec2<bool>(var_0.a.d, false), var_0.a.d), !vec2<bool>(var_0.a.d, var_0.a.d), !vec2<bool>(var_0.a.d, var_0.a.d)), select(select(vec2<bool>(var_0.a.d, true), vec2<bool>(true, var_0.a.d), false), select(vec2<bool>(false, var_0.a.d), vec2<bool>(true, var_0.a.d), var_0.a.d), any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(var_0.a.d, var_0.a.d))), all(!vec3<bool>(var_0.a.d, true, var_0.a.d))), select(vec2<bool>(true && (var_0.a.d & true), any(vec3<bool>(true, false, false))), vec2<bool>(true, all(vec2<bool>(true, false))), (~u_input.a.x ^ ~var_0.a.e.x) <= u_input.a.x), false);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    global0 = vec4<i32>(1i, max(-28560i ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(48364i, 0i), u_input.b.x ^ 36854i), _wgslsmith_mult_i32(~arg_1.x, ~2147483647i) >> (~abs(109712u) % 32u)), i32(-1i) * -56673i, -213i);
    var var_0 = !all(!func_4(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(666f, 1186f, 2787f, 476f), -671f, vec4<i32>(u_input.b.x, 24764i, global0.x, global0.x), true, vec4<u32>(1u, 0u, 0u, u_input.a.x)), -297f)))));
    let var_1 = _wgslsmith_clamp_i32(-1i, -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 4015i, global0.x) | vec4<i32>(-6602i, arg_1.x, u_input.b.x, -1i), firstTrailingBit(vec4<i32>(2147483647i, 62356i, u_input.b.x, u_input.b.x))), u_input.b.x), -(max(i32(-1i) * -1i, _wgslsmith_sub_i32(global0.x, -2147483647i)) | _wgslsmith_mod_i32(~global0.x, 0i ^ arg_1.x)));
    var_0 = !arg_2;
    var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(676f, 1000f), _wgslsmith_f_op_f32(round(-333f)))))) <= _wgslsmith_f_op_f32(272f + 528f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(792f + _wgslsmith_f_op_f32(max(553f, 1158f))), _wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(f32(-1f) * -130f), 374f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-993f, 625f, 145f, 178f), vec4<f32>(-743f, -972f, 603f, -319f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-873f, 661f, -1640f, 1775f) - vec4<f32>(-2948f, 393f, 1284f, -1422f)), !vec4<bool>(arg_3.x, arg_2, arg_2, true))) + vec4<f32>(918f, -1739f, 1070f, 120f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(-1848f, -336f, -151f, 424f), -1069f, vec4<i32>(1i, 1i, u_input.b.x, global0.x), true, vec4<u32>(54346u, 48572u, u_input.c, 4294967295u)), -780f)))), -702f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1234f)))), select(_wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0.x, -3685i, 68652i), vec4<i32>(17326i, 1i, -1i, 1i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, global0.x, 48272i), firstLeadingBit(vec4<i32>(u_input.b.x, arg_1.x, global0.x, u_input.b.x)))), (~vec4<i32>(2147483647i, 28473i, u_input.b.x, arg_1.x) ^ vec4<i32>(1i, arg_1.x, 7590i, -9598i)) | -(~vec4<i32>(arg_1.x, 72607i, 1i, u_input.b.x)), any(vec2<bool>(arg_3.x, false))), !all(vec3<bool>(true, true, true)), vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_0, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a)), _wgslsmith_mod_u32(arg_0, arg_0 ^ 12001u), ~arg_0, 0u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = func_2(~1u, ~arg_2.c.zxy ^ -_wgslsmith_add_vec3_i32(arg_2.c.wxz, arg_0.c.zyw), false, vec2<bool>(any(!select(vec4<bool>(arg_2.d, arg_2.d, arg_1.d, arg_2.d), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_0.d, false, true))), arg_1.e.x <= _wgslsmith_mod_u32(~arg_1.e.x, arg_2.e.x)));
    global0 = arg_1.c;
    var var_1 = Struct_2(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(func_2(arg_3.x, vec3<i32>(arg_0.c.x, 2147483647i, 0i), false, vec2<bool>(true, false)), arg_2.b))))));
    var_1 = Struct_2(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(392f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-var_0.b)));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1675f, arg_0.b, -485f, arg_2.b) + arg_0.a), arg_2.a))), var_1.a.a, select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.d, arg_0.d, false), vec4<bool>(true, var_0.d, true, false)), !vec4<bool>(arg_2.d, false, false, true), select(arg_2.d, arg_2.d, arg_0.d)), vec4<bool>(false, all(vec2<bool>(arg_1.d, arg_1.d)), false, arg_1.d | false), any(func_4(arg_1.b)))))));
    return ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_1.a.e.x, ~962u, var_1.a.e.x, ~u_input.a.x)), vec4<u32>(~(~1u), ~(arg_0.e.x | var_1.a.e.x), 0u, ~1u), countOneBits(vec4<u32>(arg_3.x, 0u >> (0u % 32u), 4294967295u, 91190u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global0 = ~arg_2.a.c;
    var var_0 = ~min(arg_2.a.e.wzx, ~arg_2.a.e.yxx);
    let var_1 = select(!vec2<bool>(!(!arg_1.a.d), any(select(vec4<bool>(true, true, false, arg_2.a.d), vec4<bool>(arg_1.a.d, arg_1.a.d, false, false), vec4<bool>(false, false, false, true)))), vec2<bool>(_wgslsmith_sub_u32(23273u, 11098u) < (arg_0.x | func_2(var_0.x, arg_2.a.c.wzz, arg_1.a.d, vec2<bool>(arg_2.a.d, true)).e.x), arg_1.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_1.a, arg_1.b)))) < -1000f);
    var var_2 = arg_1.a.e.wz;
    let var_3 = select(var_1, select(!(!var_1), select(!var_1, func_4(-458f), !vec2<bool>(arg_1.a.d, true)), vec2<bool>(!arg_2.a.d, !arg_1.a.d)), func_4(_wgslsmith_div_f32(-727f, _wgslsmith_f_op_f32(arg_2.a.a.x + _wgslsmith_f_op_f32(trunc(1071f))))));
    return Struct_2(func_2(arg_1.a.e.x, arg_2.a.c.zxx, arg_1.a.d, select(vec2<bool>(true, true), vec2<bool>(!arg_1.a.d, any(var_1)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(813f + -1663f));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = arg_1;
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = func_6(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), 4294967295u, u_input.c | u_input.a.x, arg_0.a.e.x >> (u_input.c % 32u)), func_5(Struct_1(arg_0.a.a, -281f, vec4<i32>(0i, arg_2, 50519i, -43884i), true, arg_0.a.e), func_2(2579u, vec3<i32>(2147483647i, arg_0.a.c.x, u_input.b.x), false, vec2<bool>(true, true)), arg_0.a, vec2<u32>(arg_0.a.e.x, 4294967295u)), !all(vec4<bool>(false, arg_1, false, true))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.a.e, arg_0.a.e) >> (arg_0.a.e % vec4<u32>(32u)), arg_0.a.e), arg_0.a.e), arg_0, arg_0);
    var_1 = arg_0.a.c.x;
    global0 = _wgslsmith_sub_vec4_i32(arg_0.a.c, var_2.a.c);
    return -744f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(u_input.c != u_input.a.x), !(true && !any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<f32>(993f, 229f, 1085f, 921f), 951f, vec4<i32>(u_input.b.x, 0i, 64151i, u_input.b.x), true, vec4<u32>(u_input.a.x, u_input.c, 36626u, u_input.a.x)), -855f), false, u_input.b.x)), -1426f, 613f, _wgslsmith_div_f32(-1206f, 1805f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -673f))), vec4<i32>(firstTrailingBit(u_input.b.x), 4i, global0.x, countOneBits(_wgslsmith_sub_i32(2147483647i, u_input.b.x))), var_0.x, select(~vec4<u32>(u_input.a.x, 40242u, 32084u, 4294967295u), select(~vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 5691u, u_input.c, 1u), vec4<u32>(u_input.c, 5040u, u_input.c, 4294967295u)), vec4<bool>(var_0.x, true, true, false)), !var_0.x != (var_0.x || false))), 1000f);
    var var_3 = var_2;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(8863i, var_3.a.c.x), countOneBits(var_3.a.c.x)), var_2.a.c.xw), u_input.b), var_3.a.a.xyw, _wgslsmith_dot_vec2_i32(abs(var_3.a.c.wz), vec2<i32>(2147483647i, countOneBits(u_input.b.x)) ^ -var_2.a.c.wx), var_2.a.e.x);
}

