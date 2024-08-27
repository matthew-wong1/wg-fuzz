struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_2(select(_wgslsmith_clamp_u32(countOneBits(arg_0.x) | abs(u_input.a), abs(arg_0.x), ~firstLeadingBit(arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.www, u_input.b.zyw), _wgslsmith_add_vec3_u32(u_input.b.wwz, vec3<u32>(arg_0.x, 12723u, 4294967295u))), abs(u_input.a)), false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1469f))) - _wgslsmith_f_op_f32(abs(512f))));
    let var_2 = Struct_3(Struct_2(firstLeadingBit(0u)), Struct_2(44823u));
    var var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(12175i, u_input.c, u_input.c, 1i) ^ vec4<i32>(-21070i, 18776i, 55959i, 0i)), vec4<i32>(-u_input.c, u_input.c, 1i, reverseBits(u_input.c)), -firstTrailingBit(vec4<i32>(-27035i, u_input.c, u_input.c, 89722i))) | vec4<i32>(min(~u_input.c, select(-2147483647i, 12568i, false)), abs(firstLeadingBit(u_input.c)), -u_input.c, 1i), vec4<i32>(~u_input.c, countOneBits(abs(u_input.c)), ~reverseBits(-4050i), -2147483647i));
    global1 = 55288u;
    return -2147483647i;
}

fn func_2() -> Struct_3 {
    global0 = !(_wgslsmith_f_op_f32(sign(1370f)) <= -1301f);
    var var_0 = !any(!vec4<bool>(false, any(vec3<bool>(true, false, false)), all(vec2<bool>(false, true)), select(true, true, true)));
    var_0 = all(vec3<bool>(!(!select(true, false, false)), !(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.wz) >= _wgslsmith_mod_u32(u_input.b.x, 48057u)), _wgslsmith_clamp_i32(func_3(u_input.b.yw), firstLeadingBit(-1595i), select(-41458i, -19371i, true)) <= u_input.c));
    var_0 = true;
    let var_1 = Struct_2(select(u_input.b.x, ~(select(1583u, u_input.b.x, false) >> (~u_input.b.x % 32u)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, false), true))));
    return Struct_3(var_1, var_1);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = false;
    var_1 = false;
    let var_2 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1871f - _wgslsmith_f_op_f32(round(-1063f))), 2182f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-135f, 283f)), -780f, -17424i >= u_input.c)), _wgslsmith_f_op_f32(abs(-707f)))), arg_1.x);
    var var_3 = 41621u;
    return Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1632f), _wgslsmith_f_op_f32(-1043f * -900f), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(var_2.b.x + -101f))))), (((var_0.b.a <= var_0.b.a) | arg_0.x) | !(var_2.a >= -21698i)) & true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = reverseBits(u_input.b.yw);
    let var_1 = func_1(!arg_2.yw, vec4<bool>(false, select(true, true, true != !arg_1.c), all(!vec4<bool>(arg_2.x, false, true, arg_2.x)), true));
    var var_2 = ~firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(var_0.x, 1u), u_input.a)) ^ vec2<u32>(_wgslsmith_mod_u32(max(0u, var_0.x), var_0.x) << (reverseBits(reverseBits(61232u)) % 32u), abs((var_0.x ^ 1u) & 13890u));
    global1 = firstLeadingBit(u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(493f))))), arg_1.b.x, all(select(!arg_2.zwz, select(vec3<bool>(true, true, true), vec3<bool>(arg_2.x, arg_2.x, arg_1.c), vec3<bool>(false, true, true)), all(vec4<bool>(var_1.c, arg_2.x, arg_2.x, arg_2.x)))))));
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(max(-822i, ~u_input.c), ~(u_input.c >> (15893u % 32u)), u_input.c), _wgslsmith_mod_vec3_i32(select(~vec3<i32>(-51362i, u_input.c, u_input.c), abs(vec3<i32>(-1i, -2147483647i, 1i)), vec3<bool>(true, true, true)), ~firstLeadingBit(vec3<i32>(28351i, u_input.c, u_input.c)))), func_1(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), !vec4<bool>(false, true, select(true, true, true), true)), vec4<bool>(true, false, false, all(vec3<bool>(true, select(false, false, false), false))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(select(abs(~vec3<i32>(u_input.c, u_input.c, -38240i)), -select(vec3<i32>(-2147483647i, 0i, 17785i), vec3<i32>(u_input.c, u_input.c, 2147483647i), true), vec3<bool>(var_1.a.a >= 36047u, true, any(vec2<bool>(true, false)))), abs(vec3<i32>(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-77672i, u_input.c), vec2<i32>(u_input.c, u_input.c)), 2147483647i))), u_input.c);
    let var_3 = u_input.c;
    var var_4 = Struct_1(func_3(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 25796u, u_input.b.x, 6245u), vec4<u32>(var_1.a.a, var_0.a, var_1.a.a, 4294967295u)) >> (_wgslsmith_div_u32(4294967295u, 5902u) % 32u), ~(~82904u))), vec4<f32>(_wgslsmith_f_op_f32(sign(282f)), _wgslsmith_f_op_f32(f32(-1f) * -1595f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(989f - _wgslsmith_f_op_f32(f32(-1f) * -2406f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(509f, -1000f, true)) * _wgslsmith_f_op_f32(floor(-480f))))), true);
    let var_5 = ~vec4<i32>(var_3, i32(-1i) * -13164i, 23121i, u_input.c) >> (_wgslsmith_div_vec4_u32(abs(~vec4<u32>(0u, var_1.a.a, 45316u, 4294967295u)), ~u_input.b) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b.xy), ~(abs(~var_5.wzw) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, u_input.a, u_input.b.x), min(u_input.b.zxz, vec3<u32>(var_1.b.a, 0u, 0u))) % vec3<u32>(32u))));
}

