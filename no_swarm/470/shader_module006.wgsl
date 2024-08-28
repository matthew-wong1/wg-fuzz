struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-28069i, 53409i, 1i), vec3<i32>(-4360i, -8325i, 0i), vec3<i32>(2147483647i, -18977i, -1i), vec3<i32>(6931i, 2147483647i, i32(-2147483648)), vec3<i32>(1200i, 2147483647i, 9450i), vec3<i32>(5760i, -19603i, 1i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(43352i, 1i, -13885i), vec3<i32>(i32(-2147483648), 20584i, i32(-2147483648)), vec3<i32>(40088i, 1i, 2605i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = vec2<bool>(true || all(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false);
    var_0 = select(select(!vec2<bool>(1u != u_input.d, select(var_0.x, true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false))), select(!vec2<bool>(true, var_0.x), vec2<bool>(true, 63005u < u_input.c), !var_0.x && !var_0.x)), select(select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)), !var_0.x), !select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), false), !(!vec2<bool>(var_0.x, var_0.x))), vec2<bool>(all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x)), any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), select(!(!vec2<bool>(var_0.x, false)), vec2<bool>(true, var_0.x), select(!vec2<bool>(var_0.x, false), vec2<bool>(true, true), false))), !select(vec2<bool>(var_0.x, any(vec4<bool>(var_0.x, true, var_0.x, false))), select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), true)), select(!vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x))));
    var var_1 = ~0u;
    var var_2 = vec3<bool>(false, !any(select(vec2<bool>(false, var_0.x), !vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false))), true);
    let var_3 = !vec4<bool>(var_2.x, true, all(vec2<bool>(!var_2.x, false)), var_0.x && var_0.x);
    return u_input.d;
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = func_3();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-410f)) - -2480f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, -556f, arg_0.b.a)), _wgslsmith_f_op_f32(trunc(522f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-127f * -1482f))))));
    var_1 = -1000f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-552f, -544f, -1487f) + vec3<f32>(-698f, 462f, -677f))))), !(!select(select(vec4<bool>(arg_0.b.a, arg_0.a.x, false, true), vec4<bool>(true, false, true, arg_0.a.x), true), !vec4<bool>(arg_0.a.x, true, false, false), arg_0.b.a)), min(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(69193u, u_input.d) << (vec2<u32>(36789u, 15804u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 13770u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(28354u, 72073u), vec2<u32>(u_input.a, u_input.d)), vec2<u32>(u_input.a, 1u))), vec2<u32>(min(max(1u, u_input.a), reverseBits(u_input.a)), _wgslsmith_sub_u32(select(1u, u_input.d, false), firstLeadingBit(6533u)))));
    global1 = array<vec3<i32>, 12>();
    return -12974i;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = u_input.d;
    let var_1 = -firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(max(u_input.b, arg_0), u_input.b), func_2(Struct_4(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), arg_1)), arg_0 >> (u_input.d % 32u)));
    var var_2 = !(all(select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(true, arg_1.a, true, arg_1.a), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a))) && any(!vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))) || arg_1.a;
    let var_3 = Struct_3(arg_1.a);
    let var_4 = !vec2<bool>(any(vec3<bool>(var_3.a, true, !var_3.a)), arg_1.a & (select(var_3.a, var_3.a, var_3.a) | !var_3.a));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(564f, -518f, -159f), vec3<f32>(241f, 516f, 271f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-848f, 1445f, -1001f), vec3<f32>(707f, -273f, -194f)))))), !select(!vec4<bool>(false, true, arg_1.a, var_4.x), !vec4<bool>(var_3.a, arg_1.a, false, true), all(var_4)), ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(12894u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(5551u, u_input.d), vec2<u32>(u_input.d, u_input.c)), ~vec2<u32>(u_input.c, u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1736f, 253f, -872f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -806f, 1318f) - vec3<f32>(938f, -467f, 1393f))))), vec4<bool>(any(vec4<bool>(false, true, false, var_4.x)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(var_3.a, false, var_4.x, var_3.a), false)), false, all(!vec4<bool>(true, false, var_4.x, arg_1.a))), vec2<u32>(func_3(), u_input.a) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(113198u, 28522u), vec2<u32>(u_input.c, u_input.a), vec2<u32>(15263u, 31809u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1690f, 390f, -1210f) + vec3<f32>(807f, -504f, 657f)) * vec3<f32>(1016f, -411f, -568f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 2102f, 618f), vec3<f32>(-1104f, -703f, -1045f))))), select(!vec4<bool>(var_4.x, false, false, var_4.x), select(!vec4<bool>(arg_1.a, var_3.a, false, var_3.a), !vec4<bool>(false, arg_1.a, false, var_3.a), vec4<bool>(true, false, true, var_3.a)), !(!vec4<bool>(var_3.a, var_3.a, var_4.x, false))), vec2<u32>(~firstTrailingBit(0u), ~u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1209f, _wgslsmith_f_op_f32(-1000f - 210f), _wgslsmith_f_op_f32(706f * -701f)))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, arg_1.a, var_4.x, arg_1.a), arg_1.a), vec4<bool>(var_3.a, true, arg_1.a, false), var_3.a), !select(vec4<bool>(true, true, true, arg_1.a), vec4<bool>(arg_1.a, var_4.x, arg_1.a, true), arg_1.a), select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_3.a, arg_1.a, arg_1.a, var_4.x), false), select(vec4<bool>(true, true, var_3.a, arg_1.a), vec4<bool>(false, true, var_3.a, var_3.a), vec4<bool>(arg_1.a, arg_1.a, true, var_3.a)), !vec4<bool>(true, false, var_4.x, arg_1.a))), firstLeadingBit(~vec2<u32>(u_input.c, u_input.a) >> (~vec2<u32>(1u, u_input.c) % vec2<u32>(32u)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.d.a), select(arg_1.a.b, vec4<bool>(any(arg_1.a.b.zwx), arg_1.c.b.x, !arg_1.c.b.x, true), !vec4<bool>(arg_1.b.b.x, arg_1.a.b.x, false, true)), arg_1.c.c), func_1(arg_0, Struct_3(arg_1.c.b.x)).a, arg_1.b, func_1(24292i, Struct_3(arg_1.d.b.x)).a);
    global0 = array<vec3<i32>, 18>();
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, -1064f, arg_1.d.a.x, arg_1.a.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.a.x, -276f, var_0.d.a.x, arg_1.a.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, arg_1.c.a.x, -707f, 1573f) - vec4<f32>(-375f, arg_1.a.a.x, var_0.d.a.x, 363f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(var_0.a.a.x * arg_1.c.a.x), _wgslsmith_div_f32(302f, 149f), -728f))));
    var var_2 = ~(59686u >> (countOneBits(firstTrailingBit(62476u)) % 32u));
    return arg_1.d.b.wxw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 12>();
    let var_0 = !vec2<bool>(any(func_4(u_input.b, func_1(0i, Struct_3(false)))), true == (_wgslsmith_div_i32(u_input.e, 1i) <= 13809i));
    global1 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 18>();
    var var_1 = any(vec2<bool>(any(func_4(-u_input.b, func_1(u_input.e, Struct_3(true)))), func_1(abs(i32(-1i) * -1i), Struct_3(true)).a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f - -215f)) * -1114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2046f - -475f), _wgslsmith_f_op_f32(ceil(-775f)))))), vec2<i32>(~(i32(-1i) * -1i), abs(firstLeadingBit(u_input.e))) ^ -min(-vec2<i32>(0i, u_input.e), select(vec2<i32>(-35985i, u_input.e), vec2<i32>(u_input.e, -19053i), var_0)), reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 9426u), vec3<u32>(0u, u_input.c, u_input.c) << (vec3<u32>(16651u, 4294967295u, u_input.c) % vec3<u32>(32u)), vec3<u32>(u_input.c, 1u, u_input.a) >> (vec3<u32>(19702u, 104892u, u_input.c) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.d, 4294967295u, 4294967295u)))), 1918f, vec2<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e) >> (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), vec2<i32>(1577i, 41555i))), max(-(u_input.e | 1i), func_2(Struct_4(vec3<bool>(true, var_0.x, true), Struct_3(true))))));
}

