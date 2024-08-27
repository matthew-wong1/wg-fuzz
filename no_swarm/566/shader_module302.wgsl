struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-8891i, 23125i, -11506i, 70208i);

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(1i, -17192i, 33878i), vec3<i32>(2147483647i, 0i, 1628i), vec3<i32>(0i, -1i, -47964i), vec3<i32>(-33772i, 0i, 1i), vec3<i32>(-18339i, -8616i, 1i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = min(~_wgslsmith_mod_i32(u_input.a.x | countOneBits(arg_3.c), arg_3.c), global0.x);
    var_0 = _wgslsmith_mod_i32(arg_3.c >> (firstLeadingBit(_wgslsmith_mult_u32(arg_3.a.b.c << (12637u % 32u), ~arg_3.b.b.c)) % 32u), _wgslsmith_dot_vec2_i32(abs(select(vec2<i32>(u_input.a.x, -18213i), vec2<i32>(-6731i, 67532i), vec2<bool>(true, false)) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(arg_1.x, u_input.a.x)), ~arg_3.c))));
    var var_1 = ~abs(firstLeadingBit(vec3<u32>(arg_3.b.b.c, arg_3.a.b.c, arg_3.a.b.c)));
    var_1 = ~vec3<u32>(arg_3.a.b.c, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_3.b.b.c | var_1.x, var_1.x, var_1.x), ~arg_3.a.b.c), ~22227u);
    var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(425u, arg_3.a.b.c, 4294967295u) << (~(~vec3<u32>(0u, arg_3.a.b.c, var_1.x)) % vec3<u32>(32u)), ~(~vec3<u32>(1u, 78221u, arg_3.a.b.c) | vec3<u32>(var_1.x, arg_3.b.b.c, 0u)), vec3<u32>(arg_3.b.b.c, ~0u, ~_wgslsmith_div_u32(var_1.x, arg_3.b.b.c))) << (~(~(~vec3<u32>(arg_3.a.b.c, var_1.x, var_1.x)) << (~vec3<u32>(var_1.x, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u));
    return vec2<u32>(30068u, ~var_1.x & countOneBits(var_1.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = 256f;
    let var_1 = ~1u;
    var_0 = -1500f;
    let var_2 = arg_0.zzz;
    global1 = array<vec2<f32>, 9>();
    return ~_wgslsmith_sub_vec2_u32(max(~(vec2<u32>(32018u, var_1) >> (vec2<u32>(var_1, var_1) % vec2<u32>(32u))), countOneBits(vec2<u32>(0u, 0u)) << ((vec2<u32>(var_1, var_1) & vec2<u32>(117946u, var_1)) % vec2<u32>(32u))), select(max(vec2<u32>(1u, var_1), func_3(true, vec2<i32>(u_input.a.x, global0.x), -156f, Struct_3(Struct_2(arg_0.ww, Struct_1(vec3<bool>(true, true, arg_1.x), var_2, 0u)), Struct_2(arg_1, Struct_1(arg_0.zxy, vec3<bool>(arg_1.x, true, true), var_1)), 2147483647i))), vec2<u32>(var_1 | 0u, var_1 | 13303u), true));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = !vec2<bool>(!(!select(false, false, arg_2.a.x)), select(all(arg_1) & arg_3, true, any(select(arg_1.xx, arg_1.xz, vec2<bool>(false, arg_1.x)))));
    var var_1 = 1137u;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1063f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(558f, 258f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-921f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -336f)))), -428f), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-143f, 713f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1066f, -1422f, true)))))), _wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f))), var_0.x)));
    var var_3 = var_0.x;
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 5937i, u_input.a.x, global0.x), vec4<i32>(-1i, global0.x, -1i, u_input.a.x)) ^ _wgslsmith_dot_vec2_i32(abs(global0.wz), max(vec2<i32>(65326i, 2147483647i), global0.xx)), 187i, 52861i, _wgslsmith_sub_i32(~(u_input.a.x >> (16693u % 32u)), global0.x)) | _wgslsmith_div_vec4_i32(~(-(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 3048i))), -(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, global0.x, global0.x, 0i)));
    return arg_2;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global1 = array<vec2<f32>, 9>();
    var var_0 = func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(2345u, 20501u), _wgslsmith_sub_u32(50348u, 1u)), _wgslsmith_clamp_vec2_u32(~func_2(vec4<bool>(true, true, true, true), vec2<bool>(true, false)), vec2<u32>(~42058u, 0u), abs(func_3(true, vec2<i32>(0i, 9637i), -2040f, Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, false), 1613u)), Struct_2(vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, true), 4294967295u)), u_input.a.x)))), vec2<u32>(~firstTrailingBit(106067u), 16244u << (1u % 32u))), vec3<bool>(true, select(true, true, false), any(vec3<bool>(true, true, true))), Struct_2(vec2<bool>(true, true), Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_u32(select(vec4<u32>(48507u, 1u, 0u, 66826u), vec4<u32>(36525u, 65021u, 0u, 4294967295u), true), _wgslsmith_add_vec4_u32(vec4<u32>(41926u, 28164u, 0u, 0u), vec4<u32>(3031u, 37096u, 1u, 0u))))), true);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(floor(-1482f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0))))));
    let var_2 = global0.zwz;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2598f);
    return vec4<bool>(!(var_0.b.c < ~abs(0u)), all(vec4<bool>(var_0.b.a.x, true, var_0.b.a.x & all(var_0.b.b.zy), true)), var_0.a.x, !any(select(select(vec3<bool>(true, var_0.b.a.x, false), var_0.b.b, vec3<bool>(true, var_0.a.x, false)), select(var_0.b.a, var_0.b.a, vec3<bool>(false, var_0.a.x, var_0.a.x)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, u_input.a.x, global0.x, u_input.a.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(31927u, 28253u, 10558u, 119934u), vec4<u32>(1u, 17108u, 624u, 16798u)) % vec4<u32>(32u)), abs(-vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, global0.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.x, 2744i, u_input.a.x) ^ vec4<i32>(8768i, global0.x, 1074i, 11723i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, -2147483647i, 2788i), vec4<i32>(global0.x, -1i, 8501i, -36649i)))));
    var var_1 = reverseBits(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 50891i, var_0.x, -18072i), _wgslsmith_sub_vec4_i32(vec4<i32>(21505i, u_input.a.x, global0.x, var_0.x), vec4<i32>(var_0.x, global0.x, -1i, -21546i))) << (~144294u % 32u), -1973i, any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = select(select(func_1(_wgslsmith_f_op_f32(-1762f + _wgslsmith_f_op_f32(abs(318f)))), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), !(!func_1(-462f))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, global0.x != -58259i, true, true), any(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, func_4(vec2<u32>(31797u, 4294967295u), vec3<bool>(true, false, false), Struct_2(vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true), 0u)), true).a.x, func_4(vec2<u32>(1u, 1u), vec3<bool>(false, true, false), Struct_2(vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, true), 4294967295u)), false).b.a.x), true), vec4<bool>(true, true, true, func_1(_wgslsmith_f_op_f32(ceil(308f))).x)), !(!vec4<bool>(false, select(true, false, false), true, true)));
    var var_3 = -global0.x;
    let var_4 = vec3<i32>(var_0.x, 1i, global0.x) << ((~vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), select(vec2<u32>(1u, 0u), vec2<u32>(36376u, 39881u), true)), 15868u, 90578u)) % vec3<u32>(32u));
    var_3 = 28355i;
    var var_5 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, 20727u)), ~vec2<u32>(30769u, 37755u)), vec2<u32>(85454u, ~74631u)), max(firstLeadingBit(1u), 38692u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(1u, 9u)], vec2<f32>(-789f, _wgslsmith_f_op_f32(-161f * -614f)), var_2.xz)), 1i, ~(~(vec4<u32>(1u, 1u, 1u, 1u) >> (firstTrailingBit(vec4<u32>(113270u, 30644u, 72627u, 1u)) % vec4<u32>(32u)))), _wgslsmith_div_u32(abs(0u & func_2(vec4<bool>(false, false, true, true), var_2.xw).x), ~(~1u) >> (min(4294967295u, 1u) % 32u)));
}

