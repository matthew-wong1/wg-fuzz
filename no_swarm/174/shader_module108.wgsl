struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-551f, -126f, 1059f, 499f, 1301f, 1000f, -1000f, 2533f, 290f, 1241f, 1000f, -619f);

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 3411u), vec2<u32>(1u, 1u), vec2<u32>(4247u, 5354u), vec2<u32>(48294u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(43994u, 0u), vec2<u32>(1u, 11319u), vec2<u32>(78579u, 28137u), vec2<u32>(14915u, 4294967295u), vec2<u32>(0u, 986u), vec2<u32>(1u, 14302u), vec2<u32>(20999u, 46033u), vec2<u32>(1u, 4294967295u), vec2<u32>(42078u, 1u), vec2<u32>(13551u, 0u), vec2<u32>(27131u, 1u), vec2<u32>(42487u, 95234u), vec2<u32>(13925u, 1u), vec2<u32>(1u, 7366u), vec2<u32>(4294967295u, 20262u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26749u, 36141u), vec2<u32>(534u, 4294967295u), vec2<u32>(1u, 63745u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    let var_0 = arg_1.a.x;
    var var_1 = vec2<bool>(false, arg_1.e);
    var var_2 = -arg_0;
    let var_3 = vec4<i32>(-49222i, ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(arg_0, -1i))), 2147483647i, -u_input.c);
    var var_4 = -2147483647i;
    return var_3.yyx;
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<vec2<u32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(min(465f, arg_0.c.d));
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    let var_1 = ~max(~(~(~u_input.a.ywx)), ~(firstLeadingBit(vec3<u32>(1u, 50742u, u_input.b)) & vec3<u32>(u_input.a.x, 23599u, 5490u)));
    return -644f;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], arg_3.c, _wgslsmith_f_op_f32(min(arg_3.d, _wgslsmith_f_op_f32(func_3(Struct_3(arg_3.a.x, arg_3, Struct_1(arg_3.a, arg_3.d, 466f, 2251f, arg_1)))))), _wgslsmith_div_f32(-854f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 12u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d, global0[_wgslsmith_index_u32(1u, 12u)], 388f, 3038f) * vec4<f32>(-646f, 694f, -562f, -1719f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-799f, arg_3.b, -362f, arg_3.b)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1087f, -950f, global0[_wgslsmith_index_u32(54930u, 12u)], arg_3.c)))))), select(vec4<bool>(arg_2.x, arg_2.x, u_input.a.x > 51128u, all(vec3<bool>(false, arg_0, false))), !(!vec4<bool>(true, arg_0, arg_0, arg_0)), 10693i < ~arg_1))));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(min(7663i, arg_3.a.x), -1i, -2147483647i ^ u_input.c, arg_1) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(arg_3.a.x, arg_1, 32581i, arg_1), abs(vec4<i32>(arg_3.e, var_1.a.x, arg_3.a.x, arg_3.a.x)))), -(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_3.e, 25818i, u_input.c, arg_3.a.x), -vec4<i32>(22535i, u_input.c, arg_1, 22524i)) << (~u_input.a % vec4<u32>(32u))));
    let var_3 = -5159i;
    let var_4 = select(arg_2, select(vec2<bool>(true, arg_0), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), arg_2), select(arg_2, arg_2, arg_2.x), arg_0), true), !(!(!arg_2)));
    return Struct_3(4255i, var_1, arg_3);
}

