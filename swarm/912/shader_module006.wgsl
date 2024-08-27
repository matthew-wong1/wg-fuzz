struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_5) -> vec3<u32> {
    var var_0 = !arg_0.d;
    var_0 = all(!vec3<bool>(true, true, all(!vec3<bool>(false, true, arg_0.d))));
    let var_1 = -(~28785i);
    var var_2 = arg_0.c.zwz;
    var_2 = arg_0.c.zzw;
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(25858u, _wgslsmith_add_u32(_wgslsmith_mod_u32(27187u, u_input.d), u_input.d) << (0u % 32u), arg_0.a.a.x), _wgslsmith_sub_vec3_u32(select(~(~vec3<u32>(0u, 1u, arg_1)), vec3<u32>(~arg_0.a.a.x, _wgslsmith_clamp_u32(0u, u_input.d, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(4294967295u, 1u))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.d))), min(~vec3<u32>(65789u, arg_1, 0u) << (arg_2.a % vec3<u32>(32u)), arg_3.a.a)), arg_0.a.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.b.x)) << (min(func_3(Struct_2(Struct_1(vec3<u32>(u_input.d, 56550u, 32614u)), 1000f, vec4<f32>(1000f, 204f, -282f, 889f), false, vec4<i32>(1i, 2147483647i, u_input.c.x, -7637i)), u_input.d, Struct_1(vec3<u32>(16024u, u_input.b.x, 4294967295u)), Struct_5(Struct_1(vec3<u32>(u_input.d, 0u, u_input.b.x)))), vec3<u32>(1u, u_input.b.x, u_input.d)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2246f - -779f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(249f)), -1293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(602f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(318f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false, vec4<i32>(-25951i, u_input.c.x, 1i, _wgslsmith_mult_i32(-55294i, _wgslsmith_mod_i32(u_input.a.x, u_input.c.x) << (17064u % 32u))));
    var_0 = Struct_2(Struct_1(var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) + _wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(-var_0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * 296f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-533f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1687f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), true, vec4<i32>(u_input.c.x, 2147483647i, -12774i, var_0.e.x << (firstTrailingBit(var_0.a.a.x | 4294967295u) % 32u)));
    let var_1 = vec3<u32>(u_input.d, ~(select(u_input.b.x & 1702u, 0u, any(vec4<bool>(false, var_0.d, true, false))) & 1u), firstLeadingBit(_wgslsmith_div_u32(var_0.a.a.x, _wgslsmith_mod_u32(select(66527u, 0u, true), 16785u << (var_0.a.a.x % 32u)))));
    var_0 = Struct_2(Struct_1(~_wgslsmith_clamp_vec3_u32(var_1, var_0.a.a, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), -342f, any(vec3<bool>(var_0.d, var_0.d, var_0.d)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, var_0.b, -502f, 1091f))))), all(select(vec2<bool>(true, all(vec3<bool>(var_0.d, true, true))), select(!vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(false, true), vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, false)), true || var_0.d), select(!vec2<bool>(var_0.d, var_0.d), vec2<bool>(false, var_0.d), !vec2<bool>(var_0.d, true)))), max(vec4<i32>(var_0.e.x, ~(~u_input.c.x), -_wgslsmith_div_i32(2147483647i, 40930i), ~(-39476i)), select(max(-var_0.e, var_0.e), vec4<i32>(min(7316i, var_0.e.x), var_0.e.x, -u_input.a.x, u_input.c.x), !var_0.d)));
    var var_2 = Struct_5(Struct_1(var_0.a.a));
    return Struct_1(max(func_3(Struct_2(var_2.a, 2209f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, -141f, var_0.b, 2050f)), var_0.d, var_0.e), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.d), 4294967295u), Struct_1(_wgslsmith_add_vec3_u32(var_1, vec3<u32>(79867u, 47212u, var_1.x))), Struct_5(Struct_1(vec3<u32>(var_0.a.a.x, var_2.a.a.x, 40333u)))), vec3<u32>(4294967295u, ~0u, u_input.d)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_5(func_2());
    var_0 = Struct_5(func_2());
    let var_1 = max(_wgslsmith_add_u32(48454u, ~4294967295u), _wgslsmith_mod_u32(func_3(Struct_2(Struct_1(var_0.a.a), -1466f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1789f, 1330f, 873f, 955f)), true, vec4<i32>(u_input.a.x, u_input.c.x, 1i, u_input.c.x)), u_input.d << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 23479u), vec4<u32>(u_input.d, 15568u, 3394u, u_input.d)) % 32u), Struct_1(abs(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))), Struct_5(func_2())).x, max(22168u, var_0.a.a.x)));
    var var_2 = Struct_3(Struct_2(Struct_1(~vec3<u32>(var_0.a.a.x, 0u, u_input.b.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 13647u, var_1)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, 2429f, 724f, 1429f)) + vec4<f32>(719f, -1518f, _wgslsmith_f_op_f32(trunc(346f)), _wgslsmith_f_op_f32(step(-660f, -691f)))), true, firstTrailingBit(~(vec4<i32>(62789i, -2147483647i, u_input.c.x, u_input.a.x) << (vec4<u32>(0u, 0u, 26065u, 4207u) % vec4<u32>(32u))))), -284f);
    var var_3 = Struct_2(var_0.a, 121f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b, var_2.a.c.x, var_2.b, var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_2.a.c))))), _wgslsmith_div_vec4_f32(var_2.a.c, vec4<f32>(var_2.a.c.x, -152f, var_2.b, var_2.a.c.x))), false, vec4<i32>(-8153i >> ((~var_1 & 0u) % 32u), var_2.a.e.x | -_wgslsmith_dot_vec4_i32(var_2.a.e, var_2.a.e), -55346i, _wgslsmith_sub_i32(-21931i, u_input.c.x)));
    return Struct_3(Struct_2(func_2(), _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(252f * -420f)), _wgslsmith_f_op_vec4_f32(-var_3.c), true, ~var_3.e), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(~14349u), u_input.d, ~abs(4294967295u), abs(u_input.b.x)), vec4<u32>(~(~u_input.b.x), ~1u, u_input.d | u_input.d, 116281u)), ~(~u_input.d), u_input.b.x);
    let var_1 = func_1();
    let var_2 = func_1().a.e.zzx;
    var_0 = vec3<u32>(53u, var_0.x, 59285u);
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, 0u), select(u_input.b.x, 4294967295u, true)), _wgslsmith_mod_u32(var_1.a.a.a.x, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b.x), vec2<u32>(0u, var_0.x)))), ~(~select(4294967295u, u_input.b.x, var_1.a.d))), ~var_1.a.a.a, var_1.a.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e, var_1.a.c.x, ~func_1().a.e.wzz);
}

