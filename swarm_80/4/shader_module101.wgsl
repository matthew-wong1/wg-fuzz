struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u));

var<private> global1: f32 = -1378f;

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: array<vec2<i32>, 6>;

var<private> global4: u32 = 1u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = -_wgslsmith_mult_i32(2147483647i, max(_wgslsmith_div_i32(~u_input.d, ~u_input.c), -1i));
    let var_1 = Struct_1(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.b.x, 0u)));
    global4 = _wgslsmith_mult_u32(42298u, global0.a.x);
    var var_2 = ~(~max(~_wgslsmith_sub_vec2_u32(u_input.e, global0.a), vec2<u32>(1u, 1u)));
    var_2 = global0.a | ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(3612u, 0u), global0.a)));
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_2.wyw;
    let var_1 = Struct_1(vec2<u32>(~firstLeadingBit(46472u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, u_input.e.x, arg_3.a.x) << (vec3<u32>(0u, 15988u, arg_1.a.x) % vec3<u32>(32u)), u_input.b.yzy), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, global0.a.x, u_input.e.x), u_input.b.wxy << (vec3<u32>(4294967295u, global0.a.x, 1890u) % vec3<u32>(32u))))));
    var var_2 = any(select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), false)));
    global4 = _wgslsmith_dot_vec3_u32(~abs(~u_input.b.xxx), u_input.b.yww);
    let var_3 = arg_3;
    return vec4<bool>(any(select(vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), u_input.d == u_input.d, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, true, true))), true, !(!(min(17819i, 31875i) >= -u_input.d)), true);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec3<bool>(false, !(all(!arg_0) & arg_0.x), true);
    global1 = -349f;
    global2 = array<vec4<f32>, 21>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_2 = func_4(Struct_1(~u_input.b.yx), Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_3.x, global0.a.x), select(1u, arg_3.x, false)), global0.a.x)), global2[_wgslsmith_index_u32(20475u, 21u)], Struct_1(max(abs(u_input.b.xz), func_3())));
    return 0u;
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    global1 = arg_0.x;
    var var_0 = func_4(Struct_1(~(~firstLeadingBit(vec2<u32>(global0.a.x, global0.a.x)))), Struct_1(vec2<u32>(u_input.a | 46901u, ~_wgslsmith_sub_u32(global0.a.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), 920f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-207f)), _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-267f, arg_0.x, arg_0.x, -434f))))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.b.x, func_3().x), ~(vec2<u32>(u_input.b.x, global0.a.x) & vec2<u32>(global0.a.x, u_input.a))))).xx;
    var var_1 = func_4(Struct_1(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(u_input.b.x, global0.a.x)), _wgslsmith_mod_vec2_u32(u_input.b.yw, vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.e.x, 1u))), Struct_1(global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(arg_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(723f, arg_0.x, -538f, arg_0.x), arg_0, vec4<bool>(var_0.x, true, var_0.x, false)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.e.x, 21u)] * vec4<f32>(-593f, 1205f, arg_0.x, 1473f)))))), Struct_1(vec2<u32>(4294967295u, abs(~30052u))));
    let var_2 = !any(!var_1.xxy);
    let var_3 = _wgslsmith_mult_vec2_u32(u_input.b.yw, _wgslsmith_clamp_vec2_u32(select(firstLeadingBit(u_input.e), vec2<u32>(1u, 1u), any(vec4<bool>(true, var_1.x, true, var_1.x))), ~(~global0.a), _wgslsmith_clamp_vec2_u32(~u_input.e, min(u_input.b.wz, global0.a), ~vec2<u32>(1u, u_input.a)))) << (vec2<u32>(4294967295u, 40681u) % vec2<u32>(32u));
    return Struct_1(u_input.b.wy);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(func_2(vec3<bool>(false, false, true), Struct_1(global0.a), true, vec3<u32>(4294967295u, global0.a.x, 0u)), 21u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, -1124f, 169f, 384f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, 1047f, -746f, -1450f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(392f + 230f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2233f), -134f, true)))));
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_0.a.x, 1u, var_0.a.x, u_input.a), u_input.b), ~u_input.b, ~u_input.b), ~u_input.b), ~(~(~15718u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, u_input.a), u_input.b.zwz)));
    var var_2 = reverseBits(0u);
    global0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(423f, 1249f, -339f, -1000f) * vec4<f32>(591f, 332f, 782f, -527f)) - _wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], vec4<f32>(-1487f, -1212f, -418f, 564f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(46279u, 21u)]) - global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.a.x, 4266u), 21u)]), all(vec4<bool>(false, true, false, false)) | false)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global0.a.x, 21u)] + global2[_wgslsmith_index_u32(1u, 21u)])))));
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(100f, -711f), -1122f, -498f, -630f))));
    return var_3;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !select(func_4(func_1(), func_1(), vec4<f32>(_wgslsmith_f_op_f32(867f + 615f), _wgslsmith_f_op_f32(1678f * 1497f), _wgslsmith_f_op_f32(min(940f, -374f)), 1713f), Struct_1(abs(vec2<u32>(global0.a.x, 4294967295u)))).wwz, func_4(arg_0, arg_0, _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(arg_0.a.x, 21u)]), func_1()).xwz, select(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), !func_4(Struct_1(vec2<u32>(26677u, 33604u)), arg_0, vec4<f32>(326f, 164f, -490f, 1771f), arg_0).x));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1605f, 1445f)))) - vec2<f32>(529f, _wgslsmith_f_op_f32(-1420f * -367f)))))));
    let var_3 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(var_2.x)));
    var var_4 = ~countOneBits(~func_3().x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = true;
    let var_2 = 1466f;
    var var_3 = func_6(func_1());
    var_3 = func_6(func_6(Struct_1(abs(~vec2<u32>(var_3.a.x, global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 + var_2), u_input.c);
}

