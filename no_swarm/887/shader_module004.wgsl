struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(1u, 79569u, 4294967295u, 1u), vec4<u32>(12909u, 0u, 0u, 82898u), vec4<u32>(4294967295u, 42217u, 0u, 29586u), vec4<u32>(8295u, 4294967295u, 68705u, 0u), vec4<u32>(30424u, 0u, 1u, 1u), vec4<u32>(1u, 0u, 4294967295u, 67820u), vec4<u32>(4294967295u, 4025u, 31759u, 37355u), vec4<u32>(1u, 72621u, 1u, 1u), vec4<u32>(18582u, 1u, 4012u, 1u), vec4<u32>(3041u, 87641u, 46935u, 0u), vec4<u32>(12335u, 40946u, 5377u, 4294967295u), vec4<u32>(25758u, 33516u, 36846u, 2366u), vec4<u32>(4294967295u, 5791u, 67380u, 22073u), vec4<u32>(5704u, 1u, 33450u, 1485u), vec4<u32>(0u, 56956u, 52284u, 1u), vec4<u32>(0u, 4294967295u, 16654u, 44091u), vec4<u32>(0u, 46912u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 79346u, 0u), vec4<u32>(4294967295u, 47932u, 9454u, 22014u));

var<private> global2: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global3: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(16372u, 1u, 4294967295u, 112799u), vec4<u32>(4294967295u, 1778u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 18686u), vec4<u32>(38945u, 790u, 2131u, 1u));

var<private> global4: array<bool, 29> = array<bool, 29>(false, true, false, true, true, true, false, true, false, false, false, false, false, true, false, false, true, false, true, false, false, true, true, false, false, true, false, true, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec3<bool> {
    global3 = array<vec4<u32>, 4>();
    let var_0 = false;
    var var_1 = all(select(vec3<bool>(false, any(!vec4<bool>(global4[_wgslsmith_index_u32(22916u, 29u)], false, global0.d, true)), !select(false, global0.d, var_0)), select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(47129u, 29u)], false), vec3<bool>(false, var_0, true), !global4[_wgslsmith_index_u32(1u, 29u)]), !select(vec3<bool>(global4[_wgslsmith_index_u32(13714u, 29u)], false, true), vec3<bool>(global4[_wgslsmith_index_u32(30405u, 29u)], global4[_wgslsmith_index_u32(2022u, 29u)], global0.d), vec3<bool>(true, true, global4[_wgslsmith_index_u32(38094u, 29u)])), select(!vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 29u)], true), !vec3<bool>(false, var_0, global4[_wgslsmith_index_u32(4294967295u, 29u)]), false | global4[_wgslsmith_index_u32(34359u, 29u)])), global0.a.x != -select(global2.x, global2.x, true)));
    let var_2 = _wgslsmith_sub_vec3_u32(min(~firstLeadingBit(reverseBits(vec3<u32>(47332u, 12505u, 59355u))), _wgslsmith_mod_vec3_u32(~max(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 111360u, 1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 45684u, 7318u), vec3<u32>(4294967295u, 13991u, 4294967295u)), 0u, 1u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(14391u, 25415u, 1305u))), 1u, ~1u));
    return !vec3<bool>(-u_input.a.x >= -1i, global0.d, global0.a.x == (u_input.a.x ^ u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<bool>) -> bool {
    global0 = arg_0;
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-363f - 137f), _wgslsmith_f_op_f32(-375f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-595f, -1543f, false))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1162f + 604f), _wgslsmith_f_op_f32(589f + 1291f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1047f, -259f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(var_1, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x), -462f, _wgslsmith_div_f32(var_1.x, -413f))));
    var var_3 = vec3<bool>(arg_3.x, !arg_3.x, !(var_0.x || true));
    return var_3.x;
}

fn func_2() -> Struct_1 {
    global4 = array<bool, 29>();
    let var_0 = Struct_2(Struct_1(global0.a, u_input.a, -(~global0.b.x), !(global0.c < global2.x) & !global0.d), Struct_1(firstTrailingBit(~global0.a), _wgslsmith_add_vec3_i32(reverseBits(-u_input.a), -vec3<i32>(0i, global2.x, u_input.a.x)), i32(-1i) * -_wgslsmith_clamp_i32(14316i, -1i, 1i), global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-642f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1502f, _wgslsmith_f_op_f32(max(-1619f, -450f)), true)))), Struct_1(global0.a, u_input.a, -33380i, all(!select(vec2<bool>(global0.d, false), vec2<bool>(global0.d, global0.d), vec2<bool>(global0.d, global4[_wgslsmith_index_u32(0u, 29u)])))));
    var var_1 = global4[_wgslsmith_index_u32(max(4294967295u, min(~select(0u, 83370u, global0.d), abs(72304u))) | 1u, 29u)];
    let var_2 = var_0.c;
    var var_3 = !(all(!vec3<bool>(true, global4[_wgslsmith_index_u32(37303u, 29u)], true)) || func_4(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.x, var_0.a.b.x, var_0.b.a.x, 27411i), vec4<i32>(-75909i, var_0.a.c, -1i, u_input.a.x)), firstLeadingBit(global0.a.yzy), ~1i, global4[_wgslsmith_index_u32(23311u, 29u)] | false), -(global0.a.x << (24007u % 32u)), func_3(), vec3<bool>(false, true, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 31011u), 29u)])));
    return Struct_1(abs(-_wgslsmith_div_vec4_i32(select(global0.a, var_0.a.a, false), vec4<i32>(29654i, u_input.a.x, u_input.a.x, 2147483647i))), ~select(min(u_input.a, _wgslsmith_mod_vec3_i32(var_0.a.a.wzx, u_input.a)), vec3<i32>(-1i) * -var_0.b.a.xwz, !(!vec3<bool>(true, var_0.d.d, true))), 24318i, global0.d);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    let var_0 = func_2();
    var var_1 = Struct_5(_wgslsmith_div_i32(u_input.a.x, ~global0.c));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 29>();
    let var_0 = select(vec4<i32>(~func_1(any(vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 29u)], true, global0.d)), select(vec2<bool>(false, global0.d), vec2<bool>(false, true), vec2<bool>(global0.d, false)), select(28898u, 55653u, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(654f, 478f))), _wgslsmith_clamp_i32(global2.x, reverseBits(u_input.a.x), -min(global0.b.x, global0.c)), -2147483647i, 1i), vec4<i32>(-2147483647i, u_input.a.x, 15522i, global2.x), select(select(!(!vec4<bool>(true, false, true, global0.d)), !(!vec4<bool>(global4[_wgslsmith_index_u32(60639u, 29u)], global0.d, global0.d, global4[_wgslsmith_index_u32(28701u, 29u)])), vec4<bool>(true, true, select(true, false, global0.d), global0.d)), vec4<bool>(true, any(select(vec2<bool>(global4[_wgslsmith_index_u32(87650u, 29u)], true), vec2<bool>(global0.d, true), false)), true, true), !(!(!vec4<bool>(false, false, true, global0.d)))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(745f - 1473f)) * 149f), _wgslsmith_f_op_f32(abs(1587f)), _wgslsmith_f_op_f32(181f + _wgslsmith_f_op_f32(-936f * -2506f)))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-(~(-3170i)), global2.x), -(abs(var_0 >> (vec4<u32>(4294967295u, 0u, 0u, 4294967295u) % vec4<u32>(32u))) & vec4<i32>(global0.c, _wgslsmith_dot_vec2_i32(var_1.b.xx, global0.b.zx), 1i, firstLeadingBit(-21204i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), 1764f, _wgslsmith_f_op_f32(432f - 1582f)))));
}

