struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<vec3<u32>, 23>;

var<private> global2: Struct_3 = Struct_3(359f, 1000f, vec2<i32>(0i, 2361i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<f32> {
    global2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(1884f * arg_1.b)), arg_2.x))), _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(f32(-1f) * -355f)), max(~(-(vec2<i32>(21403i, -1i) | global2.c)), ~_wgslsmith_add_vec2_i32(u_input.c.wy, vec2<i32>(global2.c.x, 2147483647i))));
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-143f, 740f)), _wgslsmith_div_f32(global2.b, -1300f)) * _wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, vec2<i32>(global2.c.x, _wgslsmith_mult_i32(u_input.c.x, abs(global2.c.x << (1u % 32u)))));
    var var_0 = Struct_1(u_input.c.x, 1i >> (~(~_wgslsmith_mult_u32(76758u, u_input.b.x)) % 32u), -_wgslsmith_sub_i32(select(u_input.c.x, 2147483647i, true) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1.d, 33293u)) % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -2147483647i, global2.c.x), vec3<i32>(-1i, 8246i, u_input.c.x) ^ u_input.c.zwx)), vec2<f32>(-288f, _wgslsmith_f_op_f32(trunc(-1272f))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, 1000f) * vec2<f32>(-204f, 998f)));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, -114f)) + vec2<f32>(global2.b, _wgslsmith_f_op_f32(trunc(-1680f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1000f + 1189f), -385f)) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(640f, global2.b)))), vec2<f32>(_wgslsmith_f_op_f32(floor(global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -943f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_2(vec3<bool>(false, false, true), global2.a, true, 4294967295u), vec4<f32>(global2.a, 1082f, global2.a, -256f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, global2.b) - vec2<f32>(global2.b, global2.b))))));
    var var_1 = vec3<u32>(u_input.a.x, firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a.x, 6160u, 3173u) << (1u % 32u)), ~4294967295u);
    global0 = array<bool, 25>();
    var_1 = u_input.b.wxw;
    global2 = Struct_3(_wgslsmith_f_op_f32(select(638f, _wgslsmith_div_f32(-243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(857f - global2.b) + -301f)), global0[_wgslsmith_index_u32(8595u, 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-900f - _wgslsmith_f_op_f32(sign(var_0.x))) + _wgslsmith_f_op_f32(-global2.a))), -u_input.c.zx);
    return Struct_3(1629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - 119f)), global2.c);
}

fn func_1() -> Struct_3 {
    global2 = func_2(false, global2.c.x);
    let var_0 = func_2(!all(vec2<bool>(false, false)) == true, u_input.c.x >> (0u % 32u));
    let var_1 = _wgslsmith_sub_vec2_u32(~u_input.b.zx, abs(select(vec2<u32>(u_input.b.x, u_input.a.x), ~vec2<u32>(u_input.a.x, u_input.a.x), global2.c.x >= 33644i)) ^ _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(u_input.a.x, u_input.b.x)), vec2<u32>(u_input.b.x, u_input.a.x)));
    var var_2 = Struct_1(global2.c.x, -_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x, -5564i, -21395i, -1i), u_input.c), global2.c.x), min(abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global2.c.x, var_0.c.x, -2147483647i), u_input.c))), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1608f, -1025f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(677f, var_0.b), vec2<f32>(global2.a, 824f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, global2.b))))))));
    var var_3 = vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], any(!vec3<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(60052u, 25u)])), true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), any(vec4<bool>(true, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(25692u, 25u)])), true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(var_1.x, 25u)])))) | any(!select(vec3<bool>(global0[_wgslsmith_index_u32(38317u, 25u)], false, global0[_wgslsmith_index_u32(7361u, 25u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(84955u, 25u)], false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 25u)]))));
    return Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(614f + var_2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + -1438f), u_input.c.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    global2 = func_1();
    global1 = array<vec3<u32>, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, -229f), vec2<f32>(-684f, -613f), global0[_wgslsmith_index_u32(~4294967295u, 25u)])))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * -227f), _wgslsmith_f_op_f32(-540f - 1746f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-924f, _wgslsmith_f_op_f32(f32(-1f) * -316f)))));
    global2 = Struct_3(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.a, 546f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(trunc(global2.a)))))), -_wgslsmith_mult_vec2_i32(~select(vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(var_0, var_0), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), reverseBits(_wgslsmith_div_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, global2.c.x)))));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_2 = select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(19833u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, u_input.a.x, u_input.b.x, 0u) & u_input.a)), 25u)], false), vec4<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true, global0[_wgslsmith_index_u32(~u_input.b.x, 25u)])), global0[_wgslsmith_index_u32(~0u, 25u)], !(!(global2.a > var_1.x)), false), false & select(false, true, any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(21889u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(971f, _wgslsmith_f_op_vec2_f32(func_3(true, Struct_2(var_2.yyx, -1343f, false, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -194f, -662f, -1058f)))).x, 670f, _wgslsmith_f_op_f32(var_3.a + -503f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a, -2125f, -1220f, var_1.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, -493f, -551f, 1035f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1829f, -917f, var_3.a, var_3.a)), true)))));
}

