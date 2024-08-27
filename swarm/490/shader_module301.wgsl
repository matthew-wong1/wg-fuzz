struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: vec4<i32> = vec4<i32>(16628i, 0i, 2147483647i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> i32 {
    var var_0 = Struct_2(Struct_1(!vec2<bool>(all(vec2<bool>(arg_1.x, true)), true), 2147483647i, vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 1u), 20u)], firstLeadingBit(4294967295u), u_input.e.x, _wgslsmith_mult_u32(~u_input.c, 0u << (u_input.e.x % 32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-582f, arg_2, arg_2) + vec3<f32>(-396f, arg_2, -735f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2)), vec3<bool>(true, false, arg_1.x)))), Struct_1(!vec2<bool>(false, all(vec4<bool>(arg_1.x, arg_1.x, true, false))), global1.x, ~vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38807u, 20u)], 20u)], 34474u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(68409u, 46483u, global0[_wgslsmith_index_u32(1u, 20u)], u_input.a.x), select(vec4<u32>(30663u, 29457u, 4294967295u, global0[_wgslsmith_index_u32(1u, 20u)]), vec4<u32>(806u, u_input.e.x, u_input.e.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 20u)], 20u)]), vec4<bool>(true, false, false, arg_1.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, -1343f), vec3<f32>(arg_2, -459f, 796f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, arg_2, -409f)))))), 0u, Struct_1(select(arg_1, arg_1, !arg_1.x), global1.x, ~(vec4<u32>(global0[_wgslsmith_index_u32(8706u, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(52608u, 20u)], u_input.c) >> (~vec4<u32>(0u, 1233u, 29148u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1187f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -246f) + vec3<f32>(-547f, -947f, 163f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1397f, 1242f, arg_2) + vec4<f32>(_wgslsmith_f_op_f32(156f + -1583f), arg_2, -1905f, _wgslsmith_f_op_f32(arg_2 + arg_2))) + vec4<f32>(arg_2, _wgslsmith_f_op_f32(-819f - -1471f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)), -1074f)));
    let var_1 = Struct_2(Struct_1(vec2<bool>(!(!arg_1.x), !(var_0.a.a.x || false)), ~countOneBits(-84321i >> (global0[_wgslsmith_index_u32(1u, 20u)] % 32u)), _wgslsmith_clamp_vec4_u32(var_0.a.c, vec4<u32>(71695u, 0u, 0u, ~6028u), vec4<u32>(36369u, var_0.d.c.x, 54693u, var_0.c) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 19618u, u_input.e.x, 8583u), var_0.d.c)), var_0.d.d), var_0.a, var_0.d.c.x, var_0.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1000f * 972f), 942f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, 1254f)), _wgslsmith_f_op_f32(arg_2 + -897f), arg_2, arg_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, arg_2, var_0.a.d.x, -692f) * vec4<f32>(-268f, arg_2, arg_2, 1110f))))));
    let var_2 = -2020f;
    global1 = u_input.d;
    var var_3 = Struct_1(select(!(!select(vec2<bool>(var_0.b.a.x, true), vec2<bool>(false, arg_1.x), false)), vec2<bool>(!(arg_1.x && true), var_0.b.a.x), any(select(!vec3<bool>(false, arg_1.x, var_0.d.a.x), !vec3<bool>(true, false, var_1.a.a.x), var_0.c == var_1.d.c.x))), -4134i, firstLeadingBit(~vec4<u32>(select(30381u, u_input.e.x, true), var_0.c, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], ~global0[_wgslsmith_index_u32(var_0.b.c.x, 20u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.d + vec3<f32>(var_0.d.d.x, -127f, var_2))) - var_0.a.d) * vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.d.x)) - _wgslsmith_f_op_f32(select(344f, 573f, true))), 648f)));
    return _wgslsmith_mod_i32(reverseBits(var_3.b), -var_3.b >> (~countOneBits(~4294967295u) % 32u));
}

