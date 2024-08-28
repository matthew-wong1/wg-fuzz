struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = u_input.a.x;
    global0 = _wgslsmith_sub_u32(u_input.a.x, u_input.a.x);
    global0 = countOneBits(select(~1u, _wgslsmith_div_u32(u_input.a.x, ~(u_input.a.x | u_input.b)), !all(vec3<bool>(true, true, true))));
    global0 = 127690u ^ u_input.a.x;
    var var_0 = 1182f;
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>) -> vec4<u32> {
    global0 = arg_0.d.x;
    global0 = arg_0.d.x;
    var var_0 = arg_0;
    let var_1 = arg_0;
    global0 = ~1u;
    return _wgslsmith_sub_vec4_u32(vec4<u32>(0u, max(1u, func_3()), 0u, 4294967295u), _wgslsmith_sub_vec4_u32(~vec4<u32>(min(4294967295u, arg_0.d.x), 8946u, 37928u, arg_0.c | 65870u), var_0.d));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<f32> {
    global0 = _wgslsmith_dot_vec4_u32(~select(func_2(Struct_1(false, vec2<i32>(-2147483647i, 1i), u_input.a.x, vec4<u32>(67779u, 21177u, u_input.a.x, 66528u), -1124f), vec4<bool>(false, true, true, true), vec3<f32>(-1590f, 451f, -714f)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 4294967295u, 63837u), vec4<u32>(u_input.b, 1u, 4294967295u, 1u)), true), select(vec4<u32>(4294967295u & arg_1.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~97929u, u_input.a.x), firstLeadingBit(~vec4<u32>(37731u, 16739u, arg_1.x, 28469u)), vec4<bool>(true, true, true, true))) | _wgslsmith_sub_u32(func_2(Struct_1(any(vec3<bool>(true, true, true)), vec2<i32>(-2795i, u_input.d.x), _wgslsmith_sub_u32(4294967295u, u_input.a.x), vec4<u32>(u_input.b, arg_1.x, 0u, 0u), _wgslsmith_f_op_f32(1705f + -104f)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1134f), -268f, _wgslsmith_f_op_f32(f32(-1f) * -285f))).x, ~arg_1.x);
    var var_0 = _wgslsmith_div_vec4_i32(-abs(vec4<i32>(arg_0.x, -1i, arg_0.x, 6165i)), -(max(vec4<i32>(2147483647i, u_input.c.x, u_input.d.x, arg_0.x), vec4<i32>(1i, -2315i, arg_0.x, u_input.d.x)) >> (select(vec4<u32>(u_input.a.x, 0u, 0u, arg_1.x), vec4<u32>(21932u, u_input.b, 0u, 9058u), vec4<bool>(true, false, false, true)) % vec4<u32>(32u)))) | vec4<i32>(arg_0.x, ~arg_0.x, -36283i ^ (7899i | arg_0.x), -21696i);
    var_0 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-5698i, ~(-arg_0.x), abs(0i), reverseBits(arg_0.x << (arg_1.x % 32u))), firstLeadingBit(min(~vec4<i32>(39433i, -2147483647i, 1i, -42137i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, u_input.d.x), vec4<i32>(var_0.x, -2147483647i, arg_0.x, -21075i))))));
    let var_1 = any(vec3<bool>(false, true, any(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true))));
    var_0 = firstTrailingBit(firstLeadingBit(~(~vec4<i32>(u_input.c.x, arg_0.x, var_0.x, -1i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(782f, -1000f) * vec2<f32>(1900f, -1410f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1099f, 458f) - vec2<f32>(-1390f, -550f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(reverseBits(vec2<i32>(-1i, u_input.c.x)), vec3<u32>(1u, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, u_input.a.x) % vec3<u32>(32u)))) - vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) * _wgslsmith_f_op_f32(round(331f))), -1205f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-344f, 2016f) + vec2<f32>(612f, 1197f)))))), -42286i <= u_input.c.x));
    var var_1 = u_input.b;
    global0 = u_input.a.x;
    var var_2 = Struct_1(true, select(select(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.yy, u_input.d.zx), u_input.c.zy), reverseBits(-u_input.d.yy), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec2<bool>(true, false)))), ~u_input.d.xz, vec2<bool>(!(26010u > u_input.b), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))), _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 67366u), 13897u, abs(39656u), u_input.b), vec4<u32>(11640u, ~u_input.b, 1u, 4294967295u))), abs(~vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.a.x)), u_input.b, 7073u)), _wgslsmith_f_op_f32(-var_0.x));
    let var_3 = Struct_1(all(vec2<bool>(true, true | !var_2.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(min(-1i, ~u_input.c.x), i32(-1i) * -1i), u_input.c.zz), var_2.c, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.d, ~var_2.d), ~(vec4<u32>(1u, 49970u, 4294967295u, 4294967295u) << (_wgslsmith_sub_vec4_u32(var_2.d, vec4<u32>(11655u, u_input.b, var_2.d.x, var_2.c)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1286f * -422f)), var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(u_input.c.x, -1i), select(vec3<u32>(u_input.b, var_2.c, 93010u), vec3<u32>(var_2.c, var_2.c, 1u), vec3<bool>(var_2.a, var_2.a, true)))).x)));
    let var_4 = var_3;
    global0 = var_3.d.x;
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_mult_i32(~var_3.b.x, var_2.b.x), -(~var_4.b.x), var_3.b.x)));
}

