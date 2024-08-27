struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1000f, -188f, -1354f), 14440i, vec2<i32>(-20803i, 1i), true);

var<private> global3: Struct_1;

var<private> global4: array<bool, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global4 = array<bool, 28>();
    let var_0 = Struct_1(arg_1.a, arg_1.b, min(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.b), -3592i), global2.c), abs(vec2<i32>(u_input.b, 8152i))), global4[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(1213u, countOneBits(u_input.a.x))), 28u)]);
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1177f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1300f + _wgslsmith_f_op_f32(-179f * var_0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3.a.x)), 1138f))), -648f), ~((_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(global2.b, var_0.b)) >> (46089u % 32u)) & -46829i), vec2<i32>(-((arg_1.b << (u_input.c % 32u)) >> (1u % 32u)), global3.c.x), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(498f)), _wgslsmith_f_op_f32(sign(421f)))) >= global3.a.x));
    let var_1 = global3.a.yx;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.x + global3.a.x), _wgslsmith_f_op_f32(var_0.a.x * -413f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, arg_1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, 418f) + global2.a.zx))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(304f, var_0.a.x)))));
    return !select(select(!vec3<bool>(true, global2.d, var_0.d), vec3<bool>(select(arg_1.d, arg_1.d, var_0.d), true, var_0.d), select(vec3<bool>(false, global3.d, arg_1.d), vec3<bool>(var_0.d, true, var_0.d), -1i == global2.b)), vec3<bool>(all(vec2<bool>(true, arg_1.d)) | true, true, any(vec3<bool>(false, true, false))), vec3<bool>(!any(vec3<bool>(var_0.d, false, arg_1.d)), 0i < _wgslsmith_mult_i32(-3434i, arg_0), !(true & global2.d)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = any(select(!(!select(vec2<bool>(global3.d, false), vec2<bool>(global4[_wgslsmith_index_u32(19451u, 28u)], global3.d), global2.d)), vec2<bool>(any(!vec2<bool>(global2.d, false)), global3.d == true), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(global2.a.xx));
    var var_2 = arg_1;
    var var_3 = arg_1;
    global1 = !all(select(!(!vec4<bool>(true, global3.d, var_2.d, false)), vec4<bool>(func_2(arg_1.c.x, arg_1).x, true, false, !global2.d), any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global3.d))));
    return abs(_wgslsmith_mod_u32(~countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.c, u_input.a.x)), u_input.c));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.a, vec3<f32>(global2.a.x, global3.a.x, 161f)))) + arg_2.a)), ~(-41142i), vec2<i32>(_wgslsmith_clamp_i32(max(-16860i, global3.c.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-22841i, 2147483647i, global3.c.x)), vec3<i32>(-1i, -2147483647i, 2147483647i)), global2.c.x), _wgslsmith_dot_vec2_i32(select(arg_2.c, vec2<i32>(global3.c.x, 19548i), vec2<bool>(false, true)), vec2<i32>(global2.b, -1i)) >> (arg_0.x % 32u)), true);
    global4 = array<bool, 28>();
    let var_1 = vec4<bool>(global3.d & func_2(max(firstTrailingBit(u_input.b), max(-7372i, 0i)), Struct_1(global3.a, arg_2.c.x << (u_input.c % 32u), abs(arg_2.c), any(vec2<bool>(global3.d, true)))).x, global3.d, global3.d, var_0.d);
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f - -838f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.a.x, 1214f), _wgslsmith_f_op_f32(min(global3.a.x, 799f))))))), _wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(global2.c.x, global2.c.x)), arg_2.c) ^ -(~(~global3.b)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(global2.c, select(~vec2<i32>(arg_2.b, 2147483647i), vec2<i32>(-2147483647i, global3.c.x) >> (vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u)), !global4[_wgslsmith_index_u32(arg_0.x, 28u)])), reverseBits(var_0.c)), true);
    let var_2 = 1i | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1329i, 2147483647i, 9461i, -1i), vec4<i32>(global2.b, arg_2.c.x, -2147483647i, global3.c.x)), vec4<i32>(global2.c.x, global3.c.x, global2.c.x, arg_2.b)), vec4<i32>(global3.c.x, countOneBits(1i), ~0i, -2147483647i)), 1i);
    return _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(ceil(1000f))));
}

