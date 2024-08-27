struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(7945u, 71464u, 4294967295u, 1u), vec4<u32>(19551u, 42522u, 1u, 38023u), vec4<u32>(4294967295u, 1u, 59689u, 0u), vec4<u32>(1u, 42657u, 56361u, 6215u), vec4<u32>(12084u, 3269u, 1u, 0u), vec4<u32>(22444u, 11855u, 10927u, 0u), vec4<u32>(4294967295u, 17032u, 0u, 0u), vec4<u32>(1941u, 32326u, 0u, 1u), vec4<u32>(1102u, 0u, 0u, 4294967295u), vec4<u32>(36850u, 4133u, 1u, 17329u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(1u, 84970u, 1u, 4294967295u), vec4<u32>(82656u, 1u, 1u, 67754u), vec4<u32>(1u, 1u, 5184u, 0u), vec4<u32>(4294967295u, 34702u, 4294967295u, 24897u), vec4<u32>(1u, 1u, 36174u, 20263u), vec4<u32>(18788u, 1u, 4392u, 0u), vec4<u32>(8740u, 55655u, 144186u, 9564u), vec4<u32>(45688u, 17656u, 63215u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> f32 {
    return -1271f;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(countOneBits(2147483647i), abs(-arg_2.b) & vec3<i32>(arg_0.x | arg_2.d.c.x, countOneBits(-3463i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 41142i, -28417i), vec4<i32>(u_input.d, 62510i, -12681i, u_input.d))), Struct_1(arg_2.d.a, global0.x, firstTrailingBit(max(arg_2.b, arg_3.c.c)), vec2<u32>(arg_2.c.d.x << (0u % 32u), arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), arg_3.d), arg_3);
    let var_1 = Struct_2(0i & -firstTrailingBit(var_0.a.c.c.x), reverseBits(vec3<i32>(-1i) * -(var_0.b.b | vec3<i32>(-1i, 8392i, arg_3.a))), arg_2.c, Struct_1(select(vec2<bool>(arg_3.d.a.x, select(arg_1.a.x, false, arg_2.c.a.x)), vec2<bool>(arg_1.a.x, !arg_3.c.a.x), select(!vec2<bool>(arg_1.a.x, true), !var_0.a.d.a, var_0.b.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), ~arg_3.c.c, min(vec2<u32>(arg_3.d.d.x, var_0.a.c.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(31826u, 0u), var_0.a.d.d)) | select(arg_1.d, min(arg_1.d, arg_2.d.d), select(vec2<bool>(arg_3.d.a.x, var_0.b.c.a.x), arg_3.c.a, vec2<bool>(false, arg_2.c.a.x))), _wgslsmith_f_op_f32(-arg_2.c.e)));
    global1 = array<vec4<u32>, 19>();
    global1 = array<vec4<u32>, 19>();
    var var_2 = !select(!(!(!vec3<bool>(true, false, arg_2.d.a.x))), !vec3<bool>(arg_2.c.a.x, false & var_0.a.c.a.x, arg_2.c.a.x), arg_2.d.a.x);
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: f32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, -428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c.x, -2147483647i, u_input.b), Struct_3(Struct_2(u_input.b, vec3<i32>(44358i, -1i, u_input.b), Struct_1(vec2<bool>(false, false), arg_2, vec3<i32>(u_input.b, 9719i, u_input.c.x), vec2<u32>(u_input.a, u_input.a), global0.x), Struct_1(vec2<bool>(true, true), global0.x, vec3<i32>(u_input.b, u_input.b, -8714i), vec2<u32>(81343u, u_input.a), 412f)), Struct_2(48682i, vec3<i32>(-19224i, 1297i, u_input.b), Struct_1(vec2<bool>(false, true), 737f, vec3<i32>(15295i, u_input.c.x, -8395i), vec2<u32>(u_input.a, u_input.a), arg_2), Struct_1(vec2<bool>(true, false), arg_2, vec3<i32>(0i, u_input.c.x, u_input.c.x), vec2<u32>(1108u, u_input.a), arg_2)))))))), global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.x, -836f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0))))))));
    var var_0 = Struct_2(-53679i, -(~vec3<i32>(-25594i, -2147483647i, 0i)), Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(570f + _wgslsmith_f_op_f32(-global0.x)), -vec3<i32>(-5605i, u_input.b, u_input.d) | func_3(vec3<i32>(-2147483647i, 0i, u_input.d), Struct_1(vec2<bool>(true, false), global0.x, vec3<i32>(u_input.d, u_input.c.x, u_input.b), vec2<u32>(26531u, 110677u), arg_1.x), Struct_2(64386i, vec3<i32>(u_input.b, u_input.b, u_input.d), Struct_1(vec2<bool>(false, false), arg_0, vec3<i32>(1i, 1992i, 14598i), vec2<u32>(79359u, u_input.a), arg_1.x), Struct_1(vec2<bool>(true, false), -1544f, vec3<i32>(u_input.d, u_input.b, u_input.b), vec2<u32>(u_input.a, u_input.a), arg_0)), Struct_2(-1i, vec3<i32>(u_input.b, -17856i, u_input.c.x), Struct_1(vec2<bool>(true, false), -567f, vec3<i32>(54002i, -2147483647i, 1i), vec2<u32>(1u, 12358u), -1910f), Struct_1(vec2<bool>(true, false), 1048f, vec3<i32>(u_input.d, -2147483647i, u_input.d), vec2<u32>(u_input.a, 100356u), global0.x))), ~vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 18575u), vec3<u32>(0u, 73486u, 0u))), global0.x), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_2), abs(-abs(vec3<i32>(-1i, 13541i, -1i))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 1u)), arg_2));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - -248f), -640f, 1f, _wgslsmith_f_op_f32(sign(arg_0))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0), global0.x, _wgslsmith_f_op_f32(arg_0 - 136f), _wgslsmith_f_op_f32(select(-1000f, var_0.c.e, var_0.d.a.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.e, -1026f, -167f, 855f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-348f, 187f, arg_0, -245f), vec4<f32>(arg_1.x, -1051f, arg_2, arg_1.x)))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1242f, arg_0, arg_2)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1060f, arg_2, -812f, -1450f))), select(vec4<bool>(var_0.d.a.x, false, var_0.d.a.x, true), vec4<bool>(var_0.d.a.x, false, true, false), false)))))));
    var_0 = Struct_2(-_wgslsmith_dot_vec2_i32(~(-vec2<i32>(var_0.a, -2147483647i)), _wgslsmith_div_vec2_i32(min(var_0.d.c.yx, vec2<i32>(2147483647i, -1i)), ~var_0.d.c.xz)), var_0.d.c, Struct_1(select(!(!var_0.d.a), select(select(var_0.c.a, vec2<bool>(var_0.c.a.x, true), false), !var_0.d.a, !vec2<bool>(var_0.c.a.x, var_0.d.a.x)), var_0.d.a), _wgslsmith_f_op_f32(round(-150f)), vec3<i32>(_wgslsmith_sub_i32(~(-45906i), -24200i), abs(20958i), _wgslsmith_clamp_i32(var_0.a, var_0.b.x & 0i, _wgslsmith_mod_i32(12443i, -10575i))), abs(vec2<u32>(43774u, _wgslsmith_add_u32(63918u, 80309u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-var_0.d.e))))), Struct_1(!vec2<bool>(u_input.a < u_input.a, !var_0.c.a.x), 1035f, var_0.b, _wgslsmith_clamp_vec2_u32(var_0.d.d, _wgslsmith_clamp_vec2_u32(var_0.c.d, var_0.d.d, vec2<u32>(128259u, 1u) & vec2<u32>(u_input.a, 1u)), ~vec2<u32>(1u, 76339u) & ~var_0.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-var_1.x)))));
    var_0 = Struct_2(~u_input.d ^ -func_3(func_3(var_0.b, Struct_1(vec2<bool>(var_0.d.a.x, var_0.c.a.x), -1000f, var_0.d.c, var_0.d.d, -1082f), Struct_2(16077i, vec3<i32>(u_input.d, -70361i, var_0.a), Struct_1(var_0.d.a, arg_1.x, var_0.c.c, vec2<u32>(35479u, 63938u), 1420f), Struct_1(var_0.c.a, 931f, vec3<i32>(21169i, 2147483647i, 14203i), vec2<u32>(4294967295u, 38418u), -443f)), Struct_2(2147483647i, vec3<i32>(-22192i, 1i, u_input.d), Struct_1(var_0.d.a, 1139f, vec3<i32>(-26180i, -2147483647i, 1i), vec2<u32>(u_input.a, u_input.a), global0.x), Struct_1(vec2<bool>(var_0.d.a.x, var_0.c.a.x), arg_1.x, vec3<i32>(u_input.d, var_0.b.x, -3432i), vec2<u32>(u_input.a, u_input.a), arg_0))), var_0.d, Struct_2(33033i, var_0.c.c, Struct_1(var_0.d.a, var_1.x, var_0.c.c, var_0.c.d, 1145f), var_0.d), Struct_2(u_input.c.x, var_0.b, var_0.d, var_0.c)).x, var_0.d.c, var_0.c, Struct_1(var_0.c.a, arg_1.x, vec3<i32>(-_wgslsmith_div_i32(u_input.b, var_0.a), u_input.b, ~u_input.d), var_0.d.d & ~var_0.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0)), var_0.c.b)))));
    return var_0.d.c;
}

