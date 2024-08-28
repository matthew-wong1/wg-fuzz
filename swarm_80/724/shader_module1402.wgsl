struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    let var_0 = arg_0.a.x;
    return arg_1.a.b ^ ((~32003u & abs(firstLeadingBit(u_input.a))) << (arg_1.b.x % 32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> vec3<i32> {
    var var_0 = arg_0.x;
    var var_1 = Struct_2(Struct_1(-(_wgslsmith_add_vec3_i32(vec3<i32>(-19681i, u_input.d, u_input.b), vec3<i32>(u_input.c.x, 11995i, u_input.b)) & reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.c.x))), u_input.a, select(!select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(arg_2, true, false, true), arg_2), select(!vec4<bool>(true, arg_2, arg_2, arg_2), select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, true, arg_2, false)), !vec4<bool>(arg_2, arg_2, true, false)), vec4<bool>(all(vec3<bool>(arg_2, false, true)), false, true, any(vec3<bool>(arg_2, true, arg_2)))), arg_1), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(func_3(Struct_1(vec3<i32>(2147483647i, u_input.d, 2147483647i), arg_0.x, vec4<bool>(false, arg_2, true, true), arg_1), Struct_2(Struct_1(vec3<i32>(u_input.c.x, u_input.b, u_input.b), u_input.a, vec4<bool>(arg_2, arg_2, arg_2, arg_2), -703f), arg_0.zzw, Struct_1(vec3<i32>(30511i, -6873i, u_input.b), u_input.a, vec4<bool>(false, true, false, false), arg_1), Struct_1(vec3<i32>(u_input.d, 27379i, -31697i), arg_0.x, vec4<bool>(false, arg_2, arg_2, arg_2), -583f), 19127u), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), abs(100047u), 0u), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0.x), arg_0.xyz), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.x, 28535u), arg_0.xzw, vec3<u32>(59033u, 45757u, 1u))))), Struct_1(-vec3<i32>(5175i, -2147483647i, u_input.b & u_input.d), 45108u, select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(true, true, 447f != arg_1, arg_2), all(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, true), arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + 360f)), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, 2147483647i), ~1i), ~vec3<i32>(u_input.d, u_input.c.x, u_input.b), -vec3<i32>(u_input.d, 1i, u_input.d)), ~(~(~31747u)), vec4<bool>(arg_2, arg_2, true, all(!vec4<bool>(arg_2, arg_2, arg_2, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 1u);
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(min(max(~var_1.b, var_1.b), vec3<u32>(1u, u_input.a, ~4294967295u)), ~vec3<u32>(arg_0.x, _wgslsmith_mod_u32(arg_0.x, arg_0.x), ~38578u)), var_1.b & ~vec3<u32>(reverseBits(12829u), min(4194u, 4294967295u), arg_0.x));
    var_1 = Struct_2(Struct_1(vec3<i32>(var_1.a.a.x, abs(-var_1.c.a.x), ~(-2147483647i)), max(~(~var_2.x), firstLeadingBit(~arg_0.x)), var_1.c.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.d.d, -1354f))))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(u_input.a, var_1.c.b, true), firstTrailingBit(1u), arg_0.x), var_2, vec3<u32>(~var_2.x, 1u, ~var_1.d.b & arg_0.x)), var_1.a, Struct_1(var_1.d.a, _wgslsmith_sub_u32(0u, arg_0.x), var_1.a.c, _wgslsmith_f_op_f32(-1000f * var_1.d.d)), firstTrailingBit(reverseBits(~(~var_1.c.b))));
    var_0 = 1u;
    return vec3<i32>(firstLeadingBit(countOneBits(var_1.a.a.x)), var_1.a.a.x, u_input.c.x);
}

fn func_2() -> f32 {
    var var_0 = u_input.b;
    var_0 = ~(-25552i) | min(-u_input.d ^ -25982i, 50857i);
    var var_1 = func_4(vec4<u32>(~6719u, func_3(Struct_1(vec3<i32>(47696i, 1i, -6012i), 4294967295u, vec4<bool>(false, false, false, false), -1000f), Struct_2(Struct_1(vec3<i32>(-1i, -13747i, -2147483647i), u_input.a, vec4<bool>(true, true, false, false), -107f), vec3<u32>(u_input.a, 30363u, 4294967295u), Struct_1(vec3<i32>(-2147483647i, 43457i, u_input.b), 73337u, vec4<bool>(true, true, false, false), 552f), Struct_1(vec3<i32>(-3318i, -1i, u_input.d), u_input.a, vec4<bool>(true, true, false, false), -190f), 65127u), vec4<bool>(false, true, false, false)), ~min(u_input.a, 4294967295u), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f + -1285f)), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true))) << (max(vec3<u32>(~4294967295u, reverseBits(4294967295u), max(18144u, 4294967295u)), vec3<u32>(u_input.a, u_input.a, ~u_input.a)) % vec3<u32>(32u));
    var_1 = vec3<i32>(-u_input.b, abs(func_4(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), -642f, true).x), func_4(vec4<u32>(1u, u_input.a, u_input.a >> (0u % 32u), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1868f), true).x) | vec3<i32>(-23228i, u_input.c.x, max(u_input.d, _wgslsmith_mult_i32(u_input.b, 34424i)));
    var_0 = min(~1i, -34447i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1856f - -229f), _wgslsmith_f_op_f32(f32(-1f) * -315f), select(true, false, true))) - -860f))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = vec3<bool>(false, arg_2.c.x, false);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.d * arg_2.d))));
    var var_2 = arg_2;
    var var_3 = Struct_2(Struct_1(abs(var_2.a), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2.b, arg_1.b, var_2.b)), min(firstLeadingBit(vec3<u32>(0u, arg_1.b, u_input.a)), ~vec3<u32>(0u, arg_1.b, 0u))), arg_2.c, _wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(1966f + _wgslsmith_f_op_f32(abs(var_2.d))))), ~(~(~vec3<u32>(42257u, var_2.b, var_2.b) ^ vec3<u32>(68338u, var_2.b, 25409u))), arg_1, arg_2, min(4294967295u, var_2.b >> (~4294967295u % 32u)));
    var var_4 = 0u;
    return reverseBits(vec2<i32>(-_wgslsmith_div_i32(0i, arg_3.x), func_4(firstTrailingBit(~vec4<u32>(var_2.b, 4294967295u, u_input.a, var_2.b)), arg_1.d, select(var_2.d <= 651f, true, false)).x));
}

