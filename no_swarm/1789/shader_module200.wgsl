struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-15488i, -1i, 9041i, 0i, 0i, -23517i, 30546i, -4373i, 51701i, -28779i, -13067i, 19781i);

var<private> global1: Struct_1 = Struct_1(4294967295u, 85228u, 53111i, vec2<bool>(true, false));

var<private> global2: array<Struct_2, 2>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-606f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f)))))));
    var var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 * 1186f));
    var var_2 = -1548f;
    var var_3 = global1.d.x;
    let var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 6213i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global1.c, global1.c, global0[_wgslsmith_index_u32(48737u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), firstTrailingBit(~vec4<i32>(global1.c, 25778i, -18519i, -3005i))), countOneBits(u_input.a.x >> (12202u % 32u))), -vec4<i32>(reverseBits(1i), -2147483647i, 8773i, max(~33972i, _wgslsmith_div_i32(global1.c, -7493i))));
    return select(!vec3<bool>(any(!global1.d), false, false), !vec3<bool>(true, global1.d.x, true), select(select(vec3<bool>(global1.d.x | global1.d.x, any(vec4<bool>(true, global1.d.x, true, global1.d.x)), global1.d.x), !vec3<bool>(true, false, global1.d.x), !vec3<bool>(true, true, global1.d.x)), vec3<bool>(true, any(select(global1.d, vec2<bool>(global1.d.x, global1.d.x), global1.d.x)), true), !(!select(vec3<bool>(global1.d.x, global1.d.x, false), vec3<bool>(global1.d.x, global1.d.x, global1.d.x), true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, global1.a), vec4<u32>(arg_1.x, 1u, 21503u, 40565u), vec4<u32>(1184u, 26998u, arg_1.x, global1.a)), min(vec4<u32>(arg_0.x, arg_1.x, arg_1.x, arg_0.x), vec4<u32>(19772u, 4005u, arg_0.x, u_input.d))), abs(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 28200u, arg_0.x, 10330u), vec4<u32>(1u, arg_1.x, global1.a, 1u), vec4<u32>(global1.b, 50062u, global1.a, 26316u))))), ~(vec4<u32>(arg_1.x, firstLeadingBit(1u), _wgslsmith_mod_u32(1u, u_input.c.x), 13523u) & (_wgslsmith_mult_vec4_u32(vec4<u32>(8356u, 49465u, arg_0.x, global1.b), vec4<u32>(0u, 4294967295u, arg_1.x, u_input.d)) ^ ~vec4<u32>(global1.b, 1u, arg_1.x, 1u))));
    var var_1 = ~(-u_input.a.x) <= -_wgslsmith_clamp_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 12u)] | global1.c, 2147483647i), ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 12u)], global1.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, arg_1.x) << (~3611u % 32u), 12u)]);
    var var_2 = 51468i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f * -1175f)), arg_2, arg_2);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * 1548f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(613f * 2617f), -493f))))));
    return firstTrailingBit(~global1.c);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_2 {
    global1 = Struct_1(12741u, 28457u, func_4(_wgslsmith_clamp_vec2_u32(~(u_input.c.xy << (vec2<u32>(11970u, 0u) % vec2<u32>(32u))), ~(~vec2<u32>(31810u, 27647u)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.b, 0u), arg_3.xx))), select(reverseBits(vec3<u32>(1u, u_input.c.x, arg_3.x)), abs(firstLeadingBit(vec3<u32>(4294967295u, 39807u, arg_2.a.c.b))), !func_3()), -1519f), vec2<bool>(!(!arg_2.b.x), _wgslsmith_add_i32(arg_2.a.c.c.c, -19728i) > abs(u_input.a.x)));
    global2 = array<Struct_2, 2>();
    global1 = arg_1.c;
    global2 = array<Struct_2, 2>();
    var var_0 = arg_1.d;
    return Struct_2(arg_1.a, _wgslsmith_dot_vec2_u32(~min(~u_input.c.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, var_0.b), arg_3.wx)), _wgslsmith_mod_vec2_u32(~min(u_input.c.xx, arg_3.xy), _wgslsmith_add_vec2_u32(vec2<u32>(7965u, arg_1.b) & vec2<u32>(arg_3.x, global1.b), ~arg_3.yz))), arg_1.c, arg_2.a.e, !select(select(select(vec4<bool>(false, var_0.d.x, true, arg_2.b.x), vec4<bool>(var_0.d.x, false, arg_2.a.e.d.x, arg_2.b.x), vec4<bool>(arg_2.a.d.x, true, arg_2.b.x, arg_1.c.d.x)), select(arg_2.a.c.e, arg_2.a.c.e, true), all(vec2<bool>(arg_1.e.x, arg_1.a.d.x))), !(!arg_1.e), vec4<bool>(global1.d.x, !global1.d.x, false, true)));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    global1 = arg_2.c;
    let var_0 = !(!(!all(select(arg_3.a.d, arg_2.e.wyw, arg_2.e.wxw))));
    var var_1 = _wgslsmith_add_u32(13034u, arg_1);
    global1 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0)) * _wgslsmith_f_op_vec3_f32(round(arg_0)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0), arg_0)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0)))))), func_2(_wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.a.b, 279f, arg_3.a.b)))))), func_2(vec3<f32>(-701f, _wgslsmith_f_op_f32(step(arg_0.x, arg_3.a.b)), -1040f), Struct_2(arg_2.c, select(u_input.d, 4294967295u, global1.d.x), Struct_1(3255u, arg_2.a.b, 0i, arg_3.b), func_2(vec3<f32>(1000f, 1674f, arg_3.a.b), global2[_wgslsmith_index_u32(32334u, 2u)], arg_3, vec4<u32>(u_input.d, arg_1, global1.a, 1u)).c, select(vec4<bool>(arg_2.c.d.x, false, false, arg_3.b.x), arg_3.a.c.e, vec4<bool>(var_0, false, false, false))), Struct_4(arg_3.a, global1.d, firstTrailingBit(arg_3.a.e.a)), (vec4<u32>(1u, 0u, arg_1, u_input.d) | vec4<u32>(10612u, 4294967295u, 43431u, 1u)) >> (vec4<u32>(arg_3.a.e.b, 0u, 0u, 1u) % vec4<u32>(32u))), Struct_4(arg_3.a, vec2<bool>(all(arg_2.e), var_0), ~(~230u)), ~reverseBits(vec4<u32>(1u, 1u, 1u, 1u))), Struct_4(Struct_3(select(vec2<bool>(var_0, false), !arg_2.d.d, true), arg_0.x, func_2(vec3<f32>(arg_0.x, 1443f, 628f), Struct_2(Struct_1(arg_2.c.b, arg_2.b, global1.c, global1.d), 20231u, Struct_1(arg_3.c, 0u, -1i, global1.d), arg_3.a.e, arg_3.a.c.e), arg_3, vec4<u32>(arg_1, 45056u, arg_3.c, 0u) | vec4<u32>(1u, 43732u, 4294967295u, global1.a)), !(!vec3<bool>(false, false, arg_3.b.x)), func_2(_wgslsmith_f_op_vec3_f32(trunc(arg_0)), Struct_2(Struct_1(55497u, global1.b, 2147483647i, vec2<bool>(arg_2.a.d.x, arg_2.c.d.x)), global1.a, arg_3.a.c.c, arg_3.a.e, vec4<bool>(arg_3.a.c.c.d.x, global1.d.x, false, var_0)), arg_3, vec4<u32>(arg_2.c.a, arg_1, arg_3.c, global1.a)).c), vec2<bool>(any(arg_3.a.a), global1.d.x), 0u), ~(~(~vec4<u32>(1u, 51960u, arg_3.a.c.d.b, arg_2.d.b)) ^ select(vec4<u32>(0u, 1u, 4294967295u, arg_3.c), countOneBits(vec4<u32>(u_input.c.x, u_input.d, 1u, 23518u)), arg_0.x < -338f))).d;
    let var_2 = Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(-arg_3.a.b), Struct_2(func_2(vec3<f32>(-654f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(select(-473f, 280f, false))), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a.b, 1145f, arg_0.x), arg_0, arg_2.e.zwx)), Struct_2(Struct_1(arg_1, global1.b, u_input.a.x, vec2<bool>(var_0, false)), global1.b, arg_2.c, arg_2.a, arg_2.e), arg_3, vec4<u32>(26707u, global1.b, arg_1, 50395u) & vec4<u32>(4294967295u, arg_2.a.a, 41121u, arg_2.a.b)), Struct_4(arg_3.a, vec2<bool>(true, false), 1u), ~vec4<u32>(0u, arg_2.d.a, 4294967295u, 849u)).a, min(~1u, ~_wgslsmith_clamp_u32(arg_1, arg_3.a.c.b, 59173u)), arg_2.a, arg_2.a, !vec4<bool>(true, var_0, arg_3.a.a.x | false, true)), arg_3.a.d, Struct_1(83695u, _wgslsmith_mult_u32(3478u, u_input.c.x), global1.c, global1.d));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1255f, _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f * arg_0.x) + _wgslsmith_f_op_f32(ceil(-878f)))), !arg_3.b.x)), -289f));
}

