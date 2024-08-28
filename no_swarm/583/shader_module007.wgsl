struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 28>;

var<private> global3: array<i32, 25>;

var<private> global4: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = -697f;
    let var_1 = Struct_1(arg_1.b.a);
    let var_2 = arg_1;
    let var_3 = -380f;
    let var_4 = Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(!any(vec3<bool>(false, true, false)), true && any(global4[_wgslsmith_index_u32(1u, 1u)]), any(!global4[_wgslsmith_index_u32(arg_1.b.a, 1u)]))), var_2.b, var_3, Struct_2(true, Struct_1(1u)), true);
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_2() -> Struct_3 {
    global4 = array<vec4<bool>, 1>();
    global0 = array<vec4<u32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(971f, -1000f, true)), _wgslsmith_f_op_f32(412f * -931f), _wgslsmith_f_op_f32(select(-1800f, 650f, false)), _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(336f, 715f, -1575f, 1000f) + vec4<f32>(-622f, -370f, -399f, 1074f))))) - vec4<f32>(_wgslsmith_div_f32(-1090f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1874f)), 1f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, -1000f)), Struct_4(u_input.b.x, Struct_1(1u))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f) + _wgslsmith_f_op_f32(546f * -2056f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f * 384f) + 1f), !(u_input.b.x == 1i)))));
    let var_2 = var_1.x > var_1.x;
    return Struct_3(select(vec3<bool>(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.d.x, 25u)], 2147483647i) <= 21573i, true, var_2), !(!vec3<bool>(var_2, true, var_2)), !any(!vec3<bool>(false, var_2, false))), Struct_1(_wgslsmith_mult_u32(81594u, min(1273u, 1242u))), var_1.x, Struct_2(true, Struct_1(select(_wgslsmith_mod_u32(u_input.a, global1.a), abs(27104u), true))), !(false | var_2));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32) -> vec3<bool> {
    var var_0 = any(select(global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(abs(~u_input.a), 1u)], !global4[_wgslsmith_index_u32(~arg_0.d.b.a, 1u)]));
    let var_1 = arg_0.e;
    global4 = array<vec4<bool>, 1>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(641f + _wgslsmith_f_op_f32(func_2().c * -1459f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1427f - arg_1.x)) * _wgslsmith_f_op_f32(trunc(458f))) * arg_1.x));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 25u)];
    return select(select(select(func_2().a, func_2().a, !func_2().d.a), vec3<bool>(var_1, true, true), !select(select(vec3<bool>(var_1, var_1, arg_0.e), vec3<bool>(true, arg_0.d.a, false), arg_0.e), !vec3<bool>(var_1, arg_0.e, true), select(arg_0.a, vec3<bool>(true, arg_0.a.x, false), vec3<bool>(arg_0.a.x, false, false)))), func_2().a, arg_0.a);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_2 {
    global1 = Struct_1(~(~global1.a));
    global1 = Struct_1(1u);
    var var_0 = !(!select(select(vec3<bool>(arg_1, arg_0, arg_0), vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, arg_1, arg_0)), func_4(func_2(), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-499f, 1005f), vec2<f32>(-279f, 462f), true)), u_input.b.x), vec3<bool>(true, true, any(vec4<bool>(true, arg_1, arg_0, true)))));
    global0 = array<vec4<u32>, 10>();
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.d.wzx, select(global2[_wgslsmith_index_u32(50619u, 28u)], u_input.d.zww, select(vec3<bool>(var_0.x, func_2().e, !arg_0), !select(vec3<bool>(arg_1, true, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, var_0.x, true)), !vec3<bool>(true, false, var_0.x))));
    return func_2().d;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_dot_vec3_i32(-u_input.b, ~abs(u_input.b)), arg_2.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-822f, -1780f))))));
    let var_2 = arg_2.b;
    var var_3 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(891f)), -872f, var_1.x);
    let var_4 = u_input.d | ~(~firstTrailingBit(vec4<u32>(var_0.b.a, 1u, global1.a, 1u)));
    return ~var_4.ww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.c, Struct_1(_wgslsmith_dot_vec2_u32(func_5(all(vec3<bool>(true, true, false)), true, func_1(false, false), ~vec3<u32>(4294967295u, 0u, 69824u)), max(vec2<u32>(u_input.a, global1.a), vec2<u32>(u_input.a, 4294967295u)) | u_input.d.xx)));
    let var_1 = firstTrailingBit(select(u_input.b, -u_input.b, vec3<bool>(true, true, true)) >> (vec3<u32>(_wgslsmith_mod_u32(~0u, global1.a), global1.a, ~_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(u_input.a, var_0.b.a))) % vec3<u32>(32u)));
    let var_2 = Struct_4(min(-8543i, -global3[_wgslsmith_index_u32(global1.a, 25u)]), var_0.b);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-772f, 253f) - _wgslsmith_f_op_f32(f32(-1f) * -230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1269f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-218f)))))) * 729f);
    var var_4 = !(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), true, false), select(func_2().a, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))));
    var var_5 = Struct_3(!vec3<bool>(!(var_4.x | true), false, var_4.x), var_2.b, _wgslsmith_f_op_f32(abs(-358f)), Struct_2(!(!any(vec3<bool>(true, var_4.x, true))), func_2().b), true);
    let var_6 = 639i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~global1.a, -512i, 80510u, var_1.x);
}

