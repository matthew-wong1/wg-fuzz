struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<bool>) -> vec3<i32> {
    var var_0 = 2147483647i;
    let var_1 = vec2<u32>(13465u, ~u_input.b);
    let var_2 = firstLeadingBit((vec4<u32>(u_input.b & var_1.x, u_input.b, _wgslsmith_mod_u32(4294967295u, 40539u), _wgslsmith_dot_vec2_u32(vec2<u32>(9972u, 14038u), vec2<u32>(3696u, 1u))) ^ vec4<u32>(~u_input.b, 62042u, u_input.b, 4294967295u)) & vec4<u32>(abs(var_1.x) ^ 1u, 24505u, ~countOneBits(var_1.x), abs(~var_1.x)));
    var var_3 = Struct_1(~arg_1, ~_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(0i, -2147483647i, -50080i)), vec3<i32>(1i, 32180i, 25681i)));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(~((var_3.b | vec3<i32>(1i, -61945i, -60689i)) | vec3<i32>(84248i, u_input.a, var_3.a)), var_3.b), _wgslsmith_mod_vec3_i32(~var_3.b, firstLeadingBit(~var_3.b)));
    return ~vec3<i32>(-1i, arg_1, _wgslsmith_mod_i32(i32(-1i) * -1i, var_3.a | 2147483647i) ^ var_4.a);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, -3648i)), ~(-vec2<i32>(-2147483647i, 0i))), vec3<i32>(max(max(u_input.a, -2147483647i), i32(-1i) * -38113i), -25613i >> (arg_0.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(35984i, 71729i, -57262i, u_input.a), vec4<i32>(-1i, 3496i, u_input.a, -16996i)) >> (115506u % 32u))), Struct_2(-2591f, ~(~u_input.b)), u_input.b, !vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), true));
    var var_1 = _wgslsmith_div_vec3_i32(-var_0.a.b, var_0.a.b) | func_3(all(select(select(vec3<bool>(true, true, var_0.d.x), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, true, true)), !vec3<bool>(var_0.d.x, true, false), true)), u_input.a, var_0.d);
    var_1 = func_3(false, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(-7797i, abs(0i))), vec2<bool>(select(var_0.d.x, var_0.d.x, any(select(var_0.d, vec2<bool>(var_0.d.x, var_0.d.x), false))), var_0.d.x));
    var_1 = var_0.a.b;
    var_1 = (var_0.a.b | firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a.b, vec3<i32>(-59070i, 2147483647i, var_0.a.a)), -var_0.a.b))) >> (vec3<u32>(~(~var_0.c), ~max(~4294967295u, u_input.b), _wgslsmith_clamp_u32(u_input.b, ~61322u, var_0.b.b >> (arg_0.b % 32u)) << (4813u % 32u)) % vec3<u32>(32u));
    return Struct_3(var_0.a, Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -173f))))), reverseBits(_wgslsmith_sub_u32(arg_0.b & u_input.b, _wgslsmith_sub_u32(var_0.c, 1u)))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), ~vec2<u32>(1u, 21198u)), firstLeadingBit(u_input.b)) ^ ~_wgslsmith_sub_u32(~55696u, var_0.c), vec2<bool>(!(all(vec3<bool>(var_0.d.x, false, true)) & var_0.d.x), (-60668i != abs(var_0.a.b.x)) && false));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-867f - 331f))), _wgslsmith_f_op_f32(max(1353f, _wgslsmith_f_op_f32(f32(-1f) * -1241f))))) - -673f);
    let var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - -1577f)))), _wgslsmith_div_u32(46956u, max(~u_input.b, u_input.b))));
    var_0 = -1847f;
    let var_2 = 1f;
    var var_3 = !var_1.d;
    return Struct_3(Struct_1(u_input.a ^ var_1.a.b.x, _wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(var_1.a.b, var_1.a.b), vec3<i32>(-2147483647i, -34017i, var_1.a.a) | func_2(var_1.b).a.b, var_1.a.b ^ (var_1.a.b << (vec3<u32>(var_1.b.b, var_1.c, 0u) % vec3<u32>(32u))))), var_1.b, abs(~64619u), func_2(var_1.b).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -54691i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(203f))));
    var var_2 = abs(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.b, 4294967295u, u_input.b) >> (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u))), countOneBits(~vec3<u32>(67611u, u_input.b, 1u))));
    let var_3 = func_1();
    var_0 = ~(~48448i);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_3.b.a * 2128f), var_3.b.a, 714f);
    var var_5 = !(_wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(-13275i, -2147483647i)), var_3.a.b.xx) != countOneBits(-2147483647i));
    var var_6 = abs(_wgslsmith_div_vec2_u32(min(var_2.yy ^ var_2.yy, var_2.zx), vec2<u32>(var_3.c, 1u))) << (~(~vec2<u32>(4294967295u, _wgslsmith_add_u32(19853u, var_3.c))) % vec2<u32>(32u));
    var_1 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(~var_3.a.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 9630i, var_3.a.b.x), var_3.a.b, vec3<i32>(0i, -21190i, var_3.a.b.x))), _wgslsmith_clamp_i32(-18551i, 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_3.a.b, vec3<i32>(u_input.a, u_input.a, var_3.a.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.a), vec3<i32>(-1542i, var_3.a.a, var_3.a.b.x))))), ~vec4<i32>(abs(func_3(false, u_input.a, vec2<bool>(true, false)).x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.a, -37253i), reverseBits(var_3.a.b.yx)), reverseBits(u_input.a << (u_input.b % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-31562i, -45267i), vec2<i32>(-44319i, var_3.a.a))), abs(max(abs(vec3<u32>(var_6.x, u_input.b, 16460u) & vec3<u32>(28297u, 1476u, 45433u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(76127u, 77210u, 19859u), vec3<u32>(1u, var_2.x, 18362u), vec3<bool>(var_3.d.x, true, var_3.d.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 18771u, 0u), vec3<u32>(var_3.c, 1u, 0u))))), 1u, ~_wgslsmith_clamp_u32(u_input.b, var_6.x, var_3.b.b));
}

