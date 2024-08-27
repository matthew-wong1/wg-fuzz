struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 35218u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(2152f - 1000f), -256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-453f, _wgslsmith_f_op_f32(ceil(-411f)), any(vec2<bool>(global0.a, true)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(524f - -1161f))))), !(!select(vec2<bool>(global0.a, global0.a), select(vec2<bool>(true, false), vec2<bool>(false, global0.a), global0.a), vec2<bool>(true, true))));
    let var_1 = vec3<bool>(false, any(select(vec4<bool>(true, global0.a & global0.a, var_0.b.x, false), !(!vec4<bool>(false, true, global0.a, false)), false)), var_0.b.x);
    var var_2 = Struct_1(true, global0.b);
    var_2 = Struct_1(!((false | var_1.x) && var_1.x), abs(~(~arg_1.x)));
    var var_3 = 2147483647i;
    return var_0.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_1 {
    global0 = arg_0.a;
    let var_0 = u_input.b;
    global0 = Struct_1(~global0.b != 21248u, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(~global0.b, arg_0.a.b), ~1u));
    global0 = Struct_1(func_3(~(-firstLeadingBit(u_input.b)), abs(vec3<u32>(_wgslsmith_clamp_u32(58755u, 25092u, arg_0.a.b), select(arg_0.a.b, 4294967295u, false), global0.b))), 18752u);
    let var_1 = arg_0;
    return Struct_1(~max(1u, 56672u) >= ~global0.b, _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(0u, 5507u, 5115u, 1u), vec4<u32>(arg_0.a.b, 6015u, 4294967295u, 45772u), true)), ~(~(~vec4<u32>(1u, 85707u, global0.b, var_1.b.b)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    global0 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, 480f, -1308f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1418f, 401f, -1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-890f, 480f, 716f), vec3<f32>(-936f, 551f, -849f), true)))))), vec2<bool>(func_2(Struct_3(arg_0, func_2(Struct_3(Struct_1(true, 22589u), Struct_1(arg_0.a, 4294967295u), global0.a), arg_2.zxx), false), !arg_2.www).a, true));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 1899f;
    var var_1 = !(1i > u_input.b);
    var var_2 = reverseBits(1u);
    var_2 = ~global0.b;
    var_2 = global0.b;
    return func_4(func_2(Struct_3(Struct_1(global0.a, ~1u), Struct_1(select(arg_0.b.x, global0.a, true), _wgslsmith_clamp_u32(global0.b, global0.b, global0.b)), any(arg_0.b)), vec3<bool>(arg_0.b.x, global0.a, true)), any(vec2<bool>(true, true)), vec4<bool>(false, any(!select(vec3<bool>(global0.a, false, true), vec3<bool>(false, arg_0.b.x, true), vec3<bool>(false, arg_0.b.x, false))), any(select(vec4<bool>(global0.a, global0.a, global0.a, false), vec4<bool>(global0.a, global0.a, false, true), true)), func_3(-14734i ^ u_input.b, vec3<u32>(global0.b, 4294967295u, 1u) | vec3<u32>(global0.b, global0.b, 1u)) && all(!vec2<bool>(global0.a, true))));
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, arg_0.a.x)) + func_5(func_5(func_5(Struct_2(vec3<f32>(-364f, 1940f, -106f), arg_0.b)))).a.yz);
    var var_1 = -448f;
    var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x)))));
    let var_3 = u_input.a.zyx;
    return func_2(Struct_3(Struct_1(func_5(func_5(arg_0)).b.x, ~(global0.b | global0.b)), Struct_1(global0.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, global0.b), vec2<u32>(0u, global0.b))), true), vec3<bool>(global0.a, global0.a & global0.a, any(vec2<bool>(true, true))));
}

fn func_1() -> u32 {
    let var_0 = -3384i;
    global0 = Struct_1(global0.a, ~(~_wgslsmith_mod_u32(global0.b, ~1u)));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0.b, 27816u, 14860u) & vec3<u32>(global0.b, global0.b, 0u)), vec3<u32>(global0.b, global0.b, ~(~0u)));
    let var_2 = true;
    let var_3 = Struct_3(Struct_1(false, var_1), func_6(func_5(func_4(func_2(Struct_3(Struct_1(var_2, 7169u), Struct_1(true, var_1), false), vec3<bool>(var_2, true, true)), var_2, vec4<bool>(true, false, var_2, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(Struct_2(vec3<f32>(493f, 392f, -242f), vec2<bool>(global0.a, global0.a))).a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2180f, 733f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -675f)))), (45869i >> (_wgslsmith_mod_u32(~var_1, 1u) % 32u)) >= 1i);
    return ~var_3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.b, global0.b), global0.b), func_1(), max(~global0.b, countOneBits(global0.b)), _wgslsmith_sub_u32(~global0.b, global0.b >> (global0.b % 32u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, global0.b, global0.b, 1u), vec4<u32>(0u, global0.b, global0.b, global0.b)))) ^ vec4<u32>(~global0.b, global0.b, _wgslsmith_add_u32(146337u | ~global0.b, global0.b), reverseBits(10203u));
    var var_1 = global0.b;
    let var_2 = vec3<bool>(false, -492f >= _wgslsmith_f_op_f32(-func_4(func_6(Struct_2(vec3<f32>(-411f, 1256f, 963f), vec2<bool>(global0.a, false)), -439f), func_2(Struct_3(Struct_1(true, var_0.x), Struct_1(global0.a, global0.b), true), vec3<bool>(global0.a, global0.a, global0.a)).a, vec4<bool>(true, global0.a, global0.a, true)).a.x), global0.a);
    var var_3 = _wgslsmith_clamp_vec3_u32(var_0.zyx, var_0.zxy, _wgslsmith_mult_vec3_u32(select(var_0.wwy, vec3<u32>(global0.b, 13540u, global0.b), var_2.x), vec3<u32>(1u, var_0.x, 38191u)) & var_0.yyx) << (abs(var_0.xyy) % vec3<u32>(32u));
    var_3 = firstLeadingBit(~var_0.xyz << ((min(var_0.zzz, var_0.xwy) | vec3<u32>(4294967295u, 0u, max(0u, 0u))) % vec3<u32>(32u)));
    var var_4 = Struct_3(func_6(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, 1847f, -1016f))), func_4(func_6(Struct_2(vec3<f32>(1000f, -1331f, -1348f), vec2<bool>(false, var_2.x)), -2247f), true, !vec4<bool>(var_2.x, true, global0.a, false)).b), _wgslsmith_f_op_f32(sign(-909f))), func_6(Struct_2(vec3<f32>(1f, 1f, 1f), select(func_5(Struct_2(vec3<f32>(-241f, 1174f, -1050f), vec2<bool>(global0.a, false))).b, func_5(Struct_2(vec3<f32>(-1239f, -284f, 735f), vec2<bool>(true, var_2.x))).b, any(vec4<bool>(var_2.x, true, var_2.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-495f)), 1f)))), !(~(~u_input.a.x) == u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer((-_wgslsmith_div_i32(u_input.b, -9359i) << (~(~global0.b) % 32u)) >> (~global0.b % 32u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(379f, -1704f)), _wgslsmith_f_op_f32(step(1656f, -115f))))), vec2<f32>(-642f, -170f))), _wgslsmith_add_u32(abs(var_4.b.b) ^ 16827u, reverseBits(~(~var_3.x))), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(51900u, 1u, var_3.x), vec3<u32>(1u, 4294967295u, var_4.a.b))) | 4294967295u, var_4.b.b), i32(-1i) * -23263i);
}

