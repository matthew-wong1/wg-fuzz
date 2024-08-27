struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, false, false, true, false, true, false, false, true, false, false, true, true, true, true, false, false, false, false, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_3(arg_2.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1225f) == _wgslsmith_f_op_f32(trunc(-1768f))), -(arg_2.x << (~20882u % 32u)) > firstLeadingBit(arg_2.x | _wgslsmith_add_i32(u_input.b.x, 2147483647i)));
    var var_1 = vec4<f32>(1809f, _wgslsmith_f_op_f32(select(-1477f, 1939f, arg_0)), 532f, _wgslsmith_f_op_f32(max(-461f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-938f, -329f)))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2282f, -1531f)))));
    let var_3 = Struct_2(false);
    var var_4 = u_input.c;
    return any(!select(arg_1, !arg_1, arg_1));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> i32 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = Struct_4(!vec2<bool>(true, !(33730i == arg_0.x)), vec3<bool>(false, true, !func_3(arg_1.x, vec2<bool>(false, true), u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1195f, -675f, -997f, -1654f), vec4<f32>(-544f, -1381f, 1000f, -692f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -664f, 2055f, -1000f), vec4<f32>(-1761f, 1257f, -1020f, 1140f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1598f, 1329f, -875f, -1000f)))), Struct_3(_wgslsmith_mult_i32(u_input.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-16861i, 4250i), arg_0.zy)), Struct_2(!(true & global0[_wgslsmith_index_u32(13710u, 23u)])), !(u_input.d.x != ~u_input.c)), vec4<bool>(arg_1.x, all(!arg_1), select(!(!global0[_wgslsmith_index_u32(0u, 23u)]), global0[_wgslsmith_index_u32(u_input.c, 23u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(64399u, 23u)], false)) & arg_1.x), true));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    return var_0.d.a;
}

fn func_1() -> vec4<f32> {
    let var_0 = vec4<i32>(u_input.b.x, -59485i, _wgslsmith_mult_i32(min(func_2(u_input.b, !vec2<bool>(global0[_wgslsmith_index_u32(68611u, 23u)], true)), min(select(-2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.c, 23u)]), countOneBits(0i))), -_wgslsmith_sub_i32(firstLeadingBit(-13271i), ~1i)), ~reverseBits(abs(firstTrailingBit(u_input.b.x))));
    global0 = array<bool, 23>();
    var var_1 = !(-363f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-156f, _wgslsmith_f_op_f32(step(-1034f, -272f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(316f)) * _wgslsmith_f_op_f32(-595f * -226f))));
    global0 = array<bool, 23>();
    var var_2 = Struct_3(~(~abs(_wgslsmith_div_i32(3764i, u_input.b.x))), Struct_2(!global0[_wgslsmith_index_u32(0u, 23u)]), all(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(60478u, 23u)]), vec2<bool>(false, false), false)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1495f) * 1017f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f * -1159f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<bool>(!all(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(31661u, 23u)], true), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 23u)]), global0[_wgslsmith_index_u32(4294967295u, 23u)])), false), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)], false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(8179u, 23u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(348f, -835f, 1571f, 271f) - vec4<f32>(-488f, 903f, -691f, -738f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))), Struct_3(~(i32(-1i) * -20093i), Struct_2(false), true), select(!select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(9832u, 23u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(36748u, 23u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 23u)]), true), select(select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(61844u, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)])), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(14547u, 23u)], false, false, true), global0[_wgslsmith_index_u32(69722u, 23u)]), !select(false, true, false)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.c.yy * var_0.c.zy))))));
    var var_2 = Struct_4(select(!select(select(var_0.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false), true), vec2<bool>(true, var_0.e.x), func_3(global0[_wgslsmith_index_u32(u_input.c, 23u)], vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<i32>(u_input.b.x, 2147483647i, var_0.d.a))), select(var_0.b.zy, !var_0.b.zx, !var_0.e.xy), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true)), !vec3<bool>(!(!global0[_wgslsmith_index_u32(u_input.c, 23u)]), any(select(var_0.b, vec3<bool>(global0[_wgslsmith_index_u32(64082u, 23u)], false, var_0.b.x), vec3<bool>(true, false, false))), all(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(-565f, 1949f, -2431f, var_0.c.x), 9460u >= u_input.a)))), Struct_3(2147483647i, Struct_2(any(vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(4294967295u, 23u)]), var_0.e);
    var var_3 = func_3(var_2.d.c & func_3(true, vec2<bool>(true, true), ~max(u_input.b, vec3<i32>(var_2.d.a, 1i, 2147483647i))), select(select(vec2<bool>(true, all(var_0.e)), select(var_2.e.yz, vec2<bool>(true, true), vec2<bool>(var_2.d.c, var_0.b.x)), select(any(vec2<bool>(false, false)), true, true)), !(!select(vec2<bool>(var_0.e.x, true), vec2<bool>(false, var_2.e.x), var_2.b.yx)), select(!select(vec2<bool>(false, false), var_2.a, var_0.a), vec2<bool>(global0[_wgslsmith_index_u32(78870u, 23u)], !var_0.a.x), var_0.e.zw)), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(var_0.d.a), _wgslsmith_mod_i32(0i, -2147483647i), firstLeadingBit(u_input.b.x)) ^ (u_input.b & (u_input.b ^ vec3<i32>(var_0.d.a, 12810i, u_input.b.x))), firstLeadingBit(-(~u_input.b)), abs(~u_input.b | abs(u_input.b))));
    var_2 = var_0;
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), var_1.x));
}

