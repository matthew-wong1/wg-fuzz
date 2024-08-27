struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(1690f, 1508f, 253f), vec3<f32>(-156f, 1978f, -606f), vec3<f32>(1364f, -797f, -1000f), vec3<f32>(-1649f, -1013f, 908f), vec3<f32>(-779f, -1000f, -1670f), vec3<f32>(-244f, -367f, -741f), vec3<f32>(-1000f, 1754f, 968f), vec3<f32>(-568f, 1000f, -2016f), vec3<f32>(505f, 949f, -208f), vec3<f32>(-1607f, 642f, -407f), vec3<f32>(-2313f, 1054f, 857f), vec3<f32>(705f, -1388f, -450f), vec3<f32>(360f, -1481f, -1322f), vec3<f32>(714f, 2328f, 1000f), vec3<f32>(1438f, -1938f, -202f));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1u, 7902i, false, vec2<f32>(948f, 392f)));

var<private> global3: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec3<f32>(-1431f, 448f, 685f), false, Struct_2(vec3<f32>(-361f, -604f, -865f), Struct_1(1u, 49796i, true, vec2<f32>(313f, 182f)), -435f)), Struct_4(vec3<f32>(-1357f, 319f, -643f), true, Struct_2(vec3<f32>(1115f, -898f, -263f), Struct_1(1u, 0i, false, vec2<f32>(-126f, 2108f)), 1441f)), Struct_4(vec3<f32>(-273f, 2077f, 898f), false, Struct_2(vec3<f32>(-179f, 727f, 674f), Struct_1(1u, 14616i, false, vec2<f32>(-307f, 1152f)), 1912f)), Struct_4(vec3<f32>(435f, 695f, -1495f), false, Struct_2(vec3<f32>(393f, -1000f, -409f), Struct_1(1u, 3166i, false, vec2<f32>(1249f, -1341f)), -1000f)), Struct_4(vec3<f32>(946f, 857f, 1036f), true, Struct_2(vec3<f32>(-205f, 177f, -3188f), Struct_1(68485u, -1i, false, vec2<f32>(478f, 295f)), 1125f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-253f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -151f, 481f)), global0[_wgslsmith_index_u32(57992u, 15u)], select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, true)))))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~36803u)), 1u)], _wgslsmith_f_op_f32(-arg_0.x)), vec4<u32>(41768u, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 4294967295u) << (select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(0u, 0u), vec2<bool>(true, false)) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, 17u)), abs(u_input.d.x)));
    var var_1 = u_input.d.x;
    global2 = array<Struct_1, 1>();
    var var_2 = Struct_3(Struct_2(vec3<f32>(arg_0.x, var_0.a.a.x, var_0.a.c), global2[_wgslsmith_index_u32(firstLeadingBit(~(~var_0.a.b.a)), 1u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(1653f)))))), vec4<u32>(~u_input.c.x, 1u, ~(var_0.a.b.a | ~u_input.c.x), _wgslsmith_dot_vec2_u32(countOneBits(var_0.b.wx), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, var_0.a.b.a), vec2<u32>(4294967295u, u_input.d.x))))));
    global3 = array<Struct_4, 5>();
    return !(!select(!select(vec2<bool>(var_0.a.b.c, true), vec2<bool>(var_2.a.b.c, false), global1.x), select(select(vec2<bool>(false, var_2.a.b.c), vec2<bool>(true, false), global1.x), vec2<bool>(var_2.a.b.c, false), vec2<bool>(false, var_2.a.b.c)), !all(vec4<bool>(global1.x, false, false, var_0.a.b.c))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_4 {
    global1 = select(!(!vec2<bool>(!global1.x, false)), select(select(select(vec2<bool>(global1.x, true), func_3(vec2<f32>(-769f, 380f), arg_0, arg_0.x, arg_0), select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), global1.x)), func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-769f, -1000f), vec2<f32>(132f, -767f))), ~vec2<i32>(arg_0.x, -2147483647i), -1966i & u_input.a, vec2<i32>(-1i, u_input.e)), true), !select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), true)), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 139f))), vec2<i32>(1i, 1i), ~firstLeadingBit(-1i), -vec2<i32>(u_input.e, 43203i))), vec2<bool>(true, true));
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1193f, -628f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, -178f))))), ~vec2<i32>(-_wgslsmith_clamp_i32(-23388i, u_input.e, u_input.a), _wgslsmith_div_i32(-1i << (1u % 32u), u_input.e)), -_wgslsmith_dot_vec3_i32(vec3<i32>(select(u_input.a, -2147483647i, global1.x), arg_0.x, u_input.e), vec3<i32>(i32(-1i) * -1i, arg_0.x, min(arg_0.x, arg_0.x))), arg_0 ^ -vec2<i32>(_wgslsmith_mod_i32(-641i, -22315i), arg_0.x)).x;
    global1 = vec2<bool>(true, ~(~18606u << (u_input.c.x % 32u)) > u_input.d.x);
    global0 = array<vec3<f32>, 15>();
    var var_1 = _wgslsmith_clamp_i32(u_input.a, u_input.a, arg_0.x);
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-606f * 108f) - _wgslsmith_f_op_f32(-665f - _wgslsmith_div_f32(-2814f, 1194f))), -1077f, _wgslsmith_f_op_f32(1419f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)))), true, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_f_op_f32(max(-2607f, _wgslsmith_f_op_f32(f32(-1f) * -880f))), -893f), global2[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_f_op_f32(-1754f - -1867f)));
}

fn func_1(arg_0: Struct_4) -> u32 {
    global2 = array<Struct_1, 1>();
    let var_0 = func_2(~(~(vec2<i32>(-1i) * -vec2<i32>(u_input.e, 1i))));
    return _wgslsmith_add_u32(select(_wgslsmith_mod_u32(u_input.c.x, 100259u) << (15930u % 32u), arg_0.c.b.a, !arg_0.c.b.c), ~var_0.c.b.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5) -> StorageBuffer {
    var var_0 = arg_0.x;
    let var_1 = global1.x;
    var var_2 = arg_1.b.c.b.a;
    var var_3 = 50205u;
    let var_4 = -664f;
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, var_4, -956f, var_4))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(964f, 1000f, -514f, arg_1.b.a.x), vec4<f32>(arg_1.a, var_4, 1000f, var_4))) * vec4<f32>(arg_1.a, var_4, arg_1.b.a.x, 803f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4, arg_1.b.c.b.d.x, arg_1.a, -1897f), vec4<f32>(arg_1.a, var_4, arg_1.b.c.b.d.x, 1676f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b.a.x, 299f, var_4, -1008f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 788f, var_4)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(251f - 327f))) - -1079f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f) * -573f), 978f))));
    let var_1 = countOneBits(32096u & (~u_input.c.x >> (~u_input.d.x % 32u))) | u_input.c.x;
    global3 = array<Struct_4, 5>();
    let x = u_input.a;
    s_output = func_4(vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, var_1, var_1), 0u), 0u, 1u), Struct_5(_wgslsmith_f_op_f32(min(var_0, -168f)), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, var_0, var_0)), true, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.d.x, 67422u), vec3<u32>(var_1, u_input.d.x, u_input.d.x)), 15u)], global2[_wgslsmith_index_u32(func_1(Struct_4(vec3<f32>(var_0, var_0, var_0), global1.x, Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], Struct_1(1u, 0i, global1.x, vec2<f32>(-1153f, var_0)), var_0))), 1u)], _wgslsmith_f_op_f32(-var_0)))));
}

