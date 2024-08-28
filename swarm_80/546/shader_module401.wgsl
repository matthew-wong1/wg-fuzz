struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(7629u, -12934i, false, vec3<bool>(true, false, true), vec2<i32>(25009i, -3198i))), Struct_2(Struct_1(0u, 1i, true, vec3<bool>(false, true, false), vec2<i32>(-1i, 0i))), Struct_2(Struct_1(4294967295u, -26197i, true, vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(1u, 2683i, true, vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), 24641i))), Struct_2(Struct_1(0u, i32(-2147483648), true, vec3<bool>(false, true, false), vec2<i32>(-8599i, -26650i))), Struct_2(Struct_1(1u, 0i, false, vec3<bool>(true, true, true), vec2<i32>(-5694i, 0i))), Struct_2(Struct_1(29310u, -36930i, false, vec3<bool>(true, false, true), vec2<i32>(0i, -1i))), Struct_2(Struct_1(0u, 0i, true, vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), -40715i))), Struct_2(Struct_1(4294967295u, -36075i, false, vec3<bool>(true, false, false), vec2<i32>(1i, 1i))), Struct_2(Struct_1(33206u, 40828i, false, vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(1u, 0i, false, vec3<bool>(true, false, false), vec2<i32>(0i, -24490i))), Struct_2(Struct_1(0u, 111i, false, vec3<bool>(false, true, true), vec2<i32>(2836i, 45021i))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = 731f;
    let var_1 = vec3<bool>(all(vec4<bool>(global0.a.c, true | global0.c.d.x, global0.b.d.x, false)), false, global0.c.c);
    var var_2 = vec2<f32>(846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    global1 = array<Struct_2, 12>();
    let var_3 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(50666u, 21341u, 1633u), _wgslsmith_sub_vec3_u32(vec3<u32>(15107u, u_input.b.x, 1u), vec3<u32>(8986u, global0.a.a, 1u))), global0.b.e.x, any(!vec2<bool>(false, global0.a.c)), vec3<bool>(var_1.x, !(global0.a.d.x & var_1.x), ~u_input.b.x == 4294967295u), _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-12188i, u_input.a.x)), _wgslsmith_mult_vec2_i32(u_input.c.zw, vec2<i32>(global0.a.b, global0.c.e.x) << (u_input.b % vec2<u32>(32u))), select(u_input.a, vec2<i32>(global0.c.e.x, 0i), false))));
    return !(!(!select(global0.a.c, all(vec2<bool>(true, false)), false)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, global0.b.a, 0u), vec3<u32>(u_input.b.x, 4294967295u, global0.b.a)), _wgslsmith_mod_i32(arg_2, 0i), !func_3(), !(!global0.c.d), countOneBits(_wgslsmith_div_vec2_i32(global0.c.e, u_input.a)))), arg_2 | u_input.a.x, Struct_3(Struct_1(select(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_mult_u32(0u, 4294967295u), !arg_0), 0i, arg_0, !select(global0.b.d, vec3<bool>(arg_0, true, global0.b.c), global0.c.d), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(2147483647i, 0i)) ^ global0.c.e), global0.c, global0.a), -43777i);
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.a.a, global0.c.a, 0u, ~var_0.c.b.a ^ ~0u), ~vec4<u32>(select(79635u, u_input.b.x, true), reverseBits(4294967295u), _wgslsmith_mod_u32(1u, 22499u), var_0.c.c.a)) << ((firstLeadingBit(abs(select(vec4<u32>(101599u, global0.b.a, 4294967295u, global0.b.a), vec4<u32>(u_input.b.x, 11044u, u_input.b.x, global0.a.a), vec4<bool>(false, true, arg_0, true)))) << ((~vec4<u32>(4294967295u, 31745u, u_input.b.x, 1u) << (~(~vec4<u32>(global0.c.a, 14440u, 43051u, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2255f - arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-828f + -702f)), _wgslsmith_f_op_f32(-arg_1))));
    var_0 = Struct_4(Struct_2(var_0.a.a), 2147483647i, var_0.c, var_0.d);
    let var_3 = var_0.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 182f, var_2.x, arg_1), vec4<f32>(463f, 589f, arg_1, -545f))))))));
}

fn func_1() -> u32 {
    var var_0 = Struct_2(global0.a);
    var var_1 = !(!global0.a.c);
    var var_2 = ~(-12357i & var_0.a.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(-234f)), _wgslsmith_f_op_f32(1000f + 677f), _wgslsmith_f_op_f32(f32(-1f) * -1168f), -978f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global0.a.d.x, -789f, 2147483647i)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 1016f, 2117f, 436f)))))));
    var_2 = _wgslsmith_dot_vec2_i32(-var_0.a.e, max(-select(vec2<i32>(u_input.a.x, 2147483647i), _wgslsmith_mult_vec2_i32(var_0.a.e, vec2<i32>(var_0.a.b, 22958i)), global0.a.d.yz), ~(~abs(global0.b.e))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(31329u, 41900u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b)), select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(49749u, 4294967295u)), min(vec2<u32>(0u, 60983u), vec2<u32>(global0.c.a, var_0.a.a)), var_0.a.c), ~(~vec2<u32>(global0.c.a, var_0.a.a)))), u_input.b);
}

fn func_4(arg_0: u32) -> Struct_3 {
    global0 = Struct_3(global0.a, global0.a, global0.c);
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_mod_u32(u_input.b.x << (countOneBits(_wgslsmith_div_u32(global0.a.a, 4294967295u)) % 32u), arg_0) ^ arg_0;
    return Struct_3(global0.b, global0.a, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1437f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, -592f)) + vec2<f32>(2157f, 968f))) - vec2<f32>(1f, 1792f)));
    global0 = func_4(func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1405f, var_0.x, -633f, -422f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -409f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, 973f, 1428f))), true)))))));
    var var_2 = global0.c.d.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) + var_1.yx) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), var_1.x), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(max(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(global0.b.e.x, global0.b.b, -23795i, -53199i)), vec4<i32>(-1i, 46022i, global0.c.e.x ^ 2147483647i, -2147483647i)), min(vec4<i32>(~global0.b.e.x, -2147483647i, -44441i, global0.c.b), vec4<i32>(max(-53555i, global0.b.e.x), reverseBits(0i), u_input.c.x, -u_input.c.x)), (u_input.c >> (vec4<u32>(66008u, 1u, u_input.b.x, 1u) % vec4<u32>(32u))) ^ u_input.c), _wgslsmith_f_op_f32(floor(1938f)), _wgslsmith_f_op_vec4_f32(func_2(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(-2147483647i, global0.a.e.x ^ global0.b.b)))).xzx, u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1.x))) * vec2<f32>(_wgslsmith_f_op_f32(select(-2612f, var_1.x, global0.a.d.x)), 486f)));
}

