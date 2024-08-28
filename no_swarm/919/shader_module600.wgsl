struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: vec4<u32> = vec4<u32>(53387u, 4294967295u, 0u, 38796u);

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(true, true, 0u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = countOneBits(~global1.x & u_input.e.x);
    global3 = Struct_1(global3.b, true, 1u);
    global2 = ~(~0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(128f - 378f), _wgslsmith_f_op_f32(max(-903f, 579f))))))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(firstTrailingBit(u_input.a) << (u_input.e % vec4<u32>(32u))), u_input.a);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true, global0[_wgslsmith_index_u32(global3.c, 6u)], false)))))));
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1218f, 1319f)))) - vec3<f32>(-2430f, _wgslsmith_f_op_f32(func_3(u_input.a.x)), arg_1)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, 1313f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(555f, arg_1, 385f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -132f) * vec3<f32>(459f, arg_1, 1076f)))))), vec3<f32>(345f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), 608f))), !(!vec3<bool>(false, 30030u > u_input.e.x, 0u <= global3.c))));
    var var_1 = vec3<bool>(!(!(1i <= max(u_input.b.x, -43183i))), !(arg_1 <= _wgslsmith_f_op_f32(floor(var_0.x))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.wz, vec2<u32>(55510u, 1970u)), 9159u, ~0u, _wgslsmith_clamp_u32(u_input.e.x, 1u, 4294967295u)), min(vec4<u32>(13184u, arg_0, 4294967295u, 57466u), vec4<u32>(4294967295u, global3.c, 4294967295u, u_input.e.x))), 6u)]);
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(~2147483647i, -_wgslsmith_sub_i32(-14504i, u_input.b.x)) << (46336u % 32u), ~(((2147483647i ^ u_input.a.x) >> (global1.x % 32u)) << (0u % 32u)), _wgslsmith_mult_i32(countOneBits(abs(-2147483647i)), _wgslsmith_dot_vec3_i32(countOneBits(u_input.a.xxz), _wgslsmith_mod_vec3_i32(abs(u_input.a.zzz), abs(vec3<i32>(1i, u_input.a.x, -1i))))));
    let var_3 = Struct_1(true, true, ~global1.x);
    var var_4 = ~(~(~_wgslsmith_dot_vec3_u32(u_input.d.yyx, vec3<u32>(65734u, var_3.c, arg_0) ^ vec3<u32>(global3.c, 1u, u_input.e.x))));
    return _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(min(global1.x, 4294967295u)), ~global1.x), 43943u);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    global2 = global1.x | func_2(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(trunc(arg_2.x)))));
    var var_0 = _wgslsmith_mult_u32(0u, select(80038u, ~global3.c, true));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(select(global3.c, firstTrailingBit(~14497u), true | any(vec3<bool>(true, global3.b, global0[_wgslsmith_index_u32(u_input.e.x, 6u)]))) >> (func_2(~45658u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - -1602f) * _wgslsmith_f_op_f32(floor(arg_2.x)))) % 32u), 6u)], !(!any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 6u)], false, true))), ~global3.c);
    var var_2 = Struct_1(any(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 6u)], true), vec2<bool>(true, false), !vec2<bool>(true, var_1.a))), true, 0u);
    let var_3 = Struct_1(true, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, global3.b)))), 10319u);
    return _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)) * -251f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, true, _wgslsmith_mult_u32(max(global1.x, ~u_input.d.x), 1u));
    global0 = array<bool, 6>();
    let var_1 = Struct_1(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b, -1393f, vec4<f32>(483f, -844f, -1514f, 969f)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1037f, 676f)), _wgslsmith_div_f32(1236f, -1266f)), !global0[_wgslsmith_index_u32(~(~28343u), 6u)], false), true, ~global1.x);
    var var_2 = u_input.a.x;
    let var_3 = select(vec3<bool>((var_1.b | global0[_wgslsmith_index_u32(u_input.d.x >> (var_1.c % 32u), 6u)]) || (false || all(vec3<bool>(true, global3.a, true))), global3.b && !all(vec2<bool>(true, var_0.b)), false), select(vec3<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_0.c), 6u)], true, all(select(vec4<bool>(var_1.a, global0[_wgslsmith_index_u32(global1.x, 6u)], global3.b, var_0.b), vec4<bool>(var_0.a, var_0.b, var_1.b, false), var_0.b))), !vec3<bool>(true, u_input.e.x > 112029u, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(var_0.b, -26707i >= ~u_input.a.x, false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c, firstLeadingBit(4294967295u)), 6u)] || !any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], var_0.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1625f), -359f, _wgslsmith_div_f32(-1624f, -934f), _wgslsmith_f_op_f32(f32(-1f) * -1243f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, 1708f, 477f, -354f))))), vec4<i32>(_wgslsmith_add_i32(~u_input.a.x, -u_input.b.x), ~(-countOneBits(-1i)), -1i, 1i));
}

