struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(607f - arg_0.b.c);
    var var_1 = -277f;
    var var_2 = 1450f;
    let var_3 = Struct_4(~((66900u >> (max(0u, arg_1.x) % 32u)) ^ _wgslsmith_sub_u32(~4294967295u, ~arg_0.c.x)));
    var var_4 = u_input.a.zx;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -891f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = -_wgslsmith_mod_vec3_i32(~(-vec3<i32>(25526i, u_input.a.x, arg_2.a.a)), abs(-vec3<i32>(-2147483647i, -1i, 0i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(935f)))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 - 114f), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(186f)))), -739f)));
    var var_2 = ~vec2<i32>(-(var_0.x << (abs(23744u) % 32u)), (2147483647i | _wgslsmith_clamp_i32(arg_2.a.a, -16921i, 12342i)) & (u_input.a.x ^ -1i));
    let var_3 = true;
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(679f, arg_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-120f + arg_2.a.d.c))), _wgslsmith_div_f32(1317f, _wgslsmith_f_op_f32(f32(-1f) * -109f)))), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_2.b.b, arg_0.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-918f, var_1.x, arg_0.x), vec3<f32>(var_1.x, arg_2.a.c, 866f), var_3))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, -737f, arg_0.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(465f + -302f)), _wgslsmith_f_op_f32(-1299f + _wgslsmith_f_op_f32(f32(-1f) * -1609f)), any(select(vec3<bool>(true, true, false), vec3<bool>(var_3, false, true), vec3<bool>(var_3, true, var_3))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.a.d.b, var_1.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.b, arg_2.b, arg_2.c), -802f, arg_0), arg_0, vec4<u32>(0u, arg_2.a, 1u, 0u), arg_0.a), vec3<u32>(u_input.b, arg_0.a, 26589u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_2.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-670f, -625f)))), _wgslsmith_f_op_f32(floor(-1492f)), Struct_3(Struct_2(_wgslsmith_clamp_i32(-2147483647i, -20562i, -4451i), arg_0, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(-19052i, arg_0, arg_0.c, Struct_1(arg_0.a, arg_2.c, arg_0.c)), Struct_1(4294967295u, -1602f, arg_0.c), vec4<u32>(4294967295u, arg_0.a, arg_0.a, 11441u), 62171u), vec3<u32>(1u, u_input.b, arg_0.a))).x, Struct_1(arg_0.a, 380f, 856f)), arg_2, countOneBits(~vec4<u32>(arg_2.a, 49499u, 1u, 34715u)), 1u))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_2.c)), 649f));
    var var_2 = Struct_1(34502u, _wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(f32(-1f) * -1815f));
    var var_3 = vec3<bool>(false, false, select(false, any(vec4<bool>(arg_3, true | arg_3, !arg_3, !arg_3)), arg_3));
    return vec3<bool>(arg_3, true, true);
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<bool>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(33504u, 44916u), vec2<u32>(48533u, u_input.b))) == 0u, max(reverseBits(u_input.a.x), _wgslsmith_sub_i32(~(-46126i), 0i)) <= 2147483647i, true, all(select(vec3<bool>(false, true, select(true, false, true)), vec3<bool>(true, true, u_input.b >= u_input.b), any(func_2(Struct_1(u_input.b, 974f, -974f), 356f, Struct_1(u_input.b, -1589f, 750f), false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(32695i, Struct_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(trunc(1820f)), -953f), _wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(trunc(527f))), Struct_1(_wgslsmith_sub_u32(39942u, u_input.b), _wgslsmith_div_f32(1303f, 1000f), -473f)), Struct_1(abs(25126u), -594f, -469f), vec4<u32>(0u, u_input.b, abs(~u_input.b), u_input.b | 4294967295u), ~(~_wgslsmith_sub_u32(u_input.b, u_input.b))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 11995u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), vec2<u32>(u_input.b, 59799u) & abs(vec2<u32>(u_input.b, 4294967295u))), firstTrailingBit(~reverseBits(17391u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, ~u_input.b), ~4294967295u, 0u)))).x;
    return Struct_3(Struct_2(reverseBits(~1i) | _wgslsmith_mult_i32(-2147483647i ^ u_input.a.x, u_input.a.x), Struct_1(21365u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-234f - 1317f), _wgslsmith_f_op_f32(-1329f + -882f))), _wgslsmith_f_op_f32(f32(-1f) * -556f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -590f))) - _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(0i, Struct_1(1u, -790f, 2208f), 587f, Struct_1(40679u, 1221f, -682f)), Struct_1(0u, -691f, -591f), vec4<u32>(u_input.b, 4294967295u, u_input.b, 12205u), u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))).x), Struct_1(~u_input.b << ((u_input.b << (u_input.b % 32u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(610f, 712f)) * 2452f), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(-1i, Struct_1(u_input.b, 838f, 102f), -198f, Struct_1(u_input.b, -798f, -1099f)), Struct_1(u_input.b, -131f, -2445f), vec4<u32>(12707u, 4294967295u, u_input.b, u_input.b), u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 19473u, 43781u), vec3<u32>(1u, 6346u, 0u)))).x)), Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.b, u_input.b, u_input.b)), ~(~vec3<u32>(0u, 0u, 11292u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1296f), -206f)), 986f), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b << (u_input.b % 32u)), select(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, 0u, 31454u, 28895u), true)), _wgslsmith_div_u32(u_input.b << (~4294967295u % 32u), u_input.b), 1u, u_input.b), ~(~(u_input.b | u_input.b)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = !(!select(false, false, true));
    var var_1 = i32(-1i) * -arg_2.a.a;
    var var_2 = select(any(!select(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), true), !vec2<bool>(true, var_0), true)), true, var_0);
    var var_3 = ~(-select(-vec4<i32>(u_input.a.x, 0i, 49297i, arg_2.a.a), -max(vec4<i32>(0i, arg_2.a.a, arg_1.a.a, -1i), vec4<i32>(arg_2.a.a, arg_0.c.a, u_input.a.x, 1i)), (2147483647i < arg_0.c.a) && var_0));
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1527f, arg_0.a, arg_0.a, -1129f))))))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f - func_1().b.b)), arg_1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1105f + _wgslsmith_f_op_f32(sign(-1239f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1083f, -349f), vec3<f32>(601f, var_0, 287f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_5(Struct_5(var_0, 0u, Struct_2(u_input.a.x, Struct_1(u_input.b, -183f, -341f), -494f, Struct_1(u_input.b, var_0, -545f))), Struct_3(Struct_2(u_input.a.x, Struct_1(u_input.b, 732f, var_0), var_0, Struct_1(u_input.b, -966f, 1564f)), Struct_1(1379u, var_0, -1237f), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), 0u), func_1()))))));
}

