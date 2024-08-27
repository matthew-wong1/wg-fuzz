struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = ~_wgslsmith_add_u32(abs(arg_2.x), 4294967295u);
    var_0 = ~arg_2.x;
    let var_1 = ~vec2<u32>(26313u, abs(~(~41208u)));
    var_0 = 1u;
    var var_2 = 1f;
    return select(select(select(vec2<bool>(true, all(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), !any(vec2<bool>(true, false))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(false, any(vec3<bool>(true, true, true)))), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), any(vec3<bool>(true, true, true))), true);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = !any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false)), func_3(~arg_1.a.x, vec2<i32>(-4844i, arg_1.b), ~vec2<u32>(52251u, 13498u))));
    let var_1 = Struct_1(select(-_wgslsmith_sub_vec3_i32(u_input.c.zzx, vec3<i32>(arg_1.a.x, 0i, 2147483647i)), abs(u_input.c.xyw), true), -2147483647i | (~arg_1.a.x << (arg_3.x % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -219f))), -1000f))), arg_1.d);
    let var_2 = arg_0;
    let var_3 = firstTrailingBit(vec4<u32>((min(28098u, 74721u) << (u_input.b % 32u)) << (~(~arg_2) % 32u), 39106u, _wgslsmith_dot_vec3_u32(~(arg_3.yww & vec3<u32>(25025u, arg_0.a.x, 30395u)), arg_3.yxy), abs(~59795u)));
    let var_4 = _wgslsmith_div_u32(arg_0.a.x, 1u);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d - var_1.d)), select(true, false, false));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.zz);
    var var_1 = 2147483647i;
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.yx);
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-634f + _wgslsmith_f_op_f32(round(1351f))), _wgslsmith_f_op_f32(2278f * func_2(Struct_4(vec2<u32>(u_input.b, 29764u)), Struct_1(u_input.c.zww, -44150i, 1725f, vec4<f32>(2548f, arg_0.a.x, var_0.x, arg_0.a.x)), u_input.d.x, vec4<u32>(4294967295u, 1u, 7100u, u_input.b)).a.x)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -482f)), vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))))), arg_0.a.wz, !func_3(~_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(u_input.c.ww, _wgslsmith_div_vec2_i32(u_input.c.yy, vec2<i32>(u_input.c.x, -1i))), vec2<u32>(0u, countOneBits(14540u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.yw)), arg_0.a.zy)));
    return Struct_3(countOneBits(countOneBits(u_input.b ^ 1u)) << ((~0u ^ (u_input.b << (~32577u % 32u))) % 32u));
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    return Struct_4(~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(arg_0.a, arg_0.a))));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.d.x;
    let var_1 = func_5(func_4(func_2(Struct_4(~u_input.d.xy), Struct_1(min(u_input.c.ywz, vec3<i32>(u_input.c.x, u_input.c.x, 1i)), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(402f + 863f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, 399f, -295f, -550f) - vec4<f32>(-2391f, 1000f, -994f, 1152f))), _wgslsmith_clamp_u32(u_input.d.x, firstLeadingBit(var_0), u_input.b), ~vec4<u32>(var_0, 4294967295u, u_input.d.x, var_0) ^ u_input.d), func_3(abs(firstTrailingBit(u_input.c.x)), vec2<i32>(-1i) * -u_input.c.zz, ~(~u_input.d.wz)).x));
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -777f), -402f)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1103f + 373f)))), !func_3(_wgslsmith_clamp_i32(-18495i, 2147483647i, 24191i), _wgslsmith_add_vec2_i32(u_input.c.wz, u_input.c.wy), _wgslsmith_sub_vec2_u32(u_input.d.xw, vec2<u32>(9884u, u_input.b))).x & any(vec4<bool>(true, true, true, true)), func_3(1i, _wgslsmith_mult_vec2_i32(u_input.c.wz, vec2<i32>(-1i) * -vec2<i32>(u_input.a, 11257i)), select(vec2<u32>(4294967295u, ~var_1.a.x), ~vec2<u32>(var_1.a.x, var_0), abs(u_input.c.x) <= -2147483647i)).x, false);
    let var_3 = func_5(func_4(Struct_2(vec4<f32>(1018f, _wgslsmith_f_op_f32(806f + -505f), _wgslsmith_f_op_f32(-178f - 297f), _wgslsmith_div_f32(1356f, -661f)), all(vec3<bool>(true, var_2.x, false)) && (var_2.x != var_2.x)), all(!var_2.zx)));
    var_2 = vec4<bool>(false, true, true, var_2.x);
    return func_2(func_5(func_4(func_2(func_5(Struct_3(76398u)), Struct_1(vec3<i32>(-19169i, u_input.c.x, 2147483647i), -76725i, -895f, vec4<f32>(1148f, 841f, 1000f, -195f)), var_3.a.x, vec4<u32>(4294967295u, var_1.a.x, 24001u, 25173u)), all(!var_2.wxx))), Struct_1(firstTrailingBit(-(~vec3<i32>(u_input.c.x, 29089i, u_input.c.x))), u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-542f)), _wgslsmith_f_op_f32(1590f + -484f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1398f, 234f, 297f), func_2(Struct_4(vec2<u32>(u_input.b, 34009u)), Struct_1(u_input.c.xxz, u_input.a, -703f, vec4<f32>(-1446f, 261f, 247f, -137f)), var_1.a.x, u_input.d).a))), u_input.b, _wgslsmith_clamp_vec4_u32(~u_input.d, firstLeadingBit(~(~u_input.d)), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.wyy;
    let var_1 = (_wgslsmith_sub_u32(1u, u_input.b) ^ ~firstTrailingBit(u_input.d.x)) & _wgslsmith_add_u32(max(_wgslsmith_sub_u32(~1u, abs(43873u)), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.d.x >> (2816u % 32u))), _wgslsmith_mod_u32(u_input.b, (1u & u_input.d.x) | (u_input.d.x >> (u_input.d.x % 32u))));
    var var_2 = func_1();
    var_2 = func_2(Struct_4(_wgslsmith_sub_vec2_u32(func_5(func_4(Struct_2(var_2.a, var_2.b), var_2.b)).a, u_input.d.yx)), Struct_1(_wgslsmith_div_vec3_i32(firstTrailingBit(var_0), countOneBits(select(vec3<i32>(-13653i, 1i, 19368i), u_input.c.yyw, var_2.b))), firstLeadingBit(firstTrailingBit(1i)), _wgslsmith_f_op_f32(-func_2(Struct_4(u_input.d.yy), Struct_1(var_0, 1i, -855f, vec4<f32>(var_2.a.x, 613f, var_2.a.x, var_2.a.x)), firstLeadingBit(112746u), u_input.d).a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -1035f, -1000f, 577f) - _wgslsmith_f_op_vec4_f32(-var_2.a))), ~(~(~(~0u))), _wgslsmith_div_vec4_u32(u_input.d, ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, u_input.d), u_input.d ^ vec4<u32>(var_1, 30164u, var_1, u_input.b))));
    let var_3 = vec2<bool>(all(!vec2<bool>(true, var_2.b)), var_2.b);
    var var_4 = func_4(func_2(func_5(Struct_3(48333u)), Struct_1(firstTrailingBit(var_0), min(_wgslsmith_mult_i32(var_0.x, -33084i), _wgslsmith_clamp_i32(1i, var_0.x, -27837i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) - _wgslsmith_f_op_f32(exp2(var_2.a.x))), _wgslsmith_f_op_vec4_f32(sign(var_2.a))), u_input.d.x, u_input.d << (~(u_input.d ^ vec4<u32>(8180u, u_input.b, var_1, var_1)) % vec4<u32>(32u))), false);
    let var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_2.a)))));
}

