struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(35893i, -30150i, 0i);

var<private> global1: f32 = -1363f;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = 4947i;
    let var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(arg_0, u_input.b, 0u))), min(_wgslsmith_mult_u32(~u_input.a.x, ~21933u), abs(u_input.a.x)) << (~(~4294967295u) % 32u));
    var var_2 = Struct_2(min(~(arg_0 ^ 16530u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(32997u, u_input.b, var_1, 0u), vec4<u32>(u_input.b, 27971u, var_1, 64860u)))) << (~(_wgslsmith_dot_vec4_u32(vec4<u32>(60064u, arg_0, 1u, 0u), vec4<u32>(4294967295u, arg_0, arg_0, 9037u)) << (arg_0 % 32u)) % 32u), abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-53339i, global0.x, global0.x, 54978i), vec4<i32>(var_0, var_0, global0.x, -1i), false) & ~vec4<i32>(var_0, -2147483647i, global0.x, var_0), vec4<i32>(1i, var_0, 30586i, global0.x))), Struct_1(!vec4<bool>(true, all(vec3<bool>(false, false, false)), var_1 > 1u, true), vec2<f32>(-896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2163f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, -151f, -287f)), vec3<f32>(1133f, -159f, -433f))), _wgslsmith_add_vec4_u32(~u_input.a, u_input.a), !vec2<bool>(select(false, true, true), any(vec2<bool>(true, false)))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), true), !vec2<bool>(true, any(vec2<bool>(true, false)))));
    var var_3 = Struct_4(_wgslsmith_sub_i32(1i, -1i), var_2.c.d.zwx, !var_2.c.a.x, Struct_1(!vec4<bool>(var_2.c.b.x < var_2.c.b.x, false, var_2.c.a.x && var_2.d.x, var_2.d.x || false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.c.b.x - -1407f), _wgslsmith_div_f32(var_2.c.b.x, 1072f), 188f)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 63760u, 4294967295u, var_1), ~var_2.c.d), var_2.c.e), Struct_2(4294967295u, var_2.b << (max(var_2.c.d ^ u_input.a, u_input.a) % vec4<u32>(32u)), var_2.c, !vec2<bool>(var_2.c.d.x > 0u, true || var_2.c.e.x)));
    var_3 = Struct_4(13918i, var_2.c.d.wwz, var_3.d.a.x, var_2.c, var_3.e);
    return var_0;
}

fn func_2() -> vec4<i32> {
    global1 = _wgslsmith_div_f32(-358f, -874f);
    global0 = -(vec3<i32>(-1i) * -(~(-vec3<i32>(global0.x, global0.x, -1i))));
    var var_0 = reverseBits(-vec4<i32>(_wgslsmith_mod_i32(-global0.x, global0.x << (39109u % 32u)), -global0.x, _wgslsmith_mult_i32(global0.x | 6667i, -17400i), func_3(u_input.b) >> (u_input.b % 32u)));
    var var_1 = Struct_3(global0.zz, Struct_2((0u << (1u % 32u)) << (~u_input.a.x % 32u), vec4<i32>(_wgslsmith_sub_i32(global0.x, var_0.x), var_0.x, -20293i, _wgslsmith_add_i32(-1i, global0.x)) & (_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 0i, -1i, var_0.x), vec4<i32>(global0.x, 24823i, var_0.x, 895i)) & -vec4<i32>(-1i, global0.x, 0i, global0.x)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(103f, 594f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-661f, -1820f, 643f), vec3<f32>(2366f, 594f, -1103f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-674f, -359f, -653f) + vec3<f32>(1574f, 976f, 1000f))), min(~u_input.a, u_input.a), vec2<bool>(true, true)), !vec2<bool>(false, any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-648f, 1777f, -1336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(965f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1360f, -180f))), 637f, -930f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -818f)))))), Struct_1(select(vec4<bool>(all(vec3<bool>(true, false, false)), all(vec2<bool>(false, true)), true, false), vec4<bool>(true, any(vec3<bool>(true, true, false)), select(false, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-750f, 351f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -743f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(904f)), _wgslsmith_f_op_f32(sign(248f)), _wgslsmith_f_op_f32(869f - 629f)))), u_input.a, select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), true)));
    let var_2 = Struct_3(var_0.zz, var_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -728f), 341f, _wgslsmith_f_op_f32(var_1.b.c.c.x * var_1.d.c.x), _wgslsmith_div_f32(var_1.b.c.c.x, 2126f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, var_1.d.b.x, var_1.c.x)))), vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c.x - 1532f))), _wgslsmith_div_f32(-537f, var_1.c.x), -3791f), var_1.b.c.a)), Struct_1(!(!vec4<bool>(false, var_1.b.d.x, var_1.b.c.e.x, var_1.b.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_1.c.yy, var_1.d.c.zz)), _wgslsmith_div_vec2_f32(var_1.d.c.xx, vec2<f32>(-503f, 389f)))) - _wgslsmith_f_op_vec2_f32(ceil(var_1.d.c.yz))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1552f)), 925f, _wgslsmith_f_op_f32(1274f - _wgslsmith_f_op_f32(var_1.d.b.x + var_1.d.c.x))), ~_wgslsmith_clamp_vec4_u32(var_1.b.c.d, u_input.a, var_1.d.d) & reverseBits(var_1.b.c.d), var_1.d.e));
    return vec4<i32>(global0.x, max(var_0.x, _wgslsmith_div_i32(var_1.a.x ^ (i32(-1i) * -23292i), min(_wgslsmith_mult_i32(var_1.a.x, global0.x), var_2.b.b.x))), -1i, (global0.x >> (~(~76793u) % 32u)) ^ global0.x);
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(~39031u, ~u_input.a.x)), u_input.b >> (_wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(u_input.a.x, 3357u)) % 32u)), func_2(), Struct_1(!vec4<bool>(true, true, true, select(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(480f, -240f) * vec2<f32>(1194f, 488f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1223f, -1431f, 729f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1164f, -358f, -1064f) + vec3<f32>(219f, 1000f, -337f)))), u_input.a, vec2<bool>(true, false)), vec2<bool>(true, true));
    let var_1 = ~countOneBits(vec2<u32>(1u ^ _wgslsmith_mult_u32(u_input.b, 20789u), ~(~1u)));
    let var_2 = var_0.c;
    var var_3 = var_2.a.x;
    var var_4 = all(var_2.a);
    return vec3<f32>(_wgslsmith_f_op_f32(-1800f - -351f), _wgslsmith_f_op_f32(ceil(var_2.c.x)), var_0.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wyy;
    var_0 = _wgslsmith_mult_vec3_u32(abs(~u_input.a.wyy), ~u_input.a.zwx & u_input.a.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(max(-94i, -global0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1649f, 1830f, 595f), vec3<f32>(1153f, 197f, -1359f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, 373f, 1331f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(19011i)))), vec3<f32>(_wgslsmith_f_op_f32(718f + 323f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1264f, -703f))), 196f))), u_input.a.yyz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-437f, -536f, 943f, 1651f))) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1351f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) + -2192f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-494f, 1104f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(801f, 438f) * vec2<f32>(-547f, -1058f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, -938f)) + vec2<f32>(-361f, 336f))))));
}

