struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(26598i, 28900i), vec2<i32>(-1i, -35924i)), Struct_1(vec2<i32>(13515i, i32(-2147483648)), vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(31319i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(-1i, 1i), vec2<i32>(-49169i, 1i)), Struct_1(vec2<i32>(0i, -31451i), vec2<i32>(i32(-2147483648), 50498i)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(6622i, 30233i)), Struct_1(vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 32127i)), Struct_1(vec2<i32>(12530i, -18986i), vec2<i32>(54916i, 47079i)), Struct_1(vec2<i32>(-35178i, -16154i), vec2<i32>(45920i, -38472i)), Struct_1(vec2<i32>(1i, -6281i), vec2<i32>(29273i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 28821i), vec2<i32>(12900i, 26323i)), Struct_1(vec2<i32>(-10699i, -17471i), vec2<i32>(i32(-2147483648), -78990i)), Struct_1(vec2<i32>(-48996i, 35957i), vec2<i32>(-38511i, 1i)));

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<u32, 20>;

var<private> global4: array<vec4<bool>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, u_input.b.x), 1i), u_input.b.x), u_input.b);
    global4 = array<vec4<bool>, 18>();
    var_0 = arg_3;
    var var_1 = !arg_2.yyx;
    var_1 = arg_2.zyz;
    return !select(var_1.yx, arg_2.xx, vec2<bool>(!arg_2.x, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(arg_1.a.x, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, ~0i), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(46582i, arg_1.b.x)))), u_input.b.x & _wgslsmith_mod_i32(1i, -max(arg_0.b.x, 4329i)));
    let var_1 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(713u, 20u)], 20u)] >= ~(4294967295u << (~u_input.a.x % 32u));
    var var_2 = _wgslsmith_div_u32(164007u, 87376u);
    let var_3 = ~_wgslsmith_add_i32(2147483647i, reverseBits(arg_1.a.x) >> (min(u_input.a.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52249u, 20u)], 20u)]) % 32u));
    let var_4 = !select(!select(!vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), true), select(!func_2(vec2<u32>(99582u, 4294967295u), var_1, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_1), !vec2<bool>(var_1, var_1), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 135308u) >= 1u), func_2(u_input.a.yx, true & all(vec2<bool>(var_1, true)), global4[_wgslsmith_index_u32(4294967295u, 18u)], arg_0));
    return Struct_1(u_input.b, vec2<i32>(~32290i, u_input.b.x) << ((vec2<u32>(_wgslsmith_add_u32(6234u, 1u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]) >> (firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xz)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1890f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1270f * -1000f), _wgslsmith_f_op_f32(-global1.x))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, -351f), vec2<f32>(global1.x, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1106f, 735f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, 2155f) * vec2<f32>(-1110f, arg_0)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, global1.x))))))));
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec2_u32(countOneBits(u_input.a.yy), vec2<u32>(global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(67522u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 1u, 4294967295u), vec4<u32>(0u, 1u, 71884u, 33346u)), 1u), 20u)], ~24536u)));
    var var_1 = Struct_1(countOneBits(~abs(vec2<i32>(-4519i, arg_1.b.x))), reverseBits(max(_wgslsmith_sub_vec2_i32(max(arg_1.a, vec2<i32>(arg_1.b.x, -2147483647i)), vec2<i32>(-2147483647i, u_input.b.x) | vec2<i32>(1828i, 2147483647i)), u_input.b)));
    let var_2 = true;
    let var_3 = ~(~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 4294967295u, 4294967295u)), ~max(vec4<u32>(var_0.x, var_0.x, 5122u, u_input.a.x), vec4<u32>(var_0.x, 53568u, 0u, 4294967295u))));
    return (var_3 << (select(vec4<u32>(_wgslsmith_add_u32(61205u, 1176u), 1u, select(40927u, global3[_wgslsmith_index_u32(0u, 20u)], false), _wgslsmith_sub_u32(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 20u)])), min(~var_3, _wgslsmith_div_vec4_u32(var_3, vec4<u32>(var_3.x, 4294967295u, 42747u, 18841u))), func_1(Struct_1(vec2<i32>(var_1.b.x, var_1.b.x), arg_1.a), Struct_1(u_input.b, var_1.b)).b.x < abs(var_1.b.x)) % vec4<u32>(32u))) & (vec4<u32>(1819u, 15073u, ~_wgslsmith_sub_u32(68141u, 9367u), 47237u) & var_3);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    global3 = array<u32, 20>();
    global4 = array<vec4<bool>, 18>();
    global4 = array<vec4<bool>, 18>();
    var var_0 = func_1(Struct_1(-(~arg_1.a), _wgslsmith_sub_vec2_i32(u_input.b, arg_1.b)), func_1(Struct_1(u_input.b, u_input.b), Struct_1(_wgslsmith_add_vec2_i32(arg_1.b, vec2<i32>(arg_1.a.x, u_input.b.x)) & (vec2<i32>(10438i, -55298i) ^ vec2<i32>(u_input.b.x, u_input.b.x)), arg_1.b)));
    let var_1 = func_1(Struct_1(~var_0.a, arg_1.b & vec2<i32>(u_input.b.x, abs(var_0.b.x))), global2[_wgslsmith_index_u32(u_input.a.x, 2u)]);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f)) + global1.x))), _wgslsmith_f_op_f32(191f + _wgslsmith_f_op_f32(-global1.x))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = ~(-u_input.b.x ^ -2734i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, -637f)));
    let var_2 = u_input.b.x;
    global3 = array<u32, 20>();
    var var_3 = Struct_1(vec2<i32>(var_2, -_wgslsmith_mult_i32(-var_2, _wgslsmith_div_i32(var_2, var_2))), u_input.b);
    return vec3<bool>(true, false, all(global4[_wgslsmith_index_u32(~1u, 18u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(-2147483647i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(1i))), vec2<i32>(0i, u_input.b.x) & u_input.b);
    let var_1 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(47042u, reverseBits(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), ~u_input.a.yz);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-738f, -432f), vec2<f32>(735f, global1.x)))))));
    var var_2 = ~firstLeadingBit(min(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), 1u, _wgslsmith_add_u32(var_1.x, 0u), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(var_1.x, 20u)], var_1.x)), ~(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 20u)], 4143u, 4294967295u, 4294967295u))));
    let var_3 = func_5(1u, vec4<f32>(_wgslsmith_f_op_f32(func_4(func_3(global1.x, func_1(global2[_wgslsmith_index_u32(1u, 2u)], Struct_1(vec2<i32>(27306i, 0i), vec2<i32>(var_0.b.x, var_0.a.x)))), global2[_wgslsmith_index_u32(10638u, 2u)])), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-877f))))), 142f, _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, 0u, var_1.x, 1u), vec4<u32>(var_1.x, 61329u, 1u, 55225u)), func_1(Struct_1(u_input.b, var_0.b), func_1(Struct_1(vec2<i32>(var_0.b.x, 884i), vec2<i32>(u_input.b.x, 34689i)), global2[_wgslsmith_index_u32(111028u, 2u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-900f, global1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1353f, global1.x), vec2<f32>(global1.x, 104f)) - vec2<f32>(-920f, global1.x))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 980f))))));
    let var_4 = !((var_1.x <= 11091u) || var_3.x);
    global3 = array<u32, 20>();
    let var_5 = select(vec4<bool>(false, var_4, !var_3.x, var_3.x || var_3.x), select(select(vec4<bool>(any(vec4<bool>(true, var_4, true, true)), var_3.x, select(var_4, false, var_4), true), vec4<bool>(func_2(var_2.zx, var_3.x, vec4<bool>(var_3.x, var_3.x, true, true), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 2u)]).x, var_3.x, true, any(global4[_wgslsmith_index_u32(0u, 18u)])), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~var_1.x, 20u)], 18u)]), select(select(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.wxz, vec3<u32>(var_2.x, 4294967295u, var_2.x)), 18u)], select(vec4<bool>(var_4, false, false, true), vec4<bool>(true, false, true, var_4), true), select(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<bool>(false, var_4, true, var_4), global4[_wgslsmith_index_u32(var_1.x, 18u)])), global4[_wgslsmith_index_u32(4294967295u, 18u)], select(global4[_wgslsmith_index_u32(1u >> (0u % 32u), 18u)], global4[_wgslsmith_index_u32(var_1.x, 18u)], vec4<bool>(true, var_4, true, false))), vec4<bool>(func_5(var_1.x >> (global3[_wgslsmith_index_u32(var_1.x, 20u)] % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1831f, -307f, -361f, global1.x)), vec2<f32>(781f, global1.x)).x, !select(var_3.x, var_4, true), _wgslsmith_div_f32(1192f, -1207f) < _wgslsmith_f_op_f32(exp2(global1.x)), false)), !global4[_wgslsmith_index_u32(~var_1.x, 18u)]);
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.a.x, _wgslsmith_add_i32(-(~(-10829i)), 1i)), vec3<u32>(reverseBits(firstLeadingBit(~4294967295u)), 93438u, 25505u), -474f, ~21445u);
}

