struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, true, true, false, true, false, false, true, true, false, false, false, true, false, true, false, true, false, true, false, true, true, false);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec4<f32>, 25>;

var<private> global4: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(6430u, 62435u), vec2<u32>(24482u, 35496u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 36381u), vec2<u32>(50361u, 60279u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(0u, 15724u), vec2<u32>(50503u, 1u), vec2<u32>(7970u, 1u), vec2<u32>(569u, 0u), vec2<u32>(0u, 7826u), vec2<u32>(44449u, 52880u), vec2<u32>(4294967295u, 16578u), vec2<u32>(20554u, 1u), vec2<u32>(1u, 64071u), vec2<u32>(43388u, 4294967295u), vec2<u32>(3148u, 30787u), vec2<u32>(1u, 67520u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(61855u, 24718u), vec2<u32>(39666u, 4294967295u), vec2<u32>(61895u, 0u), vec2<u32>(0u, 1u), vec2<u32>(58100u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 42235u), vec2<u32>(1u, 126793u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    global3 = array<vec4<f32>, 25>();
    let var_0 = arg_0;
    let var_1 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(54494u, var_0.b), ~arg_0.b, 1u), ~(~u_input.c)));
    global4 = array<vec2<u32>, 29>();
    let var_2 = Struct_3(u_input.a.x, _wgslsmith_clamp_i32(51178i, 1i, firstLeadingBit(70777i)), Struct_1(~(vec3<u32>(arg_1, global1.x, var_1.x) & u_input.c), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c * arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -2569f), var_0.c))), ~1i ^ _wgslsmith_dot_vec3_i32(u_input.a, countOneBits(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)))));
    return select(!vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 24u)])) && (global0[_wgslsmith_index_u32(0u, 24u)] || global0[_wgslsmith_index_u32(4294967295u, 24u)]), global0[_wgslsmith_index_u32(abs(global1.x), 24u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], any(vec2<bool>(false, all(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(max(-1072f, -462f)) == _wgslsmith_f_op_f32(trunc(497f)));
}

fn func_2() -> vec3<bool> {
    let var_0 = false;
    return !select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.c.x | global1.x), 24u)], true, true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 24u)], var_0, false), func_3(Struct_2(0u, 1u, -1281f), 1u), true), vec3<bool>(var_0, var_0, true), func_3(Struct_2(u_input.d, u_input.d, -512f), 8681u)), select(!all(vec3<bool>(var_0, global0[_wgslsmith_index_u32(0u, 24u)], var_0)), true, !global0[_wgslsmith_index_u32(global1.x, 24u)]));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global3 = array<vec4<f32>, 25>();
    let var_0 = ~firstLeadingBit(~(~(~1u)));
    global0 = array<bool, 24>();
    let var_1 = vec4<bool>(all(select(!func_2(), vec3<bool>(false & global0[_wgslsmith_index_u32(global1.x, 24u)], false, global0[_wgslsmith_index_u32(global1.x, 24u)]), true)), any(!vec2<bool>(true, global0[_wgslsmith_index_u32(~1u, 24u)])), false, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-750f, 1304f), vec2<f32>(1257f, 675f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, 1192f)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -289f))), -932f)));
    return Struct_1((vec3<u32>(8272u, firstLeadingBit(54437u), 4523u) ^ (u_input.e.zxz << (u_input.e.yzy % vec3<u32>(32u)))) ^ min(vec3<u32>(4294967295u, ~var_0, global1.x), ~(vec3<u32>(var_0, var_0, 34737u) << (vec3<u32>(global1.x, u_input.e.x, 4294967295u) % vec3<u32>(32u)))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -183f)), -arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_2 {
    global3 = array<vec4<f32>, 25>();
    var var_0 = vec3<f32>(-675f, 915f, func_1(u_input.b).b.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1678f))))), _wgslsmith_f_op_f32(arg_0.c * arg_1.b.x), _wgslsmith_f_op_f32(-func_1(vec2<i32>(4154i, arg_1.c)).b.x));
    return Struct_2(29150u, (func_1(-vec2<i32>(arg_1.c, -40471i)).a.x << (abs(_wgslsmith_add_u32(27778u, 0u)) % 32u)) | ~_wgslsmith_div_u32(firstTrailingBit(global1.x), reverseBits(arg_0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-658f - 129f) * arg_2))), -1288f, false)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_1, 25>();
    global4 = array<vec2<u32>, 29>();
    global2 = array<Struct_1, 25>();
    return Struct_1(~u_input.c, func_1(vec2<i32>(-10580i | u_input.a.x, -(~arg_1))).b, u_input.b.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    var var_0 = vec2<i32>(-1i) * -u_input.b;
    let var_1 = !vec3<bool>(all(!func_3(Struct_2(4294967295u, global1.x, arg_1.x), global1.x)), !global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(max(~arg_0.a.x, 1u), 24u)] & true);
    let var_2 = func_5(Struct_2(81904u >> (_wgslsmith_sub_u32(func_4(Struct_2(arg_0.a.x, 1u, arg_0.b.x), global2[_wgslsmith_index_u32(0u, 25u)], arg_0.b.x, global0[_wgslsmith_index_u32(global1.x, 24u)]).a, 1u) % 32u), 4695u, func_4(Struct_2(_wgslsmith_mod_u32(u_input.d, u_input.c.x), _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), 144f), func_1(select(vec2<i32>(-27709i, arg_0.c), vec2<i32>(var_0.x, var_0.x), true)), -371f, !all(vec3<bool>(true, false, false))).c), 15638i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    let var_3 = func_4(func_4(Struct_2(~var_2.a.x, 42298u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(891f)))), global2[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_f32(1371f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-413f))))), false), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.c, ~vec3<u32>(4123u, u_input.c.x, arg_0.a.x)), var_2.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, _wgslsmith_div_f32(1676f, var_2.b.x), -550f), arg_1)), ~var_2.c), _wgslsmith_f_op_f32(-arg_1.x), !func_2().x);
    var var_4 = Struct_3(func_1(-u_input.b).c, ~(~(-2147483647i)), Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, global1.x, 22910u), vec3<u32>(114497u, 0u, 124471u) & vec3<u32>(var_3.a, u_input.d, var_2.a.x)), arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_f_op_vec3_f32(-var_2.b)) - _wgslsmith_f_op_vec3_f32(-arg_1)), 39275i));
    return ~(~19012u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1539f))), 1795f) + _wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1180f * 917f) + _wgslsmith_f_op_f32(-134f - 1089f)) - _wgslsmith_div_f32(-534f, 1f))));
    global1 = vec3<u32>(36745u, abs(min(_wgslsmith_mod_u32(~9953u, global1.x), 1u)), func_6(func_5(func_4(Struct_2(global1.x, global1.x, -598f), func_1(vec2<i32>(u_input.a.x, 103849i)), 984f, global0[_wgslsmith_index_u32(~18312u, 24u)]), -2147483647i, var_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(905f * var_0), -1142f, _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -197f) * vec3<f32>(var_0, var_0, var_0)))))));
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~47228u)), _wgslsmith_clamp_u32(firstLeadingBit(reverseBits(u_input.d)), select(u_input.c.x, global1.x, global0[_wgslsmith_index_u32(43763u, 24u)]) ^ global1.x, firstLeadingBit(_wgslsmith_clamp_u32(global1.x, global1.x, 0u)))), 24u)], global0[_wgslsmith_index_u32(~(~0u) >> (~4294967295u % 32u), 24u)], global0[_wgslsmith_index_u32(select(36117u, _wgslsmith_sub_u32(func_5(func_4(Struct_2(45426u, 9968u, var_0), Struct_1(vec3<u32>(global1.x, 19780u, global1.x), vec3<f32>(-213f, var_0, 637f), u_input.a.x), var_0, true), u_input.b.x & -29018i, _wgslsmith_f_op_f32(var_0 + var_0)).a.x, ~func_6(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<f32>(var_0, var_0, var_0), u_input.a.x), vec3<f32>(var_0, -1088f, var_0))), false), 24u)], !global0[_wgslsmith_index_u32(4294967295u, 24u)]);
    let var_2 = Struct_2(~global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))) - _wgslsmith_f_op_f32(max(1f, -496f)))));
    global1 = _wgslsmith_mod_vec3_u32(~u_input.e.yyw, vec3<u32>(min(firstLeadingBit(4294967295u), 84859u), u_input.e.x, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~9071u, 25u)]);
}