fn func_4(arg_0: vec3<i32>) -> vec3<i32> {
    return vec3<i32>(~(-(~1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.d, 2147483647i, arg_0.x), vec4<i32>(-1i, arg_0.x, 7838i, 2147483647i)))), u_input.c.x, ~(~u_input.b & 72176i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-global0.x))));
    global1 = array<vec4<u32>, 19>();
    let var_1 = ~func_4(func_2(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, u_input.d, -7609i), Struct_3(Struct_2(0i, vec3<i32>(u_input.b, u_input.b, 1i), Struct_1(vec2<bool>(false, false), 1340f, vec3<i32>(u_input.b, u_input.d, u_input.d), vec2<u32>(12339u, u_input.a), 1407f), Struct_1(vec2<bool>(true, true), 2012f, vec3<i32>(u_input.c.x, -1i, u_input.b), vec2<u32>(u_input.a, u_input.a), 1526f)), Struct_2(-38354i, vec3<i32>(0i, -7355i, 0i), Struct_1(vec2<bool>(true, true), 292f, vec3<i32>(-6489i, u_input.d, -6700i), vec2<u32>(1u, u_input.a), global0.x), Struct_1(vec2<bool>(true, false), -1420f, vec3<i32>(u_input.c.x, u_input.c.x, u_input.d), vec2<u32>(u_input.a, u_input.a), -1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -697f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1320f, 1124f) + vec2<f32>(-1307f, 571f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f + global0.x))));
    let var_2 = firstTrailingBit(u_input.d) >= -var_1.x;
    global1 = array<vec4<u32>, 19>();
    let var_3 = !any(!select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(var_2, var_2, var_2, var_2), select(vec4<bool>(true, false, var_2, var_2), vec4<bool>(var_2, true, true, false), vec4<bool>(var_2, var_2, false, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b), var_1.x);
}

