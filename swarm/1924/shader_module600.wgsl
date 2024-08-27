struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -504f;

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(388f, -792f, 363f), vec3<f32>(-1242f, -308f, 1508f), vec3<f32>(1928f, -196f, -282f), vec3<f32>(-491f, -1404f, 1027f), vec3<f32>(-153f, -2833f, -496f), vec3<f32>(-1417f, 122f, -617f), vec3<f32>(-1490f, -102f, -780f), vec3<f32>(1798f, 975f, -1120f), vec3<f32>(517f, -725f, -736f), vec3<f32>(-258f, 252f, -1000f), vec3<f32>(534f, -632f, 1197f), vec3<f32>(550f, 322f, 107f), vec3<f32>(1000f, -880f, -1127f), vec3<f32>(876f, 1573f, 765f), vec3<f32>(-348f, 2083f, 2074f), vec3<f32>(1579f, -2004f, 224f), vec3<f32>(-1000f, 892f, 507f), vec3<f32>(1627f, -636f, -191f), vec3<f32>(-863f, 1321f, -917f), vec3<f32>(-470f, 111f, 1000f), vec3<f32>(340f, -1670f, 821f), vec3<f32>(-833f, 1429f, 2475f), vec3<f32>(-1523f, -370f, 413f), vec3<f32>(-122f, 217f, -402f), vec3<f32>(387f, 1153f, 106f), vec3<f32>(1042f, 924f, 2092f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<i32>) -> bool {
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(835f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x - -339f))), -104f), var_1.a.yxz));
    var var_3 = arg_0;
    let var_4 = ~(-firstTrailingBit(-var_3.b.wx << (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, u_input.d), arg_1.zz) % vec2<u32>(32u))));
    return false;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec4<f32> {
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f) + _wgslsmith_f_op_f32(max(-845f, 1564f)))), -1125f, 106f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<i32>(u_input.c.x, -13884i, u_input.a.x, u_input.a.x) >> (~vec4<u32>(~4294967295u, 28074u, ~37386u, max(u_input.d, 4294967295u)) % vec4<u32>(32u)));
    var var_1 = select(vec3<bool>(true, false, true), select(vec3<bool>(select(false, false, true) | func_2(Struct_1(vec4<f32>(297f, -1684f, 1247f, 1558f), var_0.b), vec3<u32>(6684u, 78553u, u_input.b), 1172f, var_0.b), true, !func_2(Struct_1(vec4<f32>(var_0.a.x, -576f, var_0.a.x, 1033f), vec4<i32>(var_0.b.x, -1i, var_0.b.x, 1i)), vec3<u32>(u_input.d, 0u, u_input.b), -607f, var_0.b)), select(vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, true)), true), vec3<bool>(true, true, u_input.b > 18909u), vec3<bool>(true, any(vec3<bool>(true, false, true)), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(true, true, true)))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, var_0.a.x, -1269f, var_0.a.x)), Struct_1(var_0.a, var_0.b), vec2<bool>(true, true), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -19596i, u_input.a.x, 34560i), var_0.b))), ~vec4<i32>(1i, 0i, var_0.b.x, -2147483647i) >> (select(vec4<u32>(7172u, u_input.d, u_input.b, 32941u), vec4<u32>(81935u, u_input.b, u_input.d, 14266u), true) % vec4<u32>(32u))), _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.d), vec3<u32>(12662u, u_input.b, 1u))), min(vec3<u32>(u_input.d, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 0u))), _wgslsmith_f_op_f32(abs(var_0.a.x)), min(-var_0.b, -var_0.b) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, u_input.a.x, 2147483647i, var_0.b.x), vec4<i32>(0i, var_0.b.x, var_0.b.x, 2147483647i))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-419f)) * 1f)))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(var_0.b.x, 2147483647i), _wgslsmith_mod_i32(firstLeadingBit(var_0.b.x), 7264i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a.x, 1i, var_0.b.x), i32(-1i) * -var_0.b.x), 1i), var_0.b);
    let var_3 = ~select(min(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)) | vec2<u32>(u_input.d, u_input.d), ~(vec2<u32>(56144u, u_input.b) & vec2<u32>(u_input.d, 6786u))), ~select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 43753u), vec2<u32>(u_input.d, u_input.d)), var_1.zx), var_1.zx);
    return Struct_1(var_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(321f, _wgslsmith_f_op_f32(abs(-198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1236f * 1460f))), _wgslsmith_f_op_f32(max(-1584f, 1f)));
    var var_1 = ~_wgslsmith_clamp_u32(7727u, u_input.d, u_input.d);
    let var_2 = u_input.a.x;
    var_1 = ~27168u;
    global1 = array<vec3<f32>, 26>();
    var_1 = 9742u;
    let var_3 = func_1();
    global1 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_2, 48520i), vec3<i32>(-2147483647i, 1i, var_2), vec3<i32>(u_input.c.x, var_3.b.x, 0i))), countOneBits(-vec3<i32>(var_3.b.x, 2147483647i, var_2))), u_input.c.x), _wgslsmith_f_op_f32(-var_0.x), vec3<f32>(var_0.x, var_0.x, 298f), func_1().b.zy);
}

