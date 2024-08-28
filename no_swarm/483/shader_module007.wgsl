struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1713f, global0.x, -1711f, global0.x), vec4<f32>(global0.x, 1000f, 150f, -1000f), vec4<bool>(false, false, arg_0.c.x, false))), vec4<f32>(global0.x, 1000f, global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, -654f, -935f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(627f, -430f, global0.x, 537f), vec4<f32>(987f, 1000f, 1000f, global0.x), vec4<bool>(true, false, false, arg_0.c.x))), !arg_0.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2005f, global0.x, -413f, -800f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, 451f, global0.x), vec4<f32>(-1977f, global0.x, global0.x, -1283f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2590f, -1241f, -165f, 937f) + vec4<f32>(611f, global0.x, 581f, -1557f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f * global0.x) * global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(1000f * global0.x)), -879f)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) - -233f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 529f) * vec4<f32>(global0.x, -317f, global0.x, global0.x)) + vec4<f32>(global0.x, global0.x, global0.x, 124f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 721f, global0.x, -1116f) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -672f), vec4<f32>(-1166f, -1951f, global0.x, 703f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(204f, 494f, 197f, 151f) * vec4<f32>(1866f, global0.x, global0.x, 593f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 1580f, -655f, 143f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1000f, global0.x, -511f), vec4<f32>(global0.x, -1000f, 1390f, global0.x), vec4<bool>(false, false, arg_0.c.x, true)))))), vec4<bool>(false, all(vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x)), !(4294967295u <= arg_1.x), !(!arg_0.c.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, 1875f, 665f, 686f) - vec4<f32>(2215f, 2285f, 293f, -2361f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2143f, 860f, _wgslsmith_f_op_f32(577f * global0.x))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(-530f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-206f, global0.x, 1186f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    return -652f;
}

fn func_2() -> Struct_1 {
    let var_0 = -firstTrailingBit(~(-79729i));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -792f, global0.x, global0.x), vec4<f32>(global0.x, 150f, global0.x, global0.x), vec4<bool>(false, false, false, false)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * -1573f), _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -797f, 343f) * vec4<f32>(-453f, -116f, global0.x, global0.x)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1016f + global0.x), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec3<i32>(var_0, var_0, 0i), vec3<bool>(false, false, true)), vec2<u32>(u_input.a, u_input.a))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-827f + 463f), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(sign(1010f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -434f, global0.x, -866f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1217f, global0.x, global0.x, global0.x) + vec4<f32>(777f, -1150f, -541f, global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(518f, global0.x, 2095f, 635f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -390f, 681f, global0.x))))))) + vec4<f32>(global0.x, -674f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_f32(exp2(global0.x))));
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_div_vec4_u32(select(~(~vec4<u32>(u_input.a, 17771u, 37393u, 1u)), ~vec4<u32>(1u, u_input.a, 66886u, 34284u), all(vec4<bool>(false, true, true, true)) && true), vec4<u32>(_wgslsmith_mult_u32(0u, var_1), ~var_1, ~28710u, ~var_1) & (~vec4<u32>(u_input.a, u_input.a, 71693u, var_1) << (_wgslsmith_sub_vec4_u32(vec4<u32>(18195u, var_1, var_1, u_input.a), vec4<u32>(77047u, 15941u, 115605u, 30925u)) % vec4<u32>(32u)))), _wgslsmith_div_vec3_i32(abs(_wgslsmith_mult_vec3_i32(select(vec3<i32>(15694i, -45068i, var_0), vec3<i32>(0i, -1i, 69262i), vec3<bool>(true, false, true)), countOneBits(vec3<i32>(var_0, var_0, var_0)))), ~(~vec3<i32>(51477i, 1i, 29890i))), select(!vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(select(false, true, true), true, all(vec2<bool>(true, true))), any(vec4<bool>(false, false, true, true))), true || any(vec4<bool>(true, false, false, true))));
    return Struct_1(vec4<u32>(var_1, 121307u, _wgslsmith_mod_u32(var_1, u_input.a | var_2.a.x), ~(~var_1)) ^ var_2.a, var_2.b, select(vec3<bool>(var_2.c.x, 0i <= ~var_0, any(!vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x))), !(!(!vec3<bool>(var_2.c.x, var_2.c.x, false))), var_2.c));
}

fn func_1() -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1787f));
    let var_0 = global0.x;
    var var_1 = ~((~vec4<i32>(1i, 1i, 1i, 1i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(61516i, -40051i, 2147483647i, -2147483647i), ~vec4<i32>(-46281i, -21684i, 2147483647i, 2147483647i))) | ~_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-1760i, -1i, 8299i, 1i)), firstLeadingBit(vec4<i32>(-13480i, 48070i, 1i, -2147483647i)), vec4<i32>(-51542i, 2147483647i, -2147483647i, 15299i)));
    var_1 = countOneBits(vec4<i32>(firstLeadingBit(var_1.x), abs(1i), var_1.x, 18372i));
    let var_2 = func_2();
    return !vec4<bool>(-150f >= global0.x, (-344f != _wgslsmith_div_f32(global0.x, global0.x)) && true, true, var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(func_1(), vec4<bool>(true, true, true, true), func_1()), select(vec4<bool>(true, false, false, false), func_1(), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(all(vec3<bool>(false, true, false)), true, func_1().x, true)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x));
    var_0 = vec4<bool>(true, true, var_0.x, var_0.x);
    var_0 = !(!select(vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), all(vec3<bool>(var_0.x, true, var_0.x)), true, var_0.x || false), func_1(), any(vec4<bool>(var_0.x, var_0.x, true, var_0.x))));
    var var_2 = func_2();
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1765f, -1121f, -1159f) + vec4<f32>(global0.x, 1394f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(func_3(Struct_1(var_2.a, var_2.b, var_0.xzz), var_2.a.xz)), _wgslsmith_f_op_f32(var_1.x - -801f), var_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1827f, var_1.x, global0.x, global0.x)) + vec4<f32>(2139f, -644f, global0.x, -653f))))));
    var var_3 = Struct_1(var_2.a, var_2.b, !var_2.c);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -111f, 618f, var_1.x)))))))));
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.a.x << ((~4294967295u << (1u % 32u)) % 32u), _wgslsmith_mult_u32(countOneBits(reverseBits(82092u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5, var_2.a.x), abs(vec2<u32>(0u, var_2.a.x))))), var_3.a & ~select(~vec4<u32>(6764u, 1u, 34322u, var_5), func_2().a, !vec4<bool>(var_2.c.x, var_3.c.x, var_0.x, var_3.c.x)), _wgslsmith_dot_vec3_i32(min(var_2.b, vec3<i32>(var_2.b.x, _wgslsmith_div_i32(var_3.b.x, 0i), max(var_3.b.x, var_3.b.x))), var_2.b), vec2<i32>(var_2.b.x, var_3.b.x));
}

