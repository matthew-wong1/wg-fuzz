struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 27> = array<f32, 27>(-602f, -1000f, -1082f, 1211f, -403f, 1000f, 350f, -410f, 574f, 469f, -1015f, 1517f, -2146f, 859f, -1360f, -1377f, -1434f, 889f, -1000f, -443f, 732f, -1205f, 606f, -989f, 387f, -359f, 593f);

var<private> global2: array<vec4<i32>, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = Struct_5(Struct_2(u_input.e, Struct_1(45755i, vec3<bool>(false, !arg_0, true), false, min(_wgslsmith_mod_u32(global0.x, 58623u), 14636u), !(4294967295u > global0.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(122218u, 27u)]) + global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 27u)]), _wgslsmith_f_op_f32(floor(301f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-921f - arg_1.x) + _wgslsmith_f_op_f32(-1272f * global1[_wgslsmith_index_u32(0u, 27u)])))), vec4<f32>(943f, global1[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(max(776f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.d.x, 27u)])))))), arg_1.x), 1u);
    var_0 = Struct_5(Struct_2(0i, var_0.a.b, _wgslsmith_f_op_vec2_f32(var_0.a.c - vec2<f32>(var_0.a.d, arg_1.x)), -267f), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.a.d) - var_0.a.d)), 286f, -642f), ~max(u_input.b.x, 1u));
    global1 = array<f32, 27>();
    let var_1 = var_0.a.b.a;
    var var_2 = var_0.a.b;
    return !var_2.b.zz;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = abs(_wgslsmith_mod_u32(177u, 1u) & global0.x) ^ (~_wgslsmith_div_u32(55360u, ~58030u) ^ global0.x);
    var var_1 = arg_2.x;
    global0 = vec4<u32>(select(37166u, ~firstLeadingBit(1u), true || any(vec2<bool>(arg_2.x, true))), var_0, reverseBits(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(firstTrailingBit(var_0), 0u))), var_0 << (~1u % 32u));
    let var_2 = 2147483647i;
    var var_3 = 1u;
    return func_3(arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(-842f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-506f, _wgslsmith_f_op_f32(f32(-1f) * -658f))) - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global0.x, 27u)]))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-298f, 1830f)))), _wgslsmith_f_op_f32(f32(-1f) * -788f)));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global2 = array<vec4<i32>, 8>();
    let var_0 = global0.wy;
    let var_1 = Struct_4(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)]) - vec3<f32>(282f, global1[_wgslsmith_index_u32(global0.x, 27u)], -847f))) - vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], -245f, _wgslsmith_f_op_f32(floor(397f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -390f, 235f))), vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(3146u, 27u)])), -160f, -686f))));
    var var_2 = select(!(!(!func_2(global1[_wgslsmith_index_u32(global0.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], arg_0))), !select(arg_0, !func_3(var_1.a, vec4<f32>(-487f, -101f, -127f, 1233f)), vec2<bool>(false, any(vec3<bool>(false, arg_0.x, false)))), vec2<bool>(select(func_3(true, vec4<f32>(621f, -1075f, var_1.b.x, var_1.b.x)).x || any(vec3<bool>(true, false, false)), (arg_0.x & false) & false, !(!var_1.a)), false));
    var_2 = select(vec2<bool>(!var_1.a, false), vec2<bool>(all(vec2<bool>(true, true)), !var_1.a), func_3(arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(889f, var_1.b.x, var_1.b.x, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, 580f, global1[_wgslsmith_index_u32(global0.x, 27u)], var_1.b.x)), all(vec3<bool>(true, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, -1010f, 641f, var_1.b.x))))));
    return !(countOneBits(13097i) < firstTrailingBit(-27667i));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = ~_wgslsmith_mult_u32(~arg_1.d, max(~87930u, global0.x));
    global0 = abs(firstTrailingBit(u_input.b));
    let var_1 = reverseBits(27648i);
    var var_2 = Struct_2(1i, arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.d, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(193f + global1[_wgslsmith_index_u32(arg_1.d, 27u)]))), vec2<f32>(_wgslsmith_f_op_f32(abs(523f)), -489f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 27u)])))));
    let var_3 = Struct_1(firstLeadingBit(var_1) >> (abs(~1u | _wgslsmith_div_u32(var_0, 1u)) % 32u), select(arg_0.xzz, !arg_1.b, !vec3<bool>(true, func_3(false, vec4<f32>(var_2.c.x, -1061f, var_2.d, -1440f)).x, !arg_0.x)), var_2.b.b.x | (arg_0.x & true), 24729u, !arg_0.x);
    return Struct_2(-(~1i), var_2.b, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1347f, global1[_wgslsmith_index_u32(0u, 27u)])) - _wgslsmith_f_op_f32(abs(1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(!vec4<bool>(true, func_1(vec2<bool>(false, false)), func_1(vec2<bool>(true, true)), all(vec2<bool>(false, false))), vec4<bool>(false, select(any(vec2<bool>(true, false)), all(vec2<bool>(true, true)), true), func_2(871f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 27u)]), vec2<bool>(true, true)).x, false), !func_3(false, vec4<f32>(-2305f, global1[_wgslsmith_index_u32(global0.x, 27u)], -503f, global1[_wgslsmith_index_u32(global0.x, 27u)])).x || all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))), Struct_1(-1i, select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true), -543f < global1[_wgslsmith_index_u32(1u, 27u)], 71519u << (u_input.a.x % 32u), !any(vec3<bool>(true, true, true))), vec4<bool>(false, true, false, false));
    let var_1 = Struct_5(func_4(vec4<bool>(global0.x >= (32072u >> (u_input.b.x % 32u)), func_3(func_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, global1[_wgslsmith_index_u32(var_0.b.d, 27u)], 1000f, -1000f) + vec4<f32>(var_0.c.x, 347f, -1155f, 1694f))).x, true, false), Struct_1(var_0.b.a, !(!vec3<bool>(var_0.b.e, var_0.b.e, true)), false, _wgslsmith_dot_vec2_u32(countOneBits(global0.ww), vec2<u32>(global0.x, 4294967295u)), true), select(!select(vec4<bool>(var_0.b.e, false, var_0.b.c, false), vec4<bool>(var_0.b.e, var_0.b.e, false, false), vec4<bool>(var_0.b.c, var_0.b.c, true, var_0.b.e)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.b.c, var_0.b.b.x, var_0.b.c), vec4<bool>(var_0.b.b.x, var_0.b.e, true, false), false), true), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~u_input.d.x, 27u)], _wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.d * var_0.d), 1004f, -147f, var_0.d) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -613f, 311f, var_0.d), vec4<f32>(var_0.d, var_0.c.x, global1[_wgslsmith_index_u32(u_input.d.x, 27u)], var_0.c.x), vec4<bool>(var_0.b.e, var_0.b.b.x, true, false))))))), 11219u);
    let var_2 = var_0.a;
    let var_3 = u_input.b.x;
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(~max(20524u, var_0.b.d), ~var_1.c), var_1.a.b.d, 4294967295u), vec4<u32>(~(~var_3), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, var_1.c, var_1.c), u_input.b), var_3, var_1.c) & (~select(u_input.b, vec4<u32>(global0.x, 0u, 55490u, var_3), vec4<bool>(false, var_0.b.b.x, var_0.b.c, var_0.b.c)) & _wgslsmith_add_vec4_u32(u_input.b, ~u_input.b)));
    let var_4 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(firstLeadingBit(55150u) >> ((1u >> (u_input.d.x % 32u)) % 32u), u_input.b.x)) >> (~(abs(vec2<u32>(0u, 0u)) >> (~u_input.a.zy % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(vec3<i32>(var_0.a, 2915i, 2147483647i))));
}

