struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(-1222f + _wgslsmith_div_f32(1065f, _wgslsmith_div_f32(-660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(219f))))));
    var var_2 = Struct_2(select(vec3<i32>(abs(u_input.c | u_input.c), 0i, _wgslsmith_add_i32(reverseBits(u_input.c), 1i)), -_wgslsmith_div_vec3_i32(vec3<i32>(0i, 49213i, u_input.c), -vec3<i32>(u_input.c, u_input.c, u_input.c)), arg_0.x), vec4<i32>(max(-9384i, u_input.c) << (8967u % 32u), u_input.c, -abs(11079i), u_input.c) << (vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(4294967295u, 0u, arg_1.x, u_input.b.x)), 68668u, abs(1u), ~65287u << (_wgslsmith_div_u32(u_input.a, 18033u) % 32u)) % vec4<u32>(32u)));
    let var_3 = -1i;
    return max(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(max(u_input.c, var_2.b.x)), abs(2253i), var_3), (_wgslsmith_div_vec3_i32(vec3<i32>(var_3, u_input.c, var_2.a.x), vec3<i32>(1i, var_2.a.x, var_3)) >> (~vec3<u32>(u_input.b.x, arg_2.x, 1u) % vec3<u32>(32u))) | vec3<i32>(9206i, 72512i, var_2.b.x)), var_2.a);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, -37763i, 0i) | vec3<i32>(-60402i, 12355i, u_input.c), select(-vec3<i32>(u_input.c, 65799i, -18098i), vec3<i32>(-39832i, u_input.c, u_input.c) | vec3<i32>(54216i, -2147483647i, u_input.c), true), ~func_3(vec2<bool>(true, false), vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x), vec3<u32>(37630u, u_input.b.x, 92305u))), abs(~(-(~vec4<i32>(21480i, u_input.c, 36825i, u_input.c)))));
    let var_1 = any(!vec4<bool>(true, u_input.a >= ~u_input.a, (39173i == u_input.c) | true, true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f + -628f))))));
    let var_3 = var_2;
    var_0 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(u_input.c, var_0.b.x)) ^ abs(1i), -_wgslsmith_dot_vec2_i32(var_0.b.zw, var_0.b.wx), -1i), var_0.b);
    return ~_wgslsmith_clamp_i32(-13620i, reverseBits(0i), -_wgslsmith_add_i32(u_input.c << (40150u % 32u), 2147483647i));
}

fn func_1() -> vec4<i32> {
    var var_0 = ~func_2();
    let var_1 = u_input.c;
    var var_2 = vec2<i32>(func_2(), u_input.c);
    let var_3 = vec2<u32>(60666u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a, 1u) & 60838u, _wgslsmith_mod_u32(abs(u_input.a), 1u), u_input.a), ~(~(~vec3<u32>(45144u, 1u, 92744u)))));
    var_2 = -(vec2<i32>(0i, _wgslsmith_clamp_i32(~0i, var_2.x, i32(-1i) * -2147483647i)) | vec2<i32>(abs(-15355i), -1i));
    return _wgslsmith_div_vec4_i32(vec4<i32>(-abs(var_1), -2147483647i, var_1, -16258i), -((abs(vec4<i32>(u_input.c, -1i, 1i, u_input.c)) << (~vec4<u32>(var_3.x, 1u, 4294967295u, var_3.x) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(53810i, var_1, -5036i, 2147483647i), vec4<i32>(2147483647i, 39780i, -1i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 31002i, u_input.c, -26701i), vec4<i32>(-2147483647i, -18672i, -2147483647i, u_input.c)))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(min(vec3<i32>(0i, u_input.c, max(arg_0.x, -2147483647i)), arg_0.wyz >> (~vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) | arg_0.xxy, _wgslsmith_add_vec4_i32(abs(~arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 2147483647i, func_1().x), arg_0)));
    var var_1 = var_0;
    var var_2 = 0u;
    var_2 = u_input.a;
    var_1 = var_0;
    return Struct_1(-abs(vec3<i32>(-2147483647i, var_0.b.x, min(13572i, 1i))), u_input.a, func_2(), _wgslsmith_mult_vec4_u32((~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a) | ~vec4<u32>(4294967295u, u_input.b.x, u_input.a, u_input.a)) | ~countOneBits(vec4<u32>(u_input.a, 50237u, u_input.a, u_input.a)), ~(~vec4<u32>(22786u, u_input.a, u_input.a, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<i32>(u_input.c, reverseBits(83508i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 26438i, u_input.c & u_input.c, u_input.c), firstLeadingBit(func_1())), max(~_wgslsmith_sub_i32(0i, -5970i), func_3(vec2<bool>(true, true), firstTrailingBit(vec4<u32>(37168u, 1u, 0u, 105174u)), vec3<u32>(2529u, u_input.a, u_input.b.x)).x)));
    let var_1 = ~(~firstTrailingBit(var_0.a.yy & (vec2<i32>(0i, -37192i) >> (var_0.d.yz % vec2<u32>(32u)))));
    var var_2 = Struct_2(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, var_0.c), vec3<i32>(2147483647i, -76418i, -56690i)) & _wgslsmith_mod_vec3_i32(var_0.a, max(var_0.a, vec3<i32>(-1i, -4832i, -2147483647i)))), -(-(~vec4<i32>(-26810i, var_1.x, 3793i, u_input.c)) & _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 3179i, 0i, var_1.x) >> (var_0.d % vec4<u32>(32u)), vec4<i32>(2147483647i, -2315i, 1i, var_1.x))));
    let var_3 = ~var_0.d.xy;
    var_2 = Struct_2(abs(vec3<i32>(~(~var_1.x), firstLeadingBit(64853i), 1i)), var_2.b);
    var var_4 = i32(-1i) * -u_input.c;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-842f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(302f, -1115f), vec2<f32>(-340f, -1235f), var_5)))))), ~(~vec3<u32>(~39420u, var_0.b << (var_0.b % 32u), ~u_input.b.x)), func_3(select(vec2<bool>(true, true), !vec2<bool>(var_5, true), select(!vec2<bool>(var_5, true), vec2<bool>(var_5, true), true)), ~(min(vec4<u32>(var_3.x, 7600u, 0u, 4294967295u), vec4<u32>(var_0.d.x, var_0.b, var_3.x, 9783u)) & max(var_0.d, vec4<u32>(u_input.a, u_input.a, 1u, var_0.d.x))), _wgslsmith_add_vec3_u32(var_0.d.wyy, _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, 6891u, var_3.x)), var_0.d.xzx, vec3<u32>(1u, var_3.x, 10531u)))).zx);
}

