struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.c.b.x;
    let var_1 = !(!select(select(vec2<bool>(true, true), !vec2<bool>(arg_0, arg_0), false), !select(vec2<bool>(arg_2.a, false), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), !(!vec2<bool>(arg_0, arg_0))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.c.d))) - _wgslsmith_f_op_f32(abs(-413f)))), arg_2.c.a.x, -859f, _wgslsmith_f_op_f32(1f + 574f));
    var var_3 = _wgslsmith_dot_vec2_i32(~(~_wgslsmith_mult_vec2_i32(select(vec2<i32>(arg_2.b.x, 2147483647i), vec2<i32>(arg_2.c.e, arg_1), var_1.x), arg_2.b >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)))), arg_2.b);
    var_3 = abs(2147483647i);
    return arg_2.c.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2090f)), -1000f);
    let var_1 = ~(firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), select(u_input.a, u_input.a, true), u_input.a)) | vec3<u32>(1u, ~u_input.a.x, 0u));
    global0 = !func_3(false, -9494i, Struct_2(all(vec2<bool>(true, false)), vec2<i32>(arg_0.x, abs(arg_1.x)), Struct_1(vec4<f32>(-531f, 142f, -707f, 586f), ~vec2<u32>(var_1.x, 45022u), false, _wgslsmith_f_op_f32(f32(-1f) * -192f), 23886i)));
    let var_2 = Struct_2(true, _wgslsmith_mult_vec2_i32(vec2<i32>(-5001i, arg_0.x), -min(abs(vec2<i32>(arg_1.x, arg_1.x)), arg_1.yw)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-162f, 927f, -1901f, 816f), vec4<f32>(-247f, -428f, -561f, -137f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(802f, 1456f, 1000f, 394f), vec4<f32>(-800f, -839f, -370f, 1000f))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_1.yz, vec2<u32>(0u, u_input.a.x) ^ vec2<u32>(var_1.x, 0u)), vec2<u32>(var_1.x, ~u_input.a.x), vec2<u32>(~7600u, var_1.x & 9789u)), func_3(true, arg_0.x, Struct_2(false, vec2<i32>(-10320i, arg_0.x), Struct_1(vec4<f32>(678f, 406f, 586f, 667f), vec2<u32>(var_1.x, 0u), true, 2050f, 48301i))), 231f, ~2147483647i));
    let var_3 = Struct_2(0u > u_input.a.x, select(firstTrailingBit(var_2.b), _wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(var_2.b.x, 11384i)), arg_1.xz), false), var_2.c);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.d), var_3.c.d);
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    global0 = !(-2147483647i != firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, 0i, 1i), vec4<i32>(70272i, -1i, 35591i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_0 = Struct_2(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))) < -709f), _wgslsmith_add_vec2_i32(vec2<i32>(select(-22626i, 32430i, true), _wgslsmith_clamp_i32(-21259i, 1i, -2147483647i)), ~vec2<i32>(1i, 1i)) ^ _wgslsmith_sub_vec2_i32(-select(vec2<i32>(2147483647i, -19377i), vec2<i32>(-50181i, 0i), vec2<bool>(false, false)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-53123i, -1i), vec2<i32>(0i, 2147483647i), ~vec2<i32>(-2147483647i, -1i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1332f, arg_0.x, 494f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1056f, 1000f, -388f) - vec4<f32>(arg_0.x, 443f, 265f, 1274f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, -1135f, 384f, 370f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 760f, arg_0.x, arg_0.x))))), ~vec2<u32>(select(u_input.a.x, u_input.a.x, true), ~u_input.a.x), all(vec4<bool>(true, all(vec3<bool>(true, true, false)), false, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(-454f, _wgslsmith_f_op_f32(822f + 610f))))), 2147483647i));
    var var_1 = var_0.c.a;
    var var_2 = u_input.a.x;
    var var_3 = -40396i;
    return var_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = 1701f;
    global0 = true;
    global0 = !(!arg_0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)));
    global0 = true;
    return func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(max(_wgslsmith_sub_vec4_i32(vec4<i32>(45186i, -1141i, 0i, arg_2), vec4<i32>(2147483647i, -15190i, arg_2, -8141i)), -vec4<i32>(arg_2, -10406i, -2147483647i, -12081i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-41533i, arg_2, arg_2, -46179i) | vec4<i32>(2147483647i, arg_2, arg_2, arg_2), -vec4<i32>(-2147483647i, arg_2, 182i, arg_2)))))));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.d + arg_1.x))))));
    return _wgslsmith_f_op_f32(max(-837f, arg_1.x));
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = reverseBits(abs(min(~(u_input.a >> (vec3<u32>(u_input.a.x, arg_1.b.x, arg_1.b.x) % vec3<u32>(32u))), u_input.a)));
    global0 = !(!arg_1.c);
    global0 = arg_1.c;
    var_0 = u_input.a ^ vec3<u32>(max(9276u, _wgslsmith_div_u32(arg_1.b.x >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, arg_1.b.x)))), abs(_wgslsmith_add_u32(~55174u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_1.b.x, 0u), vec4<u32>(0u, 42067u, 0u, u_input.a.x)))), 4294967295u);
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, min(4294967295u, 1u), abs(~0u)), vec3<u32>(abs(1u), 4294967295u, arg_1.b.x)) ^ u_input.a;
    return Struct_2(arg_1.c, vec2<i32>(arg_1.e, _wgslsmith_mult_i32(0i, 1i) >> (var_1.x % 32u)) << (func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-689f, arg_0) - vec2<f32>(arg_0, 1643f)))).c.b % vec2<u32>(32u)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(false, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(517f, 365f) + vec2<f32>(743f, 731f)))), func_1(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-527f, 222f) + vec2<f32>(724f, -1213f)), -1i << (u_input.a.x % 32u), firstTrailingBit(u_input.a.xx))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(518f * -939f), -709f, _wgslsmith_div_f32(1518f, 640f), 1092f)), _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(func_4(vec2<f32>(591f, 1000f)).c.b.x, min(41307u, 1u))), ~min(u_input.a.x, u_input.a.x) <= _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 1968f, i32(-1i) * -(1i >> (1u % 32u))));
    global0 = false || var_0.c.c;
    global0 = !(!var_0.a);
    var var_1 = Struct_2(true, _wgslsmith_div_vec2_i32(~vec2<i32>(abs(20016i), 20252i >> (1u % 32u)), _wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, 26114i), vec2<i32>(-1i, var_0.b.x)), vec2<i32>(var_0.b.x, 1758i))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(var_0.c.a)))), vec2<u32>(~1u, var_0.c.b.x), var_0.c.c, _wgslsmith_f_op_f32(sign(var_0.c.d)), firstLeadingBit(_wgslsmith_mod_i32(abs(var_0.c.e), i32(-1i) * -1i))));
    let var_2 = Struct_2(false, ((vec2<i32>(2147483647i, var_1.b.x) & abs(vec2<i32>(var_1.c.e, 1i))) >> (func_1(select(vec4<bool>(false, var_1.a, false, var_1.c.c), vec4<bool>(false, var_1.c.c, var_0.a, var_0.c.c), vec4<bool>(var_1.c.c, var_1.a, true, var_0.a)), _wgslsmith_f_op_vec2_f32(var_1.c.a.xy * vec2<f32>(489f, 822f)), _wgslsmith_clamp_i32(var_1.c.e, 33514i, var_1.c.e), ~vec2<u32>(var_0.c.b.x, u_input.a.x)).c.b % vec2<u32>(32u))) << (var_0.c.b % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, -1196f, var_1.c.d, 195f)))), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), var_1.c.b), firstTrailingBit(vec2<u32>(0u, var_0.c.b.x)), !all(vec2<bool>(var_1.c.c, false))), !var_1.c.c, var_0.c.d, var_0.c.e));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1726f)), 494f);
}

