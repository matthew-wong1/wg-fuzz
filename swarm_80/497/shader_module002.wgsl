struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), 0u, 27715i);

var<private> global1: u32 = 4294967295u;

var<private> global2: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(46289u, arg_1.b) & ~((14340u | arg_1.b) >> (_wgslsmith_add_u32(6893u, u_input.b) % 32u)), vec4<u32>(arg_1.b << (4294967295u % 32u), countOneBits(1u), arg_1.b, ~(~(80249u & u_input.b))), false);
    let var_1 = ~var_0.b;
    var var_2 = Struct_1(1u, ~vec4<u32>(_wgslsmith_add_u32(~u_input.b, ~u_input.b), 27960u, ~_wgslsmith_clamp_u32(12995u, 28499u, 0u), 1341u), var_0.c);
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(731f, -1202f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2750f, 1541f)))))));
    return var_0.b;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1927f, 253f)))))), 816f);
    let var_1 = Struct_1(_wgslsmith_mod_u32(global0.b, arg_2.b), func_3(countOneBits(arg_2.c) >> (0u % 32u), Struct_2(_wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(39265i, global0.a)), arg_1, _wgslsmith_add_i32(u_input.a, -17849i))), !all(vec2<bool>(true, false)));
    var var_2 = var_1;
    global1 = 0u;
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f * var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(538f, 1f)), _wgslsmith_f_op_f32(ceil(1296f)), !(var_0.x < var_0.x))))), arg_0));
    return Struct_3(var_2.b | ~firstTrailingBit(var_1.b), abs((var_2.b.xx >> (vec2<u32>(5694u, arg_1) % vec2<u32>(32u))) << (var_1.b.zy % vec2<u32>(32u))) << (abs(reverseBits(~vec2<u32>(arg_2.b, 1u))) % vec2<u32>(32u)), var_1);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = func_2(all(!vec4<bool>(all(vec2<bool>(arg_1.c.c, true)), arg_2.c, arg_1.c.c, arg_1.c.c)), _wgslsmith_add_u32(reverseBits(arg_3), func_2(arg_1.c.c, ~1u, Struct_2(min(-2147483647i, global0.a), func_3(-26700i, Struct_2(5229i, arg_1.b.x, -1i)).x, 2147483647i)).c.a), Struct_2(_wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(1i, 1i), global0.a), 0u, u_input.c));
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.c.b.xzx, ~var_0.c.b.zxy | reverseBits(vec3<u32>(arg_2.b.x, var_0.b.x, 3326u) & arg_1.c.b.yxx)), var_0.c.b.wzx);
    return vec2<bool>(!all(vec4<bool>(true, arg_1.c.c && false, true, false)), true);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec4<bool> {
    global1 = global0.b;
    var var_0 = !all(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(276f)), _wgslsmith_f_op_f32(1164f * 437f)), func_2(arg_0.x, 4294967295u, Struct_2(26374i, 1u, global0.a)), Struct_1(1u, ~vec4<u32>(global0.b, 28844u, global0.b, 10607u), arg_0.x), global0.b));
    let var_1 = min(~(-vec2<i32>(u_input.c, global0.c)) | (vec2<i32>(-1i, u_input.a) & ~vec2<i32>(global0.c, -2065i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-25341i, -1i), abs(vec2<i32>(u_input.a, 0i)))) | -vec2<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, 18032i), ~u_input.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(899f, 1161f)), 837f, 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(174f, 533f) + _wgslsmith_div_f32(1064f, 1214f)))));
    global0 = Struct_2(u_input.c, 10438u, ~u_input.c);
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(vec3<bool>(!all(select(vec3<bool>(arg_1.c, arg_0.x, arg_0.x), arg_0.wxy, arg_0.wzx)), _wgslsmith_dot_vec2_u32(arg_1.b.yz, arg_1.b.yy) >= func_2(any(vec3<bool>(true, false, arg_0.x)), _wgslsmith_dot_vec2_u32(arg_1.b.yy, arg_1.b.wz), Struct_2(9907i, 1u, u_input.c)).b.x, func_4(_wgslsmith_div_f32(1396f, _wgslsmith_f_op_f32(f32(-1f) * -391f)), Struct_3(arg_1.b & vec4<u32>(arg_1.b.x, u_input.b, arg_1.a, 16155u), vec2<u32>(1u, 90062u), Struct_1(4294967295u, vec4<u32>(1702u, 43584u, 0u, u_input.b), false)), func_2(arg_1.c, _wgslsmith_div_u32(u_input.b, 1u), Struct_2(global0.a, global0.b, u_input.c)).c, _wgslsmith_sub_u32(~arg_1.b.x, _wgslsmith_sub_u32(global0.b, global0.b))).x), func_1(select(vec4<bool>(arg_1.b.x != 7729u, true, select(arg_1.c, false, true), any(arg_0.yy)), vec4<bool>(any(vec3<bool>(true, arg_0.x, true)), arg_1.c | false, arg_1.c, !arg_1.c), vec4<bool>(true, true, any(arg_0.wxx), true)), max(_wgslsmith_sub_u32(max(u_input.b, arg_1.a), ~arg_1.a), (1u << (global0.b % 32u)) | countOneBits(arg_1.b.x))).wzy, true);
    let var_1 = _wgslsmith_f_op_f32(sign(-2199f));
    var var_2 = min(vec4<i32>(~u_input.c, -global0.a, -17417i, u_input.c), vec4<i32>(max(global0.a, -92213i), -(~(-55318i)), global0.c, global0.c));
    global0 = Struct_2(var_2.x, arg_1.b.x, 39000i);
    var var_3 = vec4<f32>(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) * var_1))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1239f))));
    return Struct_2(abs(1i) | ~(-(1i ^ u_input.c)), ~26192u, -min(49187i, min(i32(-1i) * -7017i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(252f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-230f, _wgslsmith_f_op_f32(round(-631f)))), _wgslsmith_f_op_f32(max(2681f, _wgslsmith_f_op_f32(-768f + -318f))), 28839i <= select(global0.c, 2147483647i, false))));
    let var_1 = vec3<u32>(0u, reverseBits(~4294967295u | u_input.b), abs(~_wgslsmith_div_u32(4294967295u << (u_input.b % 32u), 5599u)));
    var var_2 = func_5(!func_1(!vec4<bool>(var_0, var_0, false, var_0), reverseBits(global0.b)), Struct_1(_wgslsmith_dot_vec3_u32(min(var_1, vec3<u32>(var_1.x, 34176u, 1u)) << (func_2(var_0, 10670u, Struct_2(u_input.a, global0.b, u_input.c)).a.xxx % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 60210u), var_1.zx), min(global0.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(29973u, 1u, global0.b, 4925u), vec4<u32>(4294967295u, 24334u, u_input.b, global0.b)))), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(15381u, u_input.b, u_input.b, var_1.x), vec4<u32>(var_1.x, u_input.b, 4294967295u, 0u)), firstLeadingBit(vec4<u32>(13144u, global0.b, 4294967295u, u_input.b)), true), !var_0));
    var_2 = func_5(vec4<bool>(!var_0, -(1i >> (var_2.b % 32u)) > var_2.c, any(vec2<bool>(true, true)) & (_wgslsmith_f_op_f32(-1116f + -802f) >= _wgslsmith_f_op_f32(step(211f, 1000f))), any(select(!vec4<bool>(var_0, false, true, true), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0)), !vec4<bool>(false, var_0, var_0, true)))), func_2(var_0, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~var_1, ~var_1), var_1), Struct_2(_wgslsmith_mult_i32(countOneBits(18081i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, -1i), vec3<i32>(var_2.a, 31857i, 0i))), ~firstTrailingBit(0u), ~var_2.c)).c);
    let var_3 = func_5(!(!(!(!vec4<bool>(false, var_0, false, true)))), Struct_1(reverseBits(1u) | (~1u ^ _wgslsmith_add_u32(50307u, var_1.x)), ~(~vec4<u32>(var_2.b, var_1.x, var_2.b, 0u) & ~vec4<u32>(var_1.x, var_1.x, var_1.x, var_2.b)), select(!var_0 | (var_0 && var_0), var_0, false)));
    var var_4 = Struct_3(~vec4<u32>(1u, var_1.x, var_3.b >> (var_2.b % 32u), ~0u << (var_2.b % 32u)), var_1.yy, Struct_1(~44554u, vec4<u32>(u_input.b, abs(_wgslsmith_sub_u32(u_input.b, 1u)), ~_wgslsmith_add_u32(var_1.x, 48635u), 215u), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(319f + -227f), _wgslsmith_f_op_f32(f32(-1f) * -1113f))), func_2(var_3.b <= var_2.b, 0u & var_2.b, var_3), Struct_1(44083u, func_2(true, 1u, Struct_2(var_3.c, global0.b, var_3.a)).c.b, var_0), ~(~var_2.b)).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (_wgslsmith_sub_u32(func_2(var_0, ~73913u, var_3).b.x, global0.b) % 32u), vec4<i32>(-1i, var_2.c, _wgslsmith_div_i32(select(1i, ~var_3.c, false), (var_3.a << (1u % 32u)) & _wgslsmith_div_i32(-94216i, u_input.c)), -1i), ~_wgslsmith_sub_i32(reverseBits(_wgslsmith_div_i32(2147483647i, 1i)), 1i), var_3.b);
}

