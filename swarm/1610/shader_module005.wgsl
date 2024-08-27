struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = vec4<u32>(arg_1.x, u_input.d.x, ~0u, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yw), 15750u), ~u_input.a));
    var var_1 = Struct_1(~abs(~(~vec3<u32>(4294967295u, 0u, 0u))));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.x, 0u, arg_1.x), u_input.c.wyw));
    var var_3 = -380f;
    let var_4 = vec3<bool>(!(true | arg_2.x), true, arg_2.x);
    return select(arg_2, !var_4.zx, vec2<bool>(select(any(select(vec3<bool>(arg_2.x, false, true), var_4, arg_2.x)), true, false), false));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(min(246f, _wgslsmith_f_op_f32(max(-1378f, -753f)))), Struct_1(countOneBits(~u_input.c.yyw)), _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_sub_u32(u_input.d.x, 15705u)) | _wgslsmith_clamp_u32(0u, ~u_input.a, min(0u, u_input.d.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-941f, 958f), vec2<f32>(-508f, -800f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1410f, 881f) * vec2<f32>(1586f, 700f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2078f, 342f)))))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), func_3(arg_0.x, vec2<u32>(66528u, u_input.b.x), vec2<bool>(false, true)), vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1863f)), Struct_1(u_input.b.wwx), 1u));
    return var_0.c.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_1(~u_input.b.zyy);
    let var_1 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(11266i, 4134i, min(firstTrailingBit(arg_3.x), 0i), reverseBits(arg_3.x) & reverseBits(arg_3.x)), vec4<i32>(-16822i, -23539i, i32(-1i) * -1i, arg_3.x), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), true))), vec4<i32>(arg_3.x, -(~arg_3.x), 28898i, arg_3.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(315f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(666f + arg_0.a))), _wgslsmith_f_op_f32(arg_2.a.a * _wgslsmith_f_op_f32(arg_2.c.a - arg_2.c.a)))))));
    var_0 = Struct_1(u_input.b.zxz);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(-319f, -749f), -762f, _wgslsmith_div_f32(178f, _wgslsmith_f_op_f32(f32(-1f) * -1298f)));
    return ~vec3<i32>(-countOneBits(~var_1), reverseBits(~_wgslsmith_clamp_i32(-64961i, -2147483647i, 0i)), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -3757i, 0i, -1i), vec4<i32>(1i, var_1, 689i, var_1))));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, (arg_1 <= 42363u) & true, true), !any(vec3<bool>(true, true, true)));
    var_0 = vec3<bool>(false, all(vec2<bool>(any(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.zz)), all(var_0.zy))), true);
    var var_1 = _wgslsmith_dot_vec3_i32(func_4(Struct_2(967f, func_2(vec4<i32>(-46225i, 6474i, 27590i, 26602i)), _wgslsmith_div_u32(u_input.c.x, 1u)), vec2<u32>(u_input.d.x, max(_wgslsmith_mult_u32(arg_1, arg_1), ~u_input.d.x)), Struct_3(Struct_2(772f, Struct_1(vec3<u32>(4294967295u, u_input.a, 12726u)), u_input.c.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, 946f)))), Struct_2(arg_0, Struct_1(u_input.b.wzy), 33097u)), _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(4981i, 23668i, 1i), reverseBits(-52509i)), vec3<i32>(-1i, 2602i, -28111i))), _wgslsmith_mult_vec3_i32(abs(select(reverseBits(vec3<i32>(0i, 2147483647i, 0i)), vec3<i32>(1i, 1i, 1i), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x)))), vec3<i32>(_wgslsmith_mult_i32(~27051i, 1i >> (u_input.c.x % 32u)), -40268i, func_4(Struct_2(561f, Struct_1(u_input.b.www), arg_1), firstLeadingBit(vec2<u32>(109040u, u_input.c.x)), Struct_3(Struct_2(840f, Struct_1(u_input.b.xzw), 28977u), vec2<f32>(-628f, -552f), Struct_2(670f, Struct_1(u_input.c.yyx), u_input.c.x)), vec3<i32>(1i, 1i, 1i)).x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_0), Struct_1(~min(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), countOneBits(u_input.b.zxw))), arg_1 ^ (4294967295u >> (u_input.d.x % 32u)));
    let var_3 = func_2(vec4<i32>(-36894i, _wgslsmith_clamp_i32(0i, -1i, 1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-73731i >> (var_2.c % 32u), 2147483647i), 31191i), -1i >> (~_wgslsmith_sub_u32(u_input.c.x, 79537u) % 32u)));
    return -func_4(var_2, _wgslsmith_mult_vec2_u32(~abs(var_2.b.a.zx), u_input.d), Struct_3(Struct_2(1000f, func_2(vec4<i32>(39732i, -2147483647i, 1i, -1i)), _wgslsmith_add_u32(1u, 5721u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -263f), vec2<f32>(arg_0, 2085f), vec2<bool>(var_0.x, false))), vec2<f32>(174f, -630f))), var_2), vec3<i32>(-43697i >> (arg_1 % 32u), 1924i, countOneBits(-39701i)) << (firstTrailingBit(~var_2.b.a) % vec3<u32>(32u))).x;
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), func_2(~(-vec4<i32>(arg_0, arg_3.x, -20403i, 1i))), u_input.c.x), arg_1.zx, Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-243f + arg_1.x))))), func_2(select(vec4<i32>(-32818i, arg_3.x, -18489i, -14121i) & vec4<i32>(30679i, 5496i, -2147483647i, -1i), -vec4<i32>(arg_3.x, arg_0, arg_3.x, arg_3.x), vec4<bool>(false, arg_2.x, arg_2.x, true))), 1u));
    var var_1 = Struct_2(972f, Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(~u_input.c.yyy), _wgslsmith_sub_vec3_u32(vec3<u32>(27922u, u_input.d.x, var_0.a.c) ^ var_0.c.b.a, select(vec3<u32>(25109u, 1u, 18428u), vec3<u32>(u_input.a, 42358u, u_input.a), vec3<bool>(arg_2.x, arg_2.x, false))))), ~1u);
    let var_2 = ~(-7146i);
    let var_3 = arg_1.xyy;
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(874f, var_1.a)) - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -974f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, 213f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1159f))), Struct_1(~(~var_1.b.a) & firstTrailingBit(u_input.b.yyz)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(u_input.b.zwz, vec3<u32>(u_input.d.x, var_1.b.a.x, 1u))), var_0.a.b.a)));
    return var_0.c.b.a.zx | abs(~max(var_0.c.b.a.zx, var_1.b.a.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.d, ~vec2<u32>(14662u, u_input.b.x)) ^ vec2<u32>(1u, u_input.d.x ^ u_input.d.x), _wgslsmith_div_vec2_u32(select(vec2<u32>(1u, 0u), ~u_input.b.xy, vec2<bool>(true, true)), u_input.d)), u_input.d);
    var_0 = ~firstTrailingBit(func_5(_wgslsmith_div_i32(func_1(-543f, 1u), -30389i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-340f, -1652f, 1682f, 549f))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(~vec3<i32>(0i, -39977i, -1i), -vec3<i32>(-1i, -48347i, 2147483647i), false)));
    var var_1 = Struct_2(-1000f, func_2(vec4<i32>(1i, 1i, 1i, 1i)), min(var_0.x, 0u));
    let var_2 = vec3<u32>(4294967295u, 45013u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_1.b.a, var_1.b.a) & func_2(vec4<i32>(-60706i, -2147483647i, -1i, 1i)).a, _wgslsmith_sub_vec3_u32(var_1.b.a, vec3<u32>(u_input.d.x, 76842u, 9297u))), ~(~(~vec3<u32>(var_1.c, u_input.a, 0u)))));
    let var_3 = 96364u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), var_1.a))))), vec2<f32>(var_1.a, 1339f), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1239f)) + _wgslsmith_div_f32(var_1.a, var_1.a)) + -1117f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f))));
}

