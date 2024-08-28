struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-1122f, -1010f), vec2<f32>(446f, 543f), vec2<f32>(1101f, -771f), vec2<f32>(281f, 584f));

var<private> global1: Struct_1 = Struct_1(false, -1302f, 0u, vec3<bool>(false, true, true), 0u);

var<private> global2: vec2<u32> = vec2<u32>(941u, 38754u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_1(true, arg_2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(u_input.e.xyw >> (vec3<u32>(4294967295u, u_input.e.x, u_input.a.x) % vec3<u32>(32u))), select(abs(arg_1.xxw), arg_1.wyx << (vec3<u32>(global2.x, 1u, global1.c) % vec3<u32>(32u)), !global1.d)), vec3<u32>(1u, global1.e, 111201u)), !global1.d, firstLeadingBit(global1.c));
    let var_1 = var_0;
    global0 = array<vec2<f32>, 4>();
    return select(!vec4<bool>(true, select(false, true, all(global1.d)), false, !(arg_3 <= arg_3)), vec4<bool>(var_1.a, all(global1.d.zx), false, true), vec4<bool>(!arg_0, (~var_1.c | global2.x) != arg_1.x, any(vec2<bool>(true, true)), countOneBits(~11789u) == arg_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_1(global1.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 1425f)))) * _wgslsmith_div_f32(-421f, 365f)), 4294967295u, global1.d, _wgslsmith_dot_vec2_u32(u_input.a, abs(u_input.a)) << (~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.e.x), vec2<u32>(global1.e, 13265u)), min(vec2<u32>(arg_1.c, global1.e), u_input.e.wx)) % 32u));
    var var_1 = ~(~1u);
    var var_2 = Struct_1(!(true == (!arg_1.a && !arg_2.x)), arg_1.b, 23702u, func_3(!(firstTrailingBit(38158u) > countOneBits(global1.e)), vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e)), global1.c, 20417u, u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global1.b, 720f))), ~(-1i)).ywz, 97760u);
    let var_3 = 0i;
    var var_4 = arg_3.x || !(arg_0.a & any(!vec2<bool>(global1.d.x, arg_3.x)));
    return arg_1.c == _wgslsmith_div_u32(var_0.c, ~(_wgslsmith_dot_vec2_u32(u_input.e.xx, u_input.a) | ~15849u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, _wgslsmith_div_f32(335f, -474f), 766f, _wgslsmith_f_op_f32(f32(-1f) * -353f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 2143f, global1.b, -382f) * vec4<f32>(arg_1.x, global1.b, 993f, 931f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1058f, 2047f, arg_3, -222f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_1.x, -2627f, global1.b), vec4<f32>(arg_0.b, 1112f, arg_1.x, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1106f, arg_3, -460f) * vec4<f32>(-1311f, -311f, -401f, arg_3))))))));
    var var_1 = u_input.e;
    let var_2 = Struct_1(select(!select(!global1.a, 29007u == global2.x, global1.a), true, func_4(arg_0, Struct_1(true, _wgslsmith_f_op_f32(floor(-1381f)), 36136u, select(vec3<bool>(false, arg_0.a, false), global1.d, global1.d), 76987u), func_3(global1.a, vec4<u32>(24830u, u_input.e.x, 1u, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, arg_3, arg_1.x)), u_input.c), select(!vec4<bool>(arg_0.d.x, arg_0.d.x, global1.a, arg_0.d.x), !vec4<bool>(false, arg_0.d.x, false, global1.d.x), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1047f, arg_3)))), arg_0.c, arg_2, ~_wgslsmith_add_u32(arg_0.c, var_1.x) & ~global2.x);
    global2 = u_input.e.xw;
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_mod_u32(~1u, ~0u)), ~0u >> (arg_0.c % 32u)), u_input.e.zz);
    return !vec4<bool>(!arg_0.d.x, 4294967295u <= ~reverseBits(arg_0.c), var_2.d.x, global1.d.x);
}

