struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_0.a.a;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 59733u) ^ vec2<u32>(25204u, u_input.c), abs(vec2<u32>(u_input.c, 4294967295u))) ^ _wgslsmith_mult_u32(u_input.c, u_input.c), 0u) <= 4294967295u;
    var var_1 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(47965u, u_input.c, 43152u), vec3<u32>(u_input.c, u_input.c, 29649u))), vec3<u32>(_wgslsmith_mod_u32(u_input.c, _wgslsmith_mod_u32(73788u, 21204u)), 13489u, u_input.c));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(-773f + 1335f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-198f, 2959f, arg_0.b.x)), _wgslsmith_f_op_f32(max(-1000f, -590f)), true)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(332f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-580f, _wgslsmith_f_op_f32(f32(-1f) * -1605f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(498f)))))), false)), 1236f);
    let var_3 = arg_1.zww;
    return -798f;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = ~vec4<u32>(0u, min(0u, arg_1), abs(_wgslsmith_mod_u32(select(u_input.c, 1u, true), ~71279u)), 46094u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1832f, 1275f, -632f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(403f, -1000f, 1995f)))) * vec3<f32>(_wgslsmith_f_op_f32(min(785f, -2045f)), _wgslsmith_f_op_f32(-610f + 1019f), 379f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, _wgslsmith_f_op_f32(floor(684f)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false), vec3<bool>(true, true, true)), vec4<bool>(true, false, false, true)))))));
    var var_2 = Struct_3(!select(vec3<bool>(true, -732f > var_1.x, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    return Struct_1(!(true == !(-15929i == u_input.a.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = arg_2.b.x;
    let var_1 = arg_2;
    let var_2 = Struct_3(select(select(select(var_1.b, var_1.b, select(true, arg_2.a.a, false)), select(vec3<bool>(arg_0.x, var_0, var_0), select(arg_2.b, vec3<bool>(var_0, false, true), var_1.b), var_0), vec3<bool>(true, true, func_2(u_input.a.ywz, 0u).a)), !vec3<bool>(true, true, 68783u > u_input.c), _wgslsmith_clamp_i32(-2147483647i, firstTrailingBit(2147483647i), u_input.a.x) > abs(-u_input.b.x)));
    var var_3 = var_1.b.xz;
    var_3 = select(vec2<bool>(all(vec2<bool>(true, var_0)), !arg_0.x), vec2<bool>(var_0 && !(14039u <= u_input.c), true), !var_1.b.yx);
    return var_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), any(vec3<bool>(true, false, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))));
    var var_1 = func_4(!select(vec2<bool>(true, all(vec2<bool>(var_0.a, var_0.a))), vec2<bool>(false != var_0.a, !var_0.a), !(u_input.c >= 19430u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1675f, 659f, 1732f) - vec3<f32>(-222f, 806f, 394f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(775f, -2717f, -565f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, -1000f, -345f) - vec3<f32>(2001f, 703f, -1536f)))))), Struct_2(func_2(arg_0.www, 1u), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, var_0.a), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, true, false), false))));
    let var_2 = vec4<i32>(~(~u_input.b.x), _wgslsmith_mult_i32(abs(select(arg_0.x, arg_0.x, func_4(vec2<bool>(var_1.a.x, false), vec3<f32>(-333f, 1263f, -688f), Struct_2(Struct_1(false), var_1.a)).a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~arg_0, u_input.a), _wgslsmith_mod_vec4_i32(arg_0, u_input.a & u_input.a))), -(u_input.b.x ^ arg_0.x) ^ _wgslsmith_add_i32(-firstTrailingBit(arg_0.x), arg_0.x), countOneBits(abs(_wgslsmith_add_i32(max(u_input.a.x, u_input.b.x), u_input.b.x << (arg_1 % 32u)))));
    var var_3 = Struct_1(!(u_input.c <= 0u) & (arg_1 != (arg_1 & firstLeadingBit(u_input.c))));
    var_3 = Struct_1(func_2(-_wgslsmith_mod_vec3_i32(-vec3<i32>(15117i, var_2.x, u_input.b.x), vec3<i32>(var_2.x, var_2.x, 0i) << (vec3<u32>(4294967295u, 0u, u_input.c) % vec3<u32>(32u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), ~arg_1)).a);
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, -1i), 1i, -42269i) ^ reverseBits(~u_input.b.x), reverseBits(i32(-1i) * -12377i)) >> (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(-59513i, u_input.b.x, -1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 0i, u_input.a.x, 418i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(46615i, -30422i, -44906i, u_input.b.x), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(42600i, u_input.b.x, 5026i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.a.x)), select(u_input.a, vec4<i32>(13091i, u_input.a.x, -28228i, u_input.a.x), vec4<bool>(true, true, false, false))))), ~u_input.c);
    let var_1 = vec4<u32>(u_input.c << ((4294967295u >> (u_input.c % 32u)) % 32u), 0u, u_input.c, reverseBits(1u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-880f, -116f, -1729f, -437f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-379f, 2849f, 316f, 111f), vec4<f32>(-582f, -758f, 510f, -1226f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -260f, -163f, 2878f) * vec4<f32>(-217f, 1606f, 777f, -886f)), vec4<f32>(-1000f, 1428f, -341f, -417f), any(vec3<bool>(false, true, false))))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-688f, -367f), -188f, -325f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false), vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true)))))))));
    let var_3 = all(select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false), func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(select(var_2.wwx, vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, false, true))), Struct_2(Struct_1(true), vec3<bool>(true, false, true))).a, (i32(-1i) * -33802i) <= (-14415i | u_input.a.x)), vec3<bool>(_wgslsmith_mult_i32(var_0, 2147483647i) != firstLeadingBit(-55357i), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), func_2(select(u_input.a.xyx, vec3<i32>(u_input.b.x, var_0, u_input.a.x), false), 1u).a), select(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(var_2.ywz * var_2.wwy), Struct_2(Struct_1(true), vec3<bool>(false, true, false))).a, select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), any(vec3<bool>(true, false, false))), vec3<bool>(func_2(vec3<i32>(var_0, -1i, 1i), u_input.c).a, false, true))));
    let var_4 = Struct_2(Struct_1(var_3), !select(!vec3<bool>(var_3, var_3, false), !(!vec3<bool>(true, var_3, var_3)), !(!vec3<bool>(var_3, var_3, false))));
    let var_5 = any(select(var_4.b.xy, vec2<bool>(var_4.a.a, true), true));
    var var_6 = !vec4<bool>(false, all(!(!vec3<bool>(true, var_5, var_3))), !var_5, var_3);
    var_6 = select(vec4<bool>(all(select(!vec4<bool>(var_3, true, var_5, false), !vec4<bool>(var_5, var_4.b.x, false, false), select(vec4<bool>(var_6.x, var_6.x, var_5, var_5), vec4<bool>(var_5, var_4.b.x, true, var_5), false))), var_4.a.a, any(vec3<bool>(false, true, true)), true), select(!select(select(vec4<bool>(var_3, var_6.x, var_3, false), vec4<bool>(var_3, var_3, var_4.a.a, true), var_3), select(vec4<bool>(var_4.a.a, true, var_6.x, var_6.x), vec4<bool>(var_6.x, true, var_5, var_5), var_3), select(vec4<bool>(var_3, true, false, false), vec4<bool>(true, var_5, var_3, true), false)), select(vec4<bool>(true, true, var_6.x, false), !select(vec4<bool>(var_5, var_3, var_4.a.a, var_4.b.x), vec4<bool>(var_5, true, false, var_6.x), vec4<bool>(var_5, var_3, false, var_3)), all(func_4(var_6.zx, vec3<f32>(-995f, 957f, -981f), var_4).a.yz)), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(var_5, var_4.a.a, var_5, var_6.x), vec4<bool>(true, var_5, var_4.a.a, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(-u_input.a.wwx, u_input.a.zxx), _wgslsmith_div_vec2_u32(vec2<u32>(~0u, ~(~4294967295u)), vec2<u32>(~1u, var_1.x >> (13318u % 32u))));
}

