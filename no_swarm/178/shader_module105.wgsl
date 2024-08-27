struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(1i, -16254i, i32(-2147483648)), vec3<i32>(15575i, 0i, -60317i), vec3<i32>(22349i, -825i, -62836i), vec3<i32>(i32(-2147483648), 1i, 42143i), vec3<i32>(-59222i, 1i, 13470i), vec3<i32>(62732i, i32(-2147483648), 0i), vec3<i32>(-40958i, 17285i, -5520i), vec3<i32>(27282i, 65949i, i32(-2147483648)), vec3<i32>(1i, -1i, -7752i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(15429i, 51546i, i32(-2147483648)), vec3<i32>(-1i, -1290i, 2147483647i), vec3<i32>(15644i, 2147483647i, 30348i));

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(false, 25853u, 15951i, vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), Struct_1(false, 66617u, -21032i, vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), Struct_1(false, 46944u, -1164i, vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), Struct_1(true, 6288u, -370i, vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), Struct_1(true, 23918u, -15202i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), Struct_1(true, 4294967295u, -17515i, vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), Struct_1(false, 0u, i32(-2147483648), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), Struct_1(true, 4294967295u, -10849i, vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), Struct_1(true, 1u, 1i, vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), Struct_1(false, 4294967295u, 32369i, vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), Struct_1(false, 1u, -39905i, vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), Struct_1(false, 17478u, -6685i, vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), Struct_1(true, 1u, -17475i, vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), Struct_1(true, 108243u, 0i, vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), Struct_1(true, 26632u, 38368i, vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), Struct_1(false, 0u, -23858i, vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), Struct_1(false, 68798u, 0i, vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global0 = u_input.b.xx;
    var var_0 = ~u_input.b.x;
    let var_1 = abs(vec2<u32>(firstLeadingBit(4294967295u), 19009u));
    let var_2 = true;
    global2 = array<Struct_1, 17>();
    return global2[_wgslsmith_index_u32(u_input.b.x, 17u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = -1000f;
    global1 = array<vec3<i32>, 14>();
    let var_1 = func_2(var_0, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, -429f))) + vec2<f32>(var_0, var_0))));
    global1 = array<vec3<i32>, 14>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 1574f) + _wgslsmith_f_op_f32(var_0 + var_0))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))));
    return !(_wgslsmith_dot_vec4_i32(-(~u_input.d), abs(vec4<i32>(var_1.c, 41807i, 51464i, arg_0.a.c))) == countOneBits(0i));
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    global2 = array<Struct_1, 17>();
    let var_0 = vec4<u32>(global0.x, 1u, 19425u, 0u);
    global1 = array<vec3<i32>, 14>();
    var var_1 = vec4<bool>(true, false, global0.x != 0u, func_3(Struct_2(arg_0.a, arg_0.a.d.x, func_2(-189f, Struct_3(vec2<f32>(-1340f, -1000f)))), arg_0, _wgslsmith_dot_vec4_u32(var_0, u_input.b) | 8734u));
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2294f, -669f, -308f, -299f)))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1383f)), _wgslsmith_f_op_f32(ceil(749f)), -1000f, -921f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -920f, _wgslsmith_f_op_f32(min(-970f, 354f)), _wgslsmith_f_op_f32(ceil(627f))), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], true, global2[_wgslsmith_index_u32(global0.x, 17u)]))), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true)))));
    let var_1 = Struct_2(Struct_1(!func_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], false, Struct_1(true, u_input.b.x, u_input.a, vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(true, 1u, u_input.c.x, vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), true, Struct_1(true, 7064u, 0i, vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))), global0.x), ~max(1u, global0.x << (1u % 32u)), 0i, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), select(vec4<bool>(u_input.a != -15079i, all(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(all(vec3<bool>(true, true, true)), !func_3(Struct_2(Struct_1(true, u_input.b.x, -37132i, vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true, global2[_wgslsmith_index_u32(global0.x, 17u)]), Struct_2(global2[_wgslsmith_index_u32(17593u, 17u)], false, Struct_1(true, u_input.b.x, u_input.c.x, vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), u_input.b.x), false), Struct_1(true, global0.x, 1i, select(func_2(var_0.x, Struct_3(vec2<f32>(var_0.x, -892f))).e, vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), 36326i != _wgslsmith_dot_vec3_i32(u_input.d.zyz, u_input.c), all(vec2<bool>(false, false)) | any(vec2<bool>(true, true)))));
    let var_2 = var_1;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.c.b, ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.x, ~var_2.c.b, 13124u, var_1.c.b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.b, 0u, u_input.b.x, 1u), ~vec4<u32>(var_1.a.b, var_1.c.b, u_input.b.x, 16244u))), global0.x), ~countOneBits(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(var_1.a.b, 1u, u_input.b.x, 1u))))), 17u)];
    var var_4 = 1u >= _wgslsmith_mod_u32(~global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), u_input.b.zx));
    var_0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(var_1)).x - _wgslsmith_f_op_f32(sign(var_0.x))), Struct_3(_wgslsmith_f_op_vec2_f32(min(var_0.xz, vec2<f32>(907f, var_0.x))))), !select(true, u_input.b.x > u_input.b.x, true), func_2(1431f, Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.yy))))));
    var var_5 = -2147483647i;
    var_4 = !var_3.e.x;
    global1 = array<vec3<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(u_input.a, select(1i, 1i, var_2.c.d.x), ~(~var_1.c.c))), max(-abs(abs(global1[_wgslsmith_index_u32(0u, 14u)])), -u_input.c));
}