fn func_1() -> bool {
    var var_0 = Struct_1(!any(select(!vec4<bool>(true, true, true, global1.a), func_2(Struct_1(global1.d.x, global1.b, 67604u, vec3<bool>(false, global1.d.x, true), global2.x), global0[_wgslsmith_index_u32(29243u, 4u)], global1.d, global1.b), global1.a)), _wgslsmith_f_op_f32(-global1.b), countOneBits(u_input.e.x), select(select(select(global1.d, !vec3<bool>(true, global1.d.x, global1.d.x), true), !(!global1.d), select(vec3<bool>(false, global1.d.x, global1.d.x), vec3<bool>(global1.d.x, global1.a, true), true)), vec3<bool>(true, true, true), true), u_input.e.x);
    let var_1 = abs(~(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.e.wxz), abs(u_input.e.zxw)) >> (var_0.c % 32u)));
    var var_2 = ~_wgslsmith_div_vec3_u32(u_input.e.yyy, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.xwy, vec3<u32>(global2.x, var_0.e, global2.x), u_input.e.zwx) | u_input.e.zwx, reverseBits(firstLeadingBit(u_input.e.zxx))));
    let var_3 = 26528u;
    var var_4 = false && func_4(Struct_1((var_0.c > global2.x) & (global1.b < global1.b), -1422f, _wgslsmith_sub_u32(4294967295u, var_3), vec3<bool>(any(var_0.d.zy), func_3(var_0.d.x, u_input.e, vec3<f32>(2279f, global1.b, global1.b), u_input.d).x, any(global1.d)), 3211u), Struct_1(var_3 != ~u_input.a.x, -1555f, _wgslsmith_dot_vec2_u32(select(vec2<u32>(global2.x, u_input.e.x), vec2<u32>(var_0.c, var_2.x), vec2<bool>(var_0.d.x, global1.d.x)), ~vec2<u32>(var_0.c, 39627u)), func_2(Struct_1(global1.d.x, var_0.b, 0u, var_0.d, var_2.x), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(global2.x, 4u)] - global0[_wgslsmith_index_u32(65431u, 4u)]), func_3(var_0.d.x, vec4<u32>(51724u, 8359u, var_2.x, 77u), vec3<f32>(403f, -1414f, global1.b), u_input.b.x).zwz, _wgslsmith_f_op_f32(sign(global1.b))).wzy, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global2.x, 43043u, 4294967295u, 26208u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2.x, 67431u, 4294967295u), u_input.e))), !func_2(Struct_1(true, 1434f, 1u, var_0.d, u_input.a.x), _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(41236u, 4u)], global0[_wgslsmith_index_u32(6063u, 4u)], false)), func_3(false, u_input.e, vec3<f32>(global1.b, var_0.b, var_0.b), u_input.c).xwx, _wgslsmith_f_op_f32(f32(-1f) * -1061f)), vec4<bool>(var_0.a, var_0.d.x, true, true));
    return _wgslsmith_f_op_f32(f32(-1f) * -1510f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-459f, _wgslsmith_f_op_f32(1244f - -617f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(false, _wgslsmith_f_op_f32(round(global1.b)), ~(global1.c ^ ~select(global2.x, 77597u, false)), global1.d, 31060u);
    global0 = array<vec2<f32>, 4>();
    global0 = array<vec2<f32>, 4>();
    let var_0 = Struct_1(global1.d.x, _wgslsmith_f_op_f32(-global1.b), ~u_input.a.x, global1.d, 25821u);
    let var_1 = func_1();
    let var_2 = u_input.c;
    global1 = var_0;
    global2 = vec2<u32>(~var_0.e, 0u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -1097f)))));
    let x = u_input.a;
    s_output = StorageBuffer(66457u, _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -2205f), select(!func_3(true, vec4<u32>(global1.e, global1.c, u_input.a.x, u_input.e.x), var_3, u_input.b.x).x, true, _wgslsmith_clamp_i32(var_2, 14315i, -1i) >= 0i))));
}

