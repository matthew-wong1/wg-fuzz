struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: u32 = 1u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-714f * _wgslsmith_div_f32(-187f, -1000f)), _wgslsmith_f_op_f32(ceil(-636f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1161f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, 856f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, -950f))), reverseBits(~arg_2.x), ~min(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(2797u, arg_2.x), 46560u << (arg_0 % 32u)), _wgslsmith_mod_u32(~arg_0, ~arg_2.x)), !arg_1.x);
    let var_1 = Struct_3(select(vec4<bool>(true, arg_1.x, max(5108i, -1i) > countOneBits(u_input.b.x), any(select(vec4<bool>(arg_3, arg_1.x, true, false), vec4<bool>(false, true, var_0.e, false), true))), select(!select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(true, true, false, false), true), select(!vec4<bool>(true, true, arg_1.x, false), select(vec4<bool>(var_0.e, true, var_0.e, true), vec4<bool>(true, false, var_0.e, true), var_0.e), select(vec4<bool>(arg_3, true, true, true), vec4<bool>(arg_1.x, false, true, arg_1.x), false)), vec4<bool>(var_0.e, arg_1.x, any(vec4<bool>(arg_3, true, var_0.e, arg_3)), arg_1.x)), select(!all(vec4<bool>(arg_1.x, arg_3, arg_3, arg_1.x)), !(0u < arg_2.x), true)), Struct_2(countOneBits(u_input.b.x)), var_0.b.x);
    let var_2 = select(!(!var_1.a), vec4<bool>(true, var_1.a.x, !var_1.a.x, all(arg_1.xz)), var_1.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(var_0.b.x, -590f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(-var_0.b))))), _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(var_0.b))))), _wgslsmith_mod_u32(83032u, ~7108u), ~firstTrailingBit(abs(arg_2.x)), all(!(!var_1.a.yw)) && var_2.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c, var_0.a.x, false))), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(min(256f, -1000f)))), (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(25342i, var_1.b.a, -31960i)) >> (~var_0.d % 32u)) < u_input.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-var_1.c)), var_0.b), var_0.b), 1u, 1u, true);
    return abs(firstLeadingBit(~firstLeadingBit(_wgslsmith_div_u32(arg_2.x, var_0.c))));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: Struct_3) -> vec2<u32> {
    global0 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(101053u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 9543u)), func_3(1u, arg_1, ~vec4<u32>(5030u, 113922u, 4294967295u, 21242u), !arg_1.x)), _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(52062u, 4294967295u, 1u, 1u), vec4<u32>(1u, 62192u, 50442u, 28358u), vec4<u32>(104578u, 4294967295u, 0u, 45773u)), abs(~vec4<u32>(4294967295u, 47997u, 4294967295u, 1u)))));
    global0 = (4294967295u >> (_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(46663u, 19372u, 101539u, 1u))) % 32u)) & _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 1u), ~countOneBits(_wgslsmith_clamp_u32(2898u, 4294967295u, 53348u)));
    let var_0 = 0u >> (~_wgslsmith_clamp_u32(abs(~0u), max(countOneBits(8818u), abs(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(24736u, 0u, 141887u), vec3<u32>(1u, 0u, 49918u))) % 32u);
    global0 = var_0;
    var var_1 = arg_3;
    return ~vec2<u32>(var_0, var_0);
}

fn func_1() -> u32 {
    var var_0 = !(true | select(true, any(vec4<bool>(true, true, true, true)), true));
    global0 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(select(func_2(Struct_5(vec3<f32>(-1000f, -847f, 1000f), vec4<i32>(-2147483647i, 47752i, -2147483647i, -15925i), u_input.a.x), vec3<bool>(false, false, false), Struct_5(vec3<f32>(-1384f, -1183f, 1314f), vec4<i32>(u_input.a.x, -76253i, 23401i, 1i), u_input.a.x), Struct_3(vec4<bool>(false, false, false, false), Struct_2(17441i), -1000f)), vec2<u32>(0u, 1u), vec2<bool>(true, false)), vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 20514u, 127175u, 1u)), firstLeadingBit(vec4<u32>(1u, 57750u, 1u, 112048u))), ~select(12491u, 0u, true)), firstTrailingBit(7787u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1358f, 729f), -944f, 1857f, -429f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-614f, -503f, 1344f, 437f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1412f, _wgslsmith_f_op_f32(round(1720f))), -707f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 338f), _wgslsmith_f_op_f32(171f + 148f), true)), _wgslsmith_f_op_f32(f32(-1f) * -1799f))));
    var var_2 = ~0u >> (_wgslsmith_div_u32(~min(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8614u, 1u, 30305u), vec4<u32>(12417u, 49084u, 42091u, 0u))), 16769u) % 32u);
    var_2 = 0u;
    return ~max(73791u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(38674u, 33517u)), vec2<u32>(0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(~_wgslsmith_div_u32(35949u, 19800u), min(_wgslsmith_add_u32(~firstTrailingBit(1u), reverseBits(func_1())), ~9100u));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2128f, -1065f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-163f, 228f, 1000f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(337f, 1515f, 247f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -459f, -1556f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1865f, -2004f))))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1838f, -169f, -234f) + vec3<f32>(-485f, 2653f, -1000f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1153f, -138f, -153f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1262f, -620f, -1700f), vec3<f32>(-975f, -1337f, -563f), true))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))) + var_0.x), var_0.x);
    let var_1 = firstLeadingBit(-_wgslsmith_add_i32(min(~(-2147483647i), i32(-1i) * -35357i), 1i));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), var_0.x)))) * vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1804f * 1220f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, 119f)))))));
    global0 = ~(~abs(_wgslsmith_div_u32(func_2(Struct_5(vec3<f32>(1390f, var_0.x, var_0.x), vec4<i32>(-36145i, u_input.b.x, u_input.b.x, u_input.b.x), 18487i), vec3<bool>(true, false, true), Struct_5(vec3<f32>(1331f, 485f, var_0.x), vec4<i32>(var_1, -9828i, 2147483647i, var_1), 0i), Struct_3(vec4<bool>(false, true, true, false), Struct_2(u_input.b.x), var_0.x)).x, 1u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(trunc(236f))) + var_0.x), _wgslsmith_f_op_f32(891f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-384f)))));
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(680f);
}

