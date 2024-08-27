struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(595f, -539f, -726f);

var<private> global1: vec4<bool>;

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 28>;

var<private> global4: array<i32, 3> = array<i32, 3>(-3384i, 82972i, 25586i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = firstLeadingBit(arg_1.a);
    global4 = array<i32, 3>();
    let var_1 = Struct_2(vec2<bool>(all(select(select(vec4<bool>(true, arg_0.a.c.b.x, global1.x, arg_0.a.c.b.x), vec4<bool>(global1.x, false, arg_0.c.a.x, true), arg_0.b.b.x), !vec4<bool>(false, arg_0.a.c.b.x, global1.x, global1.x), select(vec4<bool>(false, arg_0.b.a.x, true, false), vec4<bool>(arg_0.b.b.x, false, false, arg_0.a.c.b.x), global1.x))), false));
    let var_2 = abs(~(_wgslsmith_div_u32(54680u, u_input.e.x) << (var_0.x % 32u)) >> (~firstLeadingBit(0u) % 32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(global0.yy, global0.xz, true));
    return vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(641u, 28u)]) - _wgslsmith_f_op_f32(var_3.x + var_3.x)))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(33029u, 28u)], global0.x), vec2<f32>(-1020f, global0.x), select(vec2<bool>(false, false), global1.yw, global1.x)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_5(Struct_4(vec2<f32>(-332f, global0.x), global0.x, Struct_3(vec2<bool>(global1.x, true), vec2<bool>(false, false)), Struct_3(global1.xw, global1.zx), u_input.e.x), Struct_3(global1.zx, global1.xz), Struct_2(vec2<bool>(false, true))), Struct_1(reverseBits(vec3<u32>(u_input.d, 0u, u_input.b.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_div_f32(381f, global3[_wgslsmith_index_u32(0u, 28u)]))), 1f, global3[_wgslsmith_index_u32(u_input.d, 28u)] <= global3[_wgslsmith_index_u32(~4294967295u, 28u)])))), Struct_3(vec2<bool>(true, !any(global1.ww)), global1.yy), Struct_3(!(!select(global1.xx, vec2<bool>(true, global1.x), global1.x)), global1.yx), ~10491u);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> f32 {
    global4 = array<i32, 3>();
    let var_0 = u_input.a.zw & u_input.a.zy;
    let var_1 = vec2<bool>(true, true);
    let var_2 = var_1.x;
    global1 = select(vec4<bool>(arg_0.c.b.x, !global1.x, all(func_2(~global4[_wgslsmith_index_u32(62871u, 3u)]).d.a), true), !vec4<bool>(!(global4[_wgslsmith_index_u32(arg_0.e, 3u)] < 0i), all(vec2<bool>(true, true)), global1.x, !any(var_1)), select(select(vec4<bool>(true, !var_2, global1.x & false, true), vec4<bool>(true, !global1.x, !arg_0.c.b.x, true), vec4<bool>(false, func_2(var_0.x).d.b.x, var_1.x & true, var_1.x)), vec4<bool>(_wgslsmith_div_f32(-1000f, -1000f) < _wgslsmith_f_op_f32(arg_0.a.x + arg_0.b), select(true, !var_1.x, arg_0.d.a.x), all(vec2<bool>(arg_0.d.b.x, global1.x)), !(!var_2)), !select(vec4<bool>(arg_0.c.a.x, false, true, arg_0.d.b.x), select(vec4<bool>(var_1.x, arg_0.c.a.x, global1.x, true), vec4<bool>(var_1.x, false, arg_0.d.a.x, var_1.x), vec4<bool>(true, var_1.x, true, false)), select(vec4<bool>(true, arg_0.d.b.x, global1.x, global1.x), vec4<bool>(true, global1.x, var_2, false), global1.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.b, arg_0.b)), global0.x)) + arg_0.a.x) + 193f) - -474f);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.e, 28u)]), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_2.a.x))))));
    var var_1 = _wgslsmith_div_i32(global2.x, ~(-_wgslsmith_dot_vec4_i32(~u_input.a, u_input.a)));
    let var_2 = 16715u ^ arg_2.e;
    global0 = var_0;
    global0 = arg_0;
    return func_2(global2.x).d;
}

