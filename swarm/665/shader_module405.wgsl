struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = true;
    let var_1 = Struct_2(true, Struct_1(select(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1.d.a.x), true), vec2<bool>(arg_1.d.a.x, true), select(arg_2.a, arg_2.a, true)), !vec2<bool>(arg_2.a.x, arg_2.a.x), arg_3.d.b.a), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(firstLeadingBit(arg_1.c), ~31024u, arg_1.d.b, 17493u ^ u_input.a.x)), ~min(_wgslsmith_clamp_i32(arg_3.a.b.c, 1i, -1i), ~arg_3.a.b.c), arg_1.d.d, arg_1.d.e), arg_1.d);
    var var_2 = Struct_1(!select(vec2<bool>(arg_2.e.x < -2561f, arg_3.d.b.a.x), vec2<bool>(arg_1.a.x < arg_3.b, arg_1.d.a.x), true), abs(~u_input.a.x), select(u_input.b, 29266i, !var_0), _wgslsmith_clamp_vec2_i32(firstLeadingBit(-select(arg_0, vec2<i32>(arg_2.d.x, 19467i), vec2<bool>(arg_1.d.a.x, true))), _wgslsmith_mult_vec2_i32(-(~arg_3.d.b.d), vec2<i32>(arg_3.d.b.c, abs(-20932i))), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, 1249i), arg_2.d), ~(-49055i))), arg_2.e);
    var_2 = arg_3.a.b;
    var var_3 = ~4294967295u;
    return vec2<bool>(true, true);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    var var_0 = Struct_4(Struct_2(func_3(vec2<i32>(abs(70742i), ~(-2147483647i)), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(2431f, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, arg_0)), ~vec3<i32>(u_input.b, u_input.b, u_input.b), 30994u, Struct_1(vec2<bool>(arg_1.x, arg_1.x), 42217u, u_input.b, vec2<i32>(24409i, u_input.b), vec4<f32>(-1277f, 2658f, 425f, arg_0))), Struct_1(!vec2<bool>(arg_1.x, arg_1.x), 4294967295u, abs(-1i), abs(vec2<i32>(u_input.b, 1i)), _wgslsmith_div_vec4_f32(vec4<f32>(108f, 463f, -987f, -1225f), vec4<f32>(arg_2, -446f, arg_2, arg_0))), Struct_4(Struct_2(false, Struct_1(vec2<bool>(true, arg_1.x), 32285u, -31419i, vec2<i32>(18710i, u_input.b), vec4<f32>(1200f, 1065f, 1238f, arg_0)), Struct_1(arg_1, u_input.a.x, u_input.b, vec2<i32>(-12148i, u_input.b), vec4<f32>(357f, arg_0, arg_0, arg_2))), _wgslsmith_f_op_f32(-452f * arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 304f)), Struct_2(arg_1.x, Struct_1(arg_1, u_input.a.x, -1i, vec2<i32>(21833i, u_input.b), vec4<f32>(arg_2, arg_0, 287f, -2514f)), Struct_1(arg_1, 18912u, u_input.b, vec2<i32>(0i, u_input.b), vec4<f32>(-1094f, arg_2, arg_2, arg_0))))).x, Struct_1(!arg_1, firstTrailingBit(reverseBits(u_input.a.x)), firstTrailingBit(-34543i), abs(~vec2<i32>(u_input.b, 45106i)), vec4<f32>(_wgslsmith_div_f32(arg_0, -741f), _wgslsmith_f_op_f32(abs(arg_2)), arg_2, 512f)), Struct_1(func_3(~vec2<i32>(u_input.b, 1i), Struct_3(vec3<f32>(arg_2, arg_0, 1379f), vec3<i32>(38953i, -1i, -2147483647i), u_input.a.x, Struct_1(arg_1, 0u, u_input.b, vec2<i32>(0i, u_input.b), vec4<f32>(arg_2, arg_2, 1000f, arg_2))), Struct_1(arg_1, 0u, u_input.b, vec2<i32>(-1i, u_input.b), vec4<f32>(192f, -1000f, 599f, arg_0)), Struct_4(Struct_2(false, Struct_1(vec2<bool>(true, false), 1u, 49268i, vec2<i32>(29232i, -33290i), vec4<f32>(arg_0, arg_0, arg_2, 1298f)), Struct_1(vec2<bool>(false, true), u_input.a.x, u_input.b, vec2<i32>(2147483647i, 2147483647i), vec4<f32>(arg_2, arg_0, 1974f, arg_2))), arg_0, vec3<f32>(arg_2, -1215f, arg_0), Struct_2(false, Struct_1(vec2<bool>(arg_1.x, false), u_input.a.x, 2147483647i, vec2<i32>(u_input.b, u_input.b), vec4<f32>(arg_0, arg_0, arg_0, arg_2)), Struct_1(vec2<bool>(false, arg_1.x), 4294967295u, -16770i, vec2<i32>(2147483647i, u_input.b), vec4<f32>(arg_2, -157f, arg_2, arg_0))))), 66875u, -2147483647i, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(0i, u_input.b)) | (vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(-156f)), _wgslsmith_f_op_f32(arg_2 * arg_0), _wgslsmith_f_op_f32(floor(-3321f)), _wgslsmith_div_f32(1000f, -2071f)))), _wgslsmith_f_op_f32(414f - _wgslsmith_f_op_f32(step(838f, 1227f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, -2356f, 783f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1180f, arg_2, 1403f)))), vec3<bool>(arg_1.x, arg_1.x, any(vec3<bool>(false, true, arg_1.x))))), vec3<f32>(arg_2, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), !(!select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, false))))), Struct_2(arg_1.x, Struct_1(func_3(vec2<i32>(u_input.b, 75327i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), Struct_3(vec3<f32>(arg_0, 1000f, arg_0), vec3<i32>(0i, u_input.b, 0i), 98098u, Struct_1(arg_1, u_input.a.x, 48869i, vec2<i32>(-42326i, u_input.b), vec4<f32>(1491f, arg_2, -1278f, 2169f))), Struct_1(arg_1, u_input.a.x, 0i, vec2<i32>(u_input.b, u_input.b), vec4<f32>(arg_0, -105f, arg_2, arg_0)), Struct_4(Struct_2(arg_1.x, Struct_1(vec2<bool>(true, true), u_input.a.x, -1i, vec2<i32>(0i, u_input.b), vec4<f32>(-271f, arg_2, 2425f, arg_0)), Struct_1(vec2<bool>(arg_1.x, arg_1.x), 4294967295u, u_input.b, vec2<i32>(-2147483647i, 31858i), vec4<f32>(arg_2, 1000f, 1971f, 515f))), arg_0, vec3<f32>(arg_0, 867f, 522f), Struct_2(arg_1.x, Struct_1(arg_1, u_input.a.x, -13909i, vec2<i32>(1i, 21139i), vec4<f32>(215f, 105f, arg_2, arg_0)), Struct_1(arg_1, u_input.a.x, 3367i, vec2<i32>(-2147483647i, 27626i), vec4<f32>(1670f, 928f, 1306f, 236f))))), ~8322u, ~17751i, -_wgslsmith_mod_vec2_i32(vec2<i32>(25304i, 1i), vec2<i32>(1i, -28794i)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - arg_2), arg_2, _wgslsmith_div_f32(-1525f, arg_0))), Struct_1(vec2<bool>(false, arg_1.x), max(u_input.a.x, u_input.a.x) >> (22290u % 32u), u_input.b, abs(vec2<i32>(1i, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1134f, arg_0, arg_0, -1136f)))))));
    var_0 = Struct_4(Struct_2(false, Struct_1(vec2<bool>(var_0.a.b.a.x, any(vec3<bool>(arg_1.x, true, var_0.d.a))), firstLeadingBit(var_0.d.b.b), var_0.a.b.d.x, ~abs(var_0.a.c.d), _wgslsmith_f_op_vec4_f32(-var_0.a.c.e)), Struct_1(var_0.d.b.a, min(34387u, u_input.a.x ^ u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 39835i), vec2<i32>(u_input.b, u_input.b)), var_0.d.b.d, vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, 1000f, _wgslsmith_f_op_f32(min(-655f, arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1013f, -1953f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -698f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-311f)) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) * -126f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f))))), Struct_2(arg_1.x, Struct_1(func_3(var_0.a.c.d, Struct_3(var_0.c, vec3<i32>(var_0.d.b.c, u_input.b, -322i), u_input.a.x, var_0.a.b), Struct_1(var_0.a.c.a, 27570u, u_input.b, vec2<i32>(48318i, -2337i), var_0.d.c.e), Struct_4(Struct_2(arg_1.x, Struct_1(arg_1, 0u, var_0.a.c.c, var_0.a.c.d, vec4<f32>(arg_0, 460f, arg_2, -731f)), var_0.a.b), arg_0, var_0.d.b.e.yzy, var_0.d)), countOneBits(u_input.a.x), -_wgslsmith_mod_i32(33684i, u_input.b), -var_0.a.b.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, -628f, arg_2), vec4<f32>(-228f, arg_0, arg_2, 1000f))))), var_0.d.b));
    let var_1 = u_input.a.wyz;
    var var_2 = _wgslsmith_dot_vec4_u32(~min(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_1.x, 4294967295u, var_0.a.b.b)) | _wgslsmith_div_vec4_u32(vec4<u32>(64351u, u_input.a.x, 4294967295u, var_1.x), u_input.a), select(~vec4<u32>(4294967295u, var_1.x, 18541u, 4294967295u), min(vec4<u32>(u_input.a.x, var_0.d.c.b, var_0.d.c.b, 4294967295u), vec4<u32>(var_0.d.b.b, 0u, 4294967295u, 0u)), !vec4<bool>(false, true, true, var_0.d.c.a.x))), vec4<u32>(~max(abs(var_0.a.c.b), 24032u), firstTrailingBit(u_input.a.x), 28334u, min(u_input.a.x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_0.a.b.b, u_input.a.x), vec3<u32>(var_0.d.b.b, u_input.a.x, 56725u))))));
    return max(var_1.x, 1u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_0.c.e.x;
    var var_1 = vec4<u32>(1u, 48976u, 118921u, arg_0.b.b);
    var_1 = ~vec4<u32>(~(~var_1.x), abs(u_input.a.x), _wgslsmith_sub_u32(~var_1.x, u_input.a.x), 29743u);
    var_1 = ~u_input.a;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0.b.b, func_4(1052f, func_3(arg_0.b.d, Struct_3(vec3<f32>(-277f, arg_0.b.e.x, var_0), vec3<i32>(u_input.b, 10016i, arg_0.b.c), var_1.x, Struct_1(vec2<bool>(true, false), 4294967295u, -2147483647i, arg_0.b.d, vec4<f32>(arg_0.b.e.x, arg_0.b.e.x, -357f, arg_0.c.e.x))), Struct_1(vec2<bool>(arg_0.b.a.x, false), 4294967295u, 22309i, arg_0.b.d, vec4<f32>(1140f, -1000f, 2232f, 1330f)), Struct_4(Struct_2(arg_1.x, Struct_1(arg_1.wx, u_input.a.x, -38894i, vec2<i32>(arg_0.c.d.x, u_input.b), vec4<f32>(var_0, var_0, 222f, arg_0.b.e.x)), Struct_1(vec2<bool>(true, arg_1.x), 9161u, 2147483647i, vec2<i32>(-55568i, arg_0.b.c), vec4<f32>(826f, 1927f, var_0, arg_0.b.e.x))), var_0, arg_0.b.e.yxw, arg_0)), -1000f)), arg_0.b.b, select(_wgslsmith_sub_u32(1u, var_1.x), ~_wgslsmith_mult_u32(4936u, 4632u), false), u_input.a.x), ~countOneBits(vec4<u32>(~25569u, ~var_1.x, ~u_input.a.x, 0u)));
    return -vec2<i32>(23318i, 8634i & u_input.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(71063i, u_input.b, arg_2.x, arg_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-73973i, 2147483647i, 0i, 43669i), vec4<i32>(arg_2.x, -14875i, u_input.b, u_input.b))), -u_input.b) >> (u_input.a.x % 32u), arg_2.x, -_wgslsmith_mod_i32(arg_2.x, _wgslsmith_add_i32(-2147483647i, 2147483647i << (0u % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, 567f, arg_1.x), _wgslsmith_f_op_vec3_f32(-arg_1.yzy))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2377f, arg_1.x, arg_1.x)))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1799f, arg_1.x, -1116f) - vec3<f32>(-540f, -1350f, arg_1.x)) * vec3<f32>(410f, -208f, var_1.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.xxz, arg_1.zyy)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zzx - arg_1.yyz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1429f, -698f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.xzx))))), -vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(~var_0, var_0), i32(-1i) * -1i), u_input.a.x & ~u_input.a.x, Struct_1(!arg_0.xy, 4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.wx % vec2<u32>(32u)), ~vec2<u32>(u_input.a.x, u_input.a.x)), -(~u_input.b) << (~1u % 32u), ~vec2<i32>(24867i, u_input.b), arg_1));
    var var_3 = max(vec3<i32>(2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.x), vec2<i32>(arg_2.x, -22473i)), -(~u_input.b)), var_2.b);
    var_1 = arg_1.zwy;
    return _wgslsmith_mult_u32(~4294967295u, var_2.d.b);
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(-4591i, abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(max(u_input.b, arg_1), arg_1), arg_1)));
    let var_1 = Struct_1(vec2<bool>(-50382i < _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-57072i, u_input.b, u_input.b), -2147483647i), false), 109610u, _wgslsmith_dot_vec2_i32(~vec2<i32>(~25812i, u_input.b), ~min(vec2<i32>(u_input.b, arg_1) | vec2<i32>(arg_1, var_0), vec2<i32>(-48240i, var_0))), ~vec2<i32>(-1i, 1i), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -2253f), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x));
    let var_2 = var_1.b;
    var var_3 = ~((~vec2<u32>(var_1.b, 121243u) ^ ~u_input.a.zx) << (vec2<u32>(~_wgslsmith_sub_u32(102817u, 1u), 1u) % vec2<u32>(32u)));
    return Struct_3(var_1.e.wzz, firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(var_1.c, 25968i), -var_1.c, _wgslsmith_div_i32(u_input.b, -2147483647i))) ^ vec3<i32>(~(~0i), _wgslsmith_clamp_i32(-1i, var_0, 0i), countOneBits(0i)), abs(~(_wgslsmith_div_u32(34501u, var_2) << (var_2 % 32u))), var_1);
}

