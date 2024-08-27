struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(i32(-2147483648), 0i, -23979i, 37834i), vec4<i32>(3481i, 2147483647i, -1i, 0i), vec4<i32>(i32(-2147483648), 0i, 14772i, 58452i), vec4<i32>(-65489i, 1i, -8037i, 2147483647i), vec4<i32>(-6227i, i32(-2147483648), -26781i, 0i), vec4<i32>(-92719i, 23650i, -1i, -11769i), vec4<i32>(2147483647i, 0i, -18676i, 0i), vec4<i32>(0i, 7344i, 18284i, -22921i), vec4<i32>(0i, 5443i, -8077i, 0i), vec4<i32>(-15399i, -30864i, 0i, 1i), vec4<i32>(5990i, 15940i, 75145i, -1i), vec4<i32>(2147483647i, 0i, 8893i, 9106i), vec4<i32>(-22294i, -22762i, -47282i, 31493i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 4755i), vec4<i32>(-14452i, 1i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), -15131i, 2147483647i), vec4<i32>(1i, i32(-2147483648), -15298i, 1874i), vec4<i32>(-1i, 2147483647i, -22753i, 54068i), vec4<i32>(-15640i, -53857i, -22850i, 0i), vec4<i32>(1i, -80073i, 40501i, -34175i), vec4<i32>(0i, 1i, i32(-2147483648), -25088i), vec4<i32>(-1i, 2825i, -1i, -33797i), vec4<i32>(27764i, -27751i, 0i, -1i), vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(-10542i, 2147483647i, -37308i, -80496i), vec4<i32>(-10459i, 1i, -20027i, i32(-2147483648)), vec4<i32>(7106i, -54661i, -42259i, -29955i));

var<private> global1: array<bool, 24>;

var<private> global2: f32 = -1206f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global1 = array<bool, 24>();
    let var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~firstTrailingBit(0u), 14266u)), 24u)];
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1002f)))) + 247f);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, 53311i, 2147483647i), u_input.b.x, u_input.b.x << (u_input.a.x % 32u)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -13066i, u_input.b.x, -22575i), min(vec4<i32>(-1i, -2147483647i, u_input.b.x, -2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 27u)])))), u_input.b.x >> (18207u % 32u), 2147483647i);
    global0 = array<vec4<i32>, 27>();
    return ~max(_wgslsmith_add_i32(_wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -2147483647i)), _wgslsmith_mult_i32(0i, var_1.x)), ~_wgslsmith_dot_vec2_i32(var_1.zz, var_1.zy) >> (_wgslsmith_add_u32(~u_input.a.x, u_input.a.x) % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    global1 = array<bool, 24>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    let var_0 = Struct_2(Struct_1(u_input.b.x, false, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2108f, -1509f, arg_0.x)))), arg_2, -firstTrailingBit(global0[_wgslsmith_index_u32(~57728u, 27u)])));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -752f);
    let var_1 = vec2<f32>(-975f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - var_0.a.c.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -843f), -117f))) - _wgslsmith_f_op_f32(569f * _wgslsmith_f_op_f32(-106f - arg_0.x))));
    return Struct_1(func_3(), true, _wgslsmith_f_op_vec3_f32(var_0.a.c * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(695f - var_1.x), -716f, _wgslsmith_f_op_f32(-1213f * 407f))))), _wgslsmith_div_u32(firstLeadingBit(select(27557u, arg_2, false) & abs(4294967295u)), select(78614u, ~_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 53215u)), select(var_0.a.b, true, true))), vec4<i32>(~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.a.a, var_0.a.e.x, 1i)), firstLeadingBit(vec3<i32>(2147483647i, -15842i, u_input.b.x))), firstTrailingBit(u_input.b.x), -max(-2147483647i | u_input.b.x, abs(2147483647i)), -25251i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = Struct_5(arg_1.a, arg_1, -2147483647i);
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-527f, arg_1.a, arg_0.b)))), var_0.b, reverseBits(0i));
    global0 = array<vec4<i32>, 27>();
    global1 = array<bool, 24>();
    let var_1 = var_0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1376f - 1076f), _wgslsmith_f_op_f32(-arg_0.c.x), -346f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2190f, -758f, var_0.b.a, 472f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-104f, arg_0.c.x, arg_1.a, -564f) * vec4<f32>(993f, 1744f, 1248f, var_0.b.a)))))));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(504f, 1372f, 239f, 2523f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<f32>(-534f, 350f, -1000f), vec4<bool>(arg_1, false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], false), u_input.a.x), Struct_4(1096f, Struct_2(Struct_1(u_input.b.x, arg_1, vec3<f32>(1492f, -887f, 2302f), 37243u, vec4<i32>(u_input.b.x, 0i, -2147483647i, u_input.b.x))), false, vec2<u32>(4294967295u, u_input.a.x), 16284i))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1320f, -437f, -646f, -507f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1224f, -613f, 1309f, -426f)), arg_0))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(331f, 147f, -1611f, -401f)))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1405f + -1847f), 572f) * var_1.x);
    let var_2 = var_1.x;
    global1 = array<bool, 24>();
    return _wgslsmith_f_op_vec4_f32(func_4(Struct_1(-2147483647i, true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(var_2 + 925f)), var_2, _wgslsmith_f_op_f32(f32(-1f) * -796f)), firstTrailingBit(19705u), (_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x)) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & vec4<i32>(-77484i, ~(-1i), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-39027i, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, 4912i, u_input.b.x)))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-49032i, u_input.b.x), vec2<i32>(-2942i, 2147483647i)), !arg_1, _wgslsmith_f_op_vec3_f32(exp2(var_1.zwy)), ~u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)])), global1[_wgslsmith_index_u32(select(u_input.a.x, ~abs(u_input.a.x), any(select(vec2<bool>(true, false), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a.x, 24u)]))), 24u)], u_input.a.yz, abs(23095i)))).x;
}

fn func_5(arg_0: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(sign(1380f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    let var_0 = -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x)), abs(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(44837i, -1i)))), ~vec2<i32>(select(u_input.b.x, u_input.b.x, true), -u_input.b.x));
    global2 = -553f;
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(644f, -2147f)));
    global2 = _wgslsmith_f_op_f32(func_5(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-288f, 926f)) * _wgslsmith_f_op_f32(func_1(false, global1[_wgslsmith_index_u32(0u, 24u)]))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-625f))), Struct_2(func_2(vec3<f32>(-839f, 191f, -1149f), vec4<bool>(false, false, true, false), 17000u)), true, u_input.a.zx, 0i), -2147483647i)));
    global0 = array<vec4<i32>, 27>();
    var var_2 = select(!(!global1[_wgslsmith_index_u32(select(u_input.a.x, 45792u, global1[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 24u)]), 24u)]), all(!vec3<bool>(select(true, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), false, func_2(vec3<f32>(-1624f, -609f, 2067f), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], true, true), u_input.a.x).b)), global1[_wgslsmith_index_u32(reverseBits(74811u), 24u)]);
    var var_3 = ~(~(~((vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u) >> (vec4<u32>(u_input.a.x, 98518u, u_input.a.x, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, 109718u, 46074u, 1u))));
    global1 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(293f, -721f)), -2077f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) + _wgslsmith_f_op_f32(func_1(true, global1[_wgslsmith_index_u32(var_3.x, 24u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f - 455f)))), u_input.b.x);
}

