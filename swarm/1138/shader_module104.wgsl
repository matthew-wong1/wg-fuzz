struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec4<u32>,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-560f, 955f, -1938f, 382f), vec4<f32>(1168f, -1872f, 746f, 1922f), vec4<f32>(-775f, -945f, -1000f, -1058f), vec4<f32>(-1056f, -303f, -1095f, -1318f), vec4<f32>(-869f, 373f, 859f, -132f), vec4<f32>(-147f, -2025f, -998f, 1447f), vec4<f32>(-260f, 1112f, 569f, 1023f), vec4<f32>(251f, 1521f, 2174f, 618f), vec4<f32>(294f, -759f, 833f, 1163f), vec4<f32>(1024f, 172f, -493f, 1204f), vec4<f32>(2640f, 1063f, -152f, -128f), vec4<f32>(-1587f, 463f, 1604f, -421f), vec4<f32>(658f, 483f, 1000f, 1139f), vec4<f32>(1597f, 562f, -1185f, -499f), vec4<f32>(-1692f, -428f, -1702f, -1385f), vec4<f32>(-1290f, 420f, 1462f, -543f), vec4<f32>(-1080f, 712f, 2800f, -1086f), vec4<f32>(-317f, 781f, -174f, 1000f), vec4<f32>(1267f, 1228f, -1777f, 634f), vec4<f32>(718f, -656f, -692f, 1000f), vec4<f32>(1483f, 1131f, -943f, -190f), vec4<f32>(-273f, 203f, 1000f, -391f), vec4<f32>(1911f, -1179f, 270f, -251f), vec4<f32>(-466f, 1000f, 1408f, -350f), vec4<f32>(-1040f, -452f, 745f, 412f), vec4<f32>(-148f, 916f, 1717f, 1500f), vec4<f32>(503f, 1537f, -1517f, -250f), vec4<f32>(-2196f, -708f, 1013f, -1366f), vec4<f32>(-771f, 517f, 1096f, -934f), vec4<f32>(233f, 1362f, -1000f, 425f), vec4<f32>(-579f, 971f, -934f, -893f), vec4<f32>(343f, -523f, 315f, -359f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_5(Struct_3(select(arg_2.zx, !arg_2.xw, all(!arg_2.zwy)), arg_2.x, vec2<bool>(any(vec2<bool>(true, arg_2.x)), all(vec3<bool>(arg_2.x, arg_2.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))))), true & select(true, false, any(select(arg_2, arg_2, false))), ~(~(~(vec4<u32>(34924u, u_input.b.x, 4294967295u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.b.x, 3771u, 65172u)))), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-191f)) + -265f), -936f)), Struct_2(Struct_1(-984f, ~vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x), false, _wgslsmith_mod_vec3_i32(vec3<i32>(19611i, 1i, 7812i), vec3<i32>(-63169i, u_input.e, 26764i)), arg_2.yx)), true, _wgslsmith_f_op_f32(floor(-633f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), select(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x) << (vec4<u32>(u_input.b.x, 16437u, u_input.a.x, 35806u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 47690u), vec4<u32>(49349u, u_input.b.x, 0u, u_input.a.x)), true), true, vec3<i32>(-1i, abs(arg_0.x), abs(0i)), vec2<bool>(!arg_2.x, arg_2.x && arg_2.x))));
    var var_1 = -vec4<i32>(var_0.e.a.d.x, var_0.d.b.a.d.x, var_0.e.a.d.x, _wgslsmith_mod_i32(var_0.e.a.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(11436i, 0i), vec2<i32>(arg_0.x, u_input.e))));
    let var_2 = Struct_3(!select(select(vec2<bool>(var_0.a.b, false), select(vec2<bool>(false, arg_2.x), var_0.e.a.e, var_0.e.a.e), all(arg_2.xyz)), var_0.d.b.a.e, true), true, select(vec2<bool>(_wgslsmith_f_op_f32(round(-1000f)) > _wgslsmith_f_op_f32(-arg_1.x), firstTrailingBit(4294967295u) <= u_input.a.x), select(select(vec2<bool>(true, arg_2.x), vec2<bool>(var_0.d.b.a.e.x, false), vec2<bool>(false, var_0.b)), arg_2.zy, true), true), -1220f);
    var_0 = Struct_5(var_2, true, vec4<u32>(1u, max(4294967295u, 71697u), 45443u, ~var_0.c.x) >> (var_0.d.b.a.b % vec4<u32>(32u)), Struct_4(-439f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.x), var_0.e.a.b, 46024i != u_input.e, ~vec3<i32>(arg_0.x, 0i, 0i), select(var_0.e.a.e, vec2<bool>(true, var_0.b), var_0.d.b.a.e))), !all(vec4<bool>(arg_2.x, true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.d)) * _wgslsmith_f_op_f32(-var_2.d)) * 518f)), Struct_2(var_0.d.b.a));
    var_0 = Struct_5(Struct_3(vec2<bool>(all(!vec2<bool>(var_2.b, true)), all(!arg_2.zzx)), all(arg_2.wzw) || arg_2.x, arg_2.zz, -1000f), select(all(var_0.e.a.e), arg_2.x, false), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, 4294967295u, 42689u, u_input.b.x) & var_0.d.b.a.b, _wgslsmith_mult_vec4_u32(var_0.d.b.a.b, reverseBits(vec4<u32>(14008u, 22081u, u_input.b.x, var_0.e.a.b.x)))) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 19130u), var_0.d.b.a.b), Struct_4(arg_1.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(var_2.d - var_0.d.a), var_0.e.a.b | var_0.c, true, countOneBits(vec3<i32>(u_input.d, var_1.x, var_1.x)), !arg_2.wy)), all(select(!vec2<bool>(true, arg_2.x), arg_2.zz, true)), 2827f), var_0.d.b);
    return var_0.c;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1609f - 963f), _wgslsmith_f_op_f32(sign(-290f)), true)) + 1269f)), func_3(vec2<i32>(abs(u_input.c), u_input.d ^ -81545i) & min(vec2<i32>(u_input.e, u_input.d) << (vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(-1i, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 530f, 549f), vec3<f32>(687f, 1179f, 835f), vec3<bool>(true, true, true)))), !vec4<bool>(u_input.c != u_input.e, any(vec2<bool>(true, false)), any(vec3<bool>(false, false, false)), false)), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), true)), -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, -2147483647i, -9606i), ~vec3<i32>(-2147483647i, 30396i, -47513i)), 39823i, -97306i), !vec2<bool>(true, _wgslsmith_f_op_f32(step(-735f, -811f)) > _wgslsmith_f_op_f32(f32(-1f) * -1399f)));
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    let var_1 = Struct_2(Struct_1(-290f, vec4<u32>(firstTrailingBit(35739u), _wgslsmith_mod_u32(1u, var_0.b.x), _wgslsmith_mult_u32(arg_0, var_0.b.x), _wgslsmith_mult_u32(1u, var_0.b.x)) | min(select(vec4<u32>(u_input.b.x, 8275u, u_input.b.x, 4294967295u), var_0.b, vec4<bool>(false, true, false, var_0.c)), abs(var_0.b)), !select(all(vec4<bool>(var_0.c, var_0.e.x, var_0.c, false)), var_0.e.x, true), _wgslsmith_mult_vec3_i32(firstLeadingBit(var_0.d), vec3<i32>(_wgslsmith_add_i32(u_input.d, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-13631i, var_0.d.x, var_0.d.x, u_input.d), vec4<i32>(u_input.c, -23810i, -1i, 31173i)), var_0.d.x)), vec2<bool>(_wgslsmith_f_op_f32(abs(var_0.a)) > _wgslsmith_f_op_f32(var_0.a * -1651f), var_0.e.x)));
    let var_2 = var_1;
    return var_2.a;
}

