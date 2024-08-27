struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: i32 = 5876i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: bool) -> f32 {
    let var_0 = true;
    var var_1 = reverseBits(abs(-1457i));
    var_1 = u_input.e.x;
    var_1 = -reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e, ~u_input.e), u_input.e));
    global1 = _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.b, u_input.a.x)) | -1i;
    return _wgslsmith_f_op_f32(-arg_1.a.a.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = vec3<f32>(1382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1318f)) - _wgslsmith_f_op_f32(trunc(-544f))), _wgslsmith_f_op_f32(-962f + 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1531f * 525f)) + 1577f)));
    let var_1 = _wgslsmith_mult_vec4_i32(~reverseBits(-vec4<i32>(u_input.b, u_input.a.x, 1i, u_input.b)), vec4<i32>(u_input.a.x, abs(~48908i | u_input.b), abs(~(-2147483647i)), u_input.a.x));
    let var_2 = var_0.x;
    global1 = _wgslsmith_div_i32(countOneBits(var_1.x), u_input.e.x);
    var var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 287f)), _wgslsmith_f_op_f32(func_3(max(vec2<u32>(global0.x, 4294967295u), vec2<u32>(12667u, 17002u)), Struct_4(Struct_1(vec4<f32>(var_0.x, 1703f, var_2, 965f), false), 4294967295u, u_input.c), all(vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_vec2_f32(-var_0.yy)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec3<i32> {
    global1 = u_input.a.x;
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()).x)), !(!all(!vec2<bool>(arg_1.x, false)))));
    global0 = ~countOneBits(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(12969u, 4294967295u), vec2<u32>(global0.x, global0.x)), firstLeadingBit(vec2<u32>(1u, global0.x))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.x, arg_0.x, -771f) - vec4<f32>(arg_0.x, -816f, 128f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-909f, -193f, var_1, arg_0.x) * vec4<f32>(1382f, arg_2.x, var_1, 965f))))), !(!arg_1.x)), 62340u, global0.x);
    return _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(~0i, 7275i, u_input.e.x ^ 2147483647i), ~u_input.e, true), vec3<i32>(-6490i >> (~var_2.b % 32u), countOneBits(1i), max(reverseBits(u_input.e.x), reverseBits(u_input.b)))), u_input.e << (select(~vec3<u32>(var_2.b, 0u, global0.x) >> ((vec3<u32>(var_2.b, 36801u, u_input.d) & vec3<u32>(global0.x, u_input.d, 49446u)) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.c, global0.x), true) % vec3<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2351f, 1397f) - vec2<f32>(-1135f, 129f)))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1496f, -674f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - vec2<f32>(288f, 1439f))))));
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), select(vec2<u32>(arg_0, 4294967295u), vec2<u32>(1u, 59934u), all(vec4<bool>(false, false, false, true)))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(global0.x, 15023u)), vec2<u32>(0u, min(1u, u_input.d)))) & (~abs(~vec2<u32>(5121u, 0u)) >> (firstLeadingBit(select(vec2<u32>(1u, 80029u), vec2<u32>(global0.x, arg_0), false) >> (~vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = _wgslsmith_div_i32(arg_1.x ^ ~_wgslsmith_add_i32(arg_1.x, arg_1.x), var_0.x);
    global0 = min(select(max(~vec2<u32>(31317u, global0.x) << (select(vec2<u32>(u_input.d, 37631u), vec2<u32>(u_input.c, 1u), vec2<bool>(false, true)) % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(42428u), 0u ^ u_input.d)), vec2<u32>(_wgslsmith_sub_u32(108236u, arg_0), 0u) & max(~vec2<u32>(4294967295u, 7841u), vec2<u32>(4294967295u, u_input.d)), all(vec4<bool>(all(vec2<bool>(true, false)), true, true, true))), ~vec2<u32>(35006u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(50602u, 4294967295u, 0u)), vec3<u32>(0u, 4294967295u, 0u) & vec3<u32>(global0.x, 51125u, u_input.d))));
    var var_1 = ~1u;
    return Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(global0.x, 2198u), Struct_4(Struct_1(vec4<f32>(1000f, -423f, 1253f, 444f), false), global0.x, arg_0), false))), _wgslsmith_f_op_f32(trunc(-1000f)), 475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2613f))), true), ~(0u & global0.x), 4294967295u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<f32>) -> f32 {
    let var_0 = !(!select(vec2<bool>(arg_1.a.b & false, any(vec4<bool>(false, arg_1.a.b, arg_1.a.b, true))), !(!vec2<bool>(true, arg_1.a.b)), true));
    global1 = min(u_input.a.x, ~(-44731i));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(select(0i, u_input.a.x, true), -u_input.b), u_input.a.x), -1i, countOneBits(u_input.b << (u_input.c % 32u)), u_input.a.x);
    let var_2 = 62647u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-416f, 1472f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(500f * 1000f))), 1146f, _wgslsmith_f_op_f32(func_5(func_1(2997u, u_input.e, u_input.e.xz), Struct_4(Struct_1(vec4<f32>(700f, -177f, 1000f, -509f), false), u_input.c, 4238u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-905f, 483f, 1000f, 1690f) * vec4<f32>(-658f, -794f, 1007f, 1868f))))))), vec4<u32>(1u, 28941u, (_wgslsmith_add_u32(34189u, u_input.c) << ((u_input.d | global0.x) % 32u)) << (1u % 32u), u_input.d), u_input.a.x);
}

