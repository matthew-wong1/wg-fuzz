struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<bool, 8>;

var<private> global1: vec2<bool>;

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = vec3<bool>(any(!vec3<bool>(4602u == arg_0.b.x, any(vec4<bool>(global2.b.b, true, global0[_wgslsmith_index_u32(44026u, 8u)], false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11038u, arg_0.b.x, 40627u), u_input.a.zyz), 8u)])), any(!select(vec2<bool>(false, false), select(vec2<bool>(global2.b.b, false), vec2<bool>(global1.x, global0[_wgslsmith_index_u32(global2.b.c, 8u)]), true), all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global2.b.b)))), true);
    var_0 = vec3<bool>(all(vec3<bool>(true, true, !var_0.x)), (true && (~arg_0.a.x != _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.d.x, 27980i), global2.c.a.xz))) || (max(arg_0.a.x, _wgslsmith_div_i32(global2.c.a.x, 0i)) > global2.c.a.x), false);
    global1 = vec2<bool>(all(vec3<bool>(true, all(vec4<bool>(false, global2.b.b, var_0.x, false)), global1.x & any(vec3<bool>(global0[_wgslsmith_index_u32(75694u, 8u)], false, var_0.x)))), all(vec2<bool>(!var_0.x, false)));
    let var_1 = _wgslsmith_clamp_i32(-1i, global2.b.e.a.x, 11707i);
    global2 = Struct_3(58626u, Struct_2(Struct_1(select(arg_0.a, arg_0.a | arg_0.a, !vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(arg_0.b.x, 8u)], global0[_wgslsmith_index_u32(arg_0.b.x, 8u)])), global2.c.b), global1.x, countOneBits(56020u), vec4<i32>(var_1, reverseBits(2147483647i), ~var_1, global2.c.a.x) | (vec4<i32>(-1i) * -global2.c.a), global2.b.e), arg_0);
    return _wgslsmith_dot_vec3_u32(~u_input.a.xxz, ~(~(vec3<u32>(arg_1, 4294967295u, 35905u) | u_input.a.wxy)) ^ _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.ywy, vec3<u32>(6922u, u_input.a.x, arg_0.b.x)) | ~vec3<u32>(u_input.a.x, 54767u, arg_0.b.x), vec3<u32>(_wgslsmith_mult_u32(arg_0.b.x, 1u), abs(1u), arg_1 ^ arg_1)));
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = vec2<u32>(~(~609u), ~_wgslsmith_mult_u32(max(_wgslsmith_mod_u32(global2.a, global2.c.b.x), u_input.a.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 17303u)));
    global2 = Struct_3(63952u, global2.b, global2.b.e);
    global2 = Struct_3(_wgslsmith_add_u32(func_3(Struct_1(vec4<i32>(0i, arg_0.x, 3598i, -3506i), u_input.a.yw), ~(u_input.a.x | 0u)), global2.a), Struct_2(global2.c, true, u_input.a.x, global2.c.a, Struct_1(global2.b.e.a, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, global2.b.a.b.x), u_input.a.ww) & (global2.b.a.b << (vec2<u32>(29178u, 72856u) % vec2<u32>(32u))))), global2.c);
    var var_1 = Struct_2(global2.c, !(!(global2.b.a.b.x <= 0u)), u_input.a.x, abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(global2.b.a.a, ~global2.b.e.a, vec4<i32>(arg_0.x, 1i, global2.c.a.x, arg_0.x) ^ vec4<i32>(1i, -2147483647i, global2.c.a.x, 0i)), global2.b.e.a)), Struct_1(reverseBits(-vec4<i32>(-5235i, global2.b.a.a.x, global2.c.a.x, global2.b.a.a.x)), vec2<u32>(100907u, global2.c.b.x)));
    global0 = array<bool, 8>();
    return vec2<u32>(4294967295u, 40740u);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_1(-select(~(~global2.b.e.a), vec4<i32>(global2.c.a.x, ~global2.c.a.x, _wgslsmith_clamp_i32(0i, global2.c.a.x, global2.b.d.x), global2.c.a.x), !vec4<bool>(global2.b.b, global2.b.b, global0[_wgslsmith_index_u32(45071u, 8u)], true)), ~firstTrailingBit(vec2<u32>(global2.c.b.x << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, arg_1.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, 1000f, 880f, 799f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(938f, -1520f, -476f, 2001f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, 1585f, 1000f, 664f) * vec4<f32>(1301f, 1231f, 1074f, 766f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1198f, -2999f, -158f, 1261f)), arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2264f, -387f, 652f, 635f)))))));
    let var_2 = -global2.c.a;
    return vec3<bool>(any(!(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, global2.b.b, arg_0), true))), reverseBits(max(global2.c.a.x, 1i)) > 2147483647i, !(~(u_input.a.x << (0u % 32u)) <= _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.b.x, 1u), firstLeadingBit(38688u))));
}

fn func_1() -> f32 {
    let var_0 = select(!(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2.b.e.b.x, 8u)], true), true)), select(!vec2<bool>(!global1.x, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(global2.a, 8u)], false), vec2<bool>(false, false), global0[_wgslsmith_index_u32(541u, 8u)]))), !select(vec2<bool>(global1.x, global2.b.b || false), select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), global2.b.b && global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), true));
    let var_1 = u_input.a.zzz;
    let var_2 = Struct_3(38103u, global2.b, Struct_1(abs(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.c.a.x, -2147483647i, 0i, global2.b.e.a.x), global2.b.e.a), global2.b.a.a >> (u_input.a % vec4<u32>(32u)))), _wgslsmith_sub_vec2_u32(global2.b.a.b, global2.c.b)));
    var var_3 = Struct_2(global2.c, all(!func_4(var_2.b.b, func_2(global2.c.a.xww))), global2.c.b.x, select(-vec4<i32>(1i, 6924i, -34033i, reverseBits(1i)), vec4<i32>(_wgslsmith_clamp_i32(global2.c.a.x, 1i, -41314i), 35058i, -var_2.c.a.x, _wgslsmith_div_i32(~41975i, i32(-1i) * -2147483647i)), select(select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, false, global2.b.b, true), false), select(vec4<bool>(var_2.b.b, var_0.x, false, false), vec4<bool>(true, false, true, true), vec4<bool>(global2.b.b, global0[_wgslsmith_index_u32(var_2.a, 8u)], var_2.b.b, global1.x)), !vec4<bool>(var_0.x, true, global1.x, false)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], true, true, global1.x), !all(vec4<bool>(false, var_0.x, var_0.x, true)))), var_2.c);
    global0 = array<bool, 8>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(179f, 774f, global1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -434f) * _wgslsmith_f_op_f32(min(2392f, 328f))))), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!vec2<bool>(global2.b.b, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), 780f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-270f, -712f), _wgslsmith_f_op_vec2_f32(vec2<f32>(794f, -1042f) - vec2<f32>(458f, -1553f)))))));
    let var_2 = func_2(abs(global2.c.a.xww)).x;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

