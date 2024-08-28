struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = u_input.b;
    return vec3<i32>(-1i) * -vec3<i32>(26682i, reverseBits(41376i), _wgslsmith_div_i32(-1i << (u_input.c % 32u), -u_input.a));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = u_input.a;
    let var_1 = Struct_2(select(!(!select(vec3<bool>(arg_1.x, true, arg_0), vec3<bool>(false, arg_0, true), vec3<bool>(arg_1.x, arg_0, false))), !(!vec3<bool>(false, true, arg_0)), all(vec3<bool>(all(vec2<bool>(false, arg_1.x)), arg_0 || false, true))), Struct_1(firstLeadingBit(vec3<i32>(2147483647i, ~u_input.a, 2147483647i ^ u_input.a)), ~select(select(vec4<i32>(-2147483647i, u_input.a, -3410i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -15593i), vec4<bool>(arg_1.x, false, true, arg_1.x)), select(vec4<i32>(13914i, u_input.a, u_input.a, -1i), vec4<i32>(63803i, u_input.a, u_input.a, -43081i), vec4<bool>(arg_0, false, arg_1.x, arg_1.x)), true), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(908f, 1145f) + _wgslsmith_f_op_f32(-746f + -299f)) * 1f)), -(~_wgslsmith_div_i32(u_input.a >> (u_input.b.x % 32u), -u_input.a)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(func_3(vec2<f32>(325f, 1000f), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 17110i))), vec3<i32>(-u_input.a, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, 32239i), u_input.a, u_input.a), -vec3<i32>(u_input.a, -5953i, -13841i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1162f, 607f, 1015f, 893f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(988f, -1479f, 407f, -165f)))))));
    let var_2 = var_1.e;
    var_0 = ~(u_input.a & var_1.d.x);
    let var_3 = !vec3<bool>(select(true, arg_0, all(vec4<bool>(var_1.a.x, false, false, false))), arg_0, !arg_1.x);
    return u_input.e;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = ~(vec4<u32>(u_input.c, arg_0, ~arg_0, 3764u) | vec4<u32>(~27392u, 0u, _wgslsmith_clamp_u32(32848u, arg_0, u_input.b.x), min(1u, arg_0))) ^ (select(vec4<u32>(41143u, 7850u, 1u, 4294967295u) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 3763u, 0u, u_input.e), vec4<u32>(46657u, 59618u, 12606u, u_input.d)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1u, 94907u, u_input.d), vec4<u32>(8718u, 1u, arg_0, 15773u)), reverseBits(vec4<u32>(arg_0, arg_0, 3875u, 27670u))), vec4<bool>(true, true, arg_0 >= 1u, true)) ^ ~firstTrailingBit(~vec4<u32>(4294967295u, u_input.d, u_input.d, arg_0)));
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, arg_0, arg_0, u_input.c), vec4<u32>(arg_0, 0u, 4294967295u, u_input.c), vec4<bool>(false, true, true, true)), vec4<u32>(u_input.d, 24436u, u_input.d, u_input.b.x) ^ vec4<u32>(arg_0, var_0.x, 1u, arg_0)), vec4<u32>(44552u, 0u, u_input.c, var_0.x) | (vec4<u32>(1u, 0u, u_input.b.x, 15305u) ^ vec4<u32>(arg_0, 1u, arg_0, u_input.e))), vec4<u32>(1u, func_2(false, vec2<bool>(false, false)) >> (~u_input.d % 32u), u_input.c ^ _wgslsmith_mult_u32(var_0.x, u_input.d), firstTrailingBit(~39728u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, ~67565u, ~2850u, ~29003u), firstTrailingBit(vec4<u32>(var_0.x & var_0.x, arg_0 | arg_0, ~arg_0, firstLeadingBit(29163u)))));
    let var_1 = _wgslsmith_dot_vec4_u32(~min(max(~vec4<u32>(u_input.d, arg_0, u_input.c, arg_0), select(vec4<u32>(1u, 51583u, 1u, arg_0), vec4<u32>(var_0.x, arg_0, arg_0, 28824u), false)), reverseBits(select(vec4<u32>(arg_0, u_input.e, var_0.x, 4294967295u), vec4<u32>(arg_0, 10370u, 11259u, arg_0), vec4<bool>(true, false, false, false)))), max(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_0.x, arg_0, var_0.x, 29853u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.c, u_input.c, 4294967295u), max(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.b.x), vec4<u32>(0u, 1u, 5744u, 35947u)))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 28276u, var_0.x, 1u), ~vec4<u32>(6034u, 26237u, var_0.x, 16735u))));
    let var_2 = u_input.a;
    var_0 = abs(~vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.yzy, var_0.yyz), ~u_input.b.x), 1u, var_0.x));
    return 11052u;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = true;
    var_0 = true;
    let var_1 = -1252f;
    var var_2 = reverseBits(firstTrailingBit(~_wgslsmith_add_u32(arg_1.x, u_input.e)) & arg_1.x);
    let var_3 = 1i;
    return Struct_3(any(vec2<bool>(any(vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(631f + _wgslsmith_f_op_f32(491f - -984f)), 1379f)))), true | any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)), u_input.a, vec3<u32>(arg_1.x, 73166u, reverseBits(arg_1.x)) >> (countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(5269u, 1u, 1u) | arg_3, abs(vec3<u32>(4294967295u, arg_3.x, 50000u)))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1648f - 229f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), ~vec2<u32>(func_1(u_input.e), 1u), abs(u_input.a), firstLeadingBit(vec3<u32>(u_input.b.x, u_input.e, _wgslsmith_add_u32(~4294967295u, ~22695u))));
    let var_1 = Struct_1(abs(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, 1i, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(61412i, var_0.d, -71473i), vec3<i32>(u_input.a, var_0.d, var_0.d), vec3<i32>(1i, var_0.d, -14119i)))), max(vec4<i32>(var_0.d << (~4294967295u % 32u), i32(-1i) * -7085i, i32(-1i) * -1i, var_0.d), max(abs(~vec4<i32>(-1056i, -14750i, -1i, -13337i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d, u_input.a, 20305i, 4232i), vec4<i32>(-20294i, 1i, u_input.a, -1i)))), var_0.a, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-489f + -349f), 847f))));
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1718f))))), ~(var_0.e.xy ^ _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), countOneBits(vec2<u32>(var_0.e.x, var_0.e.x)))), var_1.a.x, vec3<u32>(u_input.e, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.e, ~4294967295u), 0u), 0u));
    var_0 = func_4(_wgslsmith_f_op_f32(trunc(194f)), u_input.b >> (var_0.e.zz % vec2<u32>(32u)), u_input.a, var_0.e);
    var var_2 = _wgslsmith_clamp_i32(var_1.a.x, var_0.d, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-_wgslsmith_dot_vec4_i32(var_1.b, vec4<i32>(var_0.d, var_0.d, -1i, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -904f), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.e.x, var_0.e.x, 1u, u_input.c) ^ vec4<u32>(0u, 32063u, var_0.e.x, u_input.e), ~vec4<u32>(20154u, var_0.e.x, 17103u, u_input.d), vec4<u32>(4294967295u, 14511u, 88714u, var_0.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(step(-1000f, -704f)))), var_0.b), ~4805u);
}