fn func_1(arg_0: f32) -> Struct_2 {
    return Struct_2(func_2(0u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.a - _wgslsmith_f_op_f32(abs(495f))), arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f + _wgslsmith_f_op_f32(-2013f - 643f))))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1001f, arg_1.d)), _wgslsmith_f_op_f32(arg_1.d + 191f))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_2(4294967295u).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1014f))))));
    var var_1 = !vec2<bool>(any(func_1(_wgslsmith_f_op_f32(trunc(arg_0.a.a))).a.e), !(!any(vec4<bool>(arg_1.b, false, arg_1.a.x, arg_0.a.e.x))));
    global0 = array<vec4<f32>, 32>();
    var var_2 = func_1(-544f);
    var var_3 = Struct_2(func_2(~arg_0.a.b.x));
    return Struct_5(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -722f) <= _wgslsmith_f_op_f32(-777f - arg_1.d), vec4<u32>(~_wgslsmith_mod_u32(~0u, func_3(vec2<i32>(2147483647i, 0i), vec3<f32>(-718f, 1209f, -1772f), vec4<bool>(true, var_0.b.a.e.x, true, var_2.a.c)).x), func_1(1412f).a.b.x, arg_0.a.b.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, 8279u), arg_0.a.b.x)), Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) - -266f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f), var_2.a.a))), var_0.b, true, 490f), func_1(178f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(u_input.b, _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.b.x))));
    global0 = array<vec4<f32>, 32>();
    var var_1 = 10066i;
    global0 = array<vec4<f32>, 32>();
    var var_2 = func_4(func_1(-1000f), Struct_3(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), func_1(-205f).a.c), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, vec2<bool>(true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1584f + -363f)))), 87621u);
    let var_3 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_2.c, vec4<u32>(var_3.b.a.b.x, u_input.b.x, 68320u, var_2.d.b.a.b.x)), vec4<u32>(var_0.x, 4294967295u, 4294967295u, 4294967295u)) | var_2.d.b.a.b), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_3.b.a.a)))));
}

