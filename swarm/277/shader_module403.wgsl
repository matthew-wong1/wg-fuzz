struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: f32;

var<private> global1: array<i32, 16>;

var<private> global2: array<f32, 25>;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = u_input.c;
    let var_1 = i32(-1i) * -10782i;
    var var_2 = vec3<bool>(all(select(vec3<bool>(true, arg_2.d, select(arg_1.d, true, arg_1.d)), vec3<bool>(true, true, true), arg_2.b.x <= _wgslsmith_f_op_f32(arg_1.b.x - -321f))), false, false);
    global1 = array<i32, 16>();
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])))), 295f, false)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(~vec3<i32>(var_0.a.x, -16741i, 0i), arg_0.b, reverseBits(var_0.c), all(vec2<bool>(false, arg_0.d)), vec2<i32>(global1[_wgslsmith_index_u32(34355u, 16u)], var_0.e.x) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), Struct_1(arg_0.a ^ vec3<i32>(arg_0.a.x, global1[_wgslsmith_index_u32(arg_0.c, 16u)], -1i), arg_0.b, 24173u ^ u_input.c, false, var_0.a.xz)))));
    global3 = var_0.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, global2[_wgslsmith_index_u32(~u_input.c, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1261f)) - global2[_wgslsmith_index_u32(~0u, 25u)]), 2774f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f)))));
    let var_3 = min(vec3<i32>(1i, firstTrailingBit(select(-1i, var_0.e.x, var_0.d) & 31977i), firstLeadingBit(countOneBits(abs(arg_0.a.x)))), var_0.a);
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1995f, _wgslsmith_f_op_f32(f32(-1f) * -1052f), -135f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(10894u, 25u)], arg_1.b.x, arg_1.b.x) - vec3<f32>(arg_0, arg_1.b.x, 2240f))))));
    var var_1 = func_2(func_2(Struct_1(vec3<i32>(-11072i, ~1i, -2147483647i | u_input.d.x), var_0.yy, ~0u, func_2(arg_1).d, -min(vec2<i32>(-808i, 0i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(arg_1.c, 16u)])))));
    var var_2 = vec3<bool>(all(!vec3<bool>(any(vec4<bool>(false, true, false, false)), !arg_1.d, all(vec2<bool>(true, true)))), true, arg_1.d);
    var var_3 = arg_1;
    var_3 = func_2(Struct_1(u_input.a.xxz, _wgslsmith_f_op_vec2_f32(select(var_3.b, var_1.b, true)), ~max(~u_input.c, _wgslsmith_sub_u32(arg_1.c, 91835u)), !(true | arg_1.d) & false, vec2<i32>(max(var_1.e.x, u_input.b), 0i) ^ var_1.e));
    return min(1u, 0u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = arg_0.d;
    global1 = array<i32, 16>();
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(arg_1, -22348i), arg_1, 2147483647i), arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(1062f, 1862f)), _wgslsmith_div_vec2_f32(arg_0.b, var_1.b)))) + vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.c >> (var_1.c % 32u), 25u)] - _wgslsmith_f_op_f32(f32(-1f) * -146f)))), func_4(-1463f, func_2(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 25u)] * global2[_wgslsmith_index_u32(arg_0.c, 25u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f - var_1.b.x)))), false, ~vec2<i32>(arg_1, 16481i));
    global2 = array<f32, 25>();
    return -813f;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = 59969u;
    global0 = -900f;
    global1 = array<i32, 16>();
    global0 = -1000f;
    let var_1 = -arg_1;
    return Struct_1(~(-select(u_input.d.yyy, vec3<i32>(-62855i, u_input.a.x, u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), arg_0.xy, 1u, select(false, all(vec2<bool>(true, var_1 >= 0i)), any(vec3<bool>(true, true, true))), -u_input.d.wy);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_1(arg_0.a, arg_0.b, 1u, any(select(!vec4<bool>(arg_1.d, arg_1.d, false, false), !vec4<bool>(arg_0.d, arg_1.d, arg_1.d, true), arg_0.d)), firstLeadingBit(vec2<i32>(u_input.b, ~countOneBits(u_input.d.x))));
    global3 = _wgslsmith_f_op_f32(step(860f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(-1764f - 571f))));
    let var_1 = 405f;
    global2 = array<f32, 25>();
    let var_2 = -2516f;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1069f), arg_0.b.x, _wgslsmith_div_f32(var_1, var_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_2, global2[_wgslsmith_index_u32(arg_1.c, 25u)]) * vec3<f32>(-2012f, -366f, 2749f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(211f, -1000f, arg_0.b.x) + vec3<f32>(581f, var_1, arg_0.b.x)), vec3<f32>(arg_0.b.x, -912f, 1164f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_6(Struct_1(max(u_input.d.wxz, vec3<i32>(global1[_wgslsmith_index_u32(39729u, 16u)], u_input.a.x, -2147483647i)) | vec3<i32>(u_input.d.x, -37625i, 2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], -1361f) - vec2<f32>(-888f, 806f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, -677f) - vec2<f32>(global2[_wgslsmith_index_u32(39681u, 25u)], -246f)), vec2<bool>(false, true))), ~_wgslsmith_clamp_u32(u_input.c, 11531u, 25263u), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))), (u_input.d.wx << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))) << (~vec2<u32>(0u, 45401u) % vec2<u32>(32u))), func_5(vec3<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(21855u, 25u)], 354f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(1u, 16u)]), vec2<f32>(-968f, -112f), u_input.c, false, vec2<i32>(global1[_wgslsmith_index_u32(0u, 16u)], u_input.a.x)), global1[_wgslsmith_index_u32(25645u, 16u)], 45019i)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), 25u)]), u_input.b, _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 25u)], -846f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 25u)]))), vec3<bool>(false, true, false)))));
    global3 = 1301f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -227f));
    let var_2 = func_5(var_0, abs(u_input.d.x), -1521f);
    let var_3 = _wgslsmith_sub_i32(-41052i, -global1[_wgslsmith_index_u32(70491u, 16u)]);
    let var_4 = vec4<bool>(true, var_2.d, var_2.d, var_2.d);
    var var_5 = var_2;
    var var_6 = var_2.d;
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(max(var_1, var_0.x)), _wgslsmith_f_op_f32(-1702f * _wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}

