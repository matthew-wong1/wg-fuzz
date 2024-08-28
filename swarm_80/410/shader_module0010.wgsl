struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 4>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(361f, vec2<bool>(false, false)), Struct_2(-177f, vec2<bool>(false, true)), Struct_2(-1324f, vec2<bool>(true, false)), Struct_2(-205f, vec2<bool>(false, true)), Struct_2(612f, vec2<bool>(true, false)), Struct_2(295f, vec2<bool>(false, false)), Struct_2(401f, vec2<bool>(false, true)), Struct_2(1098f, vec2<bool>(false, true)), Struct_2(254f, vec2<bool>(true, true)), Struct_2(1000f, vec2<bool>(false, true)), Struct_2(-1416f, vec2<bool>(false, false)), Struct_2(-939f, vec2<bool>(false, true)), Struct_2(326f, vec2<bool>(false, false)), Struct_2(1000f, vec2<bool>(false, false)), Struct_2(619f, vec2<bool>(false, false)), Struct_2(149f, vec2<bool>(true, true)), Struct_2(-151f, vec2<bool>(false, true)), Struct_2(-645f, vec2<bool>(false, false)), Struct_2(117f, vec2<bool>(true, false)), Struct_2(1137f, vec2<bool>(true, true)), Struct_2(779f, vec2<bool>(false, true)), Struct_2(-255f, vec2<bool>(false, false)), Struct_2(-1000f, vec2<bool>(false, true)), Struct_2(418f, vec2<bool>(true, true)), Struct_2(-838f, vec2<bool>(false, true)), Struct_2(689f, vec2<bool>(false, false)), Struct_2(1443f, vec2<bool>(false, false)), Struct_2(1531f, vec2<bool>(false, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    global3 = array<Struct_2, 28>();
    global0 = array<Struct_2, 32>();
    let var_0 = -25180i;
    global1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(~vec4<u32>(8524u, 4294967295u, 4294967295u, u_input.d)), ~min(abs(vec4<u32>(global1.x, global1.x, global1.x, 0u)), ~vec4<u32>(36467u, u_input.b, 26708u, 7747u))), ~_wgslsmith_mult_u32(abs(global1.x) & global1.x, min(~2236u, 1u)), reverseBits(_wgslsmith_sub_u32(1u, 4294967295u ^ ~u_input.c.x)));
    var var_1 = arg_2;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f - -326f)), -905f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-338f, -2128f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(3137f, -1177f, true)) - _wgslsmith_f_op_f32(select(-122f, 985f, false))))), -125f);
}

