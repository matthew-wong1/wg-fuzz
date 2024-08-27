struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-19136i, 1i, 30432i, 14694i), vec4<i32>(2147483647i, -46152i, 363i, 28988i), vec4<i32>(-8807i, -3608i, -29670i, 1i), vec4<i32>(1i, -40564i, -1i, 11156i), vec4<i32>(-120200i, -1i, -1i, 2147483647i));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-29669i), Struct_1(1i), Struct_1(0i), Struct_1(12295i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(1i), Struct_1(i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(arg_0.x | !((0u ^ u_input.b) > global2.x), global3[_wgslsmith_index_u32(select(_wgslsmith_add_u32((u_input.b | 1u) << (~global2.x % 32u), _wgslsmith_div_u32(~u_input.b, 56508u)), _wgslsmith_dot_vec2_u32(~select(global2.yy, vec2<u32>(u_input.b, 4294967295u), true), global2.zy), !arg_0.x), 10u)]);
    let var_1 = -17157i;
    global2 = ~(~vec4<u32>(~u_input.b, reverseBits(4294967295u ^ global2.x), abs(u_input.b | u_input.b), ~_wgslsmith_clamp_u32(0u, global2.x, global2.x)));
    var_0 = Struct_2(var_0.a, var_0.b);
    let var_2 = true;
    return Struct_2(-(~_wgslsmith_mod_i32(0i, var_0.b.a)) <= -13425i, global3[_wgslsmith_index_u32(global2.x | u_input.b, 10u)]);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> bool {
    var var_0 = !(!select(vec4<bool>(arg_2.x >= arg_2.x, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true)));
    var_0 = select(!(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, true, var_0.x)))), vec4<bool>(any(!select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true)), all(select(var_0.xw, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false))) && true, false, !var_0.x), var_0.x);
    var var_1 = vec4<u32>(global2.x, 0u, 70546u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2.yy, ~vec2<u32>(u_input.b, arg_0)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 43226u), vec2<u32>(u_input.b, u_input.b)))) | ~(~((vec4<u32>(25153u, 0u, u_input.b, 1u) << (vec4<u32>(arg_0, 0u, 1u, arg_0) % vec4<u32>(32u))) >> (~vec4<u32>(arg_0, 0u, 0u, 4294967295u) % vec4<u32>(32u))));
    var_0 = vec4<bool>(var_0.x, false, var_0.x, false);
    var var_2 = var_0.wz;
    return var_2.x;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_2 {
    global3 = array<Struct_1, 10>();
    let var_0 = func_2(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), !(arg_1.x == u_input.b), true));
    let var_1 = firstLeadingBit(global1[_wgslsmith_index_u32(arg_1.x, 5u)]);
    global2 = _wgslsmith_add_vec4_u32(abs(reverseBits(vec4<u32>(48261u, 0u, u_input.b, u_input.b))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, global2.x, 10029u, arg_1.x) | vec4<u32>(u_input.b, global2.x, 64009u, 1u), vec4<u32>(arg_1.x, 1055u, u_input.b, 4294967295u) << (vec4<u32>(0u, 1u, 62897u, arg_1.x) % vec4<u32>(32u)))) << (_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1.x, global2.x, u_input.b), ~vec4<u32>(u_input.b, 0u, global2.x, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.xz, arg_1), 1u), abs(_wgslsmith_sub_u32(3484u, arg_1.x)), max(~global2.x, _wgslsmith_add_u32(1u, 0u)), ~(~global2.x))) % vec4<u32>(32u));
    global1 = array<vec4<i32>, 5>();
    return Struct_2(func_3(global2.x, ~(~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(738f)) - 302f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -719f))), _wgslsmith_f_op_f32(-1422f - arg_0))), var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    global1 = array<vec4<i32>, 5>();
    global2 = vec4<u32>(1124u, 1u, 23203u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, max(19809u, global2.x)), global2.yw ^ select(global2.wz, global2.zx, vec2<bool>(arg_1.a.x, true)))));
    global1 = array<vec4<i32>, 5>();
    let var_0 = u_input.a.x >> (4294967295u % 32u);
    let var_1 = vec4<i32>(reverseBits(reverseBits(arg_1.b.b.a)), 45772i, var_0, -49283i) << (vec4<u32>(25288u, 1u, 1u, _wgslsmith_mult_u32(global2.x, ~global2.x ^ u_input.b)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-350f * -212f), -1004f))), _wgslsmith_f_op_f32(283f + -354f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f - -423f)) - -1398f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2490f)) - _wgslsmith_f_op_f32(func_4(func_1(1175f, vec2<u32>(global2.x, global2.x)), Struct_3(vec4<bool>(false, true, false, true), Struct_2(false, Struct_1(u_input.a.x)))))))));
    global1 = array<vec4<i32>, 5>();
    let var_1 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 800u) ^ _wgslsmith_add_vec2_u32(global2.zx, vec2<u32>(u_input.b, 4040u)), _wgslsmith_sub_vec2_u32(vec2<u32>(39870u, u_input.b), vec2<u32>(u_input.b, 4294967295u)) | (global2.xx >> (vec2<u32>(global2.x, u_input.b) % vec2<u32>(32u))))), 10u)];
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(true, func_1(754f, vec2<u32>(100938u, global2.x)).b), Struct_3(vec4<bool>(false, true, false, true), Struct_2(false, Struct_1(15732i))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) + _wgslsmith_f_op_f32(func_4(Struct_2(false, global3[_wgslsmith_index_u32(1u, 10u)]), Struct_3(vec4<bool>(true, false, true, true), Struct_2(false, global3[_wgslsmith_index_u32(49244u, 10u)])))))))));
    let var_3 = ~((u_input.b << ((27863u | abs(u_input.b)) % 32u)) << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global2.xzz), abs(1u >> (u_input.b % 32u)), ~vec3<u32>(var_3, u_input.b, ~reverseBits(0u)), 24688i);
}

