struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(0i, 1i, 0i), vec3<i32>(34510i, -1i, 1i), vec3<i32>(i32(-2147483648), -1i, -45483i), vec3<i32>(-1i, -1i, -38215i), vec3<i32>(-49781i, -38212i, 97860i));

var<private> global1: vec3<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = arg_3;
    global1 = ~abs(~vec3<i32>(var_0.b.x, _wgslsmith_mod_i32(1i, u_input.a), -242i));
    var var_1 = 991f;
    var var_2 = vec4<u32>(arg_3.a.a.x, 32519u, _wgslsmith_clamp_u32(~abs(u_input.d.x), 31541u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a.b.x, 9102u), _wgslsmith_sub_u32(firstLeadingBit(0u), ~u_input.d.x))), arg_2.a.b.x);
    var_0 = Struct_3(arg_2.a, abs(-((vec3<i32>(global1.x, u_input.a, -2147483647i) ^ global0[_wgslsmith_index_u32(var_2.x, 5u)]) & ~vec3<i32>(arg_2.b.x, arg_3.b.x, arg_0.a))), arg_3.c, -1413f, select(vec2<bool>(all(vec3<bool>(arg_3.e.x, false, false)), true && select(false, arg_3.e.x, false)), vec2<bool>(var_0.b.x < _wgslsmith_dot_vec3_i32(arg_2.b, vec3<i32>(arg_2.b.x, -1i, arg_2.b.x)), var_0.e.x), vec2<bool>(arg_2.e.x, all(!vec4<bool>(true, var_0.e.x, false, arg_3.e.x)))));
    return all(vec3<bool>(true, false, false));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = 1i;
    global1 = abs(global0[_wgslsmith_index_u32(u_input.b.x, 5u)]);
    var var_1 = vec2<bool>(arg_1, all(!vec3<bool>(4294967295u < u_input.e.x, false, true)));
    global0 = array<vec3<i32>, 5>();
    var var_2 = vec3<bool>(func_3(Struct_1(u_input.a), all(select(vec3<bool>(arg_1, var_1.x, true), vec3<bool>(var_1.x, var_1.x, arg_1), vec3<bool>(false, true, true))), Struct_3(Struct_2(u_input.e, vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, 19701u)), vec3<i32>(-28368i, -8843i, -2147483647i), vec3<f32>(arg_0, 423f, arg_0), _wgslsmith_f_op_f32(ceil(769f)), select(vec2<bool>(true, false), vec2<bool>(var_1.x, true), var_1.x)), Struct_3(Struct_2(u_input.e, vec4<u32>(u_input.b.x, 4294967295u, 0u, 4294967295u)), _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(14109u, 5u)], vec3<i32>(-53242i, -20848i, 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, arg_3.x, 1286f)), arg_3.x, vec2<bool>(var_1.x, var_1.x))) | all(!(!vec2<bool>(arg_1, var_1.x))), !(~var_0 < -2147483647i), var_1.x);
    return !select(select(select(vec3<bool>(false, var_1.x, arg_1), select(vec3<bool>(false, false, var_1.x), vec3<bool>(arg_1, arg_1, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), select(vec3<bool>(false, var_1.x, false), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, false))), !vec3<bool>(arg_1, true, arg_1), var_1.x), vec3<bool>(any(!vec4<bool>(arg_1, arg_1, true, false)), select(true, any(var_2.xz), global1.x <= 0i), true), !vec3<bool>(var_0 != var_0, false, var_1.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_3 {
    global1 = ~abs(~global0[_wgslsmith_index_u32(1u, 5u)]);
    let var_0 = arg_0.x;
    var var_1 = Struct_1(u_input.a);
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a, _wgslsmith_clamp_i32(global1.x | u_input.a, _wgslsmith_mod_i32(abs(23829i), arg_1), u_input.a)), global1.xy);
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(~u_input.d, u_input.e), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.e.x), _wgslsmith_add_vec2_u32(vec2<u32>(48379u, u_input.e.x), vec2<u32>(u_input.b.x, u_input.c.x))) & abs(u_input.b.x)), 27139u);
    return Struct_3(Struct_2(select(max(vec4<u32>(u_input.b.x, u_input.e.x, 45518u, u_input.d.x), u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.e.x, u_input.b.x, u_input.c.x, 0u)), !vec4<bool>(var_0, arg_0.x, var_0, var_0)) | vec4<u32>(0u, firstLeadingBit(u_input.c.x), ~1u, 4258u), ~u_input.d), _wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(arg_1), -21957i, u_input.a), vec3<i32>(~(-21852i), 0i, -(i32(-1i) * -21732i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-617f, -189f, 164f) * vec3<f32>(-447f, -1201f, 1038f)), vec3<f32>(-1819f, 169f, -2885f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(221f)) - _wgslsmith_f_op_f32(floor(1224f))), _wgslsmith_div_f32(387f, _wgslsmith_f_op_f32(step(1611f, 206f))), _wgslsmith_f_op_f32(f32(-1f) * -771f))), -142f, vec2<bool>(all(!select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, false, arg_0.x, arg_0.x), arg_0.x)), false));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    global1 = vec3<i32>(arg_0.x, -2147483647i, ~1i);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -1289f), arg_2.x, 1f)));
    let var_1 = func_4(!func_2(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -590f)), false, global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, global1.x | -32555i, _wgslsmith_div_i32(u_input.a, 0i)), ~global0[_wgslsmith_index_u32(min(4294967295u | u_input.c.x, 4294967295u), 5u)]));
    global1 = var_1.b;
    return var_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(~(-49231i));
    var var_2 = _wgslsmith_sub_u32(~(select(func_1(global1.xy, var_1, vec2<f32>(1577f, -2798f)).a.x, firstTrailingBit(0u), any(vec2<bool>(true, true))) | _wgslsmith_div_u32(select(u_input.e.x, var_0.a.x, true), 53772u)), 4483u);
    var var_3 = Struct_2(max(~(~var_0.a), vec4<u32>(_wgslsmith_mod_u32(select(arg_0.a.x, 26727u, true), 1u), _wgslsmith_mult_u32(var_0.a.x, firstTrailingBit(0u)), 0u, ~_wgslsmith_div_u32(1u, arg_0.a.x))), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 25524u, arg_2, var_0.a.x), reverseBits(u_input.d)) ^ ~vec4<u32>(var_0.b.x, var_0.b.x, u_input.c.x, arg_0.a.x)));
    let var_4 = ~(var_3.b >> (abs(vec4<u32>(12101u, 1u, arg_2, 1u)) % vec4<u32>(32u)));
    return _wgslsmith_div_f32(1345f, -121f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(func_1(global1.yy, Struct_1(u_input.a), vec2<f32>(-1013f, -477f)), Struct_1(u_input.a), ~u_input.c.x)))))));
    var var_1 = Struct_1(global1.x);
    var var_2 = u_input.b.x;
    let var_3 = func_4(select(vec3<bool>(!all(vec4<bool>(true, true, false, false)), func_3(Struct_1(1050i), any(vec4<bool>(true, false, true, true)), Struct_3(Struct_2(vec4<u32>(56627u, 476u, 0u, u_input.b.x), u_input.d), vec3<i32>(global1.x, u_input.a, var_1.a), vec3<f32>(-1000f, -1494f, 197f), -960f, vec2<bool>(true, true)), Struct_3(Struct_2(vec4<u32>(17414u, u_input.c.x, 4294967295u, 19785u), vec4<u32>(u_input.c.x, 13834u, u_input.b.x, 44550u)), vec3<i32>(global1.x, u_input.a, 65254i), vec3<f32>(-883f, -1525f, 1626f), -266f, vec2<bool>(true, false))), true), vec3<bool>(true, true, true), vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), true, false)), global1.x).a.a.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-221f, 922f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(func_4(vec3<bool>(false, false, false), -33092i).c.x, 1155f, _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -224f, _wgslsmith_div_f32(-349f, 433f)))), 1i, var_4.x, i32(-1i) * -4496i);
}

