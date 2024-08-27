struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = vec4<bool>(!(true | all(vec2<bool>(true, true))), any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(false, false, true, false))))), any(!vec4<bool>(all(vec3<bool>(true, false, false)), true, false, true)), true);
    return _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 17448u), 1u, 1u, ~arg_1) >> (vec4<u32>(reverseBits(arg_1), reverseBits(0u), u_input.e.x << (arg_1 % 32u), arg_1) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(u_input.d, u_input.d))) & (u_input.d & vec4<u32>(~1u, ~0u, ~max(arg_0.x, arg_1), min(max(arg_1, 36031u), u_input.b.x & 4294967295u)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) - _wgslsmith_f_op_f32(f32(-1f) * -412f))), -629f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2021f), -1077f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, _wgslsmith_div_f32(-488f, -232f), -1689f))));
    let var_2 = _wgslsmith_div_vec4_u32(~(func_3(~vec2<u32>(4294967295u, u_input.b.x), ~u_input.d.x) | vec4<u32>(firstTrailingBit(102544u), ~u_input.e.x, 30227u & u_input.e.x, 1u)), u_input.d);
    var var_3 = -1318f;
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-156f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.e, ~u_input.d.wyw)));
    var var_1 = vec2<bool>(arg_0.x, true);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_2(var_1.x)), _wgslsmith_f_op_f32(arg_1.a * arg_1.a));
    let var_3 = Struct_1(vec3<u32>(abs(reverseBits(var_0.a.x)), 4294967295u, ~4602u));
    var_1 = select(vec2<bool>(var_1.x, !var_1.x), arg_0.xx, arg_0.x);
    return Struct_1(~(~select(vec3<u32>(var_3.a.x, var_0.a.x, u_input.b.x), select(vec3<u32>(var_3.a.x, 20232u, 4294967295u), vec3<u32>(1u, var_3.a.x, 24199u), arg_0.x), vec3<bool>(arg_0.x, var_1.x, true))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = 2147483647i ^ u_input.a;
    var var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, 82458u, _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.b.x, 1u, 4294967295u))), min(vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, 11048u), func_4(vec3<bool>(true, true, true), Struct_2(1428f), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 0i), u_input.c)).a.x, _wgslsmith_clamp_u32(firstTrailingBit(1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_0.a.x, 1u, 69097u), vec4<u32>(4294967295u, 0u, 42650u, arg_1.x)))), vec3<u32>(arg_0.a.x, firstTrailingBit(~arg_0.a.x), 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(323f * -785f))), _wgslsmith_f_op_f32(f32(-1f) * -769f))), _wgslsmith_div_f32(804f, 367f)) * _wgslsmith_f_op_f32(abs(560f)));
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1623f)), _wgslsmith_f_op_f32(f32(-1f) * -1452f)) * _wgslsmith_f_op_f32(f32(-1f) * -436f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false))))));
    let var_4 = 307f;
    return arg_0;
}

fn func_1() -> vec3<f32> {
    let var_0 = func_5(func_4(vec3<bool>(select(true, false, true) & (u_input.a >= u_input.a), true, !any(vec2<bool>(false, true))), Struct_2(_wgslsmith_f_op_f32(func_2(any(vec4<bool>(true, true, false, true))))), vec3<i32>(~u_input.c.x, u_input.a & _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), select(-2147483647i, i32(-1i) * -57273i, true))), countOneBits(vec2<u32>(1u, 4294967295u)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1543f, 1252f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -137f))), -1369f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-148f, 731f, 366f), vec3<f32>(658f, -1982f, -1477f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1230f, 1147f, -1102f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1248f, -2113f, 1488f)) * vec3<f32>(-1034f, -1433f, 501f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1866f, 1528f, -243f) - vec3<f32>(203f, 1332f, -1953f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, 606f, _wgslsmith_f_op_f32(ceil(-531f)))))) - _wgslsmith_f_op_vec3_f32(func_1()));
    let var_1 = vec2<i32>(~(-(u_input.a >> (1u % 32u)) | _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, u_input.a), -43232i)), -u_input.a);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))))));
    let var_3 = func_4(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), true)), Struct_2(var_2), countOneBits(~firstTrailingBit(u_input.c)));
    let var_4 = Struct_1(~vec3<u32>(func_5(Struct_1(vec3<u32>(1u, 4294967295u, var_3.a.x)), var_3.a.yy).a.x, u_input.e.x & func_5(Struct_1(u_input.d.wxy), vec2<u32>(u_input.b.x, u_input.b.x)).a.x, u_input.b.x));
    var var_5 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(var_1.x, countOneBits(u_input.a), ~(-2147483647i))), ~vec3<i32>(u_input.a, -20387i, u_input.a)), -(~u_input.c));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.a.x | 1u), firstTrailingBit(max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1, var_1), var_1 & u_input.c.xx), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), select(u_input.c.x, 21080i, true)))));
}