fn func_1(arg_0: vec4<bool>) -> Struct_5 {
    var var_0 = Struct_1(vec3<u32>(~61531u, 112302u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, u_input.d), u_input.e.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b.x) >> (u_input.e.yz % vec2<u32>(32u)), u_input.e.zy << (vec2<u32>(u_input.e.x, 0u) % vec2<u32>(32u))))));
    global4 = array<i32, 3>();
    global4 = array<i32, 3>();
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global3[_wgslsmith_index_u32(var_0.a.x, 28u)], 1016f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(126f, global3[_wgslsmith_index_u32(0u, 28u)], -1651f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 754f, -2396f))))), u_input.a, Struct_4(_wgslsmith_f_op_vec2_f32(-global0.yz), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_mod_i32(-40372i, global4[_wgslsmith_index_u32(var_0.a.x, 3u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -338f, 947f, -1000f)))))), Struct_3(!vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)), Struct_3(!select(global1.zz, global1.wy, arg_0.x), vec2<bool>(global1.x, all(arg_0))), 35932u), Struct_3(!(!(!arg_0.wy)), vec2<bool>(true, false)));
    let var_2 = Struct_1(u_input.b.yzx);
    return Struct_5(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(abs(var_2.a.x), 28u)])), 978f), global0.x, func_5(vec3<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_0.a.x, 28u)])), -1821f, _wgslsmith_f_op_f32(sign(1078f))), vec4<i32>(u_input.c, ~35468i, _wgslsmith_add_i32(global4[_wgslsmith_index_u32(u_input.d, 3u)], 65648i), firstTrailingBit(global2.x)), func_2(u_input.a.x), func_2(-2147483647i).d), Struct_3(!func_5(vec3<f32>(global0.x, global0.x, -245f), u_input.a, Struct_4(global0.zy, global3[_wgslsmith_index_u32(3488u, 28u)], Struct_3(vec2<bool>(arg_0.x, true), arg_0.wy), Struct_3(var_1.a, arg_0.xw), u_input.e.x), Struct_3(global1.yy, arg_0.wy)).a, vec2<bool>(var_1.a.x, func_2(global4[_wgslsmith_index_u32(var_2.a.x, 3u)]).d.a.x)), ~8249u), Struct_3(!func_2(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(29279u, 98736u), 3u)]).c.a, select(func_2(-global4[_wgslsmith_index_u32(var_0.a.x, 3u)]).d.a, func_2(global2.x).c.b, !arg_0.wz)), Struct_2(global1.wx));
}

