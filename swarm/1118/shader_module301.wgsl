struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = all(vec3<bool>(true, true, true));
    let var_1 = u_input.b.x;
    var_0 = 610f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-300f, arg_0)))), abs(~u_input.a) == ~0u));
    var_0 = !(_wgslsmith_f_op_f32(614f * arg_0) <= _wgslsmith_f_op_f32(round(-1331f)));
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(1312f + var_2))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(vec2<u32>(~(u_input.a >> (1896u % 32u)), 4294967295u) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, ~1u), abs(min(vec2<u32>(u_input.a, 32285u), vec2<u32>(4294967295u, 17297u)))), max(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, 0i, u_input.b.x)) | min(u_input.c.xzx, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, 7016i), u_input.b)), -u_input.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2562f, -1944f, -318f)))))), vec3<f32>(1f, 1f, 1f)));
    let var_1 = Struct_3(countOneBits(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.zy), _wgslsmith_div_i32(-28776i, 37032i), u_input.c.x, u_input.b.x)), ~(-max(u_input.b.x, var_0.b)) << (u_input.a % 32u));
    let var_2 = Struct_5(any(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), reverseBits(vec3<u32>(var_0.a.x, 70763u, _wgslsmith_mult_u32(var_0.a.x, var_0.a.x))) << (~(~reverseBits(vec3<u32>(4294967295u, 4294967295u, 0u))) % vec3<u32>(32u)), var_1.a.zx, Struct_3(~(vec4<i32>(-1411i, u_input.c.x, -7799i, u_input.b.x) << ((vec4<u32>(19014u, 53487u, 8005u, 43117u) << (vec4<u32>(u_input.a, var_0.a.x, var_0.a.x, 55869u) % vec4<u32>(32u))) % vec4<u32>(32u))), -2147483647i));
    let var_3 = var_2;
    var var_4 = Struct_4(Struct_2(abs(vec2<u32>(1u, ~var_0.a.x)), u_input.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(1501f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.c.b, vec3<f32>(1144f, -542f, var_0.c.a.x))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2259f, var_0.c.a.x, var_0.c.a.x)))))), _wgslsmith_mod_u32(~var_3.b.x, 0u), _wgslsmith_mod_u32(3238u, ~var_0.a.x));
    return Struct_3(countOneBits(min(~var_3.d.a | _wgslsmith_mult_vec4_i32(u_input.c, var_1.a), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, -2828i, u_input.b.x, 0i), _wgslsmith_add_vec4_i32(var_3.d.a, vec4<i32>(var_1.a.x, var_2.d.b, 30425i, u_input.c.x))))), _wgslsmith_dot_vec2_i32(reverseBits(~max(u_input.b.xz, vec2<i32>(var_4.a.b, var_4.a.b))), firstTrailingBit(var_3.c)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-165f, -662f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-645f, _wgslsmith_f_op_f32(-2213f + 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(337f, 695f, _wgslsmith_f_op_f32(abs(-1078f)), -1886f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1318f, -1253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1840f * -969f)), -216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) + _wgslsmith_f_op_f32(1056f + -1000f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(sign(465f)), _wgslsmith_f_op_f32(abs(-437f)), -930f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-133f, var_0.x, 355f, 920f) + vec4<f32>(var_0.x, 578f, var_0.x, var_0.x)))))), !(!vec4<bool>(arg_2, arg_2, arg_1.x, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1569f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + -546f), _wgslsmith_f_op_vec3_f32(func_3(-1705f)).x) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, 1180f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1470f, var_0.x, 765f, var_0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -2621f), -542f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(682f)).x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f - var_0.x)), -241f, 1247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1620f - 1390f), var_0.x))), var_0.x, 483f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -801f, 2708f, -960f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-714f, 2061f, var_0.x, 891f) * vec4<f32>(var_0.x, 1786f, var_0.x, 2107f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(858f, -1000f, var_0.x, var_0.x)))))))));
    var_0 = vec4<f32>(-1181f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, !arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f))))), _wgslsmith_f_op_f32(f32(-1f) * -894f));
    return _wgslsmith_add_vec4_u32(vec4<u32>(min(min(~1u, countOneBits(u_input.a)), 14427u), u_input.a, ~9573u >> ((1u & firstTrailingBit(u_input.a)) % 32u), countOneBits(_wgslsmith_mod_u32(select(20022u, u_input.a, arg_2), ~u_input.a))), ~(~vec4<u32>(1u, u_input.a, ~4832u, u_input.a)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = (~(~(~5574u)) ^ select(u_input.a, ~firstLeadingBit(44806u), all(!vec4<bool>(arg_3, arg_3, false, true)))) > _wgslsmith_dot_vec4_u32(~func_4(func_2(), !vec3<bool>(false, true, arg_3), true), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 20186u, 5003u, 51136u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)));
    var var_1 = min(abs(_wgslsmith_clamp_u32(1033u, _wgslsmith_sub_u32(u_input.a, 71801u) >> (u_input.a % 32u), abs(_wgslsmith_add_u32(u_input.a, u_input.a)))), 0u);
    var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(trunc(arg_2.b.x))));
    var_1 = _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(reverseBits(reverseBits(0u)), 57030u) << (u_input.a % 32u));
    return _wgslsmith_sub_u32(u_input.a, abs(~(49511u >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(14367u, u_input.a)) & ~u_input.a, ~_wgslsmith_div_u32(0u, 4294967295u)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(678f, -708f))), ~(vec3<i32>(u_input.b.x, -2147483647i, 366i) << (vec3<u32>(u_input.a, 824u, u_input.a) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(892f, 943f, -679f), vec3<f32>(-1000f, -532f, 1433f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-694f, -1000f, -886f)))), abs(19524i) < max(-33378i, u_input.b.x)), u_input.a, 1u), ~vec4<u32>(~u_input.a ^ ~u_input.a, firstLeadingBit(~u_input.a), ~(49438u & u_input.a), 9241u));
    var_0 = min(vec4<u32>(~max(u_input.a, ~u_input.a), ~reverseBits(var_0.x) << (var_0.x % 32u), u_input.a, 1u), vec4<u32>(u_input.a, var_0.x, var_0.x, abs(_wgslsmith_div_u32(var_0.x, ~var_0.x))));
    var_0 = select(reverseBits(abs(~vec4<u32>(109202u, u_input.a, 34248u, 26723u)) | firstLeadingBit(vec4<u32>(5248u, 4294967295u, 4294967295u, 1u) << (vec4<u32>(var_0.x, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), vec4<u32>(1u, u_input.a | _wgslsmith_dot_vec2_u32(var_0.wx, vec2<u32>(75723u, u_input.a)), ~var_0.x, ~u_input.a) >> ((abs(max(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x), vec4<u32>(u_input.a, u_input.a, 26067u, 4294967295u))) >> (max(vec4<u32>(var_0.x, 1u, u_input.a, u_input.a) >> (vec4<u32>(55571u, u_input.a, var_0.x, u_input.a) % vec4<u32>(32u)), max(vec4<u32>(var_0.x, 1u, var_0.x, 0u), vec4<u32>(4294967295u, 106725u, var_0.x, 4294967295u))) % vec4<u32>(32u))) % vec4<u32>(32u)), !(!all(vec3<bool>(true, true, true))));
    var_0 = vec4<u32>(abs(u_input.a), max(4294967295u, 4294967295u & _wgslsmith_mult_u32(var_0.x, u_input.a)), ~select(38000u, ~var_0.x, true), ~1u) ^ ~max(reverseBits(~vec4<u32>(80843u, 57598u, var_0.x, 0u)), vec4<u32>(1u, ~11543u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 113254u, var_0.x), var_0.xwz), ~u_input.a));
    var_0 = vec4<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_sub_u32(70229u, u_input.a)), countOneBits(var_0.x), select(~func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1856f, 471f), vec2<f32>(850f, 803f))), -u_input.c.yww, Struct_1(vec3<f32>(-697f, 1507f, 476f), vec3<f32>(2115f, 1102f, -1632f)), false), ~1u, false), firstTrailingBit(~66094u));
    var_0 = ~vec4<u32>(~4294967295u, _wgslsmith_div_u32(func_4(func_2(), vec3<bool>(true, true, true), true).x, abs(60438u)), 35436u, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1065f, -278f)) * _wgslsmith_div_f32(1089f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.zw, vec4<u32>(~u_input.a | 68326u, _wgslsmith_sub_u32(4294967295u, var_0.x) << (1u % 32u), u_input.a, ~1u) >> (vec4<u32>(var_0.x, 4294967295u, 0u, ~u_input.a) % vec4<u32>(32u)));
}

