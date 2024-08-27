struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-1195f, -1000f, 567f), vec3<f32>(-1094f, -1872f, 1392f), vec3<f32>(816f, 665f, -554f), vec3<f32>(833f, -386f, 2066f), vec3<f32>(420f, -1512f, -477f), vec3<f32>(-438f, 1876f, -366f), vec3<f32>(688f, 1000f, 813f), vec3<f32>(-1000f, 202f, -347f), vec3<f32>(-1000f, 823f, -159f), vec3<f32>(-827f, -516f, 344f), vec3<f32>(-1000f, -145f, 447f), vec3<f32>(-369f, -640f, -1010f), vec3<f32>(588f, -229f, 806f), vec3<f32>(249f, -366f, 117f), vec3<f32>(883f, -1083f, -969f), vec3<f32>(862f, 652f, 1044f), vec3<f32>(-532f, 1355f, 1012f), vec3<f32>(-1450f, 561f, -1000f), vec3<f32>(-1018f, 1646f, -1102f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(~4294967295u, arg_0.d.x, true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(445f, arg_0.d.x) * arg_0.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 594f))))));
    global3 = array<vec3<f32>, 19>();
    global0 = array<i32, 8>();
    global2 = array<vec3<f32>, 12>();
    var var_1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-285f, _wgslsmith_div_f32(arg_0.d.x, arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-916f - -349f)))));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(72263u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - -2149f) - _wgslsmith_f_op_f32(f32(-1f) * -1007f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2123f, 586f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1384f)) * _wgslsmith_f_op_f32(1f - 124f))), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, _wgslsmith_f_op_f32(f32(-1f) * -1932f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1202f, 387f), vec2<f32>(910f, 591f)))))));
    let var_1 = 19413i;
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 8607u), vec2<u32>(0u, 81743u)), abs(~vec2<u32>(56310u, u_input.b))), countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.a, 4294967295u), select(vec2<u32>(var_0.a, u_input.c), vec2<u32>(var_0.a, 4294967295u), true)))), var_0.d.x, all(vec2<bool>(true, !any(vec4<bool>(arg_0, true, var_0.c, arg_0)))), vec2<f32>(1066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f)))));
    let var_3 = !(!select(vec3<bool>(var_2.d.x <= -437f, arg_0, true), !select(vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.c, var_0.c, var_0.c)), true));
    var_2 = Struct_1(94352u, _wgslsmith_f_op_f32(-841f * var_2.d.x), any(vec4<bool>(arg_0, true, all(!vec4<bool>(var_0.c, true, var_3.x, false)), all(select(vec4<bool>(true, var_0.c, arg_0, arg_0), vec4<bool>(false, true, arg_0, var_2.c), vec4<bool>(var_3.x, var_0.c, false, true))))), vec2<f32>(_wgslsmith_f_op_f32(step(var_2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1051f)), -707f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_f_op_f32(func_3(var_0)))));
    return !vec4<bool>(true, false, any(vec4<bool>(7120i >= var_1, select(var_3.x, true, var_0.c), true, true)), any(vec4<bool>(all(var_3.xy), var_3.x, var_1 <= u_input.d, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec2<u32> {
    global0 = array<i32, 8>();
    let var_0 = global0[_wgslsmith_index_u32(1u >> (_wgslsmith_sub_u32(1u, 1u) % 32u), 8u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-931f, _wgslsmith_f_op_f32(-1504f - -833f), 280f, _wgslsmith_div_f32(155f, 701f)), vec4<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), select(false, arg_2.x, true), false, global0[_wgslsmith_index_u32(u_input.a, 8u)] <= 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1008f, 121f, -1035f, 1191f)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-880f, var_1.x), _wgslsmith_f_op_f32(trunc(-736f)));
    global0 = array<i32, 8>();
    return _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, u_input.c)), vec2<u32>(~764u, 0u | u_input.b)), firstTrailingBit(~vec2<u32>(u_input.c, 175u))) & (~vec2<u32>(~71260u, ~4294967295u) >> (((~vec2<u32>(6549u, u_input.c) ^ firstLeadingBit(vec2<u32>(u_input.a, u_input.c))) | _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 7429u), vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(func_4(!select(func_2(true), select(vec4<bool>(arg_1.c, false, false, arg_1.c), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(true, false, arg_1.c, arg_1.c)), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)), vec4<bool>(all(select(vec4<bool>(true, true, false, arg_1.c), vec4<bool>(arg_1.c, false, arg_1.c, true), vec4<bool>(true, true, arg_1.c, false))), arg_1.c, true, !(!arg_1.c)), select(vec4<bool>(all(vec3<bool>(arg_1.c, false, arg_1.c)), arg_1.c | arg_1.c, true, true), !vec4<bool>(arg_1.c, false, true, false), any(vec2<bool>(true, false)))));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(14561u, 1u, arg_1.a) << (vec3<u32>(50378u, 16794u, arg_1.a) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_0.x, arg_1.a) & vec4<u32>(u_input.c, var_0.x, arg_1.a, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a, u_input.c), vec4<u32>(0u, var_0.x, arg_1.a, 41337u))), abs(u_input.b)) ^ 31404u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1.d.x) - _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x))))), false, arg_1.d);
    let var_2 = global1[_wgslsmith_index_u32(min(select(~1u, 0u, !all(vec3<bool>(var_1.c, var_1.c, false))), firstLeadingBit(func_4(select(select(vec4<bool>(true, arg_1.c, true, false), vec4<bool>(arg_1.c, true, true, false), vec4<bool>(true, true, false, arg_1.c)), select(vec4<bool>(var_1.c, true, arg_1.c, false), vec4<bool>(false, var_1.c, true, true), vec4<bool>(false, false, true, arg_1.c)), false), !(!vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c)), !vec4<bool>(arg_1.c, true, true, false)).x)), 9u)];
    let var_3 = Struct_1(_wgslsmith_clamp_u32(35358u, ~(1u >> (~var_0.x % 32u)), ~(~(~1u))), 1131f, all(func_2(true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 677f) - _wgslsmith_f_op_vec2_f32(-arg_1.d)), vec2<f32>(-1614f, arg_1.b)) + var_1.d));
    let var_4 = !func_2(_wgslsmith_f_op_f32(-arg_1.b) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(step(1828f, arg_1.b))));
    return Struct_1(~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(70936u, 1u, var_1.a, var_0.x), vec4<u32>(var_3.a, 10353u, arg_1.a, 40407u), var_4), vec4<u32>(~arg_1.a, 37662u, countOneBits(14623u), 32762u)), var_1.d.x, !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, arg_1.d.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.b - 509f), _wgslsmith_div_f32(arg_1.d.x, -603f)))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)]), global1[_wgslsmith_index_u32(min(u_input.c, 28229u), 9u)], _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.a, 9u)], vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(arg_0.a, 8u)], global0[_wgslsmith_index_u32(arg_0.a, 8u)], 26942i))), vec4<i32>(~2147483647i, global0[_wgslsmith_index_u32(arg_0.a, 8u)], min(global0[_wgslsmith_index_u32(arg_0.a, 8u)], global0[_wgslsmith_index_u32(8117u, 8u)]), u_input.d)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0.a, 78446u, 66670u), vec4<u32>(arg_0.a, u_input.a, 11092u, arg_0.a)) << (u_input.b % 32u), 9u)]), -2147483647i ^ u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.a, 8u)]);
    var var_1 = func_1(firstLeadingBit(~var_0 >> (firstLeadingBit(max(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 16822u))) % vec4<u32>(32u))), func_1(vec4<i32>(var_0.x, 30012i, -25196i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(6237i, u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<i32>(-1i, var_0.x, 28743i, var_0.x)), _wgslsmith_sub_i32(-30820i, var_0.x), all(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)))), arg_0));
    var var_2 = false;
    let var_3 = func_1(var_0, arg_0);
    global3 = array<vec3<f32>, 19>();
    return _wgslsmith_f_op_f32(-var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec2<bool>(true, any(vec3<bool>(true, false, true)))));
    global0 = array<i32, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1274f, _wgslsmith_f_op_f32(365f - _wgslsmith_f_op_f32(abs(-2745f))), _wgslsmith_f_op_f32(func_5(func_1(global1[_wgslsmith_index_u32(u_input.b, 9u)], Struct_1(u_input.a, 594f, var_0.x, vec2<f32>(-638f, 1022f)))))) + global2[_wgslsmith_index_u32(4294967295u & select(_wgslsmith_dot_vec4_u32(vec4<u32>(5192u, 6798u, u_input.c, 14668u), vec4<u32>(29916u, u_input.a, u_input.a, 13734u)), _wgslsmith_add_u32(u_input.c, 0u), true), 12u)]) * global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(firstLeadingBit(4294967295u) | _wgslsmith_mult_u32(12268u, u_input.b)), func_1(vec4<i32>(abs(-11416i), ~global0[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(58771u, 8u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(74296u, u_input.b), 8u)]), func_1(-global1[_wgslsmith_index_u32(35531u, 9u)], Struct_1(u_input.b, -871f, var_0.x, vec2<f32>(-1435f, 1630f)))).a), 12u)]);
    let var_2 = vec4<f32>(1110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.x)))))), -736f, _wgslsmith_f_op_f32(floor(var_1.x)));
    global1 = array<vec4<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_div_vec2_i32(vec2<i32>(-18833i, u_input.d) >> (vec2<u32>(12388u, u_input.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -15708i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)])))), _wgslsmith_f_op_f32(func_3(Struct_1(~24547u ^ _wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(select(var_2.x, -229f, false))), !any(vec3<bool>(true, var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yy + var_1.zx))))));
}