fn func_6(arg_0: i32, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = !(!select(vec4<bool>(global2.x >= -36225i, true, global1.x, true), !(!vec4<bool>(arg_1.b.b.x, false, global1.x, arg_2.a.x)), select(select(vec4<bool>(true, arg_2.a.x, arg_1.a.c.a.x, false), vec4<bool>(global1.x, false, false, arg_1.c.a.x), true), select(vec4<bool>(false, true, arg_1.c.a.x, false), vec4<bool>(arg_1.c.a.x, true, false, false), global1.x), arg_2.a.x || arg_2.a.x)));
    let var_1 = select(!(!vec4<bool>(arg_2.a.x, arg_1.a.d.a.x | global1.x, arg_2.a.x || true, true)), !(!(!select(vec4<bool>(false, true, arg_1.a.d.a.x, global1.x), vec4<bool>(false, false, false, arg_2.a.x), vec4<bool>(var_0.x, true, arg_2.a.x, arg_2.a.x)))), vec4<bool>(~7223u < ~u_input.e.x, !(-15143i > arg_3.x), !(!arg_2.a.x), arg_1.c.a.x));
    global2 = u_input.a.xw;
    var_0 = select(vec4<bool>((u_input.a.x > -arg_0) | select(var_0.x, true, global0.x <= -875f), false, !(!(u_input.c > u_input.c)), true), vec4<bool>(false, func_1(vec4<bool>(false, true, arg_2.a.x, !var_1.x)).a.d.b.x, any(select(!var_1, vec4<bool>(arg_1.a.d.b.x, arg_1.a.c.a.x, true, true), global1.x || var_1.x)), false), func_2(select(arg_0, countOneBits(-15814i), true)).d.b.x);
    var var_2 = var_1.x;
    return func_1(select(select(select(var_1, !vec4<bool>(true, global1.x, arg_2.a.x, false), select(vec4<bool>(true, global1.x, arg_2.a.x, true), vec4<bool>(arg_1.a.d.b.x, arg_2.a.x, true, false), true)), vec4<bool>(func_5(vec3<f32>(139f, global3[_wgslsmith_index_u32(0u, 28u)], global0.x), vec4<i32>(-1i, 75808i, -24535i, arg_0), arg_1.a, Struct_3(vec2<bool>(arg_2.a.x, global1.x), global1.zz)).a.x, false, 40622u > u_input.e.x, arg_1.a.a.x > global3[_wgslsmith_index_u32(arg_1.a.e, 28u)]), !(!var_1)), vec4<bool>(all(!vec4<bool>(var_1.x, true, arg_2.a.x, arg_1.a.c.b.x)), any(!vec4<bool>(var_1.x, arg_1.c.a.x, false, global1.x)), 40503u > (0u | u_input.d), 1i != (arg_0 | 2147483647i)), !var_1)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!vec4<bool>(false, true, global1.x, !global1.x));
    let var_0 = func_6(~global2.x, func_1(!(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, true, global1.x, false), false))), func_1(vec4<bool>(true, func_5(vec3<f32>(global0.x, 1000f, -318f), vec4<i32>(u_input.c, 1i, 2147483647i, -1i), Struct_4(global0.xx, global3[_wgslsmith_index_u32(18388u, 28u)], Struct_3(global1.xz, vec2<bool>(global1.x, false)), Struct_3(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x)), 0u), Struct_3(global1.wz, vec2<bool>(global1.x, false))).a.x, global1.x, !any(global1.xxw))).c, u_input.a.ywy);
    var var_1 = vec4<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 28u)], global0.x, -329f, -357f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, var_1.x, 902f, global0.x), vec4<f32>(global3[_wgslsmith_index_u32(2966u, 28u)], 154f, global3[_wgslsmith_index_u32(u_input.d, 28u)], -1633f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -1451f, -1000f, 522f)))))) - vec4<f32>(_wgslsmith_f_op_f32(step(-442f, var_1.x)), -664f, _wgslsmith_f_op_f32(-func_2(27445i).b), -1968f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], var_1.x, 495f, 795f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], -763f, var_1.x, -1147f) - vec4<f32>(-292f, global3[_wgslsmith_index_u32(u_input.d, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], global0.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-315f, -950f, var_1.x, 1408f), vec4<f32>(-536f, -823f, 505f, -1550f))))))));
    var var_2 = vec4<bool>(var_0.a.x, true, !(!any(func_5(var_1.wyz, vec4<i32>(-16717i, global4[_wgslsmith_index_u32(73204u, 3u)], -1i, -28595i), Struct_4(vec2<f32>(var_1.x, 1186f), 1615f, Struct_3(vec2<bool>(global1.x, global1.x), var_0.a), Struct_3(vec2<bool>(var_0.a.x, global1.x), var_0.a), u_input.b.x), Struct_3(global1.wz, global1.xx)).a)), var_0.a.x);
    var var_3 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

