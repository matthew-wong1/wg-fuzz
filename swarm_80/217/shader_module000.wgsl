struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, false, true));

var<private> global3: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(1240f, 324f, -575f, -1747f), vec4<f32>(-1949f, -605f, -1000f, 1000f), vec4<f32>(-666f, 1510f, -927f, -777f), vec4<f32>(-769f, 950f, -1000f, 1000f), vec4<f32>(830f, 201f, 613f, -154f), vec4<f32>(745f, -1642f, 1081f, -392f), vec4<f32>(1270f, -291f, -292f, -2171f), vec4<f32>(-1144f, -1452f, 991f, -113f), vec4<f32>(1016f, 1104f, 824f, 637f), vec4<f32>(1000f, -381f, 1334f, 1000f), vec4<f32>(-454f, 207f, 712f, 567f), vec4<f32>(-208f, 145f, 320f, 2034f), vec4<f32>(-597f, 1000f, -983f, 546f), vec4<f32>(-378f, -847f, -1466f, -1250f), vec4<f32>(984f, 1012f, -992f, 475f), vec4<f32>(416f, 1000f, -890f, 1175f), vec4<f32>(-412f, 1906f, 1000f, 264f));

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_1(select(!(!vec4<bool>(global4.x, true, false, false)), vec4<bool>(true, true, false, global2.a.x), global2.a.x));
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~38003u, ~(~u_input.a.x)), 19u)];
    global4 = vec2<bool>(var_0.a.x, true);
    var var_1 = select(vec2<bool>(!(true || var_0.a.x), global2.a.x), global2.a.zw, select(global2.a.xx, global2.a.xw, vec2<bool>(global4.x, global4.x)));
    return var_0.a.x || any(vec3<bool>(global2.a.x, any(select(global2.a.xz, var_0.a.zx, vec2<bool>(global4.x, var_0.a.x))), any(var_0.a.wwz)));
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~((_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(77079u, u_input.a.x), vec2<u32>(u_input.b.x, 4294967295u)) ^ _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(26542u, u_input.b.x))) << (~u_input.b % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(u_input.b.x, u_input.a.x)), select(vec2<u32>(35614u, u_input.a.x), firstLeadingBit(vec2<u32>(12078u, u_input.b.x)), !global2.a.yz))), 19u)];
    global4 = select(select(global2.a.yw, select(select(!global2.a.wz, vec2<bool>(global2.a.x, true), select(vec2<bool>(global2.a.x, var_0.a.x), global2.a.yz, var_0.a.x)), !select(vec2<bool>(global4.x, var_0.a.x), vec2<bool>(global2.a.x, false), global2.a.x), vec2<bool>(true, true)), vec2<bool>(true, select(true, true, global2.a.x))), vec2<bool>(false, !(func_3(u_input.a, vec2<i32>(-1i, -7432i)) | !var_0.a.x)), true);
    let var_1 = _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a);
    let var_2 = global2.a.x;
    var var_3 = var_1.yy;
    return Struct_1(vec4<bool>(true, true, !var_0.a.x, all(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(false, arg_0.a.x);
    let var_1 = -2347f;
    global2 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(abs(~u_input.a), vec3<u32>(0u, abs(u_input.a.x), ~u_input.b.x)) ^ u_input.a.x), 19u)];
    let var_2 = u_input.b.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) + _wgslsmith_f_op_f32(sign(var_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2337f, _wgslsmith_f_op_f32(f32(-1f) * -1342f), arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1, -1000f)), var_1)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(1000f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -980f)))));
    return Struct_1(global2.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = all(vec3<bool>(func_3(select(~u_input.a, firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 83295u)), false | arg_0.a.x), firstLeadingBit(abs(vec2<i32>(1i, 17833i)))), false, false));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -102f);
    global1 = array<vec3<i32>, 3>();
    global3 = array<vec4<f32>, 17>();
    var var_2 = true;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_3, u_input.a.x)), 19u)];
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_5(func_2(), func_2(), func_5(func_4(arg_0, func_4(func_4(arg_0, true, global2.a.ywx, Struct_1(global2.a)), !global2.a.x, !vec3<bool>(arg_0.a.x, global4.x, true), func_5(arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 4294967295u)).a.x, arg_0.a.xyy, Struct_1(global2.a)), func_5(func_5(arg_0, func_5(global0[_wgslsmith_index_u32(0u, 19u)], Struct_1(global2.a), Struct_1(vec4<bool>(true, global4.x, false, global4.x)), u_input.a.x), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(25539u, 50530u, u_input.b.x, u_input.a.x))), global0[_wgslsmith_index_u32(u_input.b.x, 19u)], Struct_1(vec4<bool>(global2.a.x, false, false, global2.a.x)), 4294967295u), global0[_wgslsmith_index_u32(max(56405u, 0u), 19u)], ~1u), abs(u_input.a.x));
    let var_1 = true;
    var var_2 = !var_0.a.yyy;
    global1 = array<vec3<i32>, 3>();
    let var_3 = true;
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    global3 = array<vec4<f32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(302f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1253f, -638f) + -1021f)))));
    global0 = array<Struct_1, 19>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1)))));
    return func_6(func_5(Struct_1(select(vec4<bool>(global2.a.x, true, false, true), select(vec4<bool>(var_0.a.x, true, global2.a.x, global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, false), vec4<bool>(false, var_0.a.x, true, global2.a.x)), var_0.a.x)), global0[_wgslsmith_index_u32(0u, 19u)], func_4(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true, vec3<bool>(true, true, true), func_2()), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u & u_input.a.x, u_input.a.x), vec2<u32>(1u, firstLeadingBit(u_input.b.x)))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global3 = array<vec4<f32>, 17>();
    var var_0 = -722f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f));
    var var_2 = reverseBits(~(~u_input.a.xx));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 3>();
    global4 = !select(!global2.a.wz, global2.a.ww, vec2<bool>(all(vec3<bool>(true, true, global4.x)), !all(global2.a.xwx)));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 19u)];
    global0 = array<Struct_1, 19>();
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~u_input.b.x, ~((u_input.b.x | 6995u) << (abs(8463u) % 32u))), 4294967295u, 47153u, 0u);
    global1 = array<vec3<i32>, 3>();
    var var_2 = func_7(Struct_1(var_0.a), Struct_1(select(!vec4<bool>(global2.a.x, false, global4.x, true), vec4<bool>(true, true, var_0.a.x, global2.a.x), global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-189f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-650f)) * 1226f)) != -1394f, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(-2147483647i, -41708i, -2147483647i));
}

