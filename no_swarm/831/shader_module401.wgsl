struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: array<u32, 6> = array<u32, 6>(1656u, 4294967295u, 0u, 0u, 18128u, 3986u);

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(1110f, -383f, 108f, 152f), vec4<f32>(244f, 121f, -597f, 1995f), vec4<f32>(-1610f, 231f, -625f, 571f), vec4<f32>(251f, 613f, 1000f, 1502f), vec4<f32>(-1338f, 402f, 720f, 2391f), vec4<f32>(832f, -695f, 1174f, -668f), vec4<f32>(823f, -785f, -1017f, -183f), vec4<f32>(824f, -303f, 687f, -733f), vec4<f32>(1246f, 1208f, -1085f, 125f), vec4<f32>(825f, 318f, -205f, 747f), vec4<f32>(2586f, 934f, -1035f, -1000f), vec4<f32>(1220f, -254f, -1329f, -890f), vec4<f32>(-307f, -493f, 870f, -1867f), vec4<f32>(257f, -475f, 210f, -1722f), vec4<f32>(-1000f, 106f, 1145f, -1768f), vec4<f32>(-334f, 686f, -2738f, -1742f), vec4<f32>(294f, 1000f, 1000f, -387f), vec4<f32>(-1223f, 1000f, 500f, -1659f), vec4<f32>(-285f, 290f, 857f, -1000f), vec4<f32>(-2639f, 463f, -699f, 2607f));

