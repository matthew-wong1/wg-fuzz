struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: array<i32, 25> = array<i32, 25>(1i, 48474i, 2639i, 13464i, 20760i, -8909i, -1i, -18905i, 10691i, 31090i, 0i, -7621i, -29422i, 0i, 2147483647i, -26030i, -55092i, 7075i, 0i, 64846i, -53041i, 0i, -14041i, -1i, -1i);

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<bool>, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    global0 = array<vec4<f32>, 28>();
    global4 = array<vec2<bool>, 32>();
    global2 = array<vec3<u32>, 7>();
    global2 = array<vec3<u32>, 7>();
    var var_0 = _wgslsmith_div_i32(1i, abs(_wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(0u, 25u)], -2147483647i), vec3<i32>(u_input.b.x, 0i, u_input.a))))) >= arg_0.b;
    return arg_0.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    global3 = vec3<i32>(-11684i, _wgslsmith_clamp_i32(u_input.b.x, global1[_wgslsmith_index_u32(~(~func_3(var_0, vec3<bool>(false, false, false))), 25u)], min(~(2147483647i | global3.x), ~(-32658i))), ~firstTrailingBit(_wgslsmith_add_i32(reverseBits(global3.x), ~arg_0.x)));
    var var_1 = arg_1.a;
    let var_2 = 4294967295u;
    let var_3 = countOneBits(vec2<u32>(var_0.a, var_2));
    return global3.x;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    global3 = vec3<i32>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, arg_0), max(u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 25u)], arg_3.x)))), _wgslsmith_sub_i32(-1i, arg_0), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(select(0i, 21541i, false), func_2(global3.xx, Struct_1(1u, 2147483647i))), _wgslsmith_mod_i32(31575i, 9688i)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 37986i), vec2<i32>(arg_0, arg_0)), 16151i)));
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1274f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1506f, arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zy)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1));
    var var_2 = Struct_1(0u, _wgslsmith_sub_i32(arg_0, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.e, ~u_input.e), global3.x)));
    var var_3 = global0[_wgslsmith_index_u32(var_2.a, 28u)];
    return Struct_1(var_2.a, -54358i);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = select(!(!(1280f <= _wgslsmith_div_f32(arg_0, 172f))), arg_0 == arg_0, arg_2 & false);
    global0 = array<vec4<f32>, 28>();
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(select(firstTrailingBit(global3.x), global3.x, arg_2), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1.a, 25u)] & global3.x, ~global1[_wgslsmith_index_u32(u_input.d, 25u)])), -u_input.a, 22872i, -abs(arg_1.b) & _wgslsmith_sub_i32(arg_1.b, global3.x)), -vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(-1i), global1[_wgslsmith_index_u32(1u, 25u)] ^ u_input.a), countOneBits(25822i), abs(-arg_1.b), global1[_wgslsmith_index_u32(u_input.d, 25u)]));
    var var_2 = select(vec2<bool>(any(!vec4<bool>(arg_2, arg_2, arg_2, true)), all(select(global4[_wgslsmith_index_u32(~arg_1.a, 32u)], vec2<bool>(arg_2, arg_2), !global4[_wgslsmith_index_u32(u_input.d, 32u)]))), select(!global4[_wgslsmith_index_u32(arg_1.a, 32u)], vec2<bool>(true, arg_2), global4[_wgslsmith_index_u32(u_input.d, 32u)]), !((_wgslsmith_add_u32(16906u, u_input.d) >= 1u) != false));
    var var_3 = countOneBits(min(4294967295u, 8414u)) | ~(_wgslsmith_add_u32(abs(1u), 64181u & u_input.d) >> (countOneBits(~1u) % 32u));
    return Struct_1(func_4(global1[_wgslsmith_index_u32(9218u, 25u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1014f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, 588f, arg_0)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, arg_0, -899f)), vec3<f32>(arg_0, 360f, arg_0), any(vec4<bool>(false, var_2.x, arg_2, var_2.x))))), vec4<bool>(!(var_2.x || arg_2), !var_2.x && arg_2, arg_2, select(arg_0 >= 1602f, !arg_2, true)), var_1.ww << ((~vec2<u32>(u_input.d, 1u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u))).a, -1i);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global4 = array<vec2<bool>, 32>();
    let var_0 = func_5(arg_0, func_4(-10241i, vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))), vec4<bool>(false, any(global4[_wgslsmith_index_u32(u_input.d, 32u)]) && (-308f < arg_0), false, true), vec2<i32>(_wgslsmith_div_i32(-global3.x, func_2(vec2<i32>(0i, 2147483647i), Struct_1(arg_2.a, 1i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(-21638i, -19080i), global3.zy))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(35434u, u_input.d | u_input.d), ~_wgslsmith_add_u32(arg_1.x, arg_1.x)) <= 1u);
    let var_1 = Struct_1(53724u, u_input.e.x);
    var var_2 = Struct_1(~(_wgslsmith_mult_u32(~arg_1.x, 1u) << ((0u ^ var_0.a) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global3.yx, -_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, u_input.a), global3.xx)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -var_1.b), global3.yx)));
    global2 = array<vec3<u32>, 7>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f - -332f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1580f - 747f)))) * 224f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-872f, 1409f)) * _wgslsmith_f_op_f32(func_1(978f, vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), Struct_1(u_input.d, 2147483647i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f))))))));
    let var_1 = false;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1747f * 1953f))), -698f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1004f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1278f, vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), Struct_1(u_input.d, u_input.b.x))))))));
    var_0 = _wgslsmith_f_op_f32(-1759f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-654f))));
    var var_2 = 2147483647i;
    var var_3 = global3.xx;
    let var_4 = Struct_1(~46235u, abs(0i));
    global0 = array<vec4<f32>, 28>();
    let var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(51565u);
}

