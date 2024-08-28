struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -221f;

var<private> global1: array<u32, 32>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(446f, -654f, 1469f, -965f), vec4<f32>(352f, -1533f, -130f, 891f), vec4<f32>(-408f, 218f, 515f, 724f), vec4<f32>(-2325f, -408f, 1061f, 1069f), vec4<f32>(-832f, 620f, 1538f, -262f), vec4<f32>(-1540f, 1912f, -1219f, -791f), vec4<f32>(-403f, 1000f, -392f, -479f), vec4<f32>(-591f, -1298f, 1120f, -666f), vec4<f32>(232f, -994f, -365f, 287f), vec4<f32>(-1136f, 914f, 321f, 437f), vec4<f32>(217f, -140f, 845f, 347f), vec4<f32>(-418f, 1000f, 1319f, -1221f), vec4<f32>(2111f, 1095f, 1977f, 1017f), vec4<f32>(-487f, 792f, 1000f, -872f), vec4<f32>(804f, 125f, 270f, -543f), vec4<f32>(1077f, 137f, -703f, -134f), vec4<f32>(-349f, -1325f, 467f, -1000f), vec4<f32>(-154f, 610f, 1298f, -1088f), vec4<f32>(498f, -1392f, 420f, 1000f), vec4<f32>(-373f, 1569f, -958f, -2566f), vec4<f32>(1229f, 389f, 336f, -2049f), vec4<f32>(-841f, -1331f, 1000f, 1246f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    global1 = array<u32, 32>();
    global3 = array<vec4<f32>, 22>();
    global3 = array<vec4<f32>, 22>();
    var var_0 = Struct_3(select(vec2<u32>(global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(24857u, global2.b)), 32u)], ~(~17911u)), countOneBits(~vec2<u32>(246u, global1[_wgslsmith_index_u32(global2.b, 32u)])), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-636f, global2.a.x, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x - global2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(global2.c.x, 22u)] - global2.a) * vec4<f32>(-1695f, global2.a.x, global2.a.x, global2.a.x)))), _wgslsmith_div_u32(~firstTrailingBit(0u), global2.c.x), max(~vec3<u32>(24668u, 11146u, global2.c.x) << (vec3<u32>(global2.b, 1540u, global1[_wgslsmith_index_u32(0u, 32u)]) % vec3<u32>(32u)), vec3<u32>(global2.b, global2.c.x | 0u, 4294967295u))), Struct_1(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(1u, 22u)], global2.a)), ~(~(~55877u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(4996u, 1u, global2.c.x)) | min(global2.c, global2.c), vec3<u32>(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(0u, 32u)], 4294967295u), 32u)], 49870u, 3442u))));
    var var_1 = var_0.b;
    return var_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> bool {
    global0 = 464f;
    var var_0 = Struct_2(-(~vec2<i32>(2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global2.a.xx))))), vec4<u32>((countOneBits(global1[_wgslsmith_index_u32(4361u, 32u)]) ^ 83255u) >> (max(firstTrailingBit(0u), global2.c.x) % 32u), ~(~4294967295u), _wgslsmith_dot_vec3_u32(arg_0.c, ~global2.c), 34119u), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, global2.a.x, arg_0.a.x), vec4<f32>(-1000f, arg_0.a.x, global2.a.x, arg_1.x)) + vec4<f32>(arg_1.x, 904f, arg_1.x, 2109f)))), 50274u, vec3<u32>(4881u, 33923u, 0u)));
    let var_1 = arg_3.x;
    let var_2 = var_0.b.x;
    let var_3 = _wgslsmith_mod_i32(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(var_0.a.x), 1i), u_input.a), ~countOneBits(firstTrailingBit(i32(-1i) * -26040i)));
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> StorageBuffer {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(global3[_wgslsmith_index_u32(select(~abs(global2.b), global1[_wgslsmith_index_u32(countOneBits(7433u), 32u)], true), 22u)])), ~func_2(), ~(~global2.c));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, global2.a.x, global2.a.x, global2.a.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global2.a * _wgslsmith_div_vec4_f32(vec4<f32>(-177f, -923f, global2.a.x, global2.a.x), vec4<f32>(-1057f, 219f, global2.a.x, global2.a.x)))))), _wgslsmith_mod_u32(78898u, 4294967295u), global2.c);
    global0 = -1287f;
    global1 = array<u32, 32>();
    let var_0 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(false, false, true, false)), true), vec4<bool>(true, func_3(Struct_1(vec4<f32>(global2.a.x, global2.a.x, -890f, global2.a.x), global2.c.x, vec3<u32>(global2.c.x, 13356u, 1u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.x, -167f, global2.a.x), global2.a.xwz, false)), vec3<i32>(u_input.a, -1i, -22315i), vec4<bool>(false, false, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true || any(vec4<bool>(false, true, true, true))), !func_3(Struct_1(global2.a, 32434u, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global2.b, 32176u)), global2.a.wzx, -vec3<i32>(39359i, 0i, 0i), vec4<bool>(false, true, true, false)));
    return StorageBuffer(~(~arg_0.yy), select(arg_0, vec3<i32>(-10429i, -2147483647i, ~(~(-27857i))), vec3<bool>(all(select(var_0.zyw, var_0.wwy, false)), !all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.x;
    var var_0 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 19027u, 20018u, global1[_wgslsmith_index_u32(global2.b, 32u)])) ^ vec4<u32>(7993u, 9466u, 4294967295u, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b, 62722u, global2.b, 37339u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 0u, global2.b, 1u), vec4<u32>(35794u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5731u, 32u)], 32u)], 4294967295u, global2.b)))), ~(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(13856u, 32u)], ~31227u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)] & global1[_wgslsmith_index_u32(4294967295u, 32u)]) & select(vec4<u32>(8378u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c.x, 32u)], 32u)], 32u)], 11159u), vec4<u32>(global2.c.x, 34680u, 1u, 5054u), true)), ~vec4<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(2442u, 32u)] & global1[_wgslsmith_index_u32(4294967295u, 32u)], 114389u), ~0u, abs(~4294967295u), _wgslsmith_mult_u32(countOneBits(global2.c.x), global1[_wgslsmith_index_u32(global2.c.x, 32u)])));
    global3 = array<vec4<f32>, 22>();
    let x = u_input.a;
    s_output = func_1(~(~reverseBits(abs(vec3<i32>(u_input.a, 0i, u_input.a)))), i32(-1i) * -21120i);
}

