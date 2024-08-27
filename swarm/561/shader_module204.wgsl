struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(vec3<bool>(true, true, true), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 41284i, 52405i), vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(7214i, 17942i, 49655i))), vec3<i32>(3392i, -1i, -1i) ^ (vec3<i32>(-21946i, -1i, -24550i) << (u_input.a.wzw % vec3<u32>(32u)))), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, -25782i), -729i, 1i)), 1i, 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -256f), 1451f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)), -335f)));
    var var_1 = var_0.b.x ^ min(0i, var_0.b.x);
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.b.x, 63683u), ~min(u_input.b.x, countOneBits(~u_input.a.x)));
    var var_3 = select(vec2<bool>(false, false), vec2<bool>(any(var_0.a), firstLeadingBit(~1u) <= u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(22717i, i32(-1i) * -13967i), -2147483647i, var_0.b.x) == (_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.xxz, vec3<i32>(0i, var_0.b.x, var_0.b.x)), max(var_0.b.wzy, var_0.b.yxx)) & countOneBits(var_0.b.x)));
    var var_4 = var_0.a.zy;
    return ~_wgslsmith_clamp_vec3_i32(vec3<i32>(~firstTrailingBit(0i), ~(-2147483647i) | (var_0.b.x | var_0.b.x), 0i), _wgslsmith_add_vec3_i32(var_0.b.xyx, firstLeadingBit(var_0.b.yzz)), vec3<i32>(var_0.b.x, 1i, _wgslsmith_mod_i32(var_0.b.x, 0i)) & countOneBits(-vec3<i32>(-64704i, -8797i, var_0.b.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    return _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -31186i, 0i), min(vec3<i32>(-7968i, -30125i, -2147483647i), vec3<i32>(-1i, 5997i, 33894i)), vec3<i32>(32142i, -20674i, 55578i)), _wgslsmith_div_vec3_i32(func_3(), vec3<i32>(2147483647i, 2147483647i, -2147483647i)))), max(abs(~2147483647i << (~arg_1 % 32u)), -2147483647i));
}

fn func_1() -> vec3<i32> {
    let var_0 = true;
    let var_1 = Struct_1(!vec3<bool>(true, var_0, true), max(vec4<i32>(1i, func_2(vec4<f32>(-883f, 117f, 275f, -625f), select(u_input.a.x, u_input.b.x, false)), ~(i32(-1i) * -2147483647i), 4180i), firstTrailingBit(min(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-21923i, 9313i, 1i, -2147483647i), vec4<i32>(-1i, -39234i, -2147483647i, 4891i))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f + -1245f))), _wgslsmith_f_op_f32(trunc(-478f)))));
    let var_2 = true;
    return vec3<i32>(firstLeadingBit(var_1.b.x), 15914i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(func_1(), vec3<i32>(_wgslsmith_add_i32(836i, 0i), 2147483647i, abs(~(-46051i))));
    var_0 = abs(i32(-1i) * -2147483647i);
    var var_1 = _wgslsmith_mod_u32(u_input.a.x & firstLeadingBit(~0u), min(countOneBits(~8210u), u_input.b.x ^ (4294967295u << (u_input.b.x % 32u)))) | _wgslsmith_mult_u32(_wgslsmith_add_u32(17190u, _wgslsmith_mult_u32(~u_input.b.x, ~u_input.b.x)), 1u);
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 18244u, 4294967295u)) ^ _wgslsmith_mod_u32(abs(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 45034u)), ~(u_input.b.x ^ firstLeadingBit(u_input.a.x))), ~u_input.a.wyx);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1300f))), 436f))));
    var_1 = 55896u;
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~_wgslsmith_mult_u32(2712u, 1u), ~u_input.b.x, ~u_input.b.x, 30141u), vec4<u32>(u_input.b.x, ~1u, u_input.a.x, ~1u));
    var var_4 = Struct_1(vec3<bool>(false, true, false), ~vec4<i32>(1i, 1i, 1i, 1i), -716f);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 20118u), ~52424u)), 10526u, var_4.a.x), var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_4.c))))), vec2<f32>(_wgslsmith_f_op_f32(min(var_2.x, -1498f)), _wgslsmith_f_op_f32(-var_4.c)), var_2.x);
}

