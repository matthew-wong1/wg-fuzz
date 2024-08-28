struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, false, false, false));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-714f, 1000f), vec3<u32>(2488u, 34080u, 2871u), true, vec3<bool>(true, false, true), vec3<f32>(763f, 1074f, 2135f));

var<private> global2: array<i32, 9> = array<i32, 9>(0i, 28776i, 59267i, i32(-2147483648), -18284i, i32(-2147483648), 21197i, 1i, 27042i);

var<private> global3: array<bool, 23> = array<bool, 23>(true, false, false, false, false, true, true, true, false, true, false, false, false, true, true, true, true, true, false, true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    global2 = array<i32, 9>();
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_0.e.x * 1170f), global1.a.x), vec3<u32>(~(~(~u_input.b)), global1.b.x, 0u), global1.c, vec3<bool>(global1.c, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1054f)), _wgslsmith_f_op_f32(f32(-1f) * -304f)), 1f)));
    var var_0 = !vec4<bool>(arg_0.c, arg_0.d.x, 15398i > global2[_wgslsmith_index_u32(arg_0.b.x, 9u)], true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, global1.a.x, -405f, global1.a.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(758f, -374f, arg_0.a.x, -562f), vec4<f32>(-1000f, global1.e.x, global1.e.x, arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.x, -569f, arg_0.e.x, -2543f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, global1.e.x, -1008f))))), !vec4<bool>(true, !arg_0.c, select(arg_0.c, arg_0.d.x, true), true))));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(min(var_2.a.x, var_1.x)))))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = array<bool, 23>();
    global3 = array<bool, 23>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global1.b, true, global1.d, vec3<f32>(global1.a.x, global1.a.x, 1068f)), -71670i)), _wgslsmith_div_f32(global1.a.x, global1.a.x))))), select(~_wgslsmith_div_vec3_u32(global1.b, vec3<u32>(arg_0, global1.b.x, 21013u)), u_input.a.xxx & u_input.a.zwy, !global1.d), !global3[_wgslsmith_index_u32(0u, 23u)], !global1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, 1589f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.e)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, -130f, -744f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(507f, var_0.a.x) + vec2<f32>(782f, -797f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.e.yx)) - vec2<f32>(157f, var_0.e.x)))), abs(vec3<u32>(_wgslsmith_add_u32(4294967295u & var_0.b.x, var_0.b.x), ~arg_0 & ~1u, _wgslsmith_clamp_u32(global1.b.x, global1.b.x, select(arg_0, global1.b.x, true)))), all(!select(!global0[_wgslsmith_index_u32(4294967295u, 1u)], !global0[_wgslsmith_index_u32(24000u, 1u)], select(vec4<bool>(true, var_0.c, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global3[_wgslsmith_index_u32(var_0.b.x, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 23u)], false, var_0.c, global1.c), false))), vec3<bool>(var_0.c, !global3[_wgslsmith_index_u32(28515u, 23u)], any(vec4<bool>(true, true, !global1.d.x, var_0.a.x != -367f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global1.e, global1.e))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e) + vec3<f32>(var_0.e.x, 740f, 184f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-139f, -481f, global1.e.x), var_0.e)))))));
    global1 = var_1;
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-666f + -1035f))), 847f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, global1.a.x)))), var_1.b, all(vec3<bool>(false | (arg_0 <= 4294967295u), !(var_1.a.x <= global1.a.x), var_1.a.x > _wgslsmith_f_op_f32(round(-1000f)))), !vec3<bool>(false, true, all(select(vec4<bool>(true, false, var_0.d.x, true), vec4<bool>(global1.d.x, var_1.c, true, true), global0[_wgslsmith_index_u32(global1.b.x, 1u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, 1017f, var_1.e.x)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_div_vec3_f32(var_0.e, var_0.e), var_1.c))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(!(!arg_3.d.yz), select(vec2<bool>(true, true), select(arg_3.d.yz, !global1.d.yz, arg_1.d.x), vec2<bool>(all(vec2<bool>(true, true)), false)), (global1.b.x >= countOneBits(62960u)) || !global3[_wgslsmith_index_u32(global1.b.x, 23u)]);
    var var_1 = 0u;
    global3 = array<bool, 23>();
    var_1 = firstLeadingBit(4294967295u);
    return func_2(arg_1.b.x);
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e - vec3<f32>(global1.a.x, global1.e.x, -1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e + global1.e), global1.e)))));
    let var_1 = abs(global1.b.x);
    let var_2 = func_4(var_0.x, func_2(~1u), 677f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(var_0.x, -1000f), vec3<u32>(u_input.a.x, 40057u, 12858u), false, vec3<bool>(global1.c, true, true), global1.e), 2147483647i)))), u_input.a.xww, func_2(4294967295u).d.x, select(global1.d, select(select(global1.d, vec3<bool>(false, false, false), vec3<bool>(true, global1.c, true)), func_2(4294967295u).d, global3[_wgslsmith_index_u32(4294967295u | global1.b.x, 23u)]), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(185f, 1396f, global1.a.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.e.x, 1793f, global1.e.x))), global1.d.x)))));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_sub_u32(select(_wgslsmith_dot_vec4_u32(u_input.a, arg_0), max(arg_0.x, global1.b.x), !global3[_wgslsmith_index_u32(47138u, 23u)]), _wgslsmith_clamp_u32(4294967295u, u_input.c, var_2.b.x)), var_2.b.x), firstLeadingBit(vec3<u32>(u_input.a.x, ~arg_0.x, _wgslsmith_mod_u32(var_2.b.x, 4294967295u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.e) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, 488f, var_2.a.x), var_2.e, global2[_wgslsmith_index_u32(arg_0.x, 9u)] == global2[_wgslsmith_index_u32(62233u, 9u)]))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-271f, var_0.x) + _wgslsmith_f_op_f32(global1.e.x - global1.a.x)), global1.a.x, -523f)));
    return ~var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, ~u_input.a.x, u_input.c | max(u_input.c, 5704u)), ~(~min(vec4<u32>(0u, 62655u, 49038u, global1.b.x), vec4<u32>(0u, 23251u, 43979u, u_input.a.x)))), global1.b.x, func_1(vec4<u32>(global1.b.x, ~global1.b.x, 1u, 0u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, abs(4294967295u)), ~vec2<u32>(global1.b.x, 4294967295u) & vec2<u32>(27527u, 1u)), min(~(~u_input.a.x), ~u_input.b)));
    var var_1 = func_4(_wgslsmith_f_op_f32(step(global1.e.x, global1.a.x)), func_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.x, var_0.x), vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(0u, 1u)), var_0.xz), ~(68858u >> (u_input.b % 32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(294f * -871f), 515f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.e.yz))), abs(global1.b), any(!global0[_wgslsmith_index_u32(global1.b.x, 1u)]), global1.d, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.x, -1000f, global1.a.x))) * vec3<f32>(1000f, global1.e.x, 1569f))))));
    let var_2 = false;
    global1 = func_2(abs(_wgslsmith_div_u32(~u_input.b >> (1u % 32u), _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(u_input.b, var_1.b.x)))));
    let var_3 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1870f), func_4(-580f, Struct_1(vec2<f32>(-450f, _wgslsmith_f_op_f32(715f - 1421f)), var_1.b, func_2(var_1.b.x).c, func_2(var_0.x).d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-797f, 115f, -660f) - vec3<f32>(899f, 322f, -720f)), global1.e)), 1241f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, var_1.b.x, var_1.b.x), countOneBits(vec3<u32>(var_0.x, 55153u, var_1.b.x))), global1.c, !vec3<bool>(global1.c, global3[_wgslsmith_index_u32(global1.b.x, 23u)], false), var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.e.x), var_1.a.x)), (countOneBits(var_1.b) ^ max(vec3<u32>(global1.b.x, 29615u, u_input.b), u_input.a.xxz)) << (~global1.b % vec3<u32>(32u)), any(func_4(-697f, func_2(u_input.a.x), _wgslsmith_f_op_f32(-932f * 1422f), func_2(var_0.x)).d), vec3<bool>(!(var_0.x < 71339u), var_1.d.x, true), global1.e));
    let var_4 = var_3;
    let var_5 = func_4(global1.e.x, Struct_1(var_1.a, vec3<u32>(1u, 1u, abs(_wgslsmith_clamp_u32(51883u, global1.b.x, u_input.b))), any(vec2<bool>(var_2, all(var_3.d))), global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-726f, global1.e.x, global1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x + var_4.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(271f, 218f)), _wgslsmith_f_op_f32(1717f - 849f))))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(2974u >> (((51613u << (var_1.b.x % 32u)) | var_5.b.x) % 32u), min(global2[_wgslsmith_index_u32((func_1(var_0) >> (_wgslsmith_add_u32(u_input.c, 96199u) % 32u)) << (firstTrailingBit(~1u) % 32u), 9u)], ~firstLeadingBit(1i)));
}