fn func_2() -> Struct_4 {
    let var_0 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 4u)], global2[_wgslsmith_index_u32(global1.x, 4u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global1.x, 4u)]), false), vec2<bool>(global2[_wgslsmith_index_u32(2187u, 4u)], global2[_wgslsmith_index_u32(7349u, 4u)]))), !vec2<bool>(global2[_wgslsmith_index_u32(reverseBits(~u_input.d), 4u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 4u)], false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(-51329i, min(vec2<i32>(-94422i, 2147483647i), vec2<i32>(34620i, 0i)), Struct_1(false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1204f)))) - _wgslsmith_f_op_f32(f32(-1f) * -769f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -910f))));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 583f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(-1i, -16025i), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(22665i, -2147483647i)), Struct_1(true))), var_1.x)), global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(true & ((global2[_wgslsmith_index_u32(0u, 4u)] || global2[_wgslsmith_index_u32(1u, 4u)]) | (global1.x < global1.x))), Struct_2(-206f, !var_0), 1310i);
    return Struct_4(var_2);
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> u32 {
    global3 = array<Struct_2, 28>();
    var var_0 = arg_0.a.c;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(88951u, global1.x | 1u), global1.x) | ~global1.xx;
    let var_2 = ~(~(~(~_wgslsmith_dot_vec2_u32(global1.zz, global1.yz))));
    let var_3 = arg_0.a.c;
    return global1.x;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(func_4(func_2(), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(max(vec3<u32>(4294967295u, u_input.e.x, global1.x), vec3<u32>(u_input.b, 19539u, u_input.b)), vec3<u32>(global1.x, global1.x, 35081u), global2[_wgslsmith_index_u32(u_input.a, 4u)] | false), ~(vec3<u32>(u_input.d, 1u, u_input.e.x) | vec3<u32>(u_input.c.x, u_input.a, 16989u))) >> (_wgslsmith_mult_u32(min(4294967295u, global1.x), global1.x) % 32u), 4u)]), 32u)];
    let var_1 = vec4<f32>(var_0.a, -1268f, var_0.a, -433f);
    global3 = array<Struct_2, 28>();
    let var_2 = Struct_5(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1272f * 317f)), _wgslsmith_f_op_f32(f32(-1f) * -1026f)), select(arg_1.d.b, arg_1.d.b, !all(vec4<bool>(false, true, arg_3, var_0.b.x)))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(f32(-1f) * -118f);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    global1 = min(~vec3<u32>(_wgslsmith_div_u32(0u ^ global1.x, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), min(_wgslsmith_dot_vec2_u32(vec2<u32>(16622u, u_input.e.x), vec2<u32>(8689u, 54008u)), u_input.e.x)), countOneBits(vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, global1.x), u_input.c.x, _wgslsmith_dot_vec2_u32(global1.xy, global1.yz))) | vec3<u32>(~(~u_input.a), _wgslsmith_clamp_u32(16107u, ~u_input.d, func_4(Struct_4(Struct_3(889f, Struct_2(arg_1, vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 4u)], false)), Struct_1(false), global0[_wgslsmith_index_u32(global1.x, 32u)], -8085i)), global2[_wgslsmith_index_u32(59779u, 4u)])), _wgslsmith_clamp_u32(global1.x, _wgslsmith_add_u32(67607u, global1.x), global1.x)));
    global3 = array<Struct_2, 28>();
    var var_0 = Struct_2(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(473f * _wgslsmith_f_op_f32(func_3(1i, -arg_0.wz, Struct_1(global2[_wgslsmith_index_u32(global1.x, 4u)]))))), vec2<bool>(!all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 4u)], false, global2[_wgslsmith_index_u32(15447u, 4u)], true)) | !global2[_wgslsmith_index_u32(1u << (0u % 32u), 4u)], global2[_wgslsmith_index_u32(28663u, 4u)] || global2[_wgslsmith_index_u32(global1.x, 4u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - 833f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a))))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, var_0.a, var_0.a), vec3<f32>(-653f, -656f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1499f, var_0.a, var_0.a)))))));
    let var_2 = func_2().a.b;
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~countOneBits(0u), 4u)];
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1071f, 867f))))))), global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~u_input.c & select(vec2<u32>(34543u, 0u), vec2<u32>(0u, 45717u), global2[_wgslsmith_index_u32(14355u, 4u)]), vec2<u32>(u_input.b, abs(0u)))), 28u)], func_5((vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, 0i, 46603i)) >> (vec4<u32>(global1.x, u_input.e.x, global1.x, global1.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1i, Struct_3(-1562f, global3[_wgslsmith_index_u32(u_input.d, 28u)], Struct_1(true), Struct_2(-600f, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)])), -16544i), -45738i, global2[_wgslsmith_index_u32(0u, 4u)])))))), func_2().a.d, -1i);
    var var_2 = vec2<f32>(var_1.b.a, var_1.b.a);
    global1 = firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(~u_input.b, _wgslsmith_mod_u32(u_input.a, u_input.d)), 0u, abs(global1.x)));
    let var_3 = var_1.b;
    var var_4 = 22285u;
    global0 = array<Struct_2, 32>();
    let var_5 = var_1.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 17295i), vec2<i32>(var_1.e, -2147483647i)), vec2<i32>(43617i, 1i) << (u_input.e % vec2<u32>(32u))));
}