fn func_2(arg_0: u32) -> i32 {
    global0 = array<u32, 20>();
    global1 = u_input.d;
    global1 = _wgslsmith_mult_vec4_i32(vec4<i32>(min(20864i, func_3(-2147483647i, vec2<bool>(false, false), 139f)) << (42255u % 32u), abs(global1.x), abs(reverseBits(-1i)), _wgslsmith_sub_i32(abs(global1.x), u_input.b.x)), -firstTrailingBit(vec4<i32>(~global1.x, u_input.d.x, reverseBits(-27960i), u_input.d.x)));
    global1 = firstTrailingBit(u_input.d);
    let var_0 = ~reverseBits(~abs(~vec4<u32>(4294967295u, 37459u, u_input.a.x, arg_0)));
    return global1.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global1 = u_input.d;
    let var_0 = arg_0.x;
    global1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(func_2(4294967295u), -36595i), u_input.d.x) ^ -57273i, arg_0.x >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(global1.x, -1i, -2147483647i), _wgslsmith_mult_i32(-max(-5110i, -32607i), -arg_0.x));
    global1 = u_input.d;
    global1 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-24621i, _wgslsmith_sub_i32(i32(-1i) * -3308i, max(0i, u_input.d.x)), u_input.d.x, _wgslsmith_div_i32(~(-5023i), abs(arg_0.x)))), u_input.d, min(vec4<i32>(-1i) * -reverseBits(arg_0), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-16412i, -46326i, -1i, arg_1.a.b), abs(-arg_0), ~firstLeadingBit(vec4<i32>(0i, global1.x, var_0, -1i)))));
    return arg_1.d;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_4(vec4<i32>(max(global1.x, _wgslsmith_clamp_i32(~(-1i), func_2(u_input.e.x), global1.x)), firstTrailingBit(_wgslsmith_clamp_i32(13883i, -21747i, -1i)), _wgslsmith_add_i32(0i, global1.x), ~_wgslsmith_sub_i32(firstLeadingBit(-2147483647i), global1.x)), Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), false)), -2147483647i, vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(47642u, 20u)]), 1u, 4294967295u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, -872f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(953f, -146f, 288f) + vec3<f32>(-359f, -1000f, -591f)))), Struct_1(!vec2<bool>(true, arg_0), firstTrailingBit(global1.x), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)]), global0[_wgslsmith_index_u32(u_input.e.x, 20u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 17034u, 24809u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 20u)], 20u)]), vec4<u32>(global0[_wgslsmith_index_u32(37502u, 20u)], 4294967295u, 50891u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47749u, 20u)], 20u)])), 1u << (1u % 32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1388f, -170f, 1406f)))))), 49296u, Struct_1(!vec2<bool>(arg_0, true), u_input.d.x, ~(~vec4<u32>(u_input.a.x, 1u, global0[_wgslsmith_index_u32(1u, 20u)], u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(858f - 1366f), _wgslsmith_f_op_f32(trunc(477f)), _wgslsmith_f_op_f32(1230f + 160f))), vec4<f32>(-1341f, -535f, -2047f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -338f), 2010f)))), !select(min(25797i, global1.x) != 759i, arg_0 != arg_0, true));
    let var_1 = -(~(-vec2<i32>(1i, _wgslsmith_add_i32(0i, -2147483647i))));
    let var_2 = Struct_2(Struct_1(select(vec2<bool>(true, any(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))), select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), true), vec2<bool>(true, var_0.a.x), false), !select(var_0.a, var_0.a, true)), func_4(vec4<i32>(-1i) * -u_input.d, Struct_2(Struct_1(var_0.a, global1.x, var_0.c, var_0.d), Struct_1(vec2<bool>(arg_0, arg_0), global1.x, vec4<u32>(u_input.c, var_0.c.x, 80914u, 0u), var_0.d), u_input.a.x, func_4(u_input.d, Struct_2(Struct_1(vec2<bool>(var_0.a.x, false), -2147483647i, vec4<u32>(123460u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.x, 20u)], 20u)], u_input.a.x, 14241u), vec3<f32>(-1000f, 1004f, var_0.d.x)), Struct_1(var_0.a, global1.x, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec3<f32>(var_0.d.x, -1218f, -170f)), var_0.c.x, Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), -124923i, var_0.c, var_0.d), vec4<f32>(var_0.d.x, var_0.d.x, 179f, 320f)), arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -1267f, -464f, var_0.d.x), vec4<f32>(517f, 184f, -839f, 1421f), vec4<bool>(arg_0, arg_0, true, true)))), true).b, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.e.x, global0[_wgslsmith_index_u32(28141u, 20u)], 65594u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 75471u, global0[_wgslsmith_index_u32(1u, 20u)], var_0.c.x)), ~var_0.c), countOneBits(vec4<u32>(0u, 93254u, 25524u, u_input.c))), var_0.d), Struct_1(var_0.a, var_0.b, var_0.c ^ vec4<u32>(u_input.c, 0u >> (1u % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(107181u, 97130u), 20u)], 20u)], global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33375u, 20u)], 20u)]), 20u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d + var_0.d) - vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)) * var_0.d)), ~(~_wgslsmith_sub_u32(u_input.a.x, 8272u)), func_4(~u_input.d ^ select(u_input.d, countOneBits(vec4<i32>(u_input.d.x, var_1.x, -6664i, u_input.b.x)), vec4<bool>(var_0.a.x, false, var_0.a.x, arg_0)), Struct_2(Struct_1(!vec2<bool>(var_0.a.x, arg_0), -2147483647i, _wgslsmith_sub_vec4_u32(var_0.c, vec4<u32>(10687u, 4294967295u, var_0.c.x, global0[_wgslsmith_index_u32(33898u, 20u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, -1080f, var_0.d.x))), Struct_1(vec2<bool>(false, var_0.a.x), -var_1.x, ~var_0.c, _wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(var_0.d.x, var_0.d.x, -198f))), ~abs(1u), Struct_1(var_0.a, -global1.x, var_0.c, var_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, var_0.d.x, -358f, -388f))), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, var_0.d.x, -268f, 222f), vec4<f32>(259f, var_0.d.x, var_0.d.x, var_0.d.x)))))));
    let var_3 = Struct_1(!(!vec2<bool>(arg_0, arg_0)), ~var_2.d.b, ~_wgslsmith_mult_vec4_u32(var_2.a.c, select(vec4<u32>(var_0.c.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 20u)], 26983u), var_2.d.c, vec4<bool>(arg_0, false, false, true)) << (max(var_0.c, var_2.d.c) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) - -1004f), _wgslsmith_f_op_f32(exp2(var_2.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f * _wgslsmith_f_op_f32(-var_0.d.x)))));
    global1 = u_input.d & (vec4<i32>(-1i) * -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, var_2.a.b, 41714i), vec4<i32>(var_1.x, 36065i, var_1.x, 2147483647i), u_input.d)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(!vec2<bool>(1u >= global0[_wgslsmith_index_u32(53478u, 20u)], true), u_input.b.x, select(~(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 20u)], 20u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.e.x, u_input.a.x, global0[_wgslsmith_index_u32(18391u, 20u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], u_input.a.x, u_input.e.x) | vec4<u32>(u_input.a.x, u_input.a.x, 66982u, 1u), vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 20u)], 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-115f, -672f, -2475f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, 129f, -591f))))), func_1(_wgslsmith_f_op_f32(max(465f, -1420f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1656f) * _wgslsmith_f_op_f32(step(-2511f, -489f)))), min(~12518u | reverseBits(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 20u)], 20u)], 1u, 36625u)), 4294967295u), Struct_1(select(func_4(u_input.d, Struct_2(Struct_1(vec2<bool>(false, false), u_input.d.x, vec4<u32>(4294967295u, 25302u, 6270u, 1u), vec3<f32>(1849f, -344f, -2628f)), Struct_1(vec2<bool>(true, false), global1.x, vec4<u32>(116994u, u_input.c, u_input.e.x, u_input.a.x), vec3<f32>(1000f, -520f, 1205f)), u_input.c, Struct_1(vec2<bool>(false, false), -16043i, vec4<u32>(22479u, 15419u, global0[_wgslsmith_index_u32(28925u, 20u)], global0[_wgslsmith_index_u32(28332u, 20u)]), vec3<f32>(1768f, -1327f, 1054f)), vec4<f32>(-1129f, -647f, 1700f, 1370f)), all(vec3<bool>(true, true, true))).a, vec2<bool>(true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), func_3(52675i, vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1739f)) & -global1.x, ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)] >> (1u % 32u), 1u, func_4(vec4<i32>(-1i, u_input.d.x, 18739i, global1.x), Struct_2(Struct_1(vec2<bool>(false, false), u_input.b.x, vec4<u32>(17865u, 34295u, u_input.e.x, 1u), vec3<f32>(1468f, 689f, 274f)), Struct_1(vec2<bool>(true, true), -2147483647i, vec4<u32>(0u, 0u, 0u, global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<f32>(1002f, -1596f, 1256f)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26292u, 20u)], 20u)], Struct_1(vec2<bool>(false, true), global1.x, vec4<u32>(55914u, 10426u, u_input.a.x, global0[_wgslsmith_index_u32(19294u, 20u)]), vec3<f32>(-941f, -749f, -931f)), vec4<f32>(-952f, -1343f, 639f, 292f)), true).c.x, ~4294967295u), vec3<f32>(1125f, 842f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(634f + -1659f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1210f, 1527f, 334f), vec4<f32>(463f, 1262f, -1357f, -1000f)))))));
    global0 = array<u32, 20>();
    var var_1 = 4294967295u ^ var_0.c;
    var var_2 = (global1.x >> ((u_input.c >> (abs(~u_input.e.x) % 32u)) % 32u)) & global1.x;
    var_2 = 0i;
    var_2 = -1307i;
    var var_3 = Struct_2(Struct_1(func_1(!func_4(vec4<i32>(u_input.d.x, u_input.b.x, 0i, var_0.a.b), var_0, true).a.x).a, _wgslsmith_clamp_i32(global1.x, -15317i, min(firstLeadingBit(u_input.d.x), ~0i)), var_0.b.c, _wgslsmith_f_op_vec3_f32(abs(var_0.a.d))), Struct_1(var_0.d.a, abs(var_0.a.b), var_0.a.c, var_0.d.d), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], 8901u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], u_input.e.x), firstTrailingBit(var_0.d.c)), _wgslsmith_mult_u32(func_4(-u_input.d, Struct_2(var_0.b, var_0.b, 76388u, Struct_1(var_0.b.a, -15469i, var_0.a.c, vec3<f32>(var_0.e.x, var_0.a.d.x, var_0.b.d.x)), vec4<f32>(var_0.b.d.x, var_0.b.d.x, var_0.e.x, -487f)), func_4(vec4<i32>(global1.x, 1i, var_0.b.b, var_0.a.b), var_0, var_0.a.a.x).a.x).c.x, ~(~65745u))), var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.e));
    var var_4 = (_wgslsmith_mod_i32(countOneBits(1i), 2009i) & u_input.d.x) | _wgslsmith_add_i32(-global1.x, _wgslsmith_mult_i32(u_input.d.x, func_2(_wgslsmith_div_u32(u_input.c, 48278u))));
    var_1 = 36010u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, reverseBits(63366u)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, select(~vec4<i32>(var_3.b.b, var_3.a.b, var_3.b.b, -1587i), min(vec4<i32>(-30116i, global1.x, 39901i, global1.x), vec4<i32>(var_3.d.b, var_0.a.b, u_input.b.x, 34256i)), !var_3.a.a.x)), var_0.a.b), _wgslsmith_f_op_vec2_f32(-func_1(!all(vec4<bool>(true, var_0.a.a.x, true, false))).d.zy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -114f), var_3.e.x))) - var_0.b.d));
}