fn func_1() -> f32 {
    global1 = Struct_1(global1.a, ~(select(57797u, ~u_input.c.x, global1.d.x) | global1.b), 15094i, !vec2<bool>(!global1.d.x, true));
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1493f, 568f, -1385f) + vec3<f32>(261f, -1749f, 626f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-235f, 1000f, -380f), vec3<f32>(1696f, -965f, -921f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, -224f, -639f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1071f, -1000f, -1300f), vec3<f32>(449f, -782f, 278f))), vec3<bool>(!global1.d.x, false, global1.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-902f * _wgslsmith_f_op_f32(f32(-1f) * -1189f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-417f, 726f) + -662f), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(576f, -107f, 904f) + vec3<f32>(-1197f, 292f, -264f)), u_input.c.x, func_2(vec3<f32>(-107f, -662f, 2026f), Struct_2(Struct_1(4294967295u, global1.a, u_input.a.x, vec2<bool>(false, true)), u_input.d, Struct_1(4294967295u, u_input.c.x, 2147483647i, global1.d), Struct_1(55910u, 1u, -1i, vec2<bool>(false, true)), vec4<bool>(global1.d.x, global1.d.x, true, global1.d.x)), Struct_4(Struct_3(global1.d, -557f, Struct_2(Struct_1(u_input.d, 4294967295u, 4315i, global1.d), 16328u, Struct_1(0u, global1.a, 2147483647i, vec2<bool>(global1.d.x, true)), Struct_1(10309u, u_input.c.x, -1i, vec2<bool>(global1.d.x, true)), vec4<bool>(true, false, false, true)), vec3<bool>(false, global1.d.x, global1.d.x), Struct_1(48776u, 0u, u_input.a.x, global1.d)), vec2<bool>(global1.d.x, true), 4294967295u), vec4<u32>(4294967295u, u_input.c.x, 4294967295u, u_input.d)), Struct_4(Struct_3(vec2<bool>(true, true), -657f, Struct_2(Struct_1(31248u, global1.b, global0[_wgslsmith_index_u32(0u, 12u)], global1.d), global1.b, Struct_1(global1.a, 1u, 1i, vec2<bool>(false, global1.d.x)), Struct_1(u_input.c.x, global1.a, -1i, global1.d), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, false)), vec3<bool>(false, true, global1.d.x), Struct_1(global1.a, global1.a, -9223i, global1.d)), vec2<bool>(global1.d.x, global1.d.x), u_input.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) + _wgslsmith_f_op_f32(-731f - 1000f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1803f, 807f, -1559f), vec3<f32>(-969f, var_0.x, 572f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 441f) * vec3<f32>(var_0.x, -1220f, -104f))), global1.b >> (firstLeadingBit(0u) % 32u), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, var_0.x) + vec3<f32>(-499f, -1030f, var_0.x)), Struct_2(Struct_1(global1.b, global1.a, 0i, vec2<bool>(global1.d.x, false)), u_input.d, Struct_1(1u, 0u, -32720i, global1.d), Struct_1(u_input.d, u_input.c.x, u_input.b.x, global1.d), vec4<bool>(global1.d.x, global1.d.x, true, global1.d.x)), Struct_4(Struct_3(global1.d, 306f, Struct_2(Struct_1(u_input.d, global1.a, global0[_wgslsmith_index_u32(1u, 12u)], global1.d), global1.a, Struct_1(u_input.d, global1.b, -2147483647i, global1.d), Struct_1(2749u, 39083u, -1i, global1.d), vec4<bool>(false, true, true, global1.d.x)), vec3<bool>(true, global1.d.x, global1.d.x), Struct_1(u_input.d, 28242u, global1.c, global1.d)), global1.d, 37194u), vec4<u32>(4294967295u, 0u, 4294967295u, 119384u)), Struct_4(Struct_3(global1.d, var_0.x, Struct_2(Struct_1(u_input.d, u_input.c.x, global0[_wgslsmith_index_u32(global1.b, 12u)], vec2<bool>(false, global1.d.x)), u_input.c.x, Struct_1(0u, 4294967295u, global1.c, vec2<bool>(global1.d.x, false)), Struct_1(global1.a, u_input.d, global0[_wgslsmith_index_u32(global1.a, 12u)], vec2<bool>(true, false)), vec4<bool>(false, global1.d.x, false, false)), vec3<bool>(global1.d.x, global1.d.x, global1.d.x), Struct_1(u_input.d, u_input.c.x, 0i, global1.d)), vec2<bool>(false, true), reverseBits(88717u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -791f, global1.d.x && false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1318f))))), var_0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, 499f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-965f, var_0.x, -1598f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -287f, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -209f), 156f, _wgslsmith_f_op_f32(floor(315f)), _wgslsmith_f_op_f32(abs(-1945f))))));
    let var_2 = global1.d.x | select(false, true, !(!func_2(var_1.yzy, global2[_wgslsmith_index_u32(1u, 2u)], Struct_4(Struct_3(global1.d, var_0.x, Struct_2(Struct_1(4294967295u, 37602u, u_input.a.x, vec2<bool>(global1.d.x, global1.d.x)), 4294967295u, Struct_1(global1.b, 1u, u_input.a.x, vec2<bool>(global1.d.x, global1.d.x)), Struct_1(global1.b, 0u, 3189i, vec2<bool>(global1.d.x, false)), vec4<bool>(false, global1.d.x, true, false)), vec3<bool>(global1.d.x, global1.d.x, true), Struct_1(1u, 13572u, 2147483647i, vec2<bool>(global1.d.x, true))), vec2<bool>(false, global1.d.x), 0u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u)).c.d.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), var_0.x, var_0.x) + var_1.zwx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_1.x * var_1.x)) * -979f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(floor(-553f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1082f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f + 1f))));
    let var_1 = Struct_1(78863u, global1.b, global0[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(all(!(!vec3<bool>(true, false, global1.d.x))), !any(global1.d)));
    let var_2 = vec2<u32>(select(countOneBits(u_input.c.x), abs(~(~3270u)), 282f <= _wgslsmith_f_op_f32(-770f * _wgslsmith_f_op_f32(select(-641f, 933f, true)))), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b, var_1.b << (21665u % 32u)) | var_1.b, func_2(vec3<f32>(_wgslsmith_f_op_f32(max(-722f, -188f)), _wgslsmith_f_op_f32(floor(284f)), 1966f), func_2(vec3<f32>(878f, -191f, -290f), global2[_wgslsmith_index_u32(~1u, 2u)], Struct_4(Struct_3(global1.d, -1603f, Struct_2(Struct_1(90866u, 0u, 0i, global1.d), 1u, Struct_1(50256u, var_1.b, -1i, vec2<bool>(true, global1.d.x)), var_1, vec4<bool>(true, var_1.d.x, false, true)), vec3<bool>(false, true, false), var_1), var_1.d, 31592u), vec4<u32>(0u, u_input.d, global1.a, 4294967295u) << (vec4<u32>(4294967295u, var_1.a, global1.a, 0u) % vec4<u32>(32u))), Struct_4(Struct_3(var_1.d, 123f, Struct_2(Struct_1(4294967295u, global1.a, u_input.a.x, global1.d), 1u, Struct_1(var_1.a, var_1.a, var_1.c, vec2<bool>(var_1.d.x, var_1.d.x)), var_1, vec4<bool>(global1.d.x, var_1.d.x, true, global1.d.x)), vec3<bool>(false, true, global1.d.x), Struct_1(0u, global1.a, global0[_wgslsmith_index_u32(1u, 12u)], global1.d)), vec2<bool>(global1.d.x, false), _wgslsmith_add_u32(global1.a, 0u)), ~abs(vec4<u32>(var_1.b, 42594u, global1.b, 31893u))).a.a));
    var var_3 = Struct_2(var_1, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(53743u, 1u, var_1.a, 0u)) | vec4<u32>(var_1.b, var_1.a, 60876u, var_1.a), vec4<u32>(global1.a, _wgslsmith_mod_u32(var_2.x, 0u), 84695u & var_1.b, 1u)), _wgslsmith_add_vec4_u32(~select(vec4<u32>(global1.b, 28071u, 65191u, 0u), vec4<u32>(u_input.d, u_input.c.x, 28778u, global1.b), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, 8098u, global1.a, var_1.a), vec4<u32>(global1.b, var_2.x, u_input.d, global1.a), vec4<u32>(var_1.a, 62428u, var_1.b, var_2.x)))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1138f)), 1213f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1483f, -1971f, 626f))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-995f, -885f, 1034f) + vec3<f32>(-1372f, -1162f, -2479f)))), Struct_2(var_1, 17576u, var_1, Struct_1(1u, 76476u, u_input.a.x, vec2<bool>(global1.d.x, true)), vec4<bool>(var_1.d.x, false, true, var_1.d.x)), Struct_4(Struct_3(var_1.d, 554f, global2[_wgslsmith_index_u32(var_2.x, 2u)], vec3<bool>(true, true, false), Struct_1(40477u, var_2.x, 1i, vec2<bool>(false, global1.d.x))), vec2<bool>(true, var_1.d.x), 1u), countOneBits(vec4<u32>(var_1.a, var_2.x, 0u, var_1.b)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, global1.b, 5059u, var_2.x), vec4<u32>(u_input.c.x, global1.b, var_1.a, global1.b), vec4<u32>(u_input.c.x, var_1.b, u_input.d, 4294967295u))), Struct_4(Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(3005f - 2849f), global2[_wgslsmith_index_u32(min(var_2.x, var_1.a), 2u)], !vec3<bool>(true, true, global1.d.x), var_1), vec2<bool>(global1.d.x, global1.d.x), ~u_input.d), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(0u, global1.b, var_1.a, u_input.d)), vec4<u32>(0u, 94343u, var_1.a << (4294967295u % 32u), ~1u))).d, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-936f, 1147f, -1607f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1739f, -1260f, -647f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-273f, 229f, 712f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 453f, 905f), vec3<f32>(2891f, 771f, -2237f))), func_2(vec3<f32>(-390f, 853f, -178f), global2[_wgslsmith_index_u32(1u, 2u)], Struct_4(Struct_3(var_1.d, -756f, global2[_wgslsmith_index_u32(var_2.x, 2u)], vec3<bool>(var_1.d.x, var_1.d.x, false), Struct_1(75690u, 71535u, -41556i, vec2<bool>(global1.d.x, global1.d.x))), vec2<bool>(false, false), var_1.b), vec4<u32>(29525u, 4294967295u, 4294967295u, 23214u)).e.zww))), Struct_2(var_1, 34382u, func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(708f, -727f, -747f))), func_2(vec3<f32>(183f, 882f, 479f), Struct_2(Struct_1(var_2.x, global1.a, -2147483647i, var_1.d), global1.b, var_1, var_1, vec4<bool>(true, false, global1.d.x, global1.d.x)), Struct_4(Struct_3(var_1.d, -1124f, global2[_wgslsmith_index_u32(49189u, 2u)], vec3<bool>(true, false, var_1.d.x), Struct_1(1671u, var_2.x, -1i, var_1.d)), var_1.d, 0u), vec4<u32>(0u, var_1.b, global1.a, 35949u)), Struct_4(Struct_3(vec2<bool>(var_1.d.x, false), -2166f, Struct_2(var_1, var_1.b, Struct_1(global1.b, 0u, global1.c, var_1.d), Struct_1(global1.a, 28959u, u_input.a.x, global1.d), vec4<bool>(var_1.d.x, true, var_1.d.x, false)), vec3<bool>(true, false, var_1.d.x), Struct_1(global1.b, 11358u, 0i, vec2<bool>(true, false))), vec2<bool>(true, true), u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 13940u, global1.b), vec4<u32>(0u, global1.b, 12662u, 1u), vec4<u32>(u_input.d, global1.b, 1u, var_2.x))).a, var_1, vec4<bool>(!global1.d.x, !var_1.d.x, !var_1.d.x, any(vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x)))), Struct_4(Struct_3(select(global1.d, global1.d, false), 568f, global2[_wgslsmith_index_u32(max(global1.b, 1u), 2u)], !vec3<bool>(var_1.d.x, var_1.d.x, global1.d.x), var_1), var_1.d, 0u), select(~(~vec4<u32>(0u, 0u, u_input.c.x, 20746u)), ~(~vec4<u32>(var_1.a, var_2.x, 63105u, global1.a)), global1.d.x)).c, vec4<bool>(true, select(select(true, true, true), all(func_2(vec3<f32>(485f, -2796f, -1720f), global2[_wgslsmith_index_u32(31435u, 2u)], Struct_4(Struct_3(vec2<bool>(false, var_1.d.x), -370f, global2[_wgslsmith_index_u32(0u, 2u)], vec3<bool>(global1.d.x, true, var_1.d.x), Struct_1(4294967295u, var_1.a, var_1.c, vec2<bool>(true, var_1.d.x))), var_1.d, 2197u), vec4<u32>(4294967295u, 16903u, 4294967295u, 4294967295u)).c.d), var_1.d.x), global1.d.x, false));
    let var_4 = countOneBits(select(reverseBits(vec2<i32>(~global1.c, ~global0[_wgslsmith_index_u32(8032u, 12u)])), -abs(vec2<i32>(1i, 1i)), !(!var_3.a.d.x)));
    let var_5 = u_input.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<u32>(~(_wgslsmith_sub_u32(16042u, var_5.x) << (var_5.x % 32u)), 0u), _wgslsmith_div_vec4_u32(vec4<u32>(1u << (var_3.a.a % 32u), _wgslsmith_div_u32(abs(0u), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.d, var_1.a, var_5.x))), ~u_input.d, select(0u, 4294967295u, true)), vec4<u32>(~0u, ~var_5.x, ~(~44720u), var_3.b)), -abs(vec3<i32>(37467i, -u_input.a.x, max(-16010i, global0[_wgslsmith_index_u32(1111u, 12u)]))));
}

