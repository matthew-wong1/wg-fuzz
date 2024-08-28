struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(144f, 213f, -525f, -646f), vec4<f32>(-1234f, -688f, -287f, 2089f), vec4<f32>(-486f, -787f, 1000f, 502f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_div_u32(u_input.a, ~u_input.a) | u_input.a;
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(trunc(-1844f)), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 108434u, 4294967295u, 24725u), vec4<u32>(var_0, 53733u, 53515u, var_0))), u_input.a | ~var_0), _wgslsmith_add_u32(var_0, ~(26651u & var_0))));
    global0 = array<vec4<f32>, 3>();
    return ~(~reverseBits(vec4<u32>(var_0, 8398u, ~var_0, ~var_0)));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global0 = array<vec4<f32>, 3>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1037f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1277f)), _wgslsmith_f_op_f32(f32(-1f) * -847f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2095f * _wgslsmith_f_op_f32(max(-128f, -439f)))))) * 1860f);
    var var_1 = _wgslsmith_div_vec4_u32(func_3(), max(vec4<u32>(u_input.a | firstTrailingBit(u_input.b.x), u_input.b.x, _wgslsmith_sub_u32(reverseBits(1u), u_input.b.x), ~countOneBits(4294967295u)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.a, 99227u, 4294967295u, u_input.a)), vec4<u32>(u_input.b.x << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 30854u, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 75607u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, u_input.a)), select(1u, u_input.b.x, true)))));
    var var_2 = Struct_5(-1109f, 33351u);
    let var_3 = Struct_3(Struct_1(true), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b, var_2.b << (1u % 32u)), u_input.b, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(u_input.b.x, 0u))), max(~var_1.yy ^ reverseBits(var_1.xx), var_1.xx)), !vec2<bool>(min(u_input.c.x, 9622i) != -39373i, 1720f <= var_2.a), Struct_1(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))), func_3().x);
    return select(vec2<bool>(false | (arg_0 < arg_0), var_3.c.x), var_3.c, !(!vec2<bool>(true, select(var_3.a.a, var_3.c.x, var_3.a.a))));
}

fn func_1(arg_0: f32) -> Struct_5 {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    let var_0 = select(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(-19762i))), !any(!func_2(u_input.c.x)), _wgslsmith_f_op_f32(sign(arg_0)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0)))));
    global0 = array<vec4<f32>, 3>();
    var var_1 = Struct_5(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(arg_0))), ~u_input.a);
    return Struct_5(-628f, ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), ~4294967295u));
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    global0 = array<vec4<f32>, 3>();
    let var_0 = Struct_1(false && (all(vec3<bool>(true, true, false)) & select(arg_0.b >= u_input.a, true, true)));
    var var_1 = Struct_4(u_input.c.x, 2147483647i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c.x, -1i, ~(-1i)), 0i));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) - arg_0.a), func_1(-850f).a, var_0.a || !var_0.a)), _wgslsmith_div_u32(4294967295u, func_3().x));
    global0 = array<vec4<f32>, 3>();
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-u_input.c.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec3<i32>(-1i, u_input.c.x, u_input.c.x)) & -(~60948i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(u_input.c.x, u_input.c.x, 11177i, 2147483647i) << (vec4<u32>(u_input.b.x, 6336u, 20333u, u_input.b.x) % vec4<u32>(32u))), u_input.c), ~countOneBits(countOneBits(~2986i)));
    let var_1 = _wgslsmith_mod_u32(u_input.a, ~(~_wgslsmith_mult_u32(u_input.a >> (u_input.b.x % 32u), ~4294967295u)));
    let var_2 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1065f, -780f))) + 1f)));
    var_0 = min(~(_wgslsmith_div_vec4_i32(vec4<i32>(-33304i, -2147483647i, 44602i, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -21039i, var_0.x, 0i), u_input.c)) ^ vec4<i32>(14810i, u_input.c.x, reverseBits(u_input.c.x), firstLeadingBit(u_input.c.x))), -(_wgslsmith_div_vec4_i32(~u_input.c, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_0.x, var_0.x, 1i, -14246i))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(112886u, u_input.a), u_input.b), u_input.b.x, abs(1u), u_input.a & var_2.b) % vec4<u32>(32u))));
    let var_3 = Struct_1(select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, false));
    var_0 = _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(1i, u_input.c.x, u_input.c.x, ~(-2147483647i))), abs(~u_input.c));
    global0 = array<vec4<f32>, 3>();
    let var_4 = var_2;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1), -9696i, -109f);
}

