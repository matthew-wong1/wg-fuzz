struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 23>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - arg_0), arg_0), vec2<f32>(_wgslsmith_f_op_f32(max(-585f, _wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_f_op_f32(-arg_0)))));
    global1 = array<bool, 23>();
    global0 = Struct_1(arg_1.a, ~1u);
    global0 = Struct_1(6357i, arg_2.b);
    global0 = arg_2;
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.a, reverseBits(~arg_1.a)), u_input.c) | arg_2.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global1 = array<bool, 23>();
    let var_0 = -_wgslsmith_mod_i32(~abs(1i), func_3(_wgslsmith_div_f32(-1012f, 519f), Struct_1(global0.a, u_input.d.x), Struct_1(-63723i, global0.b))) <= ~countOneBits(_wgslsmith_dot_vec3_i32(select(arg_0, u_input.e.wwz, vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1, 23u)], true)), ~vec3<i32>(u_input.c, global0.a, 28401i)));
    let var_1 = firstLeadingBit(89192u);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, -629f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f * -295f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1447f + 1209f), 204f, u_input.d.x > 18027u)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1212f, 1440f), _wgslsmith_f_op_f32(trunc(1057f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(691f, -562f, 1663f, -875f))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -1583f));
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = all(vec3<bool>(arg_2.x, !func_2(u_input.e.zzx, 31940u), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 4294967295u), 23u)])) | false;
    let var_1 = Struct_1(reverseBits(global0.a), ~_wgslsmith_dot_vec4_u32(~max(u_input.d, vec4<u32>(60909u, 0u, 0u, 1u)), ~vec4<u32>(global0.b, arg_1.x, 66953u, 29754u) | reverseBits(u_input.d)));
    let var_2 = Struct_1(1i, ~1u);
    let var_3 = 120f;
    global0 = var_1;
    return Struct_1(_wgslsmith_div_i32(0i, -2147483647i), 10380u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<u32> {
    var var_0 = arg_0.b;
    global1 = array<bool, 23>();
    global0 = arg_0;
    var var_1 = firstLeadingBit(~((~vec4<u32>(60815u, u_input.a, arg_0.b, 28636u) & ~vec4<u32>(global0.b, global0.b, global0.b, 72863u)) ^ vec4<u32>(min(31291u, 28991u), _wgslsmith_div_u32(global0.b, u_input.d.x), global0.b, ~84347u)));
    let var_2 = func_1(select(vec3<bool>(any(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.b, 23u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(9914u, 23u)], false, global1[_wgslsmith_index_u32(var_1.x, 23u)], false), global1[_wgslsmith_index_u32(global0.b, 23u)])), _wgslsmith_f_op_f32(arg_2 * 1254f) < _wgslsmith_div_f32(arg_2, arg_2), true), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 23u)], global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(arg_0.b, 23u)]))), select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(31830u, var_1.x), 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], !global1[_wgslsmith_index_u32(var_1.x, 23u)]), vec3<bool>(global0.b >= u_input.b, select(false, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), global1[_wgslsmith_index_u32(1u, 23u)] || true), select(vec3<bool>(global1[_wgslsmith_index_u32(17156u, 23u)], true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 23u)], false, global1[_wgslsmith_index_u32(global0.b, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(arg_0.b, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), global1[_wgslsmith_index_u32(0u, 23u)]), global1[_wgslsmith_index_u32(~1u, 23u)]))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.d.wzw, u_input.d.ywx), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 27602u, arg_0.b), u_input.d.yxy)), vec4<bool>(!any(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(19323u, 23u)], false)), true, _wgslsmith_f_op_f32(-388f * _wgslsmith_f_op_f32(561f * arg_2)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), !global1[_wgslsmith_index_u32(91713u, 23u)]));
    return _wgslsmith_div_vec2_u32(var_1.yx | _wgslsmith_clamp_vec2_u32(min(var_1.zy & var_1.yx, abs(u_input.d.yx)), abs(vec2<u32>(11627u, arg_0.b)), abs(var_1.wz)), vec2<u32>(~max(1u, countOneBits(var_1.x)), arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_mod_i32(global0.a, -(global0.a ^ 0i))), abs(_wgslsmith_clamp_u32(0u, 32197u, ~u_input.b)));
    let var_1 = func_4(func_1(vec3<bool>(!any(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 23u)], global1[_wgslsmith_index_u32(30369u, 23u)], global1[_wgslsmith_index_u32(global0.b, 23u)], global1[_wgslsmith_index_u32(var_0.b, 23u)])), !(global1[_wgslsmith_index_u32(var_0.b, 23u)] & false), true), u_input.d.yzz, vec4<bool>(true, true, true, true)), -(~(-_wgslsmith_mod_i32(-1i, u_input.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1213f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(338f * 1586f), _wgslsmith_div_f32(622f, 200f)))))));
    var var_2 = func_1(select(vec3<bool>(false, false, true), vec3<bool>(false, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(760u, 23u)], false, global1[_wgslsmith_index_u32(var_0.b, 23u)])), true), global0.b > global0.b), (~firstTrailingBit(u_input.d.wzw) << (vec3<u32>(1u, global0.b, 4294967295u) % vec3<u32>(32u))) ^ ~(~vec3<u32>(0u, 32019u, 4294967295u)), select(select(vec4<bool>(func_2(vec3<i32>(global0.a, u_input.c, var_0.a), global0.b), global1[_wgslsmith_index_u32(88987u, 23u)] | true, global1[_wgslsmith_index_u32(firstLeadingBit(20861u), 23u)], !global1[_wgslsmith_index_u32(global0.b, 23u)]), vec4<bool>(var_1.x < 1u, global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 23u)], any(vec2<bool>(true, false)), func_2(u_input.e.zxx, global0.b)), false), vec4<bool>(false | (global0.a >= -10696i), all(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], true)), true, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 23u)]), vec4<bool>(true, false, true, any(select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 23u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(19150u, 23u)], false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(59759u, 23u)]))))));
    var_2 = Struct_1(-1i, ~_wgslsmith_dot_vec3_u32(reverseBits(u_input.d.zxz & vec3<u32>(4294967295u, global0.b, var_2.b)), u_input.d.ywx >> (~vec3<u32>(45246u, var_0.b, 60372u) % vec3<u32>(32u))));
    global0 = Struct_1(_wgslsmith_mod_i32(global0.a, var_0.a), _wgslsmith_div_u32(global0.b, 0u));
    var_2 = func_1(select(vec3<bool>(true, var_2.b == ~0u, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0.b, var_0.b, 4294967295u), 23u)]), select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], true, global1[_wgslsmith_index_u32(var_2.b, 23u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_0.b, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(global0.b, 23u)], true)), !vec3<bool>(true, global1[_wgslsmith_index_u32(global0.b, 23u)], global1[_wgslsmith_index_u32(81106u, 23u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(global0.b, 23u)], global1[_wgslsmith_index_u32(global0.b, 23u)])), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(global0.b, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(var_0.b, 23u)], false), global1[_wgslsmith_index_u32(24485u, 23u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 23u)], global1[_wgslsmith_index_u32(var_0.b, 23u)]), any(vec2<bool>(true, false))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global0.b, 23u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(38115u, 23u)], false), global1[_wgslsmith_index_u32(u_input.d.x, 23u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(16345u, 23u)], global1[_wgslsmith_index_u32(var_2.b, 23u)]), global1[_wgslsmith_index_u32(var_0.b, 23u)])), !select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(29247u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(global0.b, 23u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global0.b, 23u)]))), u_input.d.yzx, select(vec4<bool>(global1[_wgslsmith_index_u32(global0.b, 23u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, var_1.x), u_input.d.yxw), 23u)] | (true && global1[_wgslsmith_index_u32(0u, 23u)]), true, 19987i > u_input.c), vec4<bool>(true, !(!global1[_wgslsmith_index_u32(1u, 23u)]), func_2(u_input.e.zyy, var_2.b), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 79455u), 23u)] & (var_2.b >= 77942u)), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(var_1.x, 23u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(27814u, 23u)], global1[_wgslsmith_index_u32(var_0.b, 23u)], true, global1[_wgslsmith_index_u32(var_0.b, 23u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(50914u, 23u)], true)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_2.b, 23u)], global1[_wgslsmith_index_u32(var_0.b, 23u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 23u)], global1[_wgslsmith_index_u32(72901u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], true), global1[_wgslsmith_index_u32(var_2.b, 23u)]), true), vec4<bool>(!global1[_wgslsmith_index_u32(var_1.x, 23u)], true, global1[_wgslsmith_index_u32(1u, 23u)] || global1[_wgslsmith_index_u32(var_2.b, 23u)], true), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(var_1.x, 23u)], global1[_wgslsmith_index_u32(var_1.x, 23u)], global1[_wgslsmith_index_u32(var_1.x, 23u)])))));
    var var_3 = max(u_input.c, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(335i, var_0.a)), vec2<i32>(~(-19796i), _wgslsmith_add_i32(-22050i, ~(-2147483647i)))), 2101f, vec3<i32>(firstLeadingBit(-7298i), var_0.a, _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(u_input.c, var_2.a, 2147483647i)), reverseBits(vec3<i32>(var_2.a, global0.a, global0.a)))), ~(vec3<i32>(global0.a, -var_2.a, ~var_2.a) & -vec3<i32>(2147483647i, 1i, global0.a)));
}

