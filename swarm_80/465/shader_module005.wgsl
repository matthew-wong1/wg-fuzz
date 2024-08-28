struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, false, true), Struct_1(0i, 1u, vec2<i32>(18385i, 32258i), true), Struct_1(-6548i, 1u, vec2<i32>(i32(-2147483648), 2155i), true), Struct_1(53208i, 1u, vec2<i32>(-2923i, 2147483647i), true), 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(875f - -1902f), _wgslsmith_f_op_f32(f32(-1f) * -2093f))), _wgslsmith_f_op_f32(sign(-964f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1107f, 170f), _wgslsmith_f_op_f32(862f * -2211f), all(global0.a.wz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2267f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-970f, _wgslsmith_f_op_f32(f32(-1f) * -525f)) * _wgslsmith_f_op_f32(floor(-529f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1871f, -369f, 248f)))));
    let var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(37472u, reverseBits(firstTrailingBit(1u)), _wgslsmith_mod_u32(global0.e, ~7080u))), vec3<u32>(1u, ~(~_wgslsmith_div_u32(global0.e, global0.e)), firstLeadingBit(global0.c.b)));
    global0 = Struct_2(vec4<bool>(any(select(vec3<bool>(global0.b.d, true, true), !global0.a.yyy, global0.a.yww)), true, !global0.c.d, false), Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(global0.c.c.x, 1i), 2147483647i), var_1, _wgslsmith_sub_vec2_i32(u_input.c.yx, u_input.c.yx), !global0.b.d), Struct_1(_wgslsmith_clamp_i32(-u_input.a, firstTrailingBit(u_input.a), -u_input.a) << (var_1 % 32u), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(~var_1, ~0u)), _wgslsmith_sub_vec2_i32(abs(~vec2<i32>(44740i, 30538i)), global0.c.c), false), global0.b, 0u);
    global0 = Struct_2(vec4<bool>(true, !(!(17155i == global0.c.a)), !(!select(false, global0.c.d, true)), any(select(!global0.a, global0.a, select(global0.a, vec4<bool>(global0.a.x, global0.a.x, false, true), true)))), global0.b, Struct_1(0i ^ (_wgslsmith_sub_i32(u_input.a, global0.d.c.x) & max(-2147483647i, global0.c.a)), ~(reverseBits(0u) << (reverseBits(0u) % 32u)), global0.b.c, true), global0.d, var_1 << (_wgslsmith_mult_u32(56510u, (var_1 >> (var_1 % 32u)) & _wgslsmith_mod_u32(4294967295u, 24327u)) % 32u));
    var var_2 = Struct_2(global0.a, Struct_1(~1i, 1u, firstTrailingBit(vec2<i32>(8528i, -27952i) >> (~vec2<u32>(u_input.d.x, var_1) % vec2<u32>(32u))), true), Struct_1(i32(-1i) * -firstLeadingBit(global0.b.a), u_input.d.x, _wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, global0.b.a)), vec2<i32>(global0.d.c.x, u_input.c.x)), global0.b.d), global0.c, 1u);
    return !(firstTrailingBit(-select(0i, u_input.a, global0.b.d)) != -2147483647i);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = !vec4<bool>(true, false, _wgslsmith_clamp_i32(arg_1.c.x, arg_2.c.x >> (56518u % 32u), arg_2.c.x) < (i32(-1i) * -2147483647i), arg_2.d);
    global0 = Struct_2(global0.a, Struct_1(~firstLeadingBit(~(-2147483647i)), global0.d.b, ~global0.c.c, all(select(select(vec4<bool>(arg_0.x, var_0.x, true, var_0.x), global0.a, arg_1.d), !vec4<bool>(arg_0.x, true, false, var_0.x), !arg_1.d))), global0.c, Struct_1(-1i, 1u, vec2<i32>(_wgslsmith_mult_i32(-arg_2.c.x, _wgslsmith_div_i32(-1i, -1804i)), 109273i), !(~arg_2.b > 4294967295u)), _wgslsmith_add_u32(reverseBits(0u >> (0u % 32u)), u_input.b.x));
    global0 = Struct_2(vec4<bool>(func_3(), false, arg_1.d, true), arg_1, global0.d, Struct_1(_wgslsmith_mult_i32(arg_1.c.x, u_input.a), ~(~8881u), ~abs(vec2<i32>(0i, 9350i)), any(vec4<bool>(all(vec3<bool>(global0.b.d, global0.d.d, arg_0.x)), false, !arg_2.d, var_0.x))), ~u_input.b.x);
    let var_1 = false;
    var var_2 = _wgslsmith_clamp_i32(global0.c.a, _wgslsmith_mod_i32(-(arg_2.c.x | select(-2147483647i, u_input.a, false)), -5927i | _wgslsmith_mod_i32(1i, arg_1.c.x | u_input.c.x)), arg_2.a);
    return 2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = global0.c;
    global0 = Struct_2(global0.a, Struct_1(-22757i, ~var_0.b, var_0.c, func_3()), global0.c, Struct_1(_wgslsmith_div_i32(~var_0.a, _wgslsmith_mult_i32(global0.d.c.x, global0.b.a) >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)), select(u_input.b.x, var_0.b, arg_2.x), max(vec2<i32>(arg_0.x, 2327i), vec2<i32>(-2147483647i, global0.c.a)) ^ (select(arg_0, u_input.c.yz, vec2<bool>(var_0.d, arg_2.x)) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0.x), var_0.c)), true), 0u);
    let var_1 = ~vec4<i32>(abs(20407i), global0.d.a, _wgslsmith_sub_i32(-(~18330i), -(global0.b.a ^ u_input.a)), -select(~arg_0.x, arg_0.x, arg_2.x));
    var var_2 = global0.d;
    var var_3 = Struct_2(global0.a, Struct_1(i32(-1i) * -(2147483647i ^ var_0.a), 1u, select(_wgslsmith_div_vec2_i32(arg_0 ^ arg_0, vec2<i32>(global0.d.c.x, var_0.c.x)), -firstTrailingBit(u_input.c.zz), var_2.d), var_2.d), global0.c, global0.c, 85962u | (~(~var_0.b) << (~_wgslsmith_mod_u32(var_2.b, 57738u) % 32u)));
    return Struct_2(vec4<bool>(any(!select(vec4<bool>(global0.b.d, global0.d.d, false, true), vec4<bool>(true, false, true, true), arg_2)), !var_0.d, true, var_0.d), Struct_1(var_2.c.x << (1u % 32u), _wgslsmith_dot_vec2_u32(~(~u_input.b), _wgslsmith_mod_vec2_u32(abs(u_input.b), vec2<u32>(0u, 22117u))), -vec2<i32>(-2147483647i, global0.c.c.x) & (vec2<i32>(-1i, global0.d.a) & vec2<i32>(var_2.a, arg_0.x)), true), Struct_1(-65245i, var_3.c.b, ~vec2<i32>(countOneBits(global0.b.a), -2147483647i), global0.a.x), var_3.b, _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(var_2.b, 103919u)), ~(~var_3.e)), 81608u));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1.b;
    let var_1 = 1u;
    let var_2 = !func_3();
    var var_3 = Struct_1(-(~57717i), 26284u, arg_1.b.c, true);
    var_3 = arg_1.b;
    return func_4(vec2<i32>(var_0.c.x, 14253i) & _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(arg_0, var_3.c.x)), vec2<i32>(_wgslsmith_div_i32(var_0.c.x, -1i), ~(-29637i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, _wgslsmith_f_op_f32(min(-1905f, -339f)), 1357f, _wgslsmith_f_op_f32(1431f * 559f)))), arg_1.a).c;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global0 = arg_3;
    let var_0 = func_5(16451i, func_4(vec2<i32>(select(func_2(vec3<bool>(arg_2.b.d, arg_2.c.d, arg_3.d.d), global0.c, global0.d), countOneBits(-2147483647i), true), firstLeadingBit(_wgslsmith_clamp_i32(-148i, -37429i, 49255i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(358f, 1706f, 282f, 1104f) - vec4<f32>(-346f, -1000f, 974f, -302f)), vec4<f32>(1000f, 139f, -867f, -302f), 86774i <= arg_3.c.c.x))), arg_3.a), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1660f, -417f, -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-519f, 554f, 721f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(903f, 801f, 208f) * vec3<f32>(-245f, 1000f, -1345f))))) * vec3<f32>(505f, -594f, -743f));
    global0 = arg_3;
    global0 = arg_2;
    return false;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_3;
    var var_0 = 31453u ^ ~func_5(abs(global0.d.a), arg_2, false).b;
    let var_1 = all(!vec3<bool>(true, all(arg_2.a) || all(arg_3.a), global0.a.x));
    let var_2 = -2147483647i;
    var_0 = _wgslsmith_clamp_u32(0u, arg_2.b.b, _wgslsmith_mod_u32(3047u, 1u));
    return func_5(~(~arg_3.b.a), func_4(arg_3.c.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-479f, -2048f, 284f, 394f), vec4<f32>(1115f, -691f, 711f, 149f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 591f, -700f, -203f)))) - vec4<f32>(-155f, -939f, -337f, -1824f)), select(!select(arg_3.a, vec4<bool>(true, var_1, true, true), arg_2.a), vec4<bool>(true, arg_1.x, !arg_1.x, var_1 == false), _wgslsmith_add_u32(arg_2.d.b, 1u) > abs(4294967295u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(!(!vec4<bool>(global0.a.x, global0.d.d, false, global0.c.d)), select(select(vec4<bool>(global0.b.d, global0.c.d, global0.d.d, global0.d.d), global0.a, global0.a), vec4<bool>(true, true, true, !global0.a.x), vec4<bool>(global0.b.d, false, 21145i != u_input.c.x, true)), 4294967295u > (u_input.b.x << (9336u % 32u))), global0.c, global0.d, func_6(global0.a.xw, vec4<bool>(all(!global0.a.ywx), any(select(vec2<bool>(global0.d.d, global0.b.d), global0.a.yw, global0.b.d)), true, true), Struct_2(select(select(global0.a, vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(global0.d.d, true, global0.c.d, false)), select(vec4<bool>(true, false, true, true), global0.a, global0.a), true), Struct_1(global0.c.c.x, 55908u | global0.b.b, u_input.c.xx, global0.a.x), Struct_1(-1i, ~86877u, vec2<i32>(40412i, -1i), true), global0.d, abs(u_input.d.x)), Struct_2(vec4<bool>(global0.c.d, func_1(vec3<u32>(17357u, u_input.b.x, global0.d.b), global0.c, Struct_2(vec4<bool>(global0.c.d, true, global0.b.d, global0.c.d), Struct_1(global0.d.c.x, 0u, vec2<i32>(global0.d.c.x, -1i), true), global0.d, Struct_1(2147483647i, 4678u, global0.d.c, true), 0u), Struct_2(vec4<bool>(global0.c.d, false, global0.c.d, global0.c.d), global0.d, Struct_1(u_input.c.x, global0.e, vec2<i32>(global0.c.c.x, global0.d.a), true), Struct_1(-2147483647i, 25547u, global0.c.c, true), 145810u)), false, func_3()), global0.b, Struct_1(0i >> (u_input.b.x % 32u), global0.b.b, _wgslsmith_mult_vec2_i32(vec2<i32>(55345i, 1i), global0.d.c), global0.b.d && true), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), u_input.c), firstTrailingBit(u_input.d.x), global0.d.c, any(global0.a)), global0.e)), select(func_6(vec2<bool>(true, false), vec4<bool>(false, true, false, !global0.d.d), Struct_2(!vec4<bool>(global0.b.d, global0.b.d, false, false), func_6(global0.a.xy, global0.a, Struct_2(vec4<bool>(true, true, global0.d.d, true), global0.b, Struct_1(-7503i, global0.c.b, vec2<i32>(-8580i, -1i), true), Struct_1(6391i, 10064u, vec2<i32>(u_input.c.x, 53893i), global0.b.d), global0.d.b), Struct_2(vec4<bool>(global0.a.x, global0.a.x, false, global0.b.d), global0.c, global0.d, Struct_1(u_input.c.x, 17933u, vec2<i32>(1680i, 2147483647i), global0.a.x), 54573u)), Struct_1(u_input.a, u_input.d.x, vec2<i32>(u_input.c.x, -10482i), global0.a.x), global0.d, _wgslsmith_clamp_u32(global0.d.b, global0.d.b, 1u)), func_4(_wgslsmith_mult_vec2_i32(global0.d.c, vec2<i32>(-2147483647i, 82982i)), _wgslsmith_div_vec4_f32(vec4<f32>(-762f, 1934f, 1191f, 875f), vec4<f32>(1855f, 442f, -666f, -863f)), global0.a)).b, abs(40219u >> (~global0.d.b % 32u)), global0.b.d));
    global0 = func_4(~(~(-var_0.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(369f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(302f * -1238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1579f))), _wgslsmith_f_op_f32(f32(-1f) * -1292f))), vec4<bool>(func_5(1i, Struct_2(vec4<bool>(var_0.a.x, true, false, false), global0.d, Struct_1(var_0.c.c.x, 33720u, vec2<i32>(20137i, global0.c.c.x), true), var_0.c, ~u_input.b.x), global0.b.d).d, global0.b.d, any(!global0.a.wx), global0.c.d));
    global0 = func_4(-_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(abs(var_0.b.c), func_4(vec2<i32>(var_0.c.c.x, -2147483647i), vec4<f32>(1000f, 1276f, 2424f, -1108f), global0.a).b.c), ~(-var_0.d.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, _wgslsmith_f_op_f32(f32(-1f) * -617f), -1013f, _wgslsmith_f_op_f32(trunc(423f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2105f, -625f, -1071f, 1454f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-991f, 639f, 2014f, 1000f)))))), var_0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1292f * -399f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-797f, -475f)))))));
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.d.x, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), u_input.b.x)), max(_wgslsmith_clamp_u32(~global0.e, ~global0.b.b, ~9495u), ~_wgslsmith_clamp_u32(29466u, global0.d.b, 92714u))), firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(3681u, u_input.d.x, 0u) << (~vec3<u32>(var_0.b.b, u_input.b.x, u_input.d.x) % vec3<u32>(32u)), ~(vec3<u32>(4294967295u, 1u, 27310u) & vec3<u32>(var_0.e, var_0.d.b, global0.e)))), firstLeadingBit(vec3<u32>(~u_input.b.x, 4294967295u, 1u)));
    var var_3 = countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(15662u, var_2.x)), ~(~u_input.b), var_2.yz), ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.b, var_0.b.b), vec2<u32>(41397u, global0.c.b)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(137f, var_1.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))))));
    var_1 = vec2<f32>(983f, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1654f)), 917f) * -2381f)));
}