fn func_5(arg_0: vec2<i32>) -> f32 {
    var var_0 = any(select(vec2<bool>(true, all(vec2<bool>(true, false)) && true), vec2<bool>(true, true), true));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(~abs(vec3<i32>(-1436i, arg_0.x, arg_0.x) | vec3<i32>(-1i, 0i, -48967i)), u_input.a, !(!vec4<bool>(false, var_1, var_1, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-114f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-406f, -1506f)) + -1113f))), abs(countOneBits(~vec3<u32>(u_input.a, 1211u, 0u))), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(func_1(vec3<f32>(1000f, 654f, -1263f), Struct_1(vec3<i32>(u_input.b, -2147483647i, -2147483647i), 0u, vec4<bool>(true, true, var_1, true), -3634f), Struct_1(vec3<i32>(u_input.d, 59987i, arg_0.x), u_input.a, vec4<bool>(var_1, var_1, var_1, var_1), -1174f), vec2<i32>(arg_0.x, 0i)).x, -2147483647i, _wgslsmith_sub_i32(-1i, arg_0.x)), vec3<i32>(-arg_0.x, ~(-48017i), -arg_0.x)), u_input.a, select(select(!vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, false, var_1, var_1), vec4<bool>(false, var_1, var_1, var_1)), vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, true, all(vec4<bool>(var_1, var_1, var_1, var_1)), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(297f)) - 1036f)))), Struct_1(vec3<i32>(u_input.d, _wgslsmith_mult_i32(-arg_0.x, -u_input.b), _wgslsmith_mod_i32(-u_input.d, 16748i)), ~4294967295u, !(!(!vec4<bool>(var_1, true, var_1, true))), -939f), u_input.a);
    var_0 = any(vec2<bool>(!(all(vec2<bool>(var_1, var_1)) && select(var_1, true, true)), any(select(vec2<bool>(false, var_2.a.c.x), vec2<bool>(true, true), vec2<bool>(var_1, true)))));
    let var_3 = var_2;
    return var_2.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_div_f32(-422f, 255f))), _wgslsmith_f_op_f32(-1197f - _wgslsmith_f_op_f32(func_5(func_1(vec3<f32>(602f, 292f, 332f), Struct_1(vec3<i32>(57525i, 0i, 24362i), 70420u, vec4<bool>(true, true, true, false), 817f), Struct_1(vec3<i32>(19232i, -2147483647i, u_input.c.x), 0u, vec4<bool>(true, false, false, false), -1000f), u_input.c))))));
    var var_2 = Struct_1(vec3<i32>(u_input.c.x, select(max(_wgslsmith_add_i32(u_input.d, u_input.b), i32(-1i) * -1409i), -24590i, max(-30638i, u_input.b) == (u_input.c.x ^ u_input.b)), func_1(vec3<f32>(461f, -665f, -1858f), Struct_1(~vec3<i32>(9055i, u_input.b, u_input.c.x), _wgslsmith_mult_u32(u_input.a, 1u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-496f + var_1.x)), Struct_1(vec3<i32>(u_input.d, u_input.b, u_input.d) & vec3<i32>(0i, u_input.c.x, -2147483647i), ~u_input.a, vec4<bool>(false, true, false, false), _wgslsmith_f_op_f32(1000f + -365f)), -vec2<i32>(u_input.c.x, 3744i)).x), abs(0u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2322f * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f * var_1.x)) * _wgslsmith_f_op_f32(-522f + var_1.x))));
    let var_3 = Struct_2(Struct_1(var_2.a, var_0, select(var_2.c, select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(true, true, true, var_2.c.x), false), any(var_2.c.zx)), -1232f), ~abs(vec3<u32>(_wgslsmith_div_u32(1u, var_0), 1u, firstTrailingBit(33006u))), Struct_1(vec3<i32>(~(-44824i), countOneBits(-9512i), _wgslsmith_clamp_i32(13380i, i32(-1i) * -1i, u_input.d)), ~(~(~var_0)), var_2.c, -201f), Struct_1(abs(vec3<i32>(-1i) * -var_2.a), u_input.a, select(vec4<bool>(var_1.x != 1969f, var_2.c.x, false, false), vec4<bool>(var_2.c.x, true, var_2.c.x, true), var_2.c.x), _wgslsmith_f_op_f32(func_5(~(u_input.c ^ u_input.c)))), ~81146u);
    var var_4 = ~vec3<i32>(~reverseBits(~var_3.a.a.x), countOneBits(~u_input.c.x), var_3.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(min(~var_3.b.xx, vec2<u32>(var_0, u_input.a) >> (var_3.b.zy % vec2<u32>(32u))), ~(~vec2<u32>(53622u, var_3.e))) & countOneBits(~vec2<u32>(var_0, var_2.b)), vec4<i32>(2147483647i, u_input.c.x, ~u_input.d, var_2.a.x), -1i & countOneBits((-51800i & u_input.d) & ~var_4.x));
}

