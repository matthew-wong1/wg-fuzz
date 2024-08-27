struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-46202i, false, vec4<bool>(false, false, true, false));

var<private> global1: array<bool, 25>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-30735i, false, vec4<bool>(false, false, false, true)), Struct_1(0i, false, vec4<bool>(false, false, true, true)), Struct_1(2184i, true, vec4<bool>(true, true, false, false)), Struct_1(-1309i, false, vec4<bool>(true, false, false, true)), Struct_1(2147483647i, false, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, true, vec4<bool>(true, true, false, false)), Struct_1(-1i, false, vec4<bool>(true, false, false, true)), Struct_1(1i, false, vec4<bool>(true, true, true, true)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~5646u, 8u)];
    var_0 = global2[_wgslsmith_index_u32(u_input.d, 8u)];
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    var_0 = global2[_wgslsmith_index_u32(~u_input.d >> (3525u % 32u), 8u)];
    return ~u_input.d;
}

fn func_2() -> f32 {
    global0 = global2[_wgslsmith_index_u32(u_input.d, 8u)];
    let var_0 = ~(-2147483647i >> (_wgslsmith_clamp_u32(abs(_wgslsmith_mod_u32(u_input.c, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, u_input.d), u_input.c ^ u_input.c, 4294967295u), _wgslsmith_clamp_u32(func_3(true, u_input.b.x, 1000f), 4294967295u, ~21745u)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f - -421f))))));
    let var_2 = select(select(global0.c.wx, select(!select(global0.c.xw, vec2<bool>(false, global1[_wgslsmith_index_u32(2697u, 25u)]), false), select(vec2<bool>(true, true), select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), false), !global0.c.zy), _wgslsmith_f_op_f32(round(1000f)) < _wgslsmith_f_op_f32(891f * 2635f)), global0.c.wz), select(!select(global0.c.yz, select(vec2<bool>(false, global0.b), vec2<bool>(false, true), vec2<bool>(global0.c.x, true)), select(vec2<bool>(true, global0.b), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 25u)]), global0.c.xw)), global0.c.wz, any(!(!global0.c))), global1[_wgslsmith_index_u32(~reverseBits(1u) & (~u_input.d & _wgslsmith_mod_u32(~117u, 1u)), 25u)]);
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.b.wyz, vec3<i32>(u_input.b.x, reverseBits(~(-57430i)), max(u_input.b.x, ~0i)));
    return -559f;
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, arg_1), 8u)];
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global2 = array<Struct_1, 8>();
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1345f), _wgslsmith_f_op_f32(func_2()))) - 143f)), arg_1);
    var var_0 = arg_2.b;
    let var_1 = vec2<u32>(firstLeadingBit(~43241u), ~countOneBits(~select(0u, u_input.a.x, true)));
    let var_2 = Struct_1(_wgslsmith_mult_i32(-47388i, func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-186f, -443f) * 1f), ~0u).a), false, vec4<bool>(false, !arg_3.b, arg_0 > ~0u, select(arg_3.b, true, false && any(vec4<bool>(true, arg_3.c.x, arg_2.b, global0.b)))));
    return ~arg_2.a << (firstLeadingBit(4294967295u) % 32u);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    global0 = func_4(-1000f, u_input.c & 4294967295u);
    var var_0 = ~arg_1.x;
    let var_1 = any(global0.c.xxx);
    global0 = Struct_1(u_input.b.x, global0.a != 37660i, global0.c);
    let var_2 = ~(_wgslsmith_sub_i32(global0.a, arg_0) ^ min(~u_input.b.x, 57409i));
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1447f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f))), ~35731u);
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    var var_0 = Struct_1(15499i, all(!func_4(529f, ~1025u).c.xyz), vec4<bool>(!(global0.c.x & global1[_wgslsmith_index_u32(max(u_input.a.x, u_input.c), 25u)]), arg_2.c.x, true, func_4(-191f, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 22187u), vec3<u32>(u_input.a.x, 4294967295u, u_input.d)), select(vec3<u32>(u_input.a.x, u_input.c, 54042u), vec3<u32>(4294967295u, 1u, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))).b));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, abs(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a))), 8u)];
    var var_2 = _wgslsmith_f_op_f32(func_2());
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(632f, -1000f, _wgslsmith_f_op_f32(floor(274f))))))));
    var var_4 = func_5(_wgslsmith_mod_i32(countOneBits(select(_wgslsmith_sub_i32(60193i, -6156i), -469i, false)), -1i), vec3<u32>(_wgslsmith_add_u32(~u_input.c, u_input.c), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, 13245u), 35869u) | ~(~u_input.d), ~_wgslsmith_add_u32(u_input.d, 0u)), any(!select(select(arg_2.c, arg_2.c, false), !vec4<bool>(global0.c.x, false, var_0.b, false), arg_2.c)), _wgslsmith_dot_vec2_i32(abs(min(u_input.b.yz >> (vec2<u32>(24459u, u_input.c) % vec2<u32>(32u)), vec2<i32>(0i, -19050i) >> (u_input.a % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_clamp_i32(var_1.a ^ u_input.b.x, -8241i, var_1.a >> (26036u % 32u)), ~(-var_1.a))));
    return StorageBuffer(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 22614i) | -vec2<i32>(38539i, var_0.a), u_input.b.zz), vec2<i32>(29913i & ~var_4.a, -1i)), vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(u_input.c, 11623u, u_input.c)), 33752u) ^ u_input.a, ~(~vec4<u32>(u_input.c, 3945u, _wgslsmith_div_u32(4294967295u, u_input.d), _wgslsmith_mod_u32(50181u, 88560u))), 1u ^ ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(32434u, 4294967295u, u_input.d, u_input.d), vec4<u32>(u_input.a.x, 4294967295u, u_input.d, 19773u))), vec2<u32>(u_input.a.x, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(305f + _wgslsmith_f_op_f32(-983f + -1516f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1711f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(958f))), _wgslsmith_f_op_f32(f32(-1f) * -531f))), func_5(_wgslsmith_clamp_i32(func_1(select(9348u, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 25u)]), u_input.d, Struct_1(-21541i, true, vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 25u)], false, true, global1[_wgslsmith_index_u32(u_input.c, 25u)])), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), u_input.b.x, u_input.b.x), ~vec3<u32>(0u, func_3(global0.b, -95793i, -145f), _wgslsmith_div_u32(u_input.d, 18972u)), reverseBits(u_input.b.x) >= 0i, -34583i), 1909f);
}

