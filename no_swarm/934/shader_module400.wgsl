struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 25>;

var<private> global2: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-694f, 1650f, -1000f), vec3<f32>(-384f, 1994f, -136f), vec3<f32>(-2035f, 527f, -895f), vec3<f32>(171f, 1741f, -927f), vec3<f32>(-920f, 423f, -1052f), vec3<f32>(-460f, -1207f, 1554f), vec3<f32>(-2139f, -753f, -1734f), vec3<f32>(419f, 910f, -1000f), vec3<f32>(473f, -554f, 1000f), vec3<f32>(-1083f, -409f, -1590f), vec3<f32>(233f, 631f, -201f), vec3<f32>(-1682f, -262f, -1441f), vec3<f32>(-438f, -260f, 1235f), vec3<f32>(415f, 1000f, 1000f), vec3<f32>(-660f, -1076f, -707f), vec3<f32>(387f, -399f, -412f), vec3<f32>(873f, 1944f, 263f), vec3<f32>(1294f, 846f, -1294f));

var<private> global3: vec4<f32> = vec4<f32>(856f, 221f, -106f, -921f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = select(select(!vec3<bool>(true, true, select(false, true, arg_0)), !(!select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, arg_0))), select(any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0))), arg_0, arg_1.b >= (u_input.a >> (0u % 32u)))), !select(vec3<bool>(false, -100i > global0.a, any(vec4<bool>(true, arg_0, arg_0, arg_0))), select(vec3<bool>(true, arg_0, true), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), false), true), select(vec3<bool>(arg_0, any(vec4<bool>(false, false, true, false)), arg_0 & true), select(vec3<bool>(true, all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true), !vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0))), !all(vec4<bool>(false, arg_0, false, true))));
    global2 = array<vec3<f32>, 18>();
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, global3.x, 1000f, -970f) * vec4<f32>(global3.x, global3.x, global3.x, -1840f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, global3.x, -749f, 612f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 438f))))), true && all(!var_0.zy)));
    global1 = array<i32, 25>();
    global3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1181f, global3.x, global3.x, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 441f, global3.x, -1264f), vec4<f32>(-1469f, -1253f, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(665f, global3.x, global3.x, -993f), vec4<f32>(global3.x, -259f, global3.x, global3.x)))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1365f))), global3.x)), 216f, -210f, _wgslsmith_f_op_f32(-global3.x))));
    return _wgslsmith_sub_vec4_u32(arg_2.a, ~arg_2.a);
}

fn func_2() -> u32 {
    var var_0 = select(~firstLeadingBit(~max(44785u, u_input.d)), 20754u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1528f - _wgslsmith_f_op_f32(f32(-1f) * -1193f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-776f)))));
    var var_1 = ~_wgslsmith_div_vec4_u32(~(~func_3(true, Struct_2(global1[_wgslsmith_index_u32(104313u, 25u)], global0.b), Struct_1(vec4<u32>(global0.b, 1u, global0.b, 20698u)))), ~select(firstLeadingBit(vec4<u32>(70603u, u_input.b.x, 72965u, 601u)), abs(vec4<u32>(32787u, 31359u, 4294967295u, global0.b)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))));
    let var_2 = Struct_1(~(~(reverseBits(vec4<u32>(68777u, 0u, global0.b, global0.b)) >> (reverseBits(vec4<u32>(41006u, var_1.x, u_input.a, 0u)) % vec4<u32>(32u)))));
    var var_3 = Struct_1(~(~var_2.a) >> (var_2.a % vec4<u32>(32u)));
    var_1 = ~firstTrailingBit(~vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, global0.b), var_3.a.wz), ~global0.b, ~global0.b));
    return _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(max(var_2.a.x, 1u), min(47769u, u_input.a)), ~(~u_input.b)), ~var_3.a.xw, any(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, false, global0.a > global0.a))), vec2<u32>(~4294967295u, reverseBits(~_wgslsmith_sub_u32(global0.b, global0.b))));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = global3.wx;
    var var_1 = func_2();
    return !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0 || false)));
}

fn func_4(arg_0: vec2<bool>) -> StorageBuffer {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.b.x), ~_wgslsmith_dot_vec3_u32(func_3(true, Struct_2(global1[_wgslsmith_index_u32(u_input.a, 25u)], global0.b), Struct_1(vec4<u32>(u_input.d, 0u, 4294967295u, 57271u))).xxx, vec3<u32>(global0.b, global0.b, 15314u) << (vec3<u32>(u_input.d, 112979u, 22170u) % vec3<u32>(32u))), 4294967295u, reverseBits(~0u | ~global0.b)));
    let var_1 = 4294967295u;
    let var_2 = all(!vec3<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), all(vec3<bool>(true, arg_0.x, arg_0.x)), any(vec4<bool>(false, false, arg_0.x, arg_0.x)))) || all(select(!select(vec3<bool>(false, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, true, false)), !select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), true), true));
    global1 = array<i32, 25>();
    global3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(step(global3.x, 666f)), _wgslsmith_f_op_f32(step(1353f, global3.x)), _wgslsmith_f_op_f32(ceil(global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-656f, global3.x, 136f, global3.x), vec4<f32>(global3.x, -1902f, 867f, global3.x), vec4<bool>(true, var_2, false, true))) - vec4<f32>(global3.x, -229f, global3.x, global3.x))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, 2210f) + global3.x), 1270f, _wgslsmith_f_op_f32(f32(-1f) * -2982f), _wgslsmith_f_op_f32(trunc(global3.x))))));
    return StorageBuffer(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e, -1i, -31374i) >> (vec3<u32>(u_input.b.x, 27923u, var_1) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -1i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], u_input.c.x)), min(select(vec3<i32>(global0.a, 8001i, global1[_wgslsmith_index_u32(3835u, 25u)]), vec3<i32>(29830i, u_input.c.x, 22829i), arg_0.x), -vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(9720u, 25u)], global0.a))), 1i, global0.b, min(~(var_0.a.zzx | vec3<u32>(0u, 1u, u_input.a)), reverseBits(vec3<u32>(4294967295u, global0.b, global0.b) | vec3<u32>(41128u, 7356u, global0.b))) ^ ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 25774u, 35571u), vec3<u32>(global0.b, 0u, 17503u))), min(var_0.a & var_0.a, var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global3.x, 604f, 410f)))))), vec4<f32>(_wgslsmith_f_op_f32(-879f * 720f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1016f * _wgslsmith_f_op_f32(abs(global3.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) - 1f), 826f)))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -774f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1389f), true)), 847f));
    let x = u_input.a;
    s_output = func_4(!func_1(true));
}

