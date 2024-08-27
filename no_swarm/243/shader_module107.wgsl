struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<bool, 14> = array<bool, 14>(false, true, true, true, true, false, true, true, false, false, false, true, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec3<bool> {
    global0 = array<bool, 14>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(~vec2<i32>(~u_input.a, 1i), Struct_1(_wgslsmith_f_op_f32(-1854f + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(select(1491f, 551f, true)), _wgslsmith_div_u32(54575u, 4294967295u)), max(38461u, 4470u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-558f, -107f, 1000f, -908f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(331f, -686f, 229f, 772f))))))), vec2<bool>(all(!vec3<bool>(false, arg_1.x, global0[_wgslsmith_index_u32(30451u, 14u)])), any(vec4<bool>(all(vec4<bool>(arg_1.x, true, true, true)), arg_1.x, !arg_1.x, global0[_wgslsmith_index_u32(0u, 14u)] || arg_1.x))), vec2<f32>(261f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1033f, -487f)))))));
    let var_1 = var_0.b.a.x;
    var_0 = Struct_3(var_0.c.x, Struct_2(max(~max(vec2<i32>(-325i, u_input.a), vec2<i32>(u_input.a, var_0.b.a.x)), firstLeadingBit(reverseBits(vec2<i32>(arg_0, -1i)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(344f, 1803f) * _wgslsmith_f_op_f32(f32(-1f) * -373f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.e.x, 1000f))), max(var_0.b.b.c, 4294967295u)), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.a * 212f)), -116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.b.a)) + _wgslsmith_f_op_f32(388f * var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)))), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(~1u, 14u)]), select(!select(arg_1, var_0.d, arg_1), !arg_1, true), select(false, all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b.c, 14u)], global0[_wgslsmith_index_u32(var_0.b.c, 14u)])), !var_0.d.x)), _wgslsmith_f_op_vec2_f32(min(var_0.c.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1301f, -1000f), var_0.c.yy, global0[_wgslsmith_index_u32(2911u, 14u)])) + vec2<f32>(-152f, var_0.b.b.b))))));
    let var_2 = Struct_3(1250f, Struct_2(max(abs(var_0.b.a), firstTrailingBit(var_0.b.a)), Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, -1873f) * var_0.b.b.a), ~(~var_0.b.c)), abs(var_0.b.b.c)), var_0.c, vec2<bool>(false, all(!vec3<bool>(false, var_0.d.x, false))), var_0.c.xx);
    return select(select(!(!(!vec3<bool>(arg_1.x, var_0.d.x, false))), !vec3<bool>(all(vec4<bool>(arg_1.x, true, false, false)), any(vec2<bool>(arg_1.x, false)), arg_1.x), var_2.d.x), !select(!vec3<bool>(var_0.d.x, true, true), vec3<bool>(var_2.d.x, true, true), global0[_wgslsmith_index_u32(countOneBits(15470u), 14u)] || false), vec3<bool>(all(!select(vec3<bool>(arg_1.x, arg_1.x, var_2.d.x), vec3<bool>(var_2.d.x, false, global0[_wgslsmith_index_u32(30063u, 14u)]), vec3<bool>(false, false, false))), var_2.d.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.b.b.c, ~var_2.b.c | var_0.b.c, (var_2.b.b.c ^ 1u) & var_2.b.b.c), 14u)]));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1976f, _wgslsmith_f_op_f32(floor(-453f)), _wgslsmith_f_op_f32(select(arg_0, -1346f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 4227u, min(222u, 0u)), 14u)]))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -192f, 1236f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, -1257f, -736f))))));
    var var_1 = ~4294967295u;
    global0 = array<bool, 14>();
    var var_2 = select(func_3(~firstLeadingBit(-arg_1), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false)), !select(vec2<bool>(global0[_wgslsmith_index_u32(37169u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], true), vec2<bool>(global0[_wgslsmith_index_u32(10490u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(34775u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 14u)]), global0[_wgslsmith_index_u32(max(12104u, 21964u), 14u)]))), !vec3<bool>(true || all(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 14u)], true, global0[_wgslsmith_index_u32(1u, 14u)])), true == global0[_wgslsmith_index_u32(~1u, 14u)], 345f > _wgslsmith_f_op_f32(ceil(-588f))), global0[_wgslsmith_index_u32(min(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 41849u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u)) << (4294967295u % 32u)), 14u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(round(581f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, arg_0), _wgslsmith_f_op_f32(arg_0 - -560f), false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 765f, arg_0, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, arg_0, -673f, 764f), vec4<f32>(-601f, 705f, arg_0, 778f), vec4<bool>(var_2.x, true, global0[_wgslsmith_index_u32(12829u, 14u)], global0[_wgslsmith_index_u32(56310u, 14u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 614f, arg_0, arg_0) - vec4<f32>(var_0.x, -132f, var_0.x, -390f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1587f, -1000f, 1145f), vec4<f32>(1954f, var_0.x, -1997f, var_0.x), var_2.x))))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(sign(576f))), 467f), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, 8457i), 1i, 9909i)));
    var_0 = vec4<f32>(1309f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -171f), arg_1.a);
    let var_1 = Struct_3(-428f, Struct_2(-max(firstTrailingBit(arg_3), arg_3), Struct_1(arg_2, 368f, ~arg_1.c | _wgslsmith_sub_u32(arg_1.c, 4294967295u)), arg_1.c), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(ceil(-284f)), 2147483647i ^ u_input.a)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1005f, arg_2, -248f, var_0.x)))))))), !func_3(u_input.a, !select(vec2<bool>(global0[_wgslsmith_index_u32(25121u, 14u)], global0[_wgslsmith_index_u32(arg_1.c, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(5727u, 14u)], global0[_wgslsmith_index_u32(arg_1.c, 14u)]), vec2<bool>(false, false))).yy, vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -207f)));
    global0 = array<bool, 14>();
    let var_2 = var_1.d;
    return Struct_2(vec2<i32>(countOneBits(var_1.b.a.x), select(_wgslsmith_clamp_i32(_wgslsmith_add_i32(30356i, -2147483647i), _wgslsmith_mod_i32(var_1.b.a.x, var_1.b.a.x), ~(-2147483647i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a.x, u_input.a, -1i), vec3<i32>(0i, 2147483647i, var_1.b.a.x)), true)), arg_1, arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = u_input.a;
    let var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-292f + -976f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) * _wgslsmith_f_op_f32(step(-481f, -1150f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-327f - 1402f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1258f + 360f))))), Struct_1(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(round(513f)))))), 1f, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41721u, 47380u), vec2<u32>(0u, 35735u)), _wgslsmith_sub_u32(0u, ~4294967295u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -530f))))), (abs(vec2<i32>(u_input.a, 0i)) & _wgslsmith_div_vec2_i32(-vec2<i32>(var_0, u_input.a), vec2<i32>(var_0, 2147483647i))) >> (~vec2<u32>(28199u, ~30092u) % vec2<u32>(32u)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.a, -178f)) * 927f), Struct_1(var_1.b.a, var_1.b.b, max(var_1.c, _wgslsmith_sub_u32(var_1.c, ~4294967295u))), any(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(49236u, 14u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(76021u, 14u)]), global0[_wgslsmith_index_u32(var_1.c, 14u)]), func_3(var_0, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(38514u, 14u)])).yy, !vec2<bool>(global0[_wgslsmith_index_u32(51387u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]))), true & (var_1.b.c < 7162u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c);
}

