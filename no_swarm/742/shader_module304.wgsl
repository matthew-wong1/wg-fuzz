struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, 359f, 1294f, 897f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1353f, -195f, 1000f, 142f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(450f, 460f, 1262f, 1249f)), vec4<f32>(-725f, -1271f, -699f, -1057f))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(624f, var_0.x), _wgslsmith_div_f32(-1438f, -2746f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1580f, var_0.x, -788f, 350f), vec4<f32>(var_0.x, 1000f, -804f, var_0.x), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 394f, var_0.x, 393f))), true)))));
    var var_1 = ~(~_wgslsmith_sub_u32(~u_input.d.x | ~2432u, _wgslsmith_mult_u32(~4294967295u, 1u)));
    let var_2 = ~vec2<u32>(~0u, ~(firstLeadingBit(36942u) | u_input.d.x));
    var_0 = vec4<f32>(_wgslsmith_div_f32(-285f, -1042f), _wgslsmith_f_op_f32(abs(var_0.x)), 779f, 1142f);
    return 4294967295u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(23409u, u_input.c.x, u_input.c.x, 81578u)), vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 9323u), reverseBits(4294967295u), abs(u_input.d.x), _wgslsmith_sub_u32(~abs(4294967295u), func_3())));
    let var_1 = min(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(var_0), 14949u, var_0 << (u_input.c.x % 32u), ~4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u), select(vec4<u32>(28696u, u_input.c.x, u_input.c.x, var_0), vec4<u32>(var_0, u_input.c.x, var_0, var_0), arg_0)))), vec4<u32>(~(var_0 & u_input.c.x), func_3(), var_0, ~(~u_input.d.x)) ^ min(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(3763u, 1u, 54220u, 0u)), vec4<u32>(var_0, var_0, var_0, var_0)), select(vec4<u32>(0u, u_input.d.x, 2825u, 62475u), vec4<u32>(var_0, 47811u, 29199u, 4294967295u), select(arg_0, arg_0, arg_0))));
    let var_2 = 1u;
    let var_3 = 1u;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(253f + -190f))))), var_1.x, !select(!arg_0, select(vec4<bool>(false, true, false, arg_0.x), arg_0, vec4<bool>(true, arg_0.x, false, false)), select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-768f, -1338f, arg_0.x))) * 1f)));
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = any(func_2(select(!arg_0.a.c, select(vec4<bool>(true, arg_0.a.c.x, false, false), arg_0.a.c, vec4<bool>(arg_1, false, arg_1, arg_1)), arg_1)).a.c.zy) || false;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(329f, -456f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, -1284f) + _wgslsmith_f_op_f32(sign(arg_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_0.b))) + -1413f), var_0));
    var var_2 = -(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, u_input.b), vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.e, 0i)) ^ vec2<i32>(-1i, 48654i)));
    var var_3 = vec2<u32>(~(min(reverseBits(0u), 1u) << (arg_0.a.b % 32u)), u_input.d.x);
    let var_4 = select(vec3<bool>(true, !arg_1, false), vec3<bool>(false, arg_1, true), true);
    return arg_0.a;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1165f, _wgslsmith_f_op_f32(max(arg_0.a.a, arg_0.b))), vec2<f32>(-1459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.a, arg_0.a.a)) - arg_0.a.a)));
    let var_1 = func_4(func_2(arg_0.a.c), var_0.x > _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1895f)))))));
    var_0 = vec2<f32>(-167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.b)))), 1f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, var_0.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, arg_0.a.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, var_1.a)))))));
    return -1388f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 0u) << (vec4<u32>(18331u, 4294967295u, 8085u, arg_2.a.b) % vec4<u32>(32u)), ~vec4<u32>(78881u, arg_1.b, arg_1.b, arg_1.b))), vec4<u32>(90742u, func_2(vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_2.a.c.x)).a.b | firstLeadingBit(_wgslsmith_div_u32(arg_2.a.b, 48291u)), 4294967295u, _wgslsmith_mod_u32(select(reverseBits(6826u), arg_1.b | 53823u, any(vec3<bool>(false, arg_1.c.x, true))), u_input.c.x)), vec4<bool>(!arg_1.c.x || arg_2.a.c.x, all(arg_2.a.c.xz), arg_1.c.x, 7458u == select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, arg_2.a.b), u_input.d.zx), ~1u, true)));
    let var_1 = 2147483647i;
    let var_2 = arg_2;
    var var_3 = 56317u;
    var_3 = ~4294967295u;
    return func_4(arg_2, var_2.a.c.x | !(_wgslsmith_f_op_f32(step(arg_1.a, arg_0)) <= 604f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-575f, 33988u, vec4<bool>(true, true, false, false)), -1000f)))), func_4(func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), -824f > _wgslsmith_f_op_f32(select(-2177f, -761f, true))), Struct_2(func_4(func_2(vec4<bool>(false, false, false, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) + func_4(Struct_2(Struct_1(-1205f, 42649u, vec4<bool>(false, false, false, false)), -957f), true).a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) * _wgslsmith_f_op_f32(min(1158f, -884f))) + _wgslsmith_f_op_f32(2468f * _wgslsmith_div_f32(-299f, 1284f))))));
    let var_1 = 39969i;
    var_0 = func_2(!(!vec4<bool>(true, var_0.a.c.x, false, var_0.a.c.x)));
    let var_2 = firstTrailingBit(vec4<u32>(var_0.a.b, 4294967295u, var_0.a.b, 0u));
    let var_3 = var_1;
    var var_4 = ~(var_2.x << (4294967295u % 32u));
    var_4 = _wgslsmith_dot_vec2_u32(firstLeadingBit(min(vec2<u32>(~1u, func_4(Struct_2(var_0.a, 737f), var_0.a.c.x).b), u_input.d.zz | vec2<u32>(var_2.x, 1965u))), _wgslsmith_clamp_vec2_u32(abs(u_input.d.yy), vec2<u32>(var_2.x, 66607u) >> (min(vec2<u32>(0u, var_2.x), vec2<u32>(99239u, 1u)) % vec2<u32>(32u)), vec2<u32>(func_3(), 4294967295u)) ^ vec2<u32>(_wgslsmith_mod_u32(var_2.x, ~var_2.x), _wgslsmith_clamp_u32(1u, u_input.c.x, var_0.a.b)));
    let var_5 = -_wgslsmith_mod_i32(-_wgslsmith_add_i32(-1i, countOneBits(-13412i)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(24594u);
}

