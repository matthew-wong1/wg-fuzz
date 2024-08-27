struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: array<i32, 23>;

var<private> global1: vec4<f32>;

var<private> global2: i32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-617f * arg_1.x)))), _wgslsmith_f_op_f32(ceil(-297f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-599f - global1.x)))), 843f) - vec4<f32>(global1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x + -1298f), 1264f, true))), 623f));
    var var_0 = abs(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 23u)]);
    var var_1 = (i32(-1i) * -(~global0[_wgslsmith_index_u32(u_input.b, 23u)])) != global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~(~u_input.a.x)) | abs(max(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 4294967295u)))), 23u)];
    global0 = array<i32, 23>();
    return global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.b), vec3<u32>(0u, u_input.a.x, 15468u)), u_input.a.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 34207u)), vec4<u32>(58397u, u_input.b << (u_input.a.x % 32u), _wgslsmith_div_u32(u_input.b, u_input.b), 1u))), ~(~1u)), 23u)];
}

fn func_2() -> vec4<bool> {
    let var_0 = ~vec3<i32>(func_3(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 533f, global1.x) - vec3<f32>(-799f, 561f, 1450f))), i32(-1i) * -1i, 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(429f, global1.x, 564f, global1.x))) * vec4<f32>(global1.x, 742f, -1287f, 744f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global1.x, -530f, var_1.x))))), _wgslsmith_sub_vec2_i32(min(~var_0.xx | -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 21290i), var_0.yx), vec2<i32>(var_0.x, var_0.x & global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) << (u_input.a % vec2<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -3032f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(506f, 1662f) + vec2<f32>(global1.x, global1.x))), var_1.wz, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(var_1.x * 100f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(var_1.yy)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 349f, 1328f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 489f, global1.x, 317f)))))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u) & vec2<u32>(u_input.b, u_input.a.x)), u_input.b, _wgslsmith_add_u32(u_input.b, u_input.a.x) >> (firstTrailingBit(29730u) % 32u), _wgslsmith_mod_u32(countOneBits(u_input.a.x), _wgslsmith_div_u32(0u, u_input.b))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-974f + 882f), _wgslsmith_f_op_f32(-var_2.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.x, 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1774f + -1000f), _wgslsmith_f_op_f32(-var_1.x), any(vec2<bool>(false, false)))))), -897f, -682f);
    var var_3 = Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.a.x, 1167f, false)), _wgslsmith_div_f32(-1194f, var_1.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-146f * -269f), -323f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(804f + _wgslsmith_f_op_f32(f32(-1f) * -813f))), -vec2<i32>(~(~global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), max(~var_0.x, _wgslsmith_mult_i32(var_2.b.x, global0[_wgslsmith_index_u32(21354u, 23u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.wy, var_2.d.zz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, 440f))) - _wgslsmith_f_op_vec2_f32(-var_2.c)), true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), -1258f, -1798f, -1101f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x - global1.x), global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(521f - var_2.a.x), _wgslsmith_div_f32(global1.x, var_1.x))), var_2.d.x, _wgslsmith_f_op_f32(step(-129f, _wgslsmith_f_op_f32(global1.x + -2081f)))), vec4<bool>(true, 59288u >= _wgslsmith_add_u32(var_2.e.x, 1u), false, select(var_1.x >= var_2.a.x, true, all(vec2<bool>(true, true)))))), var_2.e);
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(true, (var_1.x > 1269f) && true, all(vec2<bool>(true, false)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), -2147483647i <= ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.e.x, u_input.b), 23u)]);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.x, global1.x, arg_1)))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -393f));
    return Struct_2(vec4<f32>(-938f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1264f, global1.x))) + global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_div_f32(-1374f, _wgslsmith_f_op_f32(floor(global1.x))))), _wgslsmith_f_op_f32(trunc(-942f))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-575f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, -238f)) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(44835i, -10219i), _wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 31662i), vec2<i32>(global0[_wgslsmith_index_u32(32862u, 23u)], 41201i))), select(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(90058u, 23u)]), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -63194i), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(-global1.xw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -317f, 344f, 327f))))), ~abs(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, global1.x, 415f, global1.x)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 23u)]) & vec2<i32>(global0[_wgslsmith_index_u32(27087u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), ~vec2<i32>(-18152i, global0[_wgslsmith_index_u32(41335u, 23u)]), _wgslsmith_div_vec2_i32(abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])), _wgslsmith_add_vec2_i32(vec2<i32>(26939i, global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<i32>(global0[_wgslsmith_index_u32(51247u, 23u)], global0[_wgslsmith_index_u32(2229u, 23u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, -1964f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1345f, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, global1.x, -133f, global1.x))), min(~(vec4<u32>(30208u, u_input.a.x, u_input.b, 4294967295u) ^ vec4<u32>(u_input.b, 4294967295u, 1u, 33938u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 32465u), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 6890u), vec4<u32>(u_input.a.x, 0u, 0u, u_input.b)))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = func_4(select(func_2(), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(func_2(), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, true)), vec4<bool>(any(vec3<bool>(true, true, false)), true, func_2().x, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), all(!(!func_2().zzz)));
    let var_1 = Struct_2(var_0.b.a, func_4(vec4<bool>(true, true, true, true), false).c, func_4(vec4<bool>(true, true, true, true), true).b);
    var var_2 = func_4(func_2(), false);
    let var_3 = firstLeadingBit(~_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.b.x, 33045i, 1i), vec3<i32>(1i, 2147483647i, var_0.b.b.x)), ~firstLeadingBit(vec3<i32>(arg_0, -1i, -2147483647i))));
    return var_0.b;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec4<u32> {
    var var_0 = func_4(select(arg_0, arg_0, select(arg_0, vec4<bool>(func_2().x, true, -3216i <= arg_1.b.x, false), true)), arg_3);
    let var_1 = i32(-1i) * -1i;
    var var_2 = ~_wgslsmith_clamp_u32(76468u, 0u, min(countOneBits(u_input.b), ~1u));
    var var_3 = func_4(!arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1639f)) <= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b.a.x), global1.x)).c;
    let var_4 = vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((var_3.e | var_3.e) >> (vec4<u32>(4294967295u, 50807u, 1u, 2459u) % vec4<u32>(32u)), func_4(vec4<bool>(true, true, false, arg_3), all(arg_0.xx)).b.e), 23u)]), -abs(arg_1.b.x));
    return select(arg_1.e, ~vec4<u32>(1u, ~var_3.e.x, ~37539u, firstLeadingBit(28133u)) << (vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(31666u, u_input.a.x), ~vec2<u32>(arg_1.e.x, arg_1.e.x)), ~u_input.b) % vec4<u32>(32u)), !vec4<bool>(func_2().x, true, true, !(arg_3 & arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(global0[_wgslsmith_index_u32(4294967295u, 23u)] | -global0[_wgslsmith_index_u32(1u, 23u)]);
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~global0[_wgslsmith_index_u32(1u, 23u)], firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 23u)])) >> (countOneBits(vec2<u32>(~30341u, _wgslsmith_dot_vec3_u32(vec3<u32>(26854u, 1u, 22167u), vec3<u32>(0u, 0u, 8840u)))) % vec2<u32>(32u)), vec2<i32>(30269i, 23867i));
    var var_1 = max(-(~reverseBits(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -1i, var_0.x, 2147483647i)))), vec4<i32>(~global0[_wgslsmith_index_u32(~u_input.a.x & _wgslsmith_mult_u32(u_input.b, 20008u), 23u)], abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 0i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<i32>(43457i, -1i, -35128i, 0i))), ~var_0.x, _wgslsmith_mod_i32(-abs(1i), -28598i)));
    let var_2 = ~(~var_1.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-520f, global1.x, global1.x, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, -1000f))))), var_1.xz, global1.wz, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, global1.x, 410f, 451f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, global1.x, global1.x, -1217f))), true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-383f, global1.x, global1.x, global1.x))))))), func_5(vec4<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, false)), global0[_wgslsmith_index_u32(u_input.b, 23u)] >= 17290i, all(vec4<bool>(true, false, false, true))), func_1(var_0.x, global1.yw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1859f)), func_4(vec4<bool>(false, false, false, false), false).b.b.x != global0[_wgslsmith_index_u32(select(19810u, 15581u, true), 23u)]) << (vec4<u32>(u_input.a.x, u_input.a.x | u_input.a.x, _wgslsmith_add_u32(49270u, _wgslsmith_add_u32(0u, 85836u)), ~13599u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

