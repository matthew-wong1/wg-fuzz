struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = !all(vec3<bool>(true, true, true));
    let var_1 = arg_2;
    var var_2 = ~max(select(~arg_0.yxx, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.wxy, vec3<i32>(arg_2.a.x, -5452i, 1i)), _wgslsmith_sub_vec3_i32(arg_0.zxw, arg_0.wyx)), false), vec3<i32>(var_1.a.x, -arg_1.a.x, i32(-1i) * -arg_3.a.x));
    var var_3 = vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -838f))));
    var_2 = arg_0.zwy | vec3<i32>(_wgslsmith_mod_i32(var_2.x, var_2.x), countOneBits(-1i), var_1.a.x | var_1.a.x);
    return 2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(min(-(-vec2<i32>(arg_0.x, arg_0.x) << (u_input.b.yz % vec2<u32>(32u))), countOneBits(_wgslsmith_sub_vec2_i32(arg_1.zx, u_input.d) | (arg_0 ^ u_input.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(605f + 1489f), -720f, 834f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-988f, 1000f, -1187f) * vec3<f32>(995f, -1067f, 477f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(353f, -582f, -340f) - vec3<f32>(-547f, 401f, -175f)))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(540f))), _wgslsmith_f_op_f32(floor(519f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) - _wgslsmith_f_op_f32(1000f * -555f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-843f - -1851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1183f)))))), _wgslsmith_f_op_f32(237f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) - _wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(1043f - 1000f)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.d);
    let var_2 = 4294967295u;
    let var_3 = all(vec2<bool>(all(vec4<bool>(false, all(vec2<bool>(false, true)), all(vec2<bool>(false, false)), true)), (-231f == var_0.e) & (any(vec2<bool>(true, false)) & true)));
    let var_4 = false && var_3;
    return !var_3;
}

fn func_2() -> Struct_1 {
    var var_0 = 2693u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f + -2133f) * 1f);
    var_0 = ~u_input.b.x;
    var var_2 = func_4(u_input.d | u_input.d, min(vec3<i32>(u_input.d.x, u_input.c, min(_wgslsmith_sub_i32(u_input.a, u_input.a), func_3(vec4<i32>(u_input.c, 9721i, 1i, u_input.c), Struct_1(u_input.d, vec3<f32>(var_1, 522f, 1186f), var_1, var_1, 248f), Struct_1(vec2<i32>(6851i, 28374i), vec3<f32>(var_1, var_1, var_1), var_1, var_1, var_1), Struct_1(u_input.d, vec3<f32>(var_1, 1696f, var_1), var_1, 1903f, -1831f)))), ~(-vec3<i32>(-16910i, 1i, 11465i))));
    var_0 = _wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x) >> (_wgslsmith_div_u32(reverseBits(99965u), ~(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) ^ (4294967295u & u_input.b.x))) % 32u);
    return Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-790f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -914f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(348f, 426f, true)))), 1421f, _wgslsmith_f_op_f32(abs(773f)))), _wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-463f)))))), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(min(var_1, _wgslsmith_div_f32(var_1, -222f)))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = select(!vec2<bool>(true, abs(-58711i) <= arg_0), vec2<bool>(true, all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))), true);
    var var_3 = 0i;
    let var_4 = !vec3<bool>(true, true, var_2.x);
    return _wgslsmith_f_op_f32(-var_1.b.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - 367f), arg_1.c, _wgslsmith_f_op_f32(-arg_1.e))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, -1000f, arg_1.c) + vec3<f32>(3186f, -1011f, arg_1.d)))));
    var var_1 = ~(_wgslsmith_mod_u32(arg_0.x, 11282u) & (u_input.b.x << (~u_input.b.x % 32u)));
    let var_2 = -2147483647i >= _wgslsmith_sub_i32(i32(-1i) * -11823i, func_2().a.x);
    var_1 = arg_0.x;
    let var_3 = -1310f;
    return Struct_1(-abs(arg_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 106f))), var_0, false)), -1073f, var_0.x, _wgslsmith_f_op_f32(-var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~select(vec4<u32>(reverseBits(9891u), u_input.b.x, 11985u, 49208u), vec4<u32>(4294967295u, ~u_input.b.x, u_input.b.x, 1u), 29011u > u_input.b.x), Struct_1(_wgslsmith_clamp_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(vec2<i32>(27387i, u_input.c), u_input.d | vec2<i32>(u_input.a, u_input.c)), -(vec2<i32>(1i, -2147483647i) | vec2<i32>(u_input.d.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(-1568f)), _wgslsmith_f_op_f32(-488f * -520f), _wgslsmith_f_op_f32(f32(-1f) * -854f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1092f, -290f, 1281f), vec3<f32>(-1350f, -1215f, -265f)))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1417f, -1266f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_1(u_input.a)))))));
    var var_1 = func_5(~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u)) ^ _wgslsmith_div_vec4_u32(abs(~u_input.b), u_input.b | u_input.b), func_2());
    let var_2 = (136583u | _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x), ~u_input.b.x >> (u_input.b.x % 32u))) & 24774u;
    var var_3 = countOneBits(abs(vec2<u32>(u_input.b.x, (6272u >> (var_2 % 32u)) ^ 0u)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))), var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e)))) * var_0.b), -286f, -1059f, var_0.e);
    var_3 = select(~u_input.b.yx, reverseBits(~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, 26965u)), u_input.b.zx | vec2<u32>(5631u, 0u))), select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), true), select(vec2<bool>(func_4(var_1.a, vec3<i32>(u_input.a, 2147483647i, var_1.a.x)), true), vec2<bool>(false, all(vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_4 = !(!vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), false, true));
    let var_5 = Struct_1(vec2<i32>(var_1.a.x, ~u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * 614f) + func_2().c), _wgslsmith_f_op_f32(-348f - _wgslsmith_f_op_f32(1193f * 383f)), var_1.d), _wgslsmith_f_op_vec3_f32(func_2().b + vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(select(var_0.b.x, -1000f, var_4.x)), _wgslsmith_f_op_f32(-var_1.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, var_0.d)))) + -947f), var_0.e, 382f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

