struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 34813u, vec4<u32>(976u, 33765u, 22979u, 0u), false);

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1((-1830f != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1302f, 909f), -2851f, all(vec3<bool>(true, global0.d, true))))) & all(!select(vec2<bool>(global0.a, global1.a), vec2<bool>(true, global1.a), vec2<bool>(true, false))), global1.c.x, abs(global0.c), any(vec2<bool>(global1.d, !any(vec4<bool>(false, false, global0.a, global0.d)))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0.b, var_0.c.x, global1.c.x)), ~vec3<u32>(global1.b, var_0.c.x, global0.b)), countOneBits(~var_0.b)) << (~(~1u) % 32u), 5281u);
    var var_2 = ~vec4<i32>(u_input.a.x, 0i & _wgslsmith_clamp_i32(u_input.a.x, 1i, reverseBits(19215i)), -26679i, _wgslsmith_clamp_i32(u_input.a.x, ~(30956i ^ u_input.a.x), 0i));
    let var_3 = vec3<bool>(false, select(global0.d, !(!(var_2.x < u_input.a.x)), true), false);
    var_0 = Struct_1(var_3.x, 90301u, max(vec4<u32>(4294967295u, 1u, ~var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 77950u, global1.c.x), vec3<u32>(35569u, global1.c.x, 18115u))), vec4<u32>(global1.c.x >> (global1.b % 32u), global1.c.x, 1u, var_1)) >> (vec4<u32>(10237u, var_0.c.x, ~(global1.b >> (global0.c.x % 32u)), global0.c.x) % vec4<u32>(32u)), true);
    return _wgslsmith_sub_u32(select(reverseBits(_wgslsmith_div_u32(~1u, 1u)), max(var_0.c.x, global1.b | global1.c.x), false), _wgslsmith_mod_u32(firstTrailingBit(var_1 & 30819u), 1u));
}

fn func_2(arg_0: u32) -> bool {
    global0 = Struct_1(global1.d, ~func_3(), _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(arg_0), global0.b, 0u, ~_wgslsmith_dot_vec3_u32(global1.c.yww, vec3<u32>(58839u, 4294967295u, 49793u))), _wgslsmith_mult_vec4_u32(countOneBits(global1.c), global1.c) | vec4<u32>(~global1.b, arg_0, 23578u, global0.b | arg_0)), true);
    global0 = Struct_1(global1.a, ~func_3(), vec4<u32>(4294967295u, 68406u, 42578u, ~4294967295u), false);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-946f + 204f)) - _wgslsmith_f_op_f32(-1000f * -736f))));
    let var_1 = firstTrailingBit(u_input.a);
    var var_2 = Struct_1(true, ~max(arg_0, ~_wgslsmith_sub_u32(global0.c.x, 51008u)), global0.c, true);
    return global1.a;
}

