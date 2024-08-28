struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    global0 = array<i32, 5>();
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(-166f, 2161f, _wgslsmith_div_f32(var_0.d.x, -514f), -1432f)), arg_1.zw, _wgslsmith_div_u32(arg_1.x, 1u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1069f - _wgslsmith_f_op_f32(arg_2.d.x * arg_2.a.x)), arg_2.a.x, 1f))));
    let var_2 = var_0;
    var var_3 = vec4<bool>(true, false, !(!any(vec2<bool>(true, true))), all(vec3<bool>(~u_input.b.x != var_0.c, arg_0, arg_0)));
    return ~(select(arg_1.x, arg_2.b.x, var_3.x) ^ ~(~(~var_2.b.x)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> vec3<bool> {
    let var_0 = ~((~(-19229i) ^ (~global0[_wgslsmith_index_u32(73013u, 5u)] | ~2147483647i)) << (arg_2 % 32u));
    global0 = array<i32, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1000f, arg_1))))))), select(vec2<u32>(~0u, u_input.b.x), ~min(u_input.b.yz, u_input.b.zz), any(vec2<bool>(true, true))) | reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.c, arg_2)), firstLeadingBit(19420u))), 0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-957f + _wgslsmith_f_op_f32(f32(-1f) * -1188f)), 1073f, arg_1)));
    let var_2 = vec3<bool>((true | !any(vec3<bool>(false, true, true))) & (true | any(vec4<bool>(true, true, true, true))), !(!all(vec4<bool>(true, true, false, true))), all(vec3<bool>(false, arg_2 == arg_0, true)));
    let var_3 = _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_1.b.x ^ ~arg_2, 5u)], _wgslsmith_dot_vec2_i32(u_input.a.xy, -u_input.a.yw));
    return select(!vec3<bool>(38861u == arg_2, false, all(!var_2)), select(vec3<bool>(var_2.x, var_2.x, !(!var_2.x)), select(select(select(var_2, var_2, true), !vec3<bool>(false, var_2.x, var_2.x), var_2), var_2, all(vec4<bool>(true, var_2.x, false, false)) && false), var_2), vec3<bool>(var_2.x, var_2.x, any(vec4<bool>(all(vec3<bool>(false, var_2.x, var_2.x)), var_2.x, true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(284f)) * -1044f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_2.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(480f, arg_2.d.x))), arg_2.a.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(arg_2.b, _wgslsmith_mult_vec2_u32(~u_input.b.zz, firstLeadingBit(u_input.b.xx))), (~arg_2.b >> (~vec2<u32>(u_input.b.x, arg_2.c) % vec2<u32>(32u))) | vec2<u32>(18274u, 25560u)), arg_2.b.x, arg_2.d);
    let var_1 = arg_2;
    var var_2 = ~1u;
    return vec4<f32>(-455f, -1562f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(826f * -325f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1573f), 474f));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    global0 = array<i32, 5>();
    var var_0 = arg_0;
    var var_1 = firstLeadingBit(reverseBits(reverseBits(~vec4<u32>(arg_0.c, var_0.b.x, 23271u, var_0.c))));
    let var_2 = Struct_1(vec4<f32>(-692f, -104f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(809f, _wgslsmith_div_f32(725f, arg_1)) - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), min(~(abs(vec2<u32>(arg_0.c, 4294967295u)) >> (var_0.b % vec2<u32>(32u))), ~(~var_0.b ^ vec2<u32>(41539u, 30834u))), 0u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(var_0.a.x * arg_1)) + arg_0.a.x), _wgslsmith_f_op_f32(arg_0.d.x + -1160f), 189f));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(all(func_3(~var_0.b.x, _wgslsmith_f_op_f32(var_0.d.x * -146f), 0u ^ var_0.c)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), Struct_1(var_2.a, vec2<u32>(_wgslsmith_mod_u32(1u, u_input.c), _wgslsmith_mod_u32(arg_0.c, 30327u)), ~_wgslsmith_mult_u32(6002u, var_0.c), _wgslsmith_f_op_vec3_f32(arg_0.d + var_0.d)))), vec2<u32>(firstTrailingBit(~130954u), countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.b.x, var_0.b.x), 7471u))), firstTrailingBit(26663u), vec3<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_div_f32(var_2.d.x, 445f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(507f)), var_0.d.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(-2394f, arg_0.d.x), _wgslsmith_f_op_f32(-var_2.d.x))), var_2.d.x));
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-153f * var_0.d.x), var_0.d.x, _wgslsmith_div_f32(1098f, arg_0.d.x)))), ~select(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b.x, var_2.c), u_input.b.xz, false), min(vec2<u32>(arg_0.c, var_0.c), vec2<u32>(9029u, 1u))), vec2<u32>(1u, var_1.x) ^ reverseBits(vec2<u32>(arg_0.c, 54716u)), true), 30952u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.yxw + var_2.d) * var_2.d))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = array<i32, 5>();
    var var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(ceil(arg_3)), -308f)), u_input.b.zy, 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.xxw)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(firstLeadingBit(vec4<u32>(22943u, select(1u, 1u, true), func_1(false, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), Struct_1(vec4<f32>(511f, -1369f, 394f, -251f), vec2<u32>(3593u, u_input.b.x), u_input.b.x, vec3<f32>(-671f, 124f, 615f))), 67108u)) ^ (abs(vec4<u32>(32227u, 20499u, u_input.c, 27720u)) << (abs(vec4<u32>(14750u, u_input.c, 1u, 1u)) % vec4<u32>(32u))), _wgslsmith_mult_vec3_i32(max(~vec3<i32>(-2147483647i, -14754i, global0[_wgslsmith_index_u32(13716u, 5u)]), (vec3<i32>(u_input.a.x, 26659i, 11749i) ^ vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(31829u, 5u)])) << (u_input.b % vec3<u32>(32u))), countOneBits(-max(vec3<i32>(2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(5559u, 5u)]), vec3<i32>(1i, -23514i, 2147483647i)))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, 876f, -488f, 515f)))), abs(~vec2<u32>(u_input.b.x, 53157u)), 24032u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(640f, -487f, -636f), vec3<f32>(-480f, -519f, -483f))), vec3<f32>(1226f, 1439f, 2524f)))), _wgslsmith_f_op_f32(sign(-400f)), u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f))))));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -abs(u_input.a.zy));
    var var_2 = func_5(firstLeadingBit(vec4<u32>(~countOneBits(var_0.b.x), 3579u, ~(var_0.b.x | 0u), ~u_input.b.x)), vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(7255i, 6003i, 31402i, u_input.a.x)), vec4<i32>(2147483647i, var_1, global0[_wgslsmith_index_u32(u_input.c, 5u)], -20261i))), 12076i, _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, -221f, -284f, -1058f), var_0.a)), var_0.b, ~94542u, var_0.a.xyy), -1000f).b.x;
    global0 = array<i32, 5>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a) * vec4<f32>(2368f, var_0.a.x, -1364f, -648f)), vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(var_0.d.x + 259f), _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, -616f, var_0.d.x, 1000f)))))), vec2<u32>(u_input.b.x, func_5(~vec4<u32>(var_0.c, var_0.c, u_input.b.x, var_0.b.x) & vec4<u32>(u_input.b.x, var_0.b.x, var_0.b.x, 30319u), u_input.a.yzz | firstLeadingBit(u_input.a.xwz), func_5(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 1u, u_input.c, 34456u), vec4<u32>(var_0.c, 4294967295u, 17821u, 39258u)), ~u_input.a.zyy, Struct_1(vec4<f32>(-911f, var_0.d.x, var_0.a.x, var_0.a.x), u_input.b.zx, 4294967295u, var_0.d), var_0.a.x), var_0.d.x).b.x), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(155f - var_0.a.x), _wgslsmith_f_op_vec4_f32(func_4(true, vec3<bool>(false, true, true), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.d.x, var_0.d.x), vec2<u32>(1u, u_input.c), 37233u, vec3<f32>(var_0.a.x, var_0.a.x, -2797f)))).x, -1000f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.d)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, var_0.d.x, var_0.a.x)) + var_0.a.wwy), _wgslsmith_f_op_vec3_f32(-var_0.a.yxy))));
    var_2 = 1u;
    var var_4 = 1u;
    global0 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(20193u & _wgslsmith_sub_u32(~u_input.c, ~(var_0.c >> (1u % 32u))), 5u)], _wgslsmith_add_vec2_i32(u_input.a.yx, vec2<i32>(countOneBits(0i), abs(u_input.a.x) >> (1u % 32u))));
}

