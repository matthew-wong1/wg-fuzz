struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-182f, 1659f, -559f, -458f);

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(1447f, 830f, 1000f), vec3<f32>(-1738f, 552f, 1504f), vec3<f32>(-1375f, 513f, -1000f), vec3<f32>(-1829f, -393f, 1109f), vec3<f32>(515f, -123f, 427f), vec3<f32>(822f, 220f, -160f), vec3<f32>(-1023f, -1967f, -1232f), vec3<f32>(1827f, 1000f, 1222f), vec3<f32>(-746f, 338f, -274f), vec3<f32>(1255f, -855f, -365f), vec3<f32>(737f, 544f, -125f), vec3<f32>(-351f, 426f, 2180f), vec3<f32>(156f, 563f, 648f), vec3<f32>(1359f, -953f, -1424f), vec3<f32>(-1000f, -290f, -659f), vec3<f32>(-1569f, 214f, 1000f), vec3<f32>(-580f, 179f, 806f), vec3<f32>(201f, -180f, 1768f), vec3<f32>(-817f, 735f, 991f), vec3<f32>(603f, -362f, 611f), vec3<f32>(745f, -1885f, -1000f), vec3<f32>(-875f, -704f, -547f), vec3<f32>(-147f, 1000f, 611f), vec3<f32>(1327f, 573f, -797f), vec3<f32>(1137f, -1631f, -1957f), vec3<f32>(-1629f, 1485f, -283f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    global1 = array<vec3<f32>, 26>();
    var var_0 = Struct_1(select(!vec3<bool>(any(vec4<bool>(arg_0.x, true, true, true)), false, !arg_0.x), !arg_0, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1122f, 306f, 1614f) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 648f, global0.x, 133f), vec4<f32>(750f, 318f, -766f, global0.x)))))));
    global0 = var_0.b;
    var_0 = Struct_1(vec3<bool>(var_0.a.x, select(true, global0.x >= -891f, any(vec4<bool>(false, arg_0.x, true, true))), true), vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f + var_0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -1937f, false)))), -1606f, global0.x));
    let var_1 = max(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b) ^ vec3<u32>(49592u, 4294967295u, 4294967295u), vec3<u32>(0u, u_input.b, u_input.b)), abs(vec3<u32>(u_input.b, u_input.b, 1u) & ~vec3<u32>(u_input.b, u_input.b, u_input.b))) >> (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u));
    return select(var_0.a.zz, select(!(!arg_0.yx), vec2<bool>(all(!vec4<bool>(var_0.a.x, false, true, true)), false), arg_0.xz), var_0.a.xz);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(0u, Struct_1(!vec3<bool>(select(true, false, false), false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(244f, -2084f, global0.x, 314f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1088f, global0.x, -1092f) * vec4<f32>(-1539f, 356f, -967f, -1699f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(197f, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -212f, global0.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))))), all(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-14897i, 2147483647i) >> (u_input.b % 32u), ~(~u_input.c.x)), -30588i));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.b.b.xy * _wgslsmith_f_op_vec2_f32(select(global0.xy, var_0.b.b.zz, false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.zx, vec2<f32>(var_0.b.b.x, -1000f), var_0.b.a.yx))) + _wgslsmith_f_op_vec2_f32(select(var_0.b.b.zz, _wgslsmith_div_vec2_f32(global0.wz, global0.yw), func_3(vec3<bool>(var_0.b.a.x, var_0.c, false)))))) - vec2<f32>(958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b.x))) * -2730f)));
    var var_2 = vec3<u32>(~(u_input.b & var_0.a), 4294967295u, ~(~0u));
    var var_3 = Struct_1(!vec3<bool>(true, all(var_0.b.a.xz), true), _wgslsmith_f_op_vec4_f32(-var_0.b.b));
    var var_4 = Struct_2(var_0.a ^ _wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_0.a, u_input.b, var_2.x, 1374u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.a, var_0.a, 23109u), vec4<u32>(1u, 45512u, u_input.b, var_0.a))), ~countOneBits(vec4<u32>(u_input.b, 1u, u_input.b, 73897u))), Struct_1(vec3<bool>(var_3.a.x, true, true), var_3.b), _wgslsmith_f_op_f32(min(548f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(442f + var_0.b.b.x), var_3.b.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * -379f) * _wgslsmith_f_op_f32(trunc(-1298f))), ~vec2<i32>(-u_input.c.x, var_0.d.x) << (~vec2<u32>(var_0.a, u_input.b << (var_0.a % 32u)) % vec2<u32>(32u)));
    return u_input.c;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: f32) -> bool {
    let var_0 = select(~max(abs(~u_input.c), _wgslsmith_mod_vec4_i32(abs(arg_2), func_2())), vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), u_input.a, countOneBits(~arg_2.x)), arg_2.x, u_input.c.x, firstLeadingBit(min(arg_2.x, 0i))), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(746f)), -1754f)), true)) <= arg_0);
    let var_1 = _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(-(-vec3<i32>(var_0.x, arg_2.x, u_input.c.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, arg_2.x), arg_2.wxw)), u_input.c.ywx ^ func_2().wxz));
    let var_2 = Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1462f, _wgslsmith_f_op_f32(abs(-551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.x, 537f))))), global0.x));
    let var_3 = Struct_4(var_2, Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(max(var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, arg_0, arg_0, arg_0)) * var_2.b))));
    let var_4 = Struct_5(-var_0.yz, var_3.b, Struct_1(vec3<bool>(!all(var_3.a.a), global0.x <= -745f, select(var_3.a.a.x, true, var_3.a.a.x || var_3.a.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-610f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(415f, -120f, arg_3, 2302f))))), !select(vec4<bool>(all(vec3<bool>(var_3.b.a.x, true, true)), true & var_2.a.x, true, var_2.a.x || true), select(!vec4<bool>(var_3.b.a.x, true, var_3.b.a.x, true), select(vec4<bool>(true, var_2.a.x, var_3.a.a.x, var_3.b.a.x), vec4<bool>(false, true, false, var_3.a.a.x), vec4<bool>(false, false, false, true)), select(var_2.a.x, var_2.a.x, var_3.a.a.x)), true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(972f + global0.x) * 312f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-984f, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2828f * 1922f)), _wgslsmith_f_op_f32(ceil(global0.x)))));
    global1 = array<vec3<f32>, 26>();
    let var_0 = !select(vec2<bool>(select(true, true, func_1(246f, vec3<u32>(14097u, 4294967295u, u_input.b), u_input.c, 608f)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true);
    let var_1 = Struct_2(max(u_input.b, 4294967295u), Struct_1(select(select(vec3<bool>(true, true, var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, var_0.x)), false), select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, false)), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, true)), true), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), -322f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -394f), -1000f)))), false, -vec2<i32>(_wgslsmith_sub_i32(max(-1i, u_input.a), 1i), firstTrailingBit(-22572i)));
    var var_2 = var_1.a;
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), 218f, _wgslsmith_f_op_f32(abs(-977f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.x - global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.b.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b.x, 1828f, global0.x, global0.x) - var_1.b.b)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(2087f)), -1334f, _wgslsmith_div_f32(global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, var_1.b.b.x, -794f, var_1.b.b.x)), _wgslsmith_f_op_vec4_f32(var_1.b.b + vec4<f32>(var_1.b.b.x, -538f, global0.x, var_1.b.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1414f, var_1.b.b.x, global0.x, -400f)) - var_1.b.b))), !(!vec4<bool>(var_0.x, var_0.x, all(vec4<bool>(var_1.c, var_1.b.a.x, false, var_0.x)), select(true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, ~(~(~1u)), vec4<f32>(-1169f, var_1.b.b.x, _wgslsmith_f_op_f32(-2522f * _wgslsmith_f_op_f32(-1011f * global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(148f - -2510f))))));
}

