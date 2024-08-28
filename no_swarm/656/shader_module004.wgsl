struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 246f, -541f, 1353f);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-1733f, 133f)), vec4<f32>(-703f, 908f, -1515f, -1254f), vec4<u32>(0u, 1u, 42423u, 1u), 12369u, vec4<u32>(19460u, 1u, 0u, 1u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<u32> {
    let var_0 = global1.a;
    return abs(~(~countOneBits(vec4<u32>(u_input.b, global1.d, 4294967295u, 0u) << (u_input.a % vec4<u32>(32u)))));
}

fn func_2() -> i32 {
    global1 = Struct_3(Struct_1(!vec4<bool>(!global1.a.a.x, false || global1.a.a.x, false, any(global1.a.a.yw)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -114f)) - _wgslsmith_f_op_vec2_f32(-global1.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(318f, global1.b.x, _wgslsmith_div_f32(global0.x, -1526f), global1.a.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global1.a.b.x, 141f, 275f))) + global1.b))), func_3() >> (vec4<u32>(countOneBits(~global1.d), ~41996u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 32561u, u_input.a.x) << (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(global1.c, global1.c)), 22347u) % vec4<u32>(32u)), u_input.b, u_input.a);
    let var_0 = global1.e;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global1.b.x, 1246f) * global0.xyz))), firstLeadingBit(_wgslsmith_mod_i32(firstLeadingBit(-15973i), countOneBits(2546i))) >> ((0u >> (abs(global1.d) % 32u)) % 32u), global1.a);
    global1 = Struct_3(var_1.c, vec4<f32>(1140f, 875f, _wgslsmith_f_op_f32(-987f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f))), var_1.c.b.x), global1.e, ~(~4294967295u), u_input.a);
    let var_2 = vec4<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.x, global0.x))))), 1f, var_1.a.x);
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    var var_0 = vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(~reverseBits(0u), 4294967295u));
    global1 = Struct_3(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xw - _wgslsmith_f_op_vec2_f32(step(global1.b.yz, arg_2.xz))))), _wgslsmith_f_op_vec4_f32(step(global1.b, vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.x, 1046f)), _wgslsmith_f_op_f32(f32(-1f) * -1199f), global1.a.b.x, global0.x))), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(abs(u_input.a), u_input.a), u_input.a), func_3().x, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(global1.d, var_0.x, 0u, 1u)), u_input.a));
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 837f, arg_0.b.x, global1.a.b.x))))))), vec4<u32>(min(abs(u_input.a.x), _wgslsmith_add_u32(1u, abs(28203u))), var_0.x | ~_wgslsmith_sub_u32(4294967295u, 4294967295u), ~_wgslsmith_div_u32(global1.c.x, firstTrailingBit(var_0.x)), var_0.x), _wgslsmith_dot_vec3_u32(~max(u_input.a.xzx, vec3<u32>(u_input.b, 4294967295u, 4294967295u)), vec3<u32>(0u, abs(u_input.b), u_input.a.x) & global1.c.yzx), _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1699u, global1.c.x, var_0.x), global1.c, vec4<u32>(global1.e.x, 4294967295u, 60526u, 29661u))), u_input.a >> (~vec4<u32>(7237u, 61314u, 0u, u_input.a.x) % vec4<u32>(32u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))), 1671f, _wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_3, arg_3))))), true)), 1033f);
    let var_1 = _wgslsmith_div_i32(-(~(~0i)), ((_wgslsmith_div_i32(arg_1, 2147483647i) & -2147483647i) & abs(-arg_1)) >> (var_0.x % 32u));
    return Struct_3(arg_0, arg_2, max(global1.c, vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(var_0.x, global1.e.x, var_0.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 14265u), vec4<u32>(28637u, 0u, global1.e.x, var_0.x)), ~4294967295u), ~reverseBits(55150u), ~_wgslsmith_add_u32(u_input.a.x, u_input.b))), _wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(~u_input.b, ~var_0.x), _wgslsmith_mult_u32(u_input.b, 7291u)), ~(global1.c | vec4<u32>(var_0.x, ~global1.d, ~82832u, _wgslsmith_sub_u32(u_input.a.x, 13748u))));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.x, global0.x, true)) - _wgslsmith_f_op_f32(global1.a.b.x * -1829f)) - 1000f))), global1.a.b.x);
    let var_1 = func_4(global1.a, _wgslsmith_mod_i32(func_2(), _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(56347i, 4480i, 6506i, -2147483647i)), -firstTrailingBit(vec4<i32>(arg_0, -6253i, -96992i, arg_0)))), global1.b, global0.x);
    var var_2 = vec2<bool>(!any(!global1.a.a), true);
    return select(global1.a.a.zw, !global1.a.a.yw, var_1.a.a.xx);
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    let var_0 = global1.a.a.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1228f)), _wgslsmith_f_op_f32(global0.x * -1000f))), global1.b.x, global1.b.x, -1305f);
    let var_1 = _wgslsmith_sub_i32(~35800i, ~max(1i, max(_wgslsmith_mult_i32(arg_3.x, 50047i), 879i)));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(513f))) - 590f)), global1.a.b.x, func_4(Struct_1(vec4<bool>(select(arg_1, true, true), global1.a.b.x <= global0.x, true || arg_1, global1.a.a.x & true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.b.zy), _wgslsmith_div_vec2_f32(global0.xx, vec2<f32>(global1.b.x, -228f)), true))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -2147483647i), _wgslsmith_mod_i32(-51550i, -3104i), 0i >> (global1.e.x % 32u)), ~(-2147483647i), 1i), vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(global0.x)))), 545f, _wgslsmith_f_op_f32(select(728f, _wgslsmith_f_op_f32(sign(862f)), false)), _wgslsmith_f_op_f32(abs(global1.a.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -2585f)).a.b.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.b))) - vec4<f32>(1000f, 1631f, func_4(global1.a, 0i, global1.b, _wgslsmith_f_op_f32(-global1.b.x)).a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(616f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2025f))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x))))) >= _wgslsmith_f_op_f32(step(441f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-538f + global1.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f + _wgslsmith_f_op_f32(global0.x * -549f))), _wgslsmith_div_f32(168f, _wgslsmith_f_op_f32(func_5(min(u_input.a.zzy & global1.c.wyx, _wgslsmith_div_vec3_u32(vec3<u32>(global1.d, global1.d, 0u), global1.e.ywy)), all(func_1(-32235i, -1377f)), global1.c.x, _wgslsmith_sub_vec3_i32(vec3<i32>(10432i, -1i, 0i), vec3<i32>(-1i, 1i, 12213i)) >> (func_4(Struct_1(vec4<bool>(true, true, false, global1.a.a.x), vec2<f32>(global1.b.x, -360f)), -13275i, vec4<f32>(-1000f, global0.x, 640f, global0.x), global0.x).c.zzy % vec3<u32>(32u))))), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(func_5(vec3<u32>(5867u, 1u, 0u), false, ~1u, _wgslsmith_clamp_vec3_i32(min(vec3<i32>(22165i, 42501i, -15072i), vec3<i32>(-1i, 52701i, 2147483647i)), vec3<i32>(9310i, -4739i, 46637i), vec3<i32>(1i, 1i, 1i))))), global0.x);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(trunc(-1356f)), -869f, 1000f) - global1.b)), _wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(global1.a, -1i, global1.b, global1.b.x).b + global1.b))));
    var var_0 = max(max(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x), ~u_input.a.x), abs(~u_input.a.x)), global1.c.x);
    var var_1 = global1.c.x >> (~37563u % 32u);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global1.b.x, global0.x) * global0.yzw)), _wgslsmith_f_op_vec3_f32(select(global1.b.zyy, _wgslsmith_f_op_vec3_f32(-global0.yzy), !vec3<bool>(global1.a.a.x, false, false)))))), countOneBits(-firstTrailingBit(18186i)), func_4(func_4(Struct_1(!vec4<bool>(true, global1.a.a.x, global1.a.a.x, true), vec2<f32>(global0.x, -342f)), i32(-1i) * -25774i, vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-299f * global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -146f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global1.b.x - global0.x))).a, _wgslsmith_add_i32(~reverseBits(-1i), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-1336f, global0.x, -1689f, 1058f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1530f, global1.a.b.x, 1926f, 648f)))))), global1.b.x).a);
    let var_3 = -2147483647i;
    let var_4 = Struct_3(Struct_1(global1.a.a, global1.b.yw), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.c.b.x, global1.b.x, _wgslsmith_f_op_f32(388f * -2328f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1000f, -147f, var_2.a.x)))), _wgslsmith_f_op_vec4_f32(exp2(func_4(func_4(var_2.c, 10703i, global1.b, -299f).a, 1i, global1.b, global1.b.x).b))), select(~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b)) << (abs(vec4<u32>(u_input.a.x, 4294967295u, 37895u, u_input.b) & global1.e) % vec4<u32>(32u)), u_input.a, !select(vec4<bool>(true, true, var_2.c.a.x, false), func_4(Struct_1(vec4<bool>(false, var_2.c.a.x, global1.a.a.x, false), var_2.a.zx), 33701i, vec4<f32>(global1.b.x, global0.x, global0.x, -1404f), 562f).a.a, vec4<bool>(var_2.c.a.x, true, false, true))), ~u_input.a.x, vec4<u32>(1u, ~(countOneBits(48005u) | global1.d), _wgslsmith_clamp_u32(14647u, global1.e.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.e.x, 0u, 23126u), global1.e), u_input.b, false)), func_3().x));
    var var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2.a))), 1i, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b.x, var_2.a.x)))))));
}

