struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = false;
    return Struct_2(false);
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    var var_0 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !vec3<bool>(true, arg_0.x != 1u, all(vec2<bool>(true, false))));
    var_0 = !select(select(vec3<bool>(select(true, var_0.x, true), any(var_0.zz), false), !select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, var_0.x), true), vec3<bool>(false, true, var_0.x)), select(!(!vec3<bool>(false, var_0.x, var_0.x)), select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x)), !vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, false)), var_0.x & var_0.x), !select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, false), var_0.x), true));
    var var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, u_input.a), ~u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -61078i), vec2<i32>(-35475i, u_input.a)), vec2<i32>(-1i, 1i)), _wgslsmith_mod_vec2_i32(~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a))), min(vec2<i32>(-34032i, -6630i), vec2<i32>(u_input.a, u_input.a)) >> (~arg_0 % vec2<u32>(32u))));
    let var_2 = u_input.a >> (1u % 32u);
    var_1 = ~_wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, var_1.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_2, -7934i), vec2<i32>(u_input.a, var_1.x))), min(~vec2<i32>(u_input.a, 0i), -(vec2<i32>(var_1.x, u_input.a) & vec2<i32>(-2147483647i, 15788i))));
    return vec4<i32>(firstTrailingBit(var_1.x), -_wgslsmith_mod_i32(_wgslsmith_mult_i32(-59163i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, -9237i, 1i), vec3<i32>(-2147483647i, u_input.a, 49077i))), u_input.a), firstTrailingBit(u_input.a) & var_2, ~(i32(-1i) * -23304i));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1808f), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_1.yx, _wgslsmith_div_vec2_i32(arg_0, arg_0)), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 0i), vec3<i32>(-2147483647i, -2987i, arg_1.x))), ~(-u_input.a), -((74972i << (arg_2 % 32u)) >> (~arg_2 % 32u)), -_wgslsmith_div_i32(-31107i, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-54604i, -68709i, arg_0.x, 15832i)))), 4294967295u);
    var var_1 = Struct_1(-1363f, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~var_0.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(29365i, u_input.a, u_input.a, arg_1.x), vec4<i32>(-1i, -2147483647i, -35795i, u_input.a), vec4<i32>(arg_0.x, var_0.b.x, arg_0.x, u_input.a))), firstTrailingBit(firstLeadingBit(vec4<i32>(-8064i, -38976i, arg_1.x, 1i)))), var_0.b), _wgslsmith_add_u32(arg_2, var_0.c));
    var var_2 = Struct_2(false);
    let var_3 = 42210u;
    var_0 = Struct_1(arg_3, ~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.b.x, var_0.b.x, arg_1.x, var_0.b.x)) | (vec4<i32>(u_input.a, 5333i, var_0.b.x, 26634i) << (vec4<u32>(1u, 8320u, var_1.c, var_1.c) % vec4<u32>(32u))), vec4<i32>(57332i << (arg_2 % 32u), arg_1.x, arg_0.x, _wgslsmith_div_i32(var_0.b.x, 20050i)), vec4<i32>(var_1.b.x, 76621i, ~arg_0.x, abs(var_0.b.x))), 4294967295u);
    return select(vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, -8241i, -2147483647i, -2147483647i), vec4<i32>(0i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.a), var_1.b.yz), 24953i), !all(!vec3<bool>(var_2.a, false, true))) | -_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, var_1.b.x, max(arg_0.x, -11672i)), arg_1);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = (vec2<u32>(1u, 1u) & (vec2<u32>(_wgslsmith_clamp_u32(1u, 1299u, 26559u), ~0u) | select(~vec2<u32>(1u, 1u), min(vec2<u32>(139293u, 63095u), vec2<u32>(4294967295u, 62916u)), vec2<bool>(arg_1.a, false)))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    let var_1 = ~vec3<u32>(25723u, ~var_0.x, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), reverseBits(vec4<u32>(1u, var_0.x, var_0.x, 34514u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1302f)) - -600f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(624f - _wgslsmith_f_op_f32(-454f * -1128f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1142f - -1677f), 166f)))), func_4(-(vec2<i32>(2147483647i, 2147483647i) | (vec2<i32>(u_input.a, arg_0) & vec2<i32>(u_input.a, -21597i))), abs(func_3(~vec2<u32>(17249u, 54731u))), ~_wgslsmith_mult_u32(1u, var_1.x), -675f), max(var_1.x, var_1.x));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1866f;
    var var_1 = select(false, true && !any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), all(vec4<bool>(true, true, func_2(u_input.a, func_1(Struct_1(1459f, vec4<i32>(0i, -2147483647i, u_input.a, u_input.a), 4294967295u))), true)));
    var_1 = true;
    var_1 = !(!all(vec3<bool>(any(vec2<bool>(true, false)), true, true)));
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(floor(1926f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(733f, 682f), -1401f, true)), true || all(vec4<bool>(true, false, false, true)));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(u_input.a, -3009i, -14636i, -1i) | ~vec4<i32>(-2147483647i, u_input.a, 4378i, u_input.a)) >> (max(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, 9828u, 16019u, 123134u)), select(vec4<u32>(0u, 0u, 34322u, 1u), vec4<u32>(0u, 2726u, 7612u, 1u), vec4<bool>(true, var_2.x, false, var_2.x))), firstLeadingBit(min(vec4<u32>(1u, 46460u, 42305u, 13688u), vec4<u32>(5841u, 16446u, 57193u, 4294967295u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(3542f, -745f, -747f))) * vec3<f32>(1f, 1f, 1f))), _wgslsmith_mult_u32(~478u, 1u), -select(vec2<i32>(~u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), any(vec4<bool>(var_2.x, false, var_2.x, true)) && true));
}

