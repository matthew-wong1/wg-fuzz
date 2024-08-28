struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_2(Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f * -806f) + -568f))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), false)));
    let var_1 = var_0.a;
    var var_2 = abs(firstTrailingBit(0u));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.a.b)), _wgslsmith_f_op_f32(sign(-999f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f + var_0.a.b) + _wgslsmith_f_op_f32(-var_0.a.b)))), var_0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, -127f, var_1.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b, var_1.b, -1378f), vec3<f32>(var_1.b, var_0.a.b, 553f)) - vec3<f32>(-1000f, -1697f, 2486f)))), any(select(vec2<bool>(select(true, false, var_1.a.x), var_1.a.x), select(!vec2<bool>(var_1.a.x, false), !var_1.a, true), var_0.a.a))));
    var var_4 = Struct_3(arg_0.x, var_1.a, vec3<u32>(1u, _wgslsmith_div_u32(1u, ~2502u) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(20628u, 11028u), vec2<u32>(23461u, 0u)), ~vec2<u32>(0u, 2353u)) % 32u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(abs(vec4<u32>(31310u, 1u, 1u, 23410u))))));
    return ~reverseBits(26673i);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> vec3<i32> {
    let var_0 = vec4<i32>(39005i, -2147483647i, select(0i, 0i, arg_1) ^ _wgslsmith_div_i32(~u_input.a, -51984i), func_3(-(~(~vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    var var_1 = Struct_3(_wgslsmith_add_i32(0i, var_0.x), vec2<bool>(arg_0 == 1000f, arg_1), vec3<u32>(~(~(~arg_2)), countOneBits(4294967295u), 1u));
    var var_2 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -var_1.a), vec3<i32>(var_0.x, var_1.a & _wgslsmith_sub_i32(0i, 35854i), -2671i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, 1i, -11772i)), ~vec3<i32>(var_1.a, 2147483647i, var_0.x)), -vec3<i32>(var_1.a, var_1.a, u_input.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(var_0.wzw, abs(vec3<i32>(var_0.x, -61624i, 2147483647i))), var_0.yxx, -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -28931i, -2147483647i), var_0.yyw))), select(!all(vec2<bool>(true, true)), any(var_1.b), any(select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.b.x, arg_1, arg_1), vec3<bool>(arg_1, false, var_1.b.x), vec3<bool>(true, var_1.b.x, arg_1)), false & var_1.b.x))));
    var_1 = Struct_3(select(firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_1.a, -2147483647i), vec3<i32>(var_0.x, -43885i, -36739i)), vec3<i32>(1i, var_2.x, var_0.x) << (var_1.c % vec3<u32>(32u)))), u_input.a, arg_1), select(vec2<bool>(true, true), var_1.b, select(var_0.x, -var_0.x, select(true, true, var_1.b.x)) != func_3(var_0.xxy)), var_1.c);
    var_2 = _wgslsmith_mod_vec3_i32(var_0.zww, vec3<i32>(-9175i, var_0.x, var_1.a));
    return _wgslsmith_div_vec3_i32(select(min(select(vec3<i32>(var_0.x, -35493i, -35396i), vec3<i32>(3499i, 4277i, 1i), arg_1), _wgslsmith_mult_vec3_i32(var_0.ywz, vec3<i32>(u_input.a, -1i, 94055i))), var_0.xxx, select(select(vec3<bool>(var_1.b.x, true, false), vec3<bool>(var_1.b.x, arg_1, var_1.b.x), arg_1), vec3<bool>(var_1.b.x, var_1.b.x, false), select(vec3<bool>(true, arg_1, true), vec3<bool>(var_1.b.x, false, false), vec3<bool>(var_1.b.x, var_1.b.x, false)))) & min(~(-vec3<i32>(u_input.a, -2147483647i, -16590i)), -(var_0.xzy | vec3<i32>(-9612i, u_input.a, u_input.a))), var_0.wzw);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(func_2(arg_0, any(vec2<bool>(339f >= arg_0, any(vec4<bool>(true, false, true, true)))), 0u), vec3<i32>(func_3(vec3<i32>(3319i, 51517i, u_input.a)) ^ ~(~u_input.a), ~u_input.a << (4294967295u % 32u), -1i));
    var var_1 = Struct_5(~var_0.yz, Struct_4(Struct_3(~countOneBits(-165i), vec2<bool>(any(vec2<bool>(true, false)), true), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20457u, 0u, 0u), vec3<u32>(27468u, 0u, 106374u), vec3<u32>(34479u, 3234u, 22991u)), ~vec3<u32>(12957u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_add_u32(select(1u, ~0u, true), 1u)), _wgslsmith_f_op_f32(-289f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1167f, _wgslsmith_f_op_f32(-arg_0)))));
    var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(-var_1.c), !all(!vec3<bool>(var_1.b.a.b.x, false, true)), var_1.b.b).xz, var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_div_f32(782f, 1301f)), _wgslsmith_f_op_f32(ceil(327f)))))));
    var var_2 = Struct_2(Struct_1(vec2<bool>(var_1.b.a.b.x, select(false, var_1.b.a.b.x, var_1.b.a.b.x) || var_1.b.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -897f), -1063f)))), !select(vec4<bool>(any(vec4<bool>(false, var_1.b.a.b.x, var_1.b.a.b.x, true)), any(vec2<bool>(false, var_1.b.a.b.x)), true, var_1.b.a.b.x), select(select(vec4<bool>(true, var_1.b.a.b.x, var_1.b.a.b.x, false), vec4<bool>(true, false, var_1.b.a.b.x, var_1.b.a.b.x), vec4<bool>(var_1.b.a.b.x, var_1.b.a.b.x, var_1.b.a.b.x, true)), !vec4<bool>(true, var_1.b.a.b.x, true, var_1.b.a.b.x), vec4<bool>(true, false, var_1.b.a.b.x, var_1.b.a.b.x)), !any(vec3<bool>(false, var_1.b.a.b.x, true))));
    let var_3 = -abs(i32(-1i) * -1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -1103f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = firstTrailingBit(25135u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f - 990f))))) >= -307f;
    let var_2 = Struct_4(Struct_3(1i, !(!select(vec2<bool>(var_1, var_1), vec2<bool>(true, false), true)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(143388u, 14517u, 76108u), any(vec4<bool>(true, var_1, var_1, false))))), ~(_wgslsmith_clamp_u32(~32599u, _wgslsmith_clamp_u32(0u, 61372u, 1u), ~0u) >> (0u % 32u)));
    var var_3 = ~var_2.a.c;
    let var_4 = Struct_2(Struct_1(select(!(!var_2.a.b), vec2<bool>(true, false), !select(var_2.a.b, vec2<bool>(false, true), var_1)), _wgslsmith_f_op_f32(f32(-1f) * -961f)), select(!select(vec4<bool>(var_2.a.b.x, true, var_2.a.b.x, false), vec4<bool>(true, true, var_2.a.b.x, var_1), true), !select(!vec4<bool>(var_2.a.b.x, false, var_2.a.b.x, false), !vec4<bool>(var_2.a.b.x, false, var_1, var_1), any(var_2.a.b)), !vec4<bool>(true, all(var_2.a.b), any(vec3<bool>(var_2.a.b.x, true, true)), false)));
    let var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.b, -191f, var_4.a.b, var_4.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1369f, 174f, 233f, 380f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.b, var_4.a.b, -584f, var_4.a.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1841f, var_4.a.b, -1343f, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.b, _wgslsmith_f_op_f32(var_4.a.b - -495f), _wgslsmith_f_op_f32(-var_4.a.b), var_4.a.b)) + vec4<f32>(_wgslsmith_f_op_f32(step(var_4.a.b, _wgslsmith_f_op_f32(ceil(var_4.a.b)))), _wgslsmith_f_op_f32(select(var_4.a.b, -860f, !var_4.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -1744f)))));
    var_3 = abs(~(vec3<u32>(var_3.x, var_2.b, 1u) << (~vec3<u32>(var_2.a.c.x, var_3.x, 38906u) % vec3<u32>(32u)))) ^ _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.b, 1u, 1u), vec3<u32>(var_2.b, var_2.a.c.x, var_3.x)), var_2.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.a.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) + _wgslsmith_f_op_f32(ceil(-651f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_5.x), -1150f))), var_3.x, var_5.wyy);
}

