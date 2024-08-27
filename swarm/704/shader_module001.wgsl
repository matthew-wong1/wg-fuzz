struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    let var_0 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-259f))))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1114f))))));
    var var_1 = ~u_input.c;
    var var_2 = (~(-(vec2<i32>(-2147483647i, 41018i) & vec2<i32>(u_input.a, u_input.a))) << (countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1008u, 5634u), vec2<u32>(arg_0, u_input.c))) % vec2<u32>(32u))) ^ ~(_wgslsmith_add_vec2_i32(vec2<i32>(21876i, 0i), -vec2<i32>(u_input.b, u_input.b)) << (vec2<u32>(reverseBits(2178u), 0u) % vec2<u32>(32u)));
    var var_3 = (~(reverseBits(vec4<u32>(u_input.c, 1u, 56393u, 4294967295u)) << (~vec4<u32>(1u, 1u, arg_0, arg_0) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mult_u32(arg_0, abs(u_input.c)), max(~1u, firstLeadingBit(54151u)), 1u, arg_0)) ^ min(vec4<u32>(arg_0, u_input.c, ~_wgslsmith_mult_u32(arg_0, 1u), u_input.c), vec4<u32>(arg_0, 1u, _wgslsmith_mod_u32(u_input.c, 31793u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 21399u), vec3<u32>(1u, u_input.c, arg_0))));
    var var_4 = 4294967295u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(847f, 350f, 2267f, 364f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(174f, -262f, -295f, 433f), vec4<f32>(-154f, -409f, 1108f, -1000f), vec4<bool>(false, true, var_0, true)))), vec4<f32>(_wgslsmith_div_f32(-1559f, _wgslsmith_f_op_f32(select(1348f, 683f, true))), _wgslsmith_f_op_f32(f32(-1f) * -259f), -1001f, 1f)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    let var_0 = abs(vec2<u32>(~(~4294967295u), _wgslsmith_mult_u32(~(~69272u), ~(u_input.c ^ u_input.c))));
    var var_1 = -2147483647i;
    var var_2 = false;
    let var_3 = 1u;
    var var_4 = Struct_3(7432u, _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -1i, u_input.a, abs(18681i & u_input.b)), abs(vec3<i32>(8301i, u_input.b, u_input.a)) ^ min(~vec3<i32>(u_input.a, 1i, 31658i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, u_input.a)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(368f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(f32(-1f) * -201f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(648f)) - arg_1.x)))));
    return true | !(arg_0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    let var_0 = !select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), false), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(717f, arg_0.x))), _wgslsmith_f_op_vec4_f32(func_3(arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -173f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(544f, 334f, arg_0.x), vec3<f32>(-1165f, -131f, arg_0.x), vec3<bool>(true, false, false))))));
    var var_1 = _wgslsmith_f_op_f32(min(arg_0.x, 592f));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1618f), arg_0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2193f, 1036f, arg_0.x, -1168f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1364f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-424f - -794f))) * _wgslsmith_f_op_f32(-471f * arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, 254f, -1780f)));
    var var_3 = abs(~firstLeadingBit(vec3<u32>(~4294967295u, 1u, 1u)));
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.a), var_2.a.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x * 526f) * -503f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> f32 {
    let var_0 = vec3<u32>(65247u, _wgslsmith_mod_u32(u_input.c, _wgslsmith_add_u32(arg_2, ~u_input.c)), 4294967295u);
    var var_1 = select(select(vec2<bool>(any(vec3<bool>(true, true, false)), firstLeadingBit(var_0.x) < 4294967295u), vec2<bool>(u_input.a >= firstLeadingBit(arg_1.b.x), false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), true), vec2<bool>(all(vec4<bool>(false, true, true, false)), select(true, true, true)), _wgslsmith_div_f32(-737f, arg_0.c) >= 294f)), vec2<bool>(true, true), vec2<bool>(false, !(max(-52864i, -17051i) >= arg_1.b.x)));
    var_1 = vec2<bool>(select(any(select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), var_1.x | var_1.x)), (max(28562u, arg_2) >> (27200u % 32u)) <= _wgslsmith_div_u32(~13695u, arg_1.a << (11248u % 32u)), var_1.x), !(!(_wgslsmith_f_op_f32(-arg_0.d.x) <= _wgslsmith_f_op_f32(-arg_0.a.a.x))));
    var var_2 = vec4<bool>(true, var_1.x, true, var_1.x);
    var var_3 = Struct_3(u_input.c, vec3<i32>(-select(-22314i, arg_1.b.x, var_1.x) & abs(-28618i), select(18838i, firstTrailingBit(_wgslsmith_add_i32(-12713i, u_input.a)), all(!var_2.xzw)), 45529i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x)), _wgslsmith_f_op_f32(-arg_0.a.a.x))));
    return arg_0.a.a.x;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = vec4<bool>(abs(arg_2.b.x) >= (~(~(-39956i)) ^ u_input.b), arg_3.x, -286f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1087f * arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -2198f))), true);
    var var_1 = Struct_3(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(32772u, 1u), u_input.c), countOneBits(vec3<i32>(max(arg_2.b.x, arg_2.b.x), arg_2.b.x << (arg_2.a % 32u), _wgslsmith_dot_vec3_i32(abs(arg_2.b), _wgslsmith_mod_vec3_i32(arg_2.b, arg_2.b)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c * _wgslsmith_f_op_vec3_f32(arg_2.c * arg_2.c))), arg_2.c)));
    let var_2 = select(!vec3<bool>(arg_3.x, select(var_0.x, all(arg_3), !arg_3.x), (var_1.c.x >= arg_2.c.x) || true), vec3<bool>(arg_3.x, false, true), vec3<bool>(-639f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1972f)))), true, any(var_0.xyz)));
    let var_3 = false;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.c.x, arg_2.c.x, 1716f, 568f), vec4<f32>(-1000f, arg_1, -2325f, 288f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-515f, 1814f, 592f, -645f)))))), arg_2.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f)), _wgslsmith_f_op_f32(125f - _wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(var_1.c.x - 1197f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 554f, arg_2.c.x)))) * var_1.c));
    return Struct_4(arg_2.a, !(13124i < (-var_1.b.x | var_1.b.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-133f, arg_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -380f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_4.d, arg_2.c))))));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = select(!vec3<bool>(true, ~u_input.c != _wgslsmith_clamp_u32(1u, 10884u, u_input.c), true != any(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), true);
    let var_1 = select(_wgslsmith_f_op_f32(-arg_0) >= arg_0, any(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, !var_0.x)));
    var var_2 = func_6(arg_0, _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, -697f)))), _wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, -1000f)), _wgslsmith_mult_u32(11261u, 70031u))), vec3<f32>(-552f, _wgslsmith_f_op_f32(arg_0 + 1195f), _wgslsmith_f_op_f32(-810f - 551f))), Struct_3(4294967295u, vec3<i32>(abs(u_input.a), firstLeadingBit(u_input.a), ~(-12844i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1059f, 1096f, 1620f)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 77563u), _wgslsmith_clamp_u32(u_input.c, arg_1, u_input.c)), 1u))), Struct_3(27799u, ~(-vec3<i32>(-1i, -19710i, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -293f, 813f) * vec3<f32>(2326f, arg_0, -1917f))))), !var_0.zz);
    var var_3 = Struct_1(vec4<f32>(-220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_2.c.x, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-160f, var_2.c.x)) * var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - -2185f))));
    let var_4 = func_6(490f, _wgslsmith_f_op_f32(abs(var_2.c.x)), Struct_3(~(var_2.a >> (_wgslsmith_mult_u32(0u, 21050u) % 32u)), firstTrailingBit(-vec3<i32>(2147483647i, 69726i, 22058i)) | vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a, ~(-46097i)), var_3.a.wyw), !var_0.zz);
    return reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(153119u, var_2.a, 4294967295u), ~vec3<u32>(var_4.a, 1u, 1u)), 0u, _wgslsmith_clamp_u32(var_4.a, 4294967295u ^ arg_1, ~var_2.a)) & ~select(firstTrailingBit(81532u), 1u, all(vec2<bool>(false, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~u_input.c, _wgslsmith_mult_u32(4294967295u, u_input.c), u_input.c);
    var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(reverseBits(u_input.c), ~16406u, u_input.c), vec3<u32>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(138f)) * -417f), u_input.c), 1u, 1u));
    let var_1 = _wgslsmith_mult_i32(u_input.a, -1i);
    var var_2 = vec4<bool>(!(firstTrailingBit(1u) >= 93716u), var_0.x <= var_0.x, !any(vec2<bool>(true, true)), true);
    var var_3 = select(vec2<bool>(false, any(vec3<bool>(true, select(false, var_2.x, var_2.x), var_2.x))), select(select(select(vec2<bool>(var_2.x, true), !vec2<bool>(var_2.x, true), !var_2.x), var_2.yw, select(vec2<bool>(var_2.x, var_2.x), !var_2.wy, select(var_2.xw, var_2.zx, var_2.x))), vec2<bool>(true, true), true), !(var_2.x || ((u_input.a == -1i) & func_4(325f, vec4<f32>(500f, 1231f, 1061f, 680f), vec3<f32>(513f, 1246f, 2852f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1311f);
}