fn func_1() -> f32 {
    let var_0 = func_4(true, (_wgslsmith_sub_i32(u_input.c, min(1i, 6351i)) & _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(u_input.c, -1i))) >> (1u % 32u), !vec2<bool>(true, 1000f < _wgslsmith_f_op_f32(floor(-128f))), Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c, 2147483647i, 13960i), vec3<i32>(40110i, u_input.c, u_input.c), false), vec3<i32>(-1i, -67032i, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(18565i, u_input.c, -2147483647i), func_2(u_input.c, Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(12576u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), -16502i, u_input.a.xwz, u_input.b, false), global0[_wgslsmith_index_u32(11303u, 12u)])), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(22437i, u_input.c, -23972i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -38188i, u_input.c), vec3<i32>(u_input.c, 9856i, u_input.c))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyy, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(22000u, 4294967295u, 23186u)), vec3<u32>(42239u, 47547u, 67106u))), 12u)], 1285f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(35822i, Struct_1(vec3<i32>(u_input.c, -6942i, u_input.c), -206f, -482f, 297f, -1i), Struct_1(vec3<i32>(u_input.c, 58730i, u_input.c), 183f, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.c))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 54532u), 12u)] + 462f))), _wgslsmith_div_i32(-(~u_input.c), _wgslsmith_sub_i32(-17968i, -10171i))));
    var var_1 = vec4<bool>(true, false, select(true | all(vec3<bool>(true, true, true)), select(true, false, true), false), select(false | all(vec4<bool>(true, false, true, false)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 12u)])), -1332f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f - -572f) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.a.x), 12u)])));
    var_1 = select(vec4<bool>(var_1.x, any(vec2<bool>(true, var_1.x | true)), (max(1u, u_input.b) < _wgslsmith_dot_vec4_u32(vec4<u32>(104435u, 41639u, 0u, 1u), vec4<u32>(0u, u_input.a.x, 1781u, u_input.a.x))) != (u_input.c > u_input.c), var_1.x), select(!select(vec4<bool>(false, false, var_1.x, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x), vec4<bool>(true, var_1.x, true, var_1.x)), !(!(!vec4<bool>(true, false, var_1.x, var_1.x))), select(vec4<bool>(true, var_1.x, all(var_1.yxy), true), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), true)), !select(vec4<bool>(var_1.x, false, !var_1.x, -1022f > global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(!var_1.x, true, true, !var_1.x), !all(var_1.wyy)));
    global0 = array<f32, 12>();
    var_1 = vec4<bool>(!all(vec4<bool>(true, var_1.x, true, all(vec3<bool>(true, true, false)))), !any(!var_1.zx), false, any(vec3<bool>(!(!var_1.x), false, true)));
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(16103u, 12u)] - 742f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2181f)))), -1306f));
    var var_1 = abs(vec3<i32>(-1i, countOneBits(u_input.c), min(2147483647i, -u_input.c) ^ -u_input.c));
    var_1 = ~vec3<i32>(1i, -var_1.x, 1i);
    var_1 = min(vec3<i32>(27309i, var_1.x & (u_input.c >> (u_input.b % 32u)), ~(-1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c, _wgslsmith_div_i32(1i, var_1.x)), _wgslsmith_add_i32(select(u_input.c, var_1.x, false), _wgslsmith_sub_i32(var_1.x, 24141i)), 1i), vec3<i32>(-11713i, -var_1.x, _wgslsmith_sub_i32(var_1.x, -2147483647i)), _wgslsmith_div_vec3_i32(-(~vec3<i32>(var_1.x, 1i, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -16245i, var_1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_1.x, u_input.c), vec3<i32>(-1i, 27670i, var_1.x)), vec3<i32>(var_1.x, u_input.c, -1i) & vec3<i32>(-22026i, 12377i, u_input.c)))));
    let var_2 = func_4(all(vec4<bool>(true, any(vec4<bool>(true, false, true, true)) | true, false, false)), _wgslsmith_mult_i32(var_1.x, -18409i), vec2<bool>(true, u_input.a.x >= max(u_input.a.x, u_input.a.x)), Struct_1(~vec3<i32>(abs(1752i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.x, u_input.c), vec3<i32>(u_input.c, var_1.x, var_1.x)), 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(788f, 580f, false)) + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(34010u, 12u)], -1068f))), -344f), _wgslsmith_f_op_f32(f32(-1f) * -1471f), global0[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_sub_i32(-1i, func_2(-46076i, Struct_2(var_0, var_1.x, u_input.a.zxx, 0u, true), -786f).x))).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zyy, var_0.wxz, var_0.yy);
}

