struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(2239f, -724f), vec2<f32>(838f, 1301f), vec2<f32>(-1723f, 1000f), vec2<f32>(-1000f, 627f), vec2<f32>(-1216f, 891f), vec2<f32>(-1178f, -1000f), vec2<f32>(1000f, 227f), vec2<f32>(-418f, -380f), vec2<f32>(621f, 652f), vec2<f32>(504f, -872f), vec2<f32>(316f, -1207f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> bool {
    global0 = array<vec2<f32>, 11>();
    let var_0 = Struct_3(true, Struct_1(vec4<u32>(1u, 1u, ~(~1u), countOneBits(0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 85730u, 49422u), vec3<u32>(1u, 39486u, 15612u)) % 32u)), false, _wgslsmith_f_op_f32(-1f), true, 1u));
    let var_1 = ~(firstLeadingBit(_wgslsmith_mod_vec4_u32(var_0.b.a, var_0.b.a)) ^ abs(vec4<u32>(var_0.b.a.x, _wgslsmith_mult_u32(var_0.b.a.x, 18727u), ~var_0.b.a.x, ~var_0.b.a.x)));
    global0 = array<vec2<f32>, 11>();
    let var_2 = var_0.b.c;
    return !any(vec3<bool>(var_0.a, false, -1231f <= _wgslsmith_f_op_f32(-var_0.b.c)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec4<f32> {
    global0 = array<vec2<f32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(683f, 286f)), -1000f, true)), _wgslsmith_f_op_f32(-367f + -989f), all(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(648f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, 380f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-545f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 955f, -1751f, var_0), vec4<f32>(var_0, var_0, -128f, var_0), vec4<bool>(arg_1.x, arg_1.x, true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(645f, -1098f, var_0, var_0) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, -482f, -967f), vec4<f32>(var_0, var_0, var_0, -794f)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(select(var_0, -1000f, arg_1.x)), 664f), vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -2253f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f - -1221f)), _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-var_0)), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 176f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c))), arg_1.c) - vec2<f32>(-1287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 983f) - _wgslsmith_f_op_f32(arg_1.c * 546f)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_0, select(select(!vec2<bool>(arg_1.d, arg_1.b), vec2<bool>(true, true), arg_1.d), select(!vec2<bool>(false, arg_1.b), !vec2<bool>(true, arg_1.d), arg_1.b == false), !func_2()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.c, 116f, 1284f)))));
    var var_2 = any(vec2<bool>(true, arg_1.d));
    let var_3 = 1387f;
    global0 = array<vec2<f32>, 11>();
    return Struct_1(arg_1.a, 1u > _wgslsmith_mod_u32(51446u, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(0u, !vec2<bool>(arg_1.d, arg_1.d))).x + var_3), select(true, true, all(!vec2<bool>(false, arg_1.b))), _wgslsmith_sub_u32(arg_0, ~1u));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global0 = array<vec2<f32>, 11>();
    let var_0 = select(!arg_0.b, !all(vec2<bool>(true, all(vec4<bool>(false, arg_0.d, arg_0.b, true)))), arg_0.b);
    global0 = array<vec2<f32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c - var_1), var_1), _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(8137u, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(arg_0.a.xwy, arg_0.a.xxy)), 11u)]))));
    return Struct_3(!(arg_0.a.x >= 3193u), func_1(84398u, Struct_1(~arg_0.a, !any(vec3<bool>(arg_0.b, false, false)), 710f, true, ~arg_0.e >> (~1u % 32u))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = array<vec2<f32>, 11>();
    var var_0 = vec2<u32>(12962u, 22722u);
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 5498u, 1u), vec3<u32>(81158u, 18760u, var_0.x)), arg_0.b.a.xyz) ^ countOneBits(arg_2.x), ~(~abs(~arg_0.b.a.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-169f, arg_0.b.c, arg_0.b.c), vec3<f32>(-754f, 832f, -672f), arg_1)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -949f, arg_0.b.c)))) - vec3<f32>(func_1(88501u, Struct_1(arg_0.b.a, true, 117f, arg_1, 4294967295u)).c, _wgslsmith_f_op_f32(arg_0.b.c + 1743f), _wgslsmith_f_op_f32(-843f - 1775f)))), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.b.b, arg_0.b.b, true), arg_0.b.b), vec3<bool>(true, true, true), true), !(!vec3<bool>(arg_1, true, false)), true), select(!select(vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_1, arg_0.b.d, false), vec3<bool>(arg_1, arg_0.b.d, arg_0.b.d)), select(!vec3<bool>(true, false, arg_1), !vec3<bool>(arg_1, false, arg_1), !vec3<bool>(arg_1, true, true)), all(select(vec3<bool>(arg_1, arg_0.b.d, false), vec3<bool>(arg_0.a, false, true), vec3<bool>(true, arg_0.a, false)))), !arg_1), func_1(~_wgslsmith_dot_vec4_u32(arg_0.b.a ^ arg_0.b.a, vec4<u32>(arg_2.x, 35856u, 0u, arg_2.x) | arg_0.b.a), arg_0.b), select(!select(vec4<bool>(arg_0.b.b, false, arg_0.b.d, true), select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, arg_1, true, true), arg_1), arg_1 == true), select(!select(vec4<bool>(arg_1, arg_0.a, false, arg_0.a), vec4<bool>(true, arg_1, arg_1, arg_0.a), true), select(!vec4<bool>(false, arg_0.b.b, false, true), vec4<bool>(true, arg_1, false, false), true), _wgslsmith_f_op_f32(select(-763f, arg_0.b.c, false)) < 451f), select(!(!vec4<bool>(arg_0.b.d, arg_0.b.d, arg_1, arg_1)), vec4<bool>(arg_0.b.d, true, true, true), select(arg_0.b.a.x < arg_0.b.e, true, arg_0.b.d))));
    var_0 = func_4(func_4(func_1(arg_0.b.e >> (arg_2.x % 32u), arg_0.b)).b).b.a.ww | ~(select(vec2<u32>(var_1.c.e, var_0.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), func_1(arg_0.b.e, Struct_1(arg_0.b.a, true, 850f, arg_1, arg_0.b.a.x)).a.zz, !vec2<bool>(arg_1, var_1.d.x)) >> (abs(arg_2) % vec2<u32>(32u)));
    return !vec4<bool>(_wgslsmith_sub_u32(4294967295u, ~arg_0.b.a.x) <= _wgslsmith_sub_u32(~arg_0.b.e, 1u), 53178u <= min(~24821u, ~arg_0.b.a.x), !arg_0.a, any(var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wxy;
    let var_1 = all(func_5(func_4(func_1(min(22574u, 43099u), Struct_1(vec4<u32>(5025u, 0u, 4294967295u, 0u), false, 556f, true, 18947u))), true, _wgslsmith_div_vec2_u32(~vec2<u32>(2185u, 0u), max(reverseBits(vec2<u32>(99117u, 4294967295u)), ~vec2<u32>(1u, 1u))), vec2<i32>(min(abs(-1i), -23170i), 10366i)));
    var var_2 = vec3<f32>(-724f, _wgslsmith_f_op_f32(-1671f + -275f), func_4(Struct_1(reverseBits(~vec4<u32>(68097u, 0u, 16598u, 23918u)), var_1, func_1(_wgslsmith_mod_u32(4294967295u, 46916u), Struct_1(vec4<u32>(1u, 4294967295u, 60678u, 201u), true, 1000f, var_1, 81403u)).c, true | func_1(30891u, Struct_1(vec4<u32>(4294967295u, 20929u, 1u, 1u), var_1, -112f, var_1, 4294967295u)).d, 1u)).b.c);
    let var_3 = Struct_2(vec3<f32>(-1682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(4294967295u, vec2<bool>(true, false))).x)), var_2.x), !select(select(!vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, var_1), func_1(31288u, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 26135u), var_1, var_2.x, false, 33183u)).d), select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, var_1), var_1), !vec3<bool>(true, var_1, true), !vec3<bool>(true, true, var_1)), func_5(func_4(Struct_1(vec4<u32>(0u, 4294967295u, 33642u, 1u), var_1, var_2.x, var_1, 0u)), any(vec4<bool>(true, false, false, false)), min(vec2<u32>(0u, 4294967295u), vec2<u32>(21436u, 4294967295u)), u_input.a).zzz), func_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(21634u, 26391u), func_1(1u, func_1(1u, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), true, var_2.x, false, 88348u))).a.yy), func_1(1u, Struct_1(reverseBits(vec4<u32>(18465u, 4294967295u, 19350u, 70691u)), func_1(24512u, Struct_1(vec4<u32>(11u, 99330u, 24548u, 0u), true, var_2.x, false, 1u)).b, func_1(4294967295u, Struct_1(vec4<u32>(121505u, 1u, 34167u, 0u), true, var_2.x, var_1, 1u)).c, var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(24910u, 1u), vec2<u32>(45663u, 1u))))), vec4<bool>(true, all(!func_5(Struct_3(var_1, Struct_1(vec4<u32>(71779u, 1u, 30504u, 77010u), false, var_2.x, var_1, 58727u)), true, vec2<u32>(52134u, 1u), u_input.c.zy).yz), var_1, var_1));
    let var_4 = func_4(Struct_1(var_3.c.a, any(!select(var_3.b, var_3.b, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 488f), -998f))), func_1(_wgslsmith_div_u32(var_3.c.a.x, 42911u), var_3.c).b, select(var_3.c.a.x, func_1(min(23375u, var_3.c.a.x), var_3.c).a.x, true))).b;
    var var_5 = !select(vec2<bool>(false, !(!var_4.d)), var_3.d.zz, vec2<bool>(true, true));
    let var_6 = func_4(var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(14284u, 11u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a.yz + var_2.yz) + vec2<f32>(-826f, var_3.a.x)))), var_2.xy), var_3.a, ~firstLeadingBit(~var_6.b.a | _wgslsmith_clamp_vec4_u32(var_6.b.a, var_3.c.a, var_4.a)));
}