var<private> global3: array<f32, 12>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> u32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global1 = array<u32, 6>();
    let var_0 = Struct_2(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, 1u), 6u)], _wgslsmith_dot_vec2_u32((vec2<u32>(arg_1, 40902u) & vec2<u32>(12889u, arg_1)) >> ((vec2<u32>(0u, 18158u) << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], arg_1) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)]), vec2<u32>(arg_1, 1u)))), vec2<u32>(_wgslsmith_mod_u32(~(0u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)] % 32u)), ~1u), select(global1[_wgslsmith_index_u32(~93393u, 6u)], _wgslsmith_clamp_u32(arg_1, ~7581u, global1[_wgslsmith_index_u32(1u, 6u)]), false)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37983u, 6u)], 12u)], global3[_wgslsmith_index_u32(arg_1, 12u)], 567f)) * vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 12u)], -762f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 12u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1129f, 999f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28340u, 6u)], 12u)])))), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~arg_1, 6u)], 3u)], !(!(!vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 3u)], false))), !select(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56643u, 6u)], 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(true, false), true), !vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])), select(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(arg_0.x, u_input.a, arg_0.x), vec3<i32>(0i, -33170i, arg_0.x)), abs(vec3<i32>(1i, 1i, 49066i)), !vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 6u)], 3u)], true)) | abs(vec3<i32>(u_input.a, arg_0.x, 0i))));
    let var_1 = 8527u;
    return _wgslsmith_mult_u32(firstTrailingBit(4294967295u), min(_wgslsmith_sub_u32(~1u, ~(~8943u)), 1u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_3 {
    global3 = array<f32, 12>();
    var var_0 = all(vec4<bool>(arg_1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), global0[_wgslsmith_index_u32(~(min(75874u, arg_0.x) | _wgslsmith_clamp_u32(arg_0.x, 96175u, arg_0.x)), 3u)], global0[_wgslsmith_index_u32(func_3(vec3<i32>(-5160i, u_input.a, u_input.a), ~4294967295u), 3u)] && global0[_wgslsmith_index_u32(1u, 3u)], true));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 12u)] - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(120679u, arg_0.x), 6u)], 12u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -968f) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 12u)]))))));
    global2 = array<vec4<f32>, 20>();
    let var_2 = abs(arg_0.x) << (~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(func_3(vec3<i32>(-24705i, 1i, u_input.a) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global1[_wgslsmith_index_u32(21956u, 6u)], arg_0.x) % vec3<u32>(32u)), 0u), 6u)], reverseBits(0u << (global1[_wgslsmith_index_u32(arg_0.x, 6u)] % 32u))) % 32u);
    return Struct_3(-905f, vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~46730u >> (0u % 32u), ~(arg_0.x ^ 1u)), 3u)], true, false));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(~_wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(global1[_wgslsmith_index_u32(5495u, 6u)], global1[_wgslsmith_index_u32(11436u, 6u)], 0u))), _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(42251u, 6u)], global1[_wgslsmith_index_u32(63031u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), ~vec3<u32>(1u, 0u, 1u))), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(92967u | ~global1[_wgslsmith_index_u32(69578u, 6u)], 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(16211u, 21925u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 6u)]), vec2<u32>(78839u, 61659u))), 12u)])));
    var var_1 = max(vec3<u32>(1u, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 66571u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(22112u, 6u)], global1[_wgslsmith_index_u32(32424u, 6u)], 13221u)), 6u)], global1[_wgslsmith_index_u32(min(48098u, firstLeadingBit(12996u)), 6u)]) ^ vec3<u32>(reverseBits(global1[_wgslsmith_index_u32(95118u, 6u)]) >> (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(41101u, 6u)], 6u)] % 32u), 18595u, ~global1[_wgslsmith_index_u32(41870u, 6u)]), ~(vec3<u32>(72136u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 4294967295u, ~0u) & vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(16350u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86329u, 6u)], 6u)], 6u)]), 6u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 6u)] | global1[_wgslsmith_index_u32(70866u, 6u)])));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1663f))) + _wgslsmith_f_op_f32(trunc(-1214f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(var_1.x << (0u % 32u)), 12u)])));
    var_1 = ~vec3<u32>(abs(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 6u)])), ~global1[_wgslsmith_index_u32(39682u >> (global1[_wgslsmith_index_u32(9299u, 6u)] % 32u), 6u)] ^ ~reverseBits(0u), 47476u);
    global1 = array<u32, 6>();
    return vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58588u, var_1.x, var_1.x, var_1.x) | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 6u)], 6u)], 68083u, var_1.x, 1u), ~vec4<u32>(30952u, 33140u, global1[_wgslsmith_index_u32(24317u, 6u)], 16139u)), var_1.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 6u)], 6u)], global1[_wgslsmith_index_u32(var_1.x, 6u)], var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 20>();
    let var_0 = global0[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 3773u), firstTrailingBit(65778u)), ~(global1[_wgslsmith_index_u32(49747u, 6u)] & 11604u)), 3u)] && (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)]), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38349u, 6u)], 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36570u, 6u)], 6u)], 6u)], 33824u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20467u, 6u)], 6u)], 6u)], 6u)], 0u)) & _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(61566u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(48582u, 6u)]))), 6u)] != ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(46903u, 6u)], global1[_wgslsmith_index_u32(33979u, 6u)], 0u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 11459u, 0u)), func_1()));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1027f, global3[_wgslsmith_index_u32(~57559u, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f * 546f)))), select(!(!vec3<bool>(var_0, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 3u)], true)), vec3<bool>(all(!vec3<bool>(var_0, var_0, false)), var_0, !var_0), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global1[_wgslsmith_index_u32(~36544u, 6u)]), 3u)]));
    var var_2 = countOneBits(max(_wgslsmith_div_vec2_u32(~(~vec2<u32>(23885u, 20193u)), ~min(vec2<u32>(0u, 5239u), vec2<u32>(62501u, 24139u))), vec2<u32>(1u, 0u)));
    var var_3 = vec4<bool>(any(!vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(var_2.x), 3u)], var_1.b.x, false, !var_1.b.x)), true, var_0, all(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 6u)], 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(var_2.x, 6u)], var_2.x, 1u, 30217u)), 3u)] && true, any(select(var_1.b, vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 6u)], 3u)], false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), var_0)), var_1.b.x, false)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.a, 1367f)), _wgslsmith_f_op_f32(-var_1.a))), -1622f)), !(!(!(!var_0))), !(!select(var_1.b.yx, vec2<bool>(false, true), var_1.b.x)), vec2<bool>(any(var_1.b), all(!var_3.www)), (vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 1i, u_input.a), u_input.a ^ 0i, u_input.a) | -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2703i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i))) << (abs(~vec3<u32>(4294967295u, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 6u)]) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(0u, var_2.x, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_5 = vec3<u32>(~0u, global1[_wgslsmith_index_u32(min(reverseBits(global1[_wgslsmith_index_u32(0u & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(147833u, 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)]), var_2.x), 6u)], firstTrailingBit(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~select(4294967295u, func_3(var_4.e, var_2.x), true) & func_3((var_4.e >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(var_5.x, 6u)], var_2.x) % vec3<u32>(32u))) | vec3<i32>(var_4.e.x, u_input.a, 0i), firstLeadingBit(global1[_wgslsmith_index_u32(2344u, 6u)]) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.x, 1u, global1[_wgslsmith_index_u32(var_5.x, 6u)]), vec3<u32>(21979u, 45186u, global1[_wgslsmith_index_u32(26786u, 6u)]))));
}

