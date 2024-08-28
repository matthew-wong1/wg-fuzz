struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = arg_3;
    var_0 = Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(var_0.a, ~var_1.a), vec2<i32>(-1i, 2147483647i))), _wgslsmith_sub_i32(arg_2.b, 18048i));
    let var_2 = all(vec4<bool>(u_input.b < ~_wgslsmith_div_u32(u_input.c, u_input.c), true, true, true));
    var_0 = Struct_1(abs(vec2<i32>(firstLeadingBit(arg_2.b), -arg_2.b)) & var_0.a, select(firstLeadingBit(abs(arg_3.b)), arg_2.b, var_2 & (~u_input.b > u_input.c)));
    return !select(!select(select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(true, true, var_2, true), vec4<bool>(var_2, var_2, var_2, true)), vec4<bool>(true, true, true, true), u_input.c == u_input.c), vec4<bool>(true, true, true, true), vec4<bool>(true, any(!vec2<bool>(var_2, false)), 1u <= (1u >> (u_input.b % 32u)), true));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f - -1542f))) + 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2833f)) + _wgslsmith_f_op_f32(f32(-1f) * -276f))))));
    var var_1 = _wgslsmith_mod_i32(abs(abs(-u_input.d) & _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), select(u_input.a.wxz, u_input.a.zxx, vec3<bool>(arg_1.x, false, arg_1.x)))), firstLeadingBit(u_input.a.x) << (_wgslsmith_clamp_u32(~arg_0.x ^ _wgslsmith_sub_u32(u_input.c, 1u), u_input.c, 11207u) % 32u));
    let var_2 = -239f;
    var var_3 = arg_0.x;
    var_3 = select(~27384u, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(38600u, arg_0.x, 32417u, 30435u), vec4<u32>(79323u, 1u, 4294967295u, 1u))), vec4<u32>(80977u, 48223u, 12289u, _wgslsmith_add_u32(0u, ~68412u))), arg_1.x);
    return vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, -94845i);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    var_0 = !(!any(!vec4<bool>(false, false, arg_1.x, arg_1.x)));
    var var_1 = func_4(vec2<u32>(max(u_input.b >> (90939u % 32u), 4294967295u >> (0u % 32u)), ~countOneBits(0u)), func_3(_wgslsmith_div_f32(-446f, _wgslsmith_f_op_f32(trunc(1624f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1742f))), Struct_1(abs(u_input.a.wy), arg_0.b), Struct_1(arg_0.a, arg_0.b & -41287i))) ^ min(-u_input.a, -min(select(u_input.a, vec4<i32>(9470i, 2147483647i, -2147483647i, arg_0.a.x), vec4<bool>(true, arg_1.x, arg_1.x, true)), select(vec4<i32>(-2147483647i, -76433i, u_input.a.x, u_input.a.x), vec4<i32>(0i, -1i, arg_0.b, u_input.d), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))));
    var_1 = select(~(~vec4<i32>(arg_0.b, -1i, arg_0.b, -6837i)), -func_4(vec2<u32>(u_input.b, 4294967295u), vec4<bool>(arg_1.x, true, arg_1.x, false)) >> (vec4<u32>(firstLeadingBit(0u), firstLeadingBit(23097u), u_input.c, ~u_input.c) % vec4<u32>(32u)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * -1601f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f - 1000f)), arg_0, arg_0)) & countOneBits(u_input.a ^ -(vec4<i32>(arg_0.a.x, var_1.x, var_1.x, arg_0.a.x) | u_input.a));
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(var_1.xxx, u_input.a.yyz)), var_1.x), countOneBits(var_1.wx), _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(1i), var_1.x), ~var_1.xx)), 2147483647i);
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(func_2(func_2(arg_3, func_3(_wgslsmith_f_op_f32(1229f * -696f), _wgslsmith_div_f32(-1131f, 1015f), arg_2, func_2(Struct_1(u_input.a.wz, u_input.a.x), vec3<bool>(false, false, true))).wxy), func_3(-1754f, 744f, Struct_1(vec2<i32>(arg_3.b, arg_2.b), _wgslsmith_mod_i32(u_input.d, arg_3.a.x)), arg_2).yzy), vec3<bool>(true, true, true));
    var var_1 = var_0.a;
    var var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(func_3(474f, 634f, arg_3, arg_2).x, all(vec2<bool>(false, false)), true)), true, true), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(arg_0.x == 30123u, true, true, any(vec4<bool>(false, true, false, true))), func_3(_wgslsmith_f_op_f32(ceil(-1120f)), _wgslsmith_f_op_f32(abs(188f)), arg_3, Struct_1(u_input.a.yx, 8052i))), func_3(_wgslsmith_div_f32(-261f, _wgslsmith_div_f32(155f, -642f)), 294f, func_2(Struct_1(vec2<i32>(11316i, var_1.x), arg_2.b), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), arg_2), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))));
    var var_3 = arg_2;
    var var_4 = ~vec3<u32>(_wgslsmith_add_u32(select(58257u | arg_1, 0u ^ arg_1, var_2.x && var_2.x), 4294967295u), min(u_input.c, 1u), max(0u << ((1u & arg_1) % 32u), select(~arg_1, 4294967295u, !var_2.x)));
    return func_2(Struct_1(abs(select(-vec2<i32>(var_1.x, -5341i), u_input.a.xy, true)), u_input.a.x), var_2.xyw);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(8902u << (~countOneBits(u_input.b) % 32u), ~reverseBits(0u)), ~1u);
    var_0 = 51733u;
    var var_1 = func_5(~select(~(~vec2<u32>(1u, u_input.c)), ~(~vec2<u32>(62154u, 12252u)), true), u_input.b, func_2(Struct_1(min(vec2<i32>(u_input.a.x, arg_0.a.x), vec2<i32>(arg_0.a.x, -19954i)), (i32(-1i) * -50028i) | _wgslsmith_div_i32(u_input.d, arg_0.a.x)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), ~u_input.b > 3262u)), arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 463f, 524f, -1020f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1369f, -803f, -582f, 2447f))))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -486f, 568f, -726f), vec4<f32>(-189f, -619f, -1000f, 1221f))))), vec4<bool>(true, true, true, true))))));
    let var_3 = func_2(Struct_1(u_input.a.zx, -27943i), !vec3<bool>(_wgslsmith_f_op_f32(var_2.x - -2305f) <= -974f, func_3(-1664f, _wgslsmith_f_op_f32(floor(-1000f)), Struct_1(var_1.a, -2147483647i), func_2(arg_0, vec3<bool>(true, true, false))).x, (4294967295u == u_input.c) && func_3(-681f, 1661f, Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), arg_0.a.x), arg_0).x));
    return -_wgslsmith_add_i32(u_input.a.x, -34089i);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    var var_0 = -22281i;
    var var_1 = u_input.b;
    var var_2 = countOneBits(u_input.b);
    var_1 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), -386f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f + -1457f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1482f))))))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b, ~(~firstLeadingBit(u_input.c)), countOneBits(firstTrailingBit(~u_input.b))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, u_input.c), (vec3<u32>(u_input.c, u_input.b, u_input.c) ^ vec3<u32>(22363u, u_input.b, 1u)) | ~vec3<u32>(u_input.c, u_input.b, u_input.b)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.c, 7910u, u_input.c) | vec3<u32>(u_input.b, 4294967295u, u_input.c), vec3<u32>(u_input.b, u_input.c, u_input.c) >> (vec3<u32>(0u, 4294967295u, 34246u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.c, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.xz, _wgslsmith_dot_vec3_i32(u_input.a.yxy, min(_wgslsmith_mult_vec3_i32(u_input.a.wyx, vec3<i32>(u_input.a.x, 74408i, u_input.d)) | vec3<i32>(-55754i, u_input.a.x, -1122i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 2801i, 26093i), _wgslsmith_mult_vec3_i32(u_input.a.xyx, vec3<i32>(-1i, u_input.d, -33623i))))));
    let var_1 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(-u_input.a.zx, _wgslsmith_sub_vec2_i32(var_0.a, u_input.a.xw)), u_input.d);
    let var_2 = func_6(Struct_1(abs(select(vec2<i32>(var_1.a.x, var_1.b), -u_input.a.zx, true)), func_1(Struct_1(_wgslsmith_div_vec2_i32(var_0.a, var_1.a), var_1.b))), var_1.b, Struct_1(select(vec2<i32>(var_0.b, ~(-1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a.x), var_0.a) | _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.b), vec2<i32>(u_input.d, var_1.a.x)), true), 33504i), -85116i);
    var_0 = var_1;
    var_0 = Struct_1(~((func_5(vec2<u32>(31501u, u_input.c), 27928u, var_1, var_1).a & (vec2<i32>(var_0.a.x, 32645i) & u_input.a.xy)) & var_1.a), -51371i);
    var_0 = func_5(~(~_wgslsmith_sub_vec2_u32(var_2.xy, min(var_2.yy, var_2.zz))), _wgslsmith_sub_u32(var_2.x, var_2.x << (~func_6(var_1, -7196i, var_1, var_0.a.x).x % 32u)), func_5(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, 1u), vec2<u32>(1u, _wgslsmith_mult_u32(u_input.b, 0u))), ~3677u, var_1, var_1), func_5(var_2.yy, firstLeadingBit(_wgslsmith_add_u32(8510u, var_2.x) >> (_wgslsmith_clamp_u32(var_2.x, var_2.x, 4294967295u) % 32u)), func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(var_2.x, 0u) << (vec2<u32>(31412u, var_2.x) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, u_input.b, 2272u, var_2.x), vec4<u32>(87868u, u_input.c, 1u, 54046u), true), vec4<u32>(18163u, 4351u, 1u, 1u) >> (vec4<u32>(4706u, 76538u, var_2.x, var_2.x) % vec4<u32>(32u))), func_5(~var_2.yz, 33830u, var_1, var_1), func_2(var_1, vec3<bool>(true, true, true))), func_5(vec2<u32>(4294967295u, u_input.b) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 46149u), var_2.zz) % vec2<u32>(32u)), ~4294967295u, var_1, var_1)));
    var var_3 = u_input.a.zxz;
    var_0 = func_5(vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 49392u, abs(1u)))), var_2.x, Struct_1(vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(var_0.a, var_0.a)), _wgslsmith_dot_vec3_i32(u_input.a.wyz, vec3<i32>(func_1(Struct_1(vec2<i32>(var_3.x, u_input.a.x), var_3.x)), -8538i, ~u_input.d))), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a ^ u_input.a, countOneBits(vec4<i32>(u_input.d, 36526i, var_1.a.x, 31030i))), var_3.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1481f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1445f - -1149f), _wgslsmith_f_op_f32(542f - 912f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-265f, -448f)))), abs(-u_input.a.xzx) << (var_2 % vec3<u32>(32u)), -(~u_input.a.x));
}