fn func_1() -> vec3<i32> {
    global1 = Struct_1(func_2(global0.c.x ^ global1.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~countOneBits(0u), select(global1.b, global1.c.x, global0.d) << (_wgslsmith_mod_u32(1u, 4294967295u) % 32u)), ~vec2<u32>(0u, global1.c.x)), global0.c, _wgslsmith_add_i32(max(~(-17341i), 2147483647i), -u_input.a.x >> (countOneBits(4294967295u) % 32u)) == abs(countOneBits(73197i)));
    var var_0 = Struct_1(!global1.d, global1.c.x, ~firstTrailingBit(abs(~global0.c)), global1.d);
    var var_1 = Struct_1(false, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~4294967295u, 1u), abs(~vec3<u32>(var_0.c.x, 50451u, 4294967295u))), ~4294967295u), global0.c, func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, var_0.b, global1.b, _wgslsmith_mult_u32(var_0.c.x, var_0.b)), _wgslsmith_div_vec4_u32(vec4<u32>(59157u, var_0.c.x, 5436u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, 9630u, global1.b, global1.b), vec4<u32>(global0.c.x, 109284u, 28744u, 101u))))));
    let var_2 = select(!vec3<bool>(true, !(!global0.d), global1.d), !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, global0.d, true), var_1.d), vec3<bool>(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(var_1.d, global1.d, false))), select(select(vec3<bool>(var_0.d, true, false), vec3<bool>(var_0.a, global1.d, var_0.d), vec3<bool>(var_1.a, false, true)), select(vec3<bool>(global1.d, false, true), vec3<bool>(false, var_1.a, true), false), select(vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, true, false), vec3<bool>(false, global1.a, var_0.a)))), select(!vec3<bool>(true, !var_0.a, true), !select(!vec3<bool>(false, false, var_1.a), vec3<bool>(true, global1.a, true), vec3<bool>(true, false, false)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.d, false), true), select(vec3<bool>(true, true, var_0.a), vec3<bool>(true, var_1.d, true), vec3<bool>(global0.a, false, false)), true)));
    global0 = Struct_1(all(select(vec3<bool>(var_2.x, global1.d | true, false && var_2.x), select(var_2, select(vec3<bool>(false, true, true), vec3<bool>(true, var_0.d, global1.a), vec3<bool>(var_1.a, false, var_0.d)), true), false)), ~1u, ~vec4<u32>(6229u, var_0.b, 28612u, ~17740u), any(vec3<bool>(any(!var_2), all(!var_2), var_1.d)));
    return vec3<i32>(firstLeadingBit(-u_input.a.x), u_input.a.x, -6741i);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(any(vec2<bool>(true, true)), 0u, vec4<u32>(global0.b, _wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(global0.c.x), ~global0.b), global1.b), global0.b & 85286u, ~4268u), !global0.d);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(716f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1041f, 511f, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1129f, -842f)))) - 1591f));
    var var_1 = Struct_1(all(vec3<bool>(all(!vec4<bool>(global0.d, global0.d, true, false)), global0.a, any(vec3<bool>(false, false, false)))), 18973u, vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(global0.c.x, 45506u)), global0.c.xz), firstLeadingBit(_wgslsmith_div_u32(max(1u, global0.c.x), _wgslsmith_sub_u32(35540u, 0u))), global1.b, ~112896u), any(!vec4<bool>(any(vec3<bool>(global1.a, global0.d, true)), global0.d & false, false, global0.a)));
    let var_2 = Struct_1(false, global0.b, var_1.c, true);
    global0 = Struct_1((arg_0.x >> (abs(4294967295u) % 32u)) > u_input.a.x, countOneBits(~var_1.c.x), select(var_1.c, vec4<u32>(~(~4294967295u), ~_wgslsmith_mod_u32(global0.b, 56244u), 65345u, _wgslsmith_div_u32(58520u >> (var_1.c.x % 32u), 23224u)), any(vec3<bool>(global0.c.x <= global1.c.x, false, true))), all(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_2.a, false)))));
    return Struct_1(func_2(reverseBits(~(~4294967295u))), 4294967295u, ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0.b, 0u), 1u, ~0u, global1.c.x), _wgslsmith_mod_vec4_u32(global1.c, var_2.c)), all(select(!vec4<bool>(var_2.a, false, false, true), vec4<bool>(false, all(vec2<bool>(false, var_2.a)), !global0.d, !global0.d), !vec4<bool>(global1.a, var_1.d, var_1.d, global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(860f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-888f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-348f, -726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - 801f)))), -229f);
    let var_1 = func_4(func_1());
    var var_2 = Struct_1(global0.a, firstTrailingBit(42252u), ~vec4<u32>(_wgslsmith_add_u32(reverseBits(global1.c.x), 76907u), firstLeadingBit(~84498u), _wgslsmith_div_u32(global0.c.x, 1u), ~(~0u)), global0.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zy * var_0.zy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, var_0.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.yz), vec2<f32>(var_0.x, 211f), false)))) * vec2<f32>(_wgslsmith_f_op_f32(762f - _wgslsmith_f_op_f32(var_0.x + -1168f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 232f)))))));
    var_2 = func_4(select(_wgslsmith_sub_vec3_i32(max(abs(u_input.a.wzx), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), func_1()), _wgslsmith_sub_vec3_i32(u_input.a.yww, ~countOneBits(vec3<i32>(16725i, 4403i, u_input.a.x))), select(select(select(vec3<bool>(global0.d, global1.d, var_2.d), vec3<bool>(var_1.a, var_2.d, global0.d), global0.d), !vec3<bool>(var_1.d, global1.d, var_1.d), vec3<bool>(global1.d, true, global0.d)), vec3<bool>(!global0.d, true, var_1.d), !vec3<bool>(var_1.d, global0.a, true))));
    var var_4 = func_4(~vec3<i32>(u_input.a.x & ~2147483647i, ~u_input.a.x & -u_input.a.x, -13929i)).a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), select(vec3<i32>(u_input.a.x, select(~2147483647i, u_input.a.x, global1.d), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-44218i, 0i, -8761i, -1i), vec4<i32>(u_input.a.x, 2147483647i, 1i, 16994i))), u_input.a.yxy, !(!vec3<bool>(false, global0.d, var_2.d))), -76i, u_input.a.xyz, ~select(var_2.b, var_2.c.x, false));
}

