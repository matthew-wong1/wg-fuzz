struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(-841f, -971f);
    let var_1 = Struct_1(u_input.c.x | min(~u_input.d, ~66440u), 0i >= u_input.a, vec2<u32>(5705u, u_input.d));
    let var_2 = Struct_2(var_1.b && (u_input.a == _wgslsmith_mult_i32(i32(-1i) * -1i, 1i)));
    let var_3 = any(!(!(!(!vec4<bool>(true, var_2.a, var_2.a, false)))));
    let var_4 = Struct_2(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(var_0))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> bool {
    var var_0 = 13047u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), -1904f, 342f, arg_1);
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<u32>(1u, max(~_wgslsmith_add_u32(firstTrailingBit(u_input.c.x), 4294967295u), 0u), u_input.c.x, u_input.d ^ (u_input.b | u_input.c.x));
    let var_1 = Struct_2(true);
    let var_2 = Struct_4(select(!vec4<bool>(u_input.a >= u_input.a, var_1.a, !var_1.a, true), vec4<bool>(all(vec4<bool>(true, false, false, false)), var_1.a, var_1.a, !func_2(Struct_3(vec2<f32>(1303f, 250f), u_input.b, vec4<u32>(48964u, var_0.x, 1u, 99710u), vec4<f32>(400f, -1043f, -486f, -1350f)), 628f, var_1.a, Struct_4(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1))), 0u != var_0.x), Struct_2(false));
    var_0 = countOneBits(vec4<u32>(~2572u, firstTrailingBit(~4294967295u | ~u_input.c.x), 5195u, ~(var_0.x >> ((u_input.d ^ var_0.x) % 32u))));
    var var_3 = ~(~((6677u ^ _wgslsmith_div_u32(0u, u_input.c.x)) | _wgslsmith_mod_u32(~0u, 4294967295u & u_input.d)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2159f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(719f)) + -1391f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f)), _wgslsmith_f_op_f32(max(-512f, -565f)))), firstLeadingBit(~var_0.x << (firstLeadingBit(_wgslsmith_mod_u32(u_input.d, u_input.c.x)) % 32u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(min(0u, var_0.x), u_input.d, abs(u_input.b), ~68905u)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 731u, u_input.c.x, var_0.x), vec4<u32>(4294967295u, u_input.c.x, var_0.x, 4294967295u)), vec4<u32>(u_input.b, 0u, 42633u, u_input.c.x) ^ vec4<u32>(1u, u_input.d, var_0.x, 7192u), abs(vec4<u32>(1u, 12641u, u_input.d, 0u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(543f)), -393f, -353f, _wgslsmith_f_op_f32(ceil(-455f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, 579f, -672f, -1411f) * vec4<f32>(-282f, 871f, -2506f, 683f)) - vec4<f32>(-1000f, -1018f, -1000f, -1000f))), u_input.a <= u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-47432i, u_input.a, u_input.a, u_input.a)) | firstLeadingBit(vec4<i32>(0i, -1i, u_input.a, 2147483647i))) ^ vec4<i32>(-30740i, _wgslsmith_clamp_i32(2147483647i, u_input.a, 34107i), -u_input.a, 5751i)), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -38338i), vec3<i32>(u_input.a, -39704i, u_input.a)) ^ vec3<i32>(-57148i, 27297i, 48096i)), u_input.a ^ (1i & _wgslsmith_dot_vec2_i32(vec2<i32>(-54925i, -27775i), vec2<i32>(u_input.a, 0i))), ~2147483647i, -1i), true);
    let var_1 = func_1();
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_vec2_u32(u_input.c, ~vec2<u32>(39550u, var_2))), reverseBits(vec3<u32>(~4294967295u, select(firstLeadingBit(u_input.d), _wgslsmith_mult_u32(33599u, 1u), 42225u > var_1.c.x), ~1u)));
}