fn func_7(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(!any(select(vec2<bool>(arg_0.d.a.x, arg_0.d.a.x), arg_0.d.a, false)), func_6(arg_0.c & u_input.a.x, firstTrailingBit(u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-475f, -992f), arg_0.a.xy)) * vec2<f32>(-1099f, -344f))).d, Struct_1(select(arg_0.d.a, func_3(arg_0.b.yy, Struct_3(vec3<f32>(-364f, 445f, -1304f), vec3<i32>(2147483647i, 2147483647i, 45371i), 0u, arg_0.d), Struct_1(arg_0.d.a, 4294967295u, u_input.b, vec2<i32>(u_input.b, arg_0.b.x), arg_0.d.e), Struct_4(Struct_2(arg_0.d.a.x, Struct_1(vec2<bool>(arg_0.d.a.x, arg_0.d.a.x), arg_0.c, arg_0.b.x, arg_0.d.d, vec4<f32>(-2335f, -234f, 1308f, 337f)), arg_0.d), -1810f, arg_0.d.e.yxy, Struct_2(arg_0.d.a.x, Struct_1(arg_0.d.a, 4294967295u, arg_0.d.c, arg_0.d.d, vec4<f32>(-467f, arg_0.d.e.x, arg_0.d.e.x, arg_0.a.x)), Struct_1(arg_0.d.a, 38076u, -65932i, arg_0.d.d, vec4<f32>(arg_0.a.x, -577f, arg_0.d.e.x, 471f))))), arg_0.d.c < -21396i), _wgslsmith_mod_u32(~12639u, arg_0.c), reverseBits(u_input.b), reverseBits(vec2<i32>(arg_0.b.x, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.d.e.x, arg_0.d.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1425f), 716f, _wgslsmith_f_op_f32(-arg_0.d.e.x)))), _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.d.e.x)), _wgslsmith_f_op_vec3_f32(-arg_0.d.e.yyw), Struct_2(arg_0.d.a.x, arg_0.d, Struct_1(arg_0.d.a, ~0u, -11955i << (max(u_input.a.x, arg_0.d.b) % 32u), arg_0.d.d, _wgslsmith_f_op_vec4_f32(-arg_0.d.e))));
    return Struct_2(u_input.b >= ~u_input.b, func_6(1u, ~(~(-1i ^ var_0.d.b.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, var_0.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.c.e.x, arg_0.d.e.x))))).d, Struct_1(func_6(firstLeadingBit(_wgslsmith_mod_u32(14114u, u_input.a.x)), -u_input.b ^ u_input.b, _wgslsmith_div_vec2_f32(var_0.a.c.e.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1547f)))).d.a, 28427u, -1071i, vec2<i32>(-1i, min(0i, u_input.b)) << (firstLeadingBit(vec2<u32>(1242u, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-arg_0.d.e)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<i32>) -> f32 {
    let var_0 = -(~(vec2<i32>(-39468i, _wgslsmith_clamp_i32(16733i, u_input.b, arg_2.x)) & _wgslsmith_div_vec2_i32(arg_2.xz | arg_2.xw, vec2<i32>(u_input.b, -6661i))));
    var var_1 = func_7(func_6(_wgslsmith_mult_u32(func_5(arg_0, vec4<f32>(547f, -1469f, -752f, -2116f), func_2(Struct_2(arg_1, Struct_1(vec2<bool>(false, arg_0.x), 1u, 2147483647i, vec2<i32>(-614i, -1i), vec4<f32>(-128f, 336f, -247f, -509f)), Struct_1(arg_0.yy, 3381u, -1i, arg_2.yy, vec4<f32>(-205f, 1000f, -634f, 623f))), vec4<bool>(true, arg_0.x, arg_1, arg_0.x))), 0u), select(_wgslsmith_mult_i32(countOneBits(arg_2.x), -15426i), func_2(Struct_2(false, Struct_1(arg_0.xy, u_input.a.x, 36310i, arg_2.zw, vec4<f32>(-578f, -542f, 631f, 918f)), Struct_1(arg_0.xy, u_input.a.x, 0i, vec2<i32>(var_0.x, var_0.x), vec4<f32>(1518f, -527f, -284f, -1000f))), vec4<bool>(true, arg_1, false, arg_1)).x, func_3(vec2<i32>(arg_2.x, arg_2.x), Struct_3(vec3<f32>(385f, -362f, -608f), vec3<i32>(var_0.x, arg_2.x, 0i), 0u, Struct_1(vec2<bool>(false, true), u_input.a.x, arg_2.x, vec2<i32>(-2147483647i, -62697i), vec4<f32>(-766f, 731f, 796f, 1607f))), Struct_1(vec2<bool>(arg_0.x, false), 27252u, u_input.b, var_0, vec4<f32>(778f, 2221f, 393f, 768f)), Struct_4(Struct_2(arg_0.x, Struct_1(vec2<bool>(arg_0.x, true), 391u, 0i, arg_2.xz, vec4<f32>(164f, 652f, -1000f, 812f)), Struct_1(vec2<bool>(arg_0.x, arg_0.x), u_input.a.x, arg_2.x, vec2<i32>(0i, 52037i), vec4<f32>(987f, 584f, 273f, -647f))), 837f, vec3<f32>(1540f, 969f, -547f), Struct_2(true, Struct_1(arg_0.zx, u_input.a.x, var_0.x, vec2<i32>(1i, -12182i), vec4<f32>(1736f, 1000f, 1000f, 1575f)), Struct_1(vec2<bool>(arg_0.x, arg_1), u_input.a.x, u_input.b, vec2<i32>(arg_2.x, u_input.b), vec4<f32>(472f, -462f, -260f, 286f))))).x & arg_1), vec2<f32>(_wgslsmith_div_f32(-588f, _wgslsmith_f_op_f32(1611f + 1073f)), _wgslsmith_f_op_f32(abs(-253f)))));
    let var_2 = func_7(func_6(4294967295u, _wgslsmith_clamp_i32(abs(var_0.x), -36315i, firstLeadingBit(i32(-1i) * -35022i)), vec2<f32>(_wgslsmith_f_op_f32(378f - _wgslsmith_f_op_f32(var_1.c.e.x * 3375f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.e.x * var_1.c.e.x))))));
    var_1 = func_7(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.e.wwy - var_1.c.e.yxz) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.e.x, -131f, var_1.b.e.x) * _wgslsmith_f_op_vec3_f32(-var_1.c.e.xxx))), max(arg_2.xwx ^ vec3<i32>(-57523i, u_input.b, -6177i), -vec3<i32>(var_0.x, var_1.c.c, 56234i)), ~func_7(Struct_3(var_1.b.e.wzw, arg_2.zzz, u_input.a.x, var_2.b)).c.b, var_1.c));
    let var_3 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2061f * var_2.c.e.x))))) == 1339f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1482f - _wgslsmith_f_op_f32(var_1.c.e.x * _wgslsmith_f_op_f32(trunc(265f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.c.e.x)), _wgslsmith_f_op_f32(-411f - 1795f)) - 1188f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, 105f, -1000f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1036f, 553f, -778f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(852f, 338f, -122f))))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, -1566f, 1000f)), vec3<f32>(-371f, -404f, -949f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), true, vec4<i32>(1i, u_input.b, 1041i, 16759i))), _wgslsmith_f_op_f32(308f - -1243f), -347f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1063f, -867f, 685f) + vec3<f32>(-743f, -1605f, 1608f)) - vec3<f32>(-1568f, -342f, -117f))))));
    let var_1 = reverseBits(4294967295u);
    var var_2 = vec4<bool>(false, true, any(vec4<bool>(true, func_7(Struct_3(vec3<f32>(var_0.x, var_0.x, 655f), vec3<i32>(52247i, u_input.b, -16864i), var_1, Struct_1(vec2<bool>(false, false), var_1, u_input.b, vec2<i32>(u_input.b, 15649i), vec4<f32>(-130f, var_0.x, -283f, var_0.x)))).c.a.x, true, any(vec2<bool>(true, true)))), u_input.b < u_input.b);
    var var_3 = all(vec4<bool>(false & func_3(vec2<i32>(2147483647i, -14955i), Struct_3(vec3<f32>(var_0.x, 330f, 864f), vec3<i32>(0i, u_input.b, -6i), u_input.a.x, Struct_1(var_2.yy, var_1, u_input.b, vec2<i32>(u_input.b, -3495i), vec4<f32>(-779f, var_0.x, var_0.x, var_0.x))), Struct_1(vec2<bool>(true, var_2.x), var_1, u_input.b, vec2<i32>(1i, -9673i), vec4<f32>(var_0.x, 1168f, var_0.x, 212f)), Struct_4(Struct_2(var_2.x, Struct_1(vec2<bool>(true, var_2.x), 4294967295u, 1i, vec2<i32>(1539i, -2147483647i), vec4<f32>(var_0.x, var_0.x, -415f, var_0.x)), Struct_1(var_2.zz, u_input.a.x, 2147483647i, vec2<i32>(u_input.b, u_input.b), vec4<f32>(-1119f, var_0.x, var_0.x, var_0.x))), 776f, vec3<f32>(var_0.x, 825f, var_0.x), Struct_2(var_2.x, Struct_1(vec2<bool>(true, var_2.x), 58462u, -55826i, vec2<i32>(58917i, u_input.b), vec4<f32>(-901f, var_0.x, -263f, var_0.x)), Struct_1(vec2<bool>(var_2.x, true), var_1, 2147483647i, vec2<i32>(u_input.b, u_input.b), vec4<f32>(var_0.x, -654f, 1229f, -1000f))))).x, true, any(vec3<bool>(var_2.x, false, var_2.x)) || false, var_0.x > var_0.x));
    var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(331f, var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var var_5 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1104f, var_4))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(-1102f * 1967f), _wgslsmith_div_f32(var_0.x, 890f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 630f, var_4)))) * vec3<f32>(570f, _wgslsmith_div_f32(1367f, 260f), -522f))), ~(-(vec3<i32>(-52971i, u_input.b, 27205i) & -vec3<i32>(u_input.b, 2147483647i, 53212i))), var_1, Struct_1(select(vec2<bool>(any(var_2.yx), true), func_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 2147483647i)), Struct_3(vec3<f32>(1186f, var_4, 509f), vec3<i32>(u_input.b, -35109i, -11207i), 1287u, Struct_1(var_2.zw, 1u, u_input.b, vec2<i32>(-2147483647i, u_input.b), vec4<f32>(var_4, var_4, 329f, var_0.x))), Struct_1(vec2<bool>(true, var_2.x), var_1, -2147483647i, vec2<i32>(2147483647i, u_input.b), vec4<f32>(var_0.x, var_0.x, var_0.x, -1214f)), Struct_4(Struct_2(true, Struct_1(vec2<bool>(var_2.x, false), var_1, u_input.b, vec2<i32>(0i, -3414i), vec4<f32>(-1161f, var_0.x, var_4, var_4)), Struct_1(vec2<bool>(false, var_2.x), 4294967295u, u_input.b, vec2<i32>(27347i, u_input.b), vec4<f32>(1008f, var_0.x, 1818f, var_4))), var_4, vec3<f32>(-2084f, 1917f, var_4), Struct_2(var_2.x, Struct_1(vec2<bool>(var_2.x, var_2.x), 4294967295u, 2147483647i, vec2<i32>(u_input.b, u_input.b), vec4<f32>(var_4, var_0.x, var_4, var_4)), Struct_1(var_2.wz, 1633u, -2147483647i, vec2<i32>(u_input.b, 1i), vec4<f32>(var_4, 580f, 1503f, 1767f))))), vec2<bool>(4294967295u < u_input.a.x, var_2.x)), u_input.a.x, i32(-1i) * -4467i, abs(vec2<i32>(~0i, -21500i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 1570f, -868f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2499f, var_0.x, 967f) * vec4<f32>(var_4, -1266f, var_4, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_4, var_4, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.a.x, ~firstLeadingBit(u_input.a.x), var_1));
}

