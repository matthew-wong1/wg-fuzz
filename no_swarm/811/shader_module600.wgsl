struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(390f, -811f, -185f, 383f, -939f, 1065f, 1345f, 1481f, 581f, -1000f, -1140f, 819f, 502f, -1000f, -1235f, 151f, 1482f, 1065f, 1312f, -543f, -340f, 1052f, 459f, -850f, 348f, -195f, -1472f, -499f, 1460f, 1678f, 1734f, 1102f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = 444f;
    let var_1 = vec3<bool>(true & arg_0, true, !(arg_0 & any(!vec3<bool>(arg_0, false, arg_0))));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)), _wgslsmith_f_op_f32(max(-692f, _wgslsmith_f_op_f32(f32(-1f) * -446f)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1172f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, global0[_wgslsmith_index_u32(0u, 32u)])))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-var_0))));
}

fn func_3() -> vec2<f32> {
    global0 = array<f32, 32>();
    let var_0 = Struct_5(~abs(vec2<i32>(max(62135i, u_input.b.x), 1i)), Struct_1(true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1109f))), -505f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~8723u, 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1105f)) * 1057f))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]) * _wgslsmith_f_op_f32(-1203f + global0[_wgslsmith_index_u32(35985u, 32u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(50617u, 32u)], global0[_wgslsmith_index_u32(60559u, 32u)], global0[_wgslsmith_index_u32(110248u, 32u)], -1233f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -513f, global0[_wgslsmith_index_u32(48700u, 32u)], -244f), vec4<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 32u)], -2380f, 1056f), vec4<bool>(true, true, true, false))))) + vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33346u, 32u)]), -1414f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25759u, 32u)]), _wgslsmith_f_op_f32(f32(-1f) * -523f)))), Struct_3(_wgslsmith_div_f32(216f, global0[_wgslsmith_index_u32(firstTrailingBit(~26854u), 32u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, global0[_wgslsmith_index_u32(3706u, 32u)], global0[_wgslsmith_index_u32(105642u, 32u)], global0[_wgslsmith_index_u32(12348u, 32u)])))));
    let var_1 = firstTrailingBit(_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 41803i), vec3<i32>(u_input.a, 0i, var_0.a.x)), abs(u_input.c.yzy)) | abs(vec3<i32>(0i ^ u_input.c.x, firstLeadingBit(var_0.a.x), firstLeadingBit(10458i))));
    var var_2 = var_1.x;
    let var_3 = Struct_4(!(!select(vec2<bool>(true, var_0.b.a), !vec2<bool>(false, var_0.b.a), select(true, var_0.b.a, true))), var_0.d, true, Struct_3(global0[_wgslsmith_index_u32(~(~1u), 32u)], var_0.e.b), global0[_wgslsmith_index_u32(abs(firstLeadingBit(~4294967295u)), 32u)]);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-646f, var_3.d.b.x) - vec2<f32>(132f, var_3.b.b.x))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(266f, -236f)));
    let var_1 = ~4294967295u;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(all(vec2<bool>(true, false)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 619f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(var_1, 32u)])) * _wgslsmith_f_op_vec2_f32(func_3())))));
    let var_2 = Struct_4(select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true))), Struct_3(_wgslsmith_f_op_vec2_f32(func_2(true)).x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1, 32u)]) + 2089f), -225f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(13426u, 32u)])), global0[_wgslsmith_index_u32(var_1, 32u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2697f))))), select(true, !all(vec2<bool>(true, true)), select(54983i, 1i, all(vec4<bool>(false, true, true, false))) > u_input.b.x), Struct_3(global0[_wgslsmith_index_u32(var_1, 32u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1773f, global0[_wgslsmith_index_u32(var_1, 32u)], var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(var_1, 32u)], var_0.x, 417f) + vec4<f32>(-580f, 207f, var_0.x, 775f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((~vec4<u32>(var_1, var_1, var_1, 116979u) ^ vec4<u32>(var_1, var_1, var_1, 0u)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(46793u, var_1, 1u, var_1), vec4<u32>(var_1, 56734u, 38226u, var_1)), ~vec4<u32>(2189u, 0u, var_1, var_1), vec4<u32>(var_1, var_1, 20901u, 6235u)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1, 0u, 21758u, 4294967295u), vec4<u32>(1u, var_1, var_1, 4294967295u)) << (vec4<u32>(reverseBits(30591u), countOneBits(18423u), reverseBits(var_1), select(0u, 31757u, false)) % vec4<u32>(32u))), 32u)]);
    global0 = array<f32, 32>();
    return _wgslsmith_add_i32(20698i, _wgslsmith_mult_i32(min(max(u_input.d, -u_input.a), _wgslsmith_clamp_i32(firstTrailingBit(u_input.c.x), ~u_input.d, 1i)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(1u, countOneBits(~select(1u, _wgslsmith_mod_u32(25887u, 11059u), true)));
    var var_1 = ~(~_wgslsmith_div_i32(-28144i & func_1(), _wgslsmith_dot_vec3_i32(~u_input.c.wyw, vec3<i32>(u_input.b.x, u_input.d, -1i))));
    global0 = array<f32, 32>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(true)).x))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(var_0, 11419u, 1u, 26735u), vec4<u32>(0u, 17651u, var_0, 28112u)), reverseBits(vec4<u32>(4294967295u, 1u, var_0, 1u))), 32u)], _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(1121f - global0[_wgslsmith_index_u32(~var_0, 32u)])), -558f, global0[_wgslsmith_index_u32(var_0, 32u)]));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var_1 = u_input.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(true)), _wgslsmith_div_vec2_f32(var_2.b.xw, var_2.b.zw), (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(30269u, var_0) | _wgslsmith_clamp_u32(var_0, 0u, 4294967295u), 32u)] != global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0, 52048u), 32u)]) != any(vec2<bool>(true, var_0 >= 0u))));
    let var_4 = firstLeadingBit(u_input.c.xzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-554f + var_2.a), _wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1927f, 761f, -942f)), var_2.b.xwx)))), var_2.b.xzx);
}

