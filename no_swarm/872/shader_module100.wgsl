struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    var var_0 = false;
    let var_1 = !any(select(vec4<bool>(u_input.a == -49582i, true, all(vec2<bool>(arg_0.a, arg_0.a)), arg_0.a | false), !select(vec4<bool>(arg_0.a, true, true, false), vec4<bool>(arg_0.a, false, true, false), true), select(select(vec4<bool>(arg_0.a, true, true, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, true), vec4<bool>(false, arg_0.a, arg_0.a, false)), vec4<bool>(arg_0.a, true, arg_0.a, false), true)));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b)))) + _wgslsmith_f_op_f32(floor(arg_1.x))), -1i, arg_0.d);
    let var_3 = var_2.d;
    var_0 = all(select(vec2<bool>(!var_1 | (var_1 && true), var_2.a), select(!vec2<bool>(arg_0.a, true), !select(vec2<bool>(false, false), vec2<bool>(var_1, true), false), select(vec2<bool>(false, false), !vec2<bool>(var_1, arg_0.a), !vec2<bool>(var_1, true))), !vec2<bool>(var_1, !var_2.a)));
    return _wgslsmith_mod_i32(~(-1i), _wgslsmith_add_i32(i32(-1i) * -3670i, u_input.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(ceil(arg_0.x))) - _wgslsmith_f_op_f32(sign(-1026f))));
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-arg_1.x, _wgslsmith_mult_i32(29168i, 41741i), _wgslsmith_div_i32(-39324i, u_input.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, arg_1.x, 31558i), vec4<i32>(-1i, -279i, arg_1.x, arg_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, arg_1.x), vec4<i32>(0i, 2147483647i, -2147483647i, 0i)), arg_1.x >> (19261u % 32u)), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_sub_i32(arg_1.x, 28277i), -arg_1.x, u_input.a) >> (_wgslsmith_mod_vec3_u32(max(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1441u, 0u, 27700u)), vec3<u32>(83071u, 60842u, 42290u)) % vec3<u32>(32u))), vec3<i32>(~arg_1.x, ~(~_wgslsmith_sub_i32(arg_1.x, 16927i)), -1i));
    let var_2 = _wgslsmith_sub_vec4_i32(-(~(-(~vec4<i32>(-33191i, 5704i, u_input.a, -1i)))), vec4<i32>(u_input.a, -2147483647i, _wgslsmith_add_i32(u_input.a, func_3(Struct_1(false, 1456f, u_input.a, vec3<i32>(u_input.a, -36148i, 6555i)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, var_0), vec4<f32>(var_0, arg_0.x, var_0, arg_0.x))))), -arg_1.x));
    var var_3 = 4294967295u;
    var var_4 = Struct_1(true, -1185f, countOneBits(select(select(2147483647i, -1i, false), reverseBits(-7213i), any(vec2<bool>(false, true))) | var_1.x), firstLeadingBit(vec3<i32>(reverseBits(max(2147483647i, 2147483647i)), arg_1.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_2, var_2), -11543i))));
    return !(!all(!(!vec4<bool>(var_4.a, true, false, false))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-175f - _wgslsmith_f_op_f32(select(561f, 249f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f + 545f) * -1254f), true)), _wgslsmith_f_op_f32(abs(1f)))), u_input.a, -_wgslsmith_mult_vec3_i32(vec3<i32>(40292i, u_input.a, u_input.a) << (vec3<u32>(1u, 8846u, 4294967295u) % vec3<u32>(32u)), abs(vec3<i32>(u_input.a, -70613i, -1i))) | vec3<i32>(-16359i, -46001i << (1u % 32u), 6892i));
    var var_1 = var_0;
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 20938u, 29768u, 4294967295u), vec4<u32>(83982u, 4294967295u, 4294967295u, 4294967295u)), ~(~(~1u)), 1u, reverseBits(0u)), vec4<u32>(_wgslsmith_add_u32(~(~34184u), 14496u << (_wgslsmith_div_u32(49818u, 34312u) % 32u)), min(63588u, 1u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u))), ~vec4<u32>(abs(min(1u, 57979u)), ~0u, 1u, ~4294967295u >> (1u % 32u)));
    let var_3 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2062f, 1871f, var_1.b) - vec3<f32>(var_0.b, 112f, var_1.b)))), (vec2<i32>(var_1.c, u_input.a) | max(var_1.d.zz, vec2<i32>(var_1.c, 2147483647i))) | vec2<i32>(abs(var_0.d.x), _wgslsmith_mult_i32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * var_1.b) * var_1.b) - _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>((var_1.d.x | 102607i) << (var_2.x % 32u), 20447i >> (_wgslsmith_mod_u32(18611u, var_2.x) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, u_input.a, 1i, u_input.a), vec4<i32>(-88391i, u_input.a, 44878i, var_1.d.x)), countOneBits(-20812i))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_0.d, var_1.d), vec3<i32>(var_0.d.x, 2147483647i, -24601i) | var_0.d), -(vec3<i32>(0i, var_0.d.x, var_0.c) >> (vec3<u32>(1u, 26825u, var_2.x) % vec3<u32>(32u))))), reverseBits(_wgslsmith_mult_vec3_i32(select(abs(var_1.d), vec3<i32>(-1i, 0i, 11131i), select(var_0.a, var_0.a, var_0.a)), -firstLeadingBit(vec3<i32>(-22303i, u_input.a, -22038i)))));
    var_1 = Struct_1(var_3.a, _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -1044f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) - _wgslsmith_f_op_f32(var_1.b - 381f)), true))), var_0.c, _wgslsmith_clamp_vec3_i32(var_1.d, var_0.d, _wgslsmith_mult_vec3_i32(reverseBits(countOneBits(var_1.d)), _wgslsmith_add_vec3_i32(var_1.d, vec3<i32>(29824i, var_1.c, 2147483647i)) | vec3<i32>(u_input.a, var_1.d.x, 1i))));
    return firstTrailingBit(~(~abs(~var_2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = arg_0.b;
    var var_1 = vec2<u32>(select(arg_2, ~firstLeadingBit(arg_2 | arg_2), arg_0.a), _wgslsmith_clamp_u32(arg_2, countOneBits(44516u), 1u));
    let var_2 = select(u_input.a, 26010i, !(!arg_1.x));
    var_1 = vec2<u32>(~_wgslsmith_clamp_u32(~(~2976u), 4294967295u, select(arg_2, ~7799u, arg_1.x)), 0u);
    var var_3 = 36188i;
    return _wgslsmith_f_op_f32(f32(-1f) * -1086f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(true, 719f, u_input.a, select(reverseBits(vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec3<i32>(0i, -2147483647i, 1i) >> (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(true, true, true)))), ~_wgslsmith_add_u32(reverseBits(35426u), func_1()), -2147483647i)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -1663f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) * _wgslsmith_f_op_f32(select(-731f, 1976f, false))), _wgslsmith_f_op_f32(795f + _wgslsmith_div_f32(-1325f, 230f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(true, 101f, -19230i, vec3<i32>(-4367i, 1i, u_input.a)), vec2<bool>(true, false), 1u, u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1317f, 1000f, false)))))))), _wgslsmith_f_op_f32(f32(-1f) * -311f));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(~reverseBits(u_input.a), 1i), u_input.a, _wgslsmith_clamp_i32(countOneBits(0i), abs(-53098i), u_input.a));
    let var_3 = Struct_1(true, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(485f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-319f, -1713f) * _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), true)), u_input.a, _wgslsmith_div_vec3_i32(~var_2, _wgslsmith_clamp_vec3_i32(var_2, vec3<i32>(_wgslsmith_add_i32(var_2.x, -2147483647i), select(2147483647i, var_2.x, false), countOneBits(-2147483647i)), ~(~vec3<i32>(-62332i, u_input.a, -14531i)))));
    var var_4 = _wgslsmith_add_i32(-61911i, abs(-_wgslsmith_add_i32(var_2.x, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_3.b, 979f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(941f, 713f, -600f, var_3.b) * vec4<f32>(var_1.x, 426f, var_3.b, -923f))), vec4<bool>(var_3.a, true, -765f != var_3.b, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.b), 314f, var_1.x, var_1.x)))), -328f, _wgslsmith_f_op_f32(-var_1.x), vec4<i32>(_wgslsmith_mod_i32(-(~3271i), _wgslsmith_sub_i32(u_input.a & 19746i, 58944i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.c, -2147483647i) | ~u_input.a, _wgslsmith_clamp_i32(1i, u_input.a ^ var_2.x, u_input.a >> (0u % 32u))), -(~(-var_2.x)), -35649i));
}

