struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, true, true, true, false, true, false, false, true, false, false, true, true, true, true, false, false, true, false, true, true, true, false);

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = !(!select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 25u)], true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(59229u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, false, true), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(36848u, 25u)]), true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)], false, false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(42819u, 25u)], true), global0[_wgslsmith_index_u32(52614u, 25u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(26591u, 25u)], true, global0[_wgslsmith_index_u32(u_input.d, 25u)], false), false))));
    global0 = array<bool, 25>();
    var var_1 = countOneBits(vec3<i32>(~_wgslsmith_mult_i32(-2147483647i, ~arg_0.d), ~u_input.a, _wgslsmith_mult_i32(firstLeadingBit(u_input.b), 1i)));
    var var_2 = arg_0;
    global1 = array<vec4<f32>, 6>();
    return -1i;
}

fn func_2() -> f32 {
    var var_0 = -u_input.a;
    global1 = array<vec4<f32>, 6>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1366f + _wgslsmith_div_f32(-1000f, 950f)) - _wgslsmith_f_op_f32(-777f + -488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2148f, -922f)) * _wgslsmith_f_op_f32(122f * -1675f)) - _wgslsmith_f_op_f32(sign(188f))), -316f), -vec4<i32>(func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 6u)], vec3<f32>(1138f, -345f, 903f), vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.b), u_input.b), 1f), u_input.a, -2147483647i, -14461i), u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(var_1.b.zx));
    var var_3 = var_1.a.wz;
    return var_2.x;
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = u_input.b;
    global0 = array<bool, 25>();
    global1 = array<vec4<f32>, 6>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(func_2()), -636f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-394f, 179f, false))), _wgslsmith_f_op_f32(831f * -415f), _wgslsmith_f_op_f32(f32(-1f) * -326f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, -153f, 1138f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1173f, -662f, -1316f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - 1449f), _wgslsmith_div_f32(-156f, 620f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1524f, 2205f, global0[_wgslsmith_index_u32(arg_0.x, 25u)]))), 247f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(var_1.x, -735f, 1297f)), var_1)) - _wgslsmith_div_vec3_f32(var_1, var_1)))), firstTrailingBit(vec4<i32>(var_0, -(i32(-1i) * -2147483647i), -1i, u_input.b)), i32(-1i) * -firstTrailingBit(~u_input.a));
    return !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 25u)], !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 22537u, arg_0.x), ~0u), 25u)], true & (arg_0.x <= _wgslsmith_mod_u32(arg_0.x, 52660u)), !(!(!global0[_wgslsmith_index_u32(79744u, 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(71149u, 44416u, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.d), vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, u_input.c.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global0[_wgslsmith_index_u32(94339u, 25u)], true)), vec4<u32>(4294967295u, 15908u, 4294967295u, u_input.d))));
    var var_1 = vec3<bool>(any(var_0.wx), all(var_0.yzz), true);
    var_1 = vec3<bool>(false, true, var_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -472f, 417f)) - vec3<f32>(466f, 1011f, -2153f)))), vec4<i32>(_wgslsmith_div_i32(-20738i, 59050i), u_input.a, _wgslsmith_mod_i32(-u_input.a, -u_input.b >> (_wgslsmith_add_u32(u_input.d, 0u) % 32u)), u_input.b), i32(-1i) * -(~reverseBits(u_input.a)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x)));
    let var_3 = _wgslsmith_div_vec2_f32(var_2.a.xx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_2.a.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1842f, var_2.a.x)), 13447u > u_input.c.x)), vec2<f32>(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(func_2())), select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], var_0.x), vec2<bool>(var_0.x, false), !vec2<bool>(false, var_0.x)))), var_2.a.yz)));
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), countOneBits(~41696u)), u_input.c.x, _wgslsmith_div_u32(~countOneBits(~7327u), u_input.d));
    var_1 = !(!var_0.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_add_i32(46440i, var_2.d | 2147483647i)), u_input.d, var_2.c.yw, vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(9754u, ~u_input.d), u_input.d, _wgslsmith_div_u32(u_input.c.x, _wgslsmith_sub_u32(14593u, 1u)) << (firstTrailingBit(select(u_input.c.x, u_input.d, true)) % 32u)));
}

