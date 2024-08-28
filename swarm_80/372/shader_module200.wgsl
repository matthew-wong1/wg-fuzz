struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = (4294967295u << (((20390u << (u_input.d % 32u)) >> ((_wgslsmith_sub_u32(u_input.a.x, 4294967295u) ^ 1u) % 32u)) % 32u)) ^ (_wgslsmith_mod_u32(4294967295u, max(~u_input.a.x, ~u_input.d)) & (7641u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(50924u, 69858u, u_input.a.x, u_input.c), vec4<u32>(40895u, 0u, 14399u, u_input.d)), vec4<u32>(u_input.c, 47856u, 55672u, 1u))));
    let var_1 = !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), !any(vec4<bool>(false, true, true, false))));
    var var_2 = Struct_2(var_0 << (_wgslsmith_clamp_u32(20424u, var_0, ~min(32438u, 22289u)) % 32u));
    var_2 = Struct_2((19791u >> (var_0 % 32u)) & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 0u, var_2.a, 26901u), ~vec4<u32>(u_input.a.x, var_0, var_0, 58483u)), abs(vec4<u32>(var_2.a, var_0, u_input.d, 35607u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 27698u, u_input.c), vec4<u32>(57797u, var_2.a, 1u, var_0), vec4<u32>(24820u, var_0, var_0, 24345u)) % vec4<u32>(32u))));
    var var_3 = Struct_1(select(true, true, true), ~u_input.b, vec3<f32>(827f, _wgslsmith_f_op_f32(f32(-1f) * -1406f), _wgslsmith_f_op_f32(f32(-1f) * -624f)), vec3<bool>(true, u_input.b > -u_input.b, all(vec3<bool>(var_2.a < u_input.c, false, all(var_1)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - _wgslsmith_f_op_f32(792f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) + _wgslsmith_f_op_f32(var_3.c.x * -1000f))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1298f), 1573f), arg_0.c.x, arg_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))))), _wgslsmith_f_op_f32(func_3()))));
    let var_1 = 0u;
    let var_2 = Struct_1(false, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i, 67777i)), vec2<i32>(arg_1 | u_input.b, 1i)), ~max(1i, arg_0.b) >> (39155u % 32u)), arg_0.c, select(arg_0.d, arg_0.d, any(select(vec3<bool>(arg_0.d.x, false, arg_0.d.x), vec3<bool>(true, arg_0.a, false), arg_0.d))));
    return select(!select(vec2<bool>(all(var_2.d.xx), false && var_2.d.x), vec2<bool>(all(vec4<bool>(var_2.a, true, false, true)), true), select(!vec2<bool>(var_2.a, false), select(vec2<bool>(var_2.d.x, true), vec2<bool>(true, true), arg_0.a), arg_0.d.yz)), vec2<bool>(false, arg_0.a), true);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-u_input.b, countOneBits(11820i)), 1i, _wgslsmith_add_i32(u_input.b, -u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 4223i, 9817i), select(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.b, -1i), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)) | _wgslsmith_mod_vec3_i32(vec3<i32>(-39647i, 2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, 10590i)))), firstLeadingBit(u_input.b), -u_input.b >> (~(~0u) % 32u));
    var var_1 = ~var_0.x;
    let var_2 = ~(-u_input.b);
    let var_3 = u_input.a.x <= 24023u;
    return Struct_4(select(vec2<bool>(true | (arg_1.a || arg_1.a), (arg_1.a | false) || arg_1.a), !select(vec2<bool>(var_3, true), !vec2<bool>(var_3, true), var_3), select(!vec2<bool>(true, arg_1.a), !vec2<bool>(true, arg_1.a), func_2(Struct_1(var_3, var_0.x, vec3<f32>(1491f, 1261f, -879f), vec3<bool>(var_3, false, false)), _wgslsmith_mod_i32(u_input.b, -3448i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(all(vec3<bool>(~u_input.b != (u_input.b & u_input.b), true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))))), true, select(true, true, true));
    let var_1 = func_1(u_input.c, Struct_3(select(true, true, !all(vec4<bool>(false, false, false, true)))));
    let var_2 = select(!vec4<bool>(var_1.a.x | var_1.a.x, _wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(floor(-997f)), false, true), !select(vec4<bool>(true, true, false, any(vec4<bool>(true, true, var_1.a.x, var_1.a.x))), !vec4<bool>(true, true, false, var_1.a.x), false), !vec4<bool>(var_1.a.x, u_input.a.x >= firstLeadingBit(u_input.c), 49524u > ~u_input.d, true & any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true))));
    var_0 = true;
    let var_3 = -_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.b, -12061i, 2147483647i) | -vec3<i32>(u_input.b, 8461i, u_input.b), reverseBits(firstLeadingBit(vec3<i32>(1i, u_input.b, -2147483647i)))), vec3<i32>(u_input.b, _wgslsmith_mod_i32(-52478i, _wgslsmith_clamp_i32(u_input.b, -89534i, u_input.b)), 92601i));
    var var_4 = var_1.a.x || (-_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2310i, -1i), 0i, _wgslsmith_div_i32(-3326i, 1i)) < (-2147483647i << (u_input.c % 32u)));
    let var_5 = false;
    let var_6 = ~(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x));
    var_0 = any(select(vec3<bool>(!(1i >= var_3.x), true, var_5), select(var_2.wzw, select(var_2.yxx, select(vec3<bool>(var_2.x, false, var_2.x), var_2.xzw, var_1.a.x), true), select(any(vec2<bool>(var_5, var_2.x)), !var_2.x, var_5)), ~_wgslsmith_clamp_u32(var_6, u_input.a.x, var_6) > _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 102495u, 987u, 0u), vec4<u32>(var_6, 1u, var_6, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_6, u_input.d, 4294967295u, u_input.a.x), vec4<u32>(u_input.c, 4294967295u, 34783u, var_6)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1150f, -1739f))))), vec2<f32>(-145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f * -152f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1386f) + -719f))), u_input.d, _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, 13169i, reverseBits(-2147483647i)), var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1348f * 406f)))));
}