fn func_1() -> vec3<u32> {
    let var_0 = !func_2(global3.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1116f, -891f, 509f), vec3<f32>(182f, -361f, global2.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(873f, -126f, global3.a.x))), -select(35673i, 1i, global4[_wgslsmith_index_u32(23354u, 28u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(global3.b, global2.c.x), vec2<i32>(global2.c.x, global3.b)) | -vec2<i32>(global3.b, global3.b), (global4[_wgslsmith_index_u32(0u, 28u)] || true) || false));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1376f - global2.a.x) - _wgslsmith_f_op_f32(global3.a.x - -224f)) - 459f)), -1000f, -1597f, _wgslsmith_f_op_f32(func_4(vec4<u32>(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 44858u), u_input.a.zxz), u_input.a.x, reverseBits(85935u)), max(vec2<u32>(func_3(1i, Struct_1(vec3<f32>(136f, global2.a.x, global2.a.x), global2.c.x, global2.c, true)), u_input.a.x), max(~u_input.a.zy, vec2<u32>(37248u, u_input.a.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(global3.a.x, -1070f)), -611f, global2.a.x), _wgslsmith_sub_i32(global2.c.x, select(u_input.b, -33132i, true)), global2.c, true))));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1027f, 277f, global3.a.x, -604f) + vec4<f32>(-1153f, 1155f, global2.a.x, global2.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(global3.a.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(ceil(global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, global3.a.x)) + _wgslsmith_f_op_f32(step(var_1.x, -479f))), _wgslsmith_f_op_f32(func_4(~u_input.a, u_input.a.yy, Struct_1(vec3<f32>(108f, var_1.x, var_1.x), 2147483647i, global3.c, global2.d)))))));
    global0 = !((4294967295u < ~(14819u ^ u_input.a.x)) && false);
    var var_2 = global4[_wgslsmith_index_u32(select(countOneBits(max(0u >> (u_input.c % 32u), 0u)), u_input.c, any(vec3<bool>(global4[_wgslsmith_index_u32(0u, 28u)], !global4[_wgslsmith_index_u32(71260u, 28u)], true))) << (u_input.a.x % 32u), 28u)];
    return u_input.a.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zxw, ~u_input.a.yww), 28u)]);
    let var_0 = ~u_input.b;
    let var_1 = firstLeadingBit(func_1());
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global2.a.x, -132f) + vec3<f32>(global2.a.x, 760f, global3.a.x))))), 24654i, countOneBits(select(global2.c, select(vec2<i32>(u_input.b, -19586i), global3.c << (var_1.xx % vec2<u32>(32u)), func_2(-12537i, Struct_1(vec3<f32>(-654f, global2.a.x, global2.a.x), u_input.b, global2.c, global4[_wgslsmith_index_u32(u_input.c, 28u)])).xy), select(!vec2<bool>(global4[_wgslsmith_index_u32(39691u, 28u)], global4[_wgslsmith_index_u32(var_1.x, 28u)]), !vec2<bool>(global4[_wgslsmith_index_u32(10923u, 28u)], global4[_wgslsmith_index_u32(0u, 28u)]), select(vec2<bool>(global3.d, global3.d), vec2<bool>(false, global2.d), true)))), true);
    global2 = Struct_1(global2.a, 70917i, vec2<i32>(abs(1i | global3.b), min(1i, u_input.b)), any(!func_2(-2045i, Struct_1(global3.a, -18415i, vec2<i32>(28761i, global3.c.x), global2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(215f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f - global2.a.x) + global2.a.x)))));
}

