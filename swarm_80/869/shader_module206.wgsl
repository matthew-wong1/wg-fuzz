struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(56071i, -23671i, 2147483647i), vec3<i32>(2961i, 2147483647i, 2147483647i), vec3<i32>(-6934i, -1i, 893i), vec3<i32>(i32(-2147483648), 11125i, 1i), vec3<i32>(2147483647i, 42820i, 0i), vec3<i32>(2147483647i, 14804i, 65462i), vec3<i32>(1i, -39214i, 65551i), vec3<i32>(-23058i, -1i, 2147483647i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(-27758i, -5732i, -19105i), vec3<i32>(1102i, -1i, 18023i), vec3<i32>(-13759i, -61993i, -6961i), vec3<i32>(i32(-2147483648), 46601i, 8081i), vec3<i32>(1i, -19724i, 0i), vec3<i32>(2147483647i, 18776i, -2431i), vec3<i32>(-1i, 6839i, -1954i), vec3<i32>(i32(-2147483648), -8708i, -18450i), vec3<i32>(1i, 0i, 50161i), vec3<i32>(-45275i, 9001i, 2147483647i), vec3<i32>(-1i, 1i, 6664i), vec3<i32>(-70810i, i32(-2147483648), -2340i), vec3<i32>(-11692i, 43985i, i32(-2147483648)), vec3<i32>(32140i, 21949i, -1i), vec3<i32>(9559i, -47845i, -1i), vec3<i32>(i32(-2147483648), -7092i, 22002i), vec3<i32>(-32856i, 1i, -2816i), vec3<i32>(i32(-2147483648), -1i, 52286i), vec3<i32>(i32(-2147483648), 25719i, -590i), vec3<i32>(0i, 41148i, i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    let var_0 = 476f;
    global1 = array<vec3<i32>, 29>();
    global1 = array<vec3<i32>, 29>();
    var var_1 = Struct_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c), vec4<u32>(0u, u_input.c.x, 4294967295u, 5116u)), u_input.c.x), -global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, var_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -177f) * vec2<f32>(arg_0.x, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, 994f)), vec2<bool>(false, false))))));
    global1 = array<vec3<i32>, 29>();
    return arg_0.x;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = vec4<bool>(false, false, true, true);
    var var_1 = ~u_input.c.wzz;
    global1 = array<vec3<i32>, 29>();
    var var_2 = -160f;
    let var_3 = all(vec3<bool>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f + 1375f) + 2059f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(412f, -985f)))), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(233f, _wgslsmith_f_op_f32(min(895f, 1243f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1306f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(f32(-1f) * -1486f), 1380f, 1f), u_input.a & _wgslsmith_mult_i32(u_input.a, global0.x)))));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = all(select(select(vec3<bool>(all(vec2<bool>(arg_0, false)), !arg_0, true), vec3<bool>(true, true, arg_0), select(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, false, arg_0), arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true), all(vec4<bool>(true, arg_0, false, false)))), select(select(!vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, true))), vec3<bool>(true, arg_0 || arg_0, u_input.d <= 0u), vec3<bool>(true, true, false)), arg_0));
    global0 = abs(-_wgslsmith_clamp_vec3_i32(~(vec3<i32>(1451i, u_input.a, 62645i) >> (vec3<u32>(u_input.c.x, 1308u, 0u) % vec3<u32>(32u))), vec3<i32>(-16072i, u_input.a, u_input.a), global1[_wgslsmith_index_u32(~(~111552u), 29u)]));
    let var_1 = Struct_3(~global0.x, select(vec2<bool>(select(true, true, true), arg_0), vec2<bool>(select(arg_0, !arg_0, true), !arg_0), vec2<bool>(arg_0 && false, false)));
    global0 = countOneBits(((vec3<i32>(u_input.a, 2147483647i, var_1.a) >> (u_input.c.yww % vec3<u32>(32u))) ^ vec3<i32>(-35423i, var_1.a, global0.x)) & _wgslsmith_sub_vec3_i32(abs(global1[_wgslsmith_index_u32(30809u, 29u)]), countOneBits(vec3<i32>(var_1.a, var_1.a, global0.x)))) & ((vec3<i32>(max(1i, var_1.a), _wgslsmith_sub_i32(var_1.a, var_1.a), 0i) << (~firstLeadingBit(u_input.c.xyx) % vec3<u32>(32u))) ^ ~abs(vec3<i32>(12745i, -65451i, u_input.a)));
    global0 = vec3<i32>(-2147483647i, ~global0.x, ~abs(var_1.a));
    return ~(vec3<u32>(countOneBits(101602u), 4294967295u, _wgslsmith_clamp_u32(u_input.b, min(0u, u_input.b), abs(u_input.d))) << ((u_input.c.yzy | u_input.c.wzx) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(abs(~u_input.c.ywz), abs(-21040i), vec2<bool>(!(!all(vec4<bool>(true, true, true, false))), true), 1u == u_input.d, select(select(false, select(true, false, true), true), !(global0.x > u_input.a), all(vec2<bool>(true, true))) | any(vec3<bool>(true, true, true)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f * _wgslsmith_f_op_f32(-571f - 1692f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1185f) + -349f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(85919u)))))));
    var_0 = Struct_2(firstTrailingBit(func_3(all(vec3<bool>(false, false, true)))), global0.x, select(vec2<bool>(!var_0.c.x && all(vec4<bool>(var_0.d, var_0.e, var_0.c.x, var_0.d)), var_0.d), vec2<bool>(var_0.c.x, true), all(select(var_0.c, vec2<bool>(true, var_0.d), var_0.c)) | any(!vec4<bool>(false, var_0.d, var_0.c.x, true))), var_0.d, all(!vec4<bool>(var_0.e || var_0.e, var_0.e, var_0.c.x, false)));
    let var_2 = Struct_1(var_0.a.x, ~vec2<i32>((30245i << (0u % 32u)) << (max(var_0.a.x, var_0.a.x) % 32u), _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-13102i, -8230i), true), countOneBits(vec2<i32>(-2147483647i, -44456i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, var_1.x)));
    var_0 = Struct_2(u_input.c.zyx, -17232i, !select(vec2<bool>(!var_0.c.x, var_0.d && var_0.e), vec2<bool>(!var_0.d, var_0.c.x), select(!var_0.c.x, var_0.c.x && false, true)), all(vec4<bool>(var_0.d, !var_0.d, true, (var_0.b << (var_0.a.x % 32u)) < abs(global0.x))), true);
    let var_3 = global1[_wgslsmith_index_u32(countOneBits(~u_input.c.x), 29u)];
    global0 = select(global1[_wgslsmith_index_u32(~var_2.a, 29u)], _wgslsmith_mult_vec3_i32(vec3<i32>(~1i, ~var_2.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.x, 0i, var_0.b), vec3<i32>(global0.x, -2147483647i, global0.x)), -3455i)), global1[_wgslsmith_index_u32(1u, 29u)]), all(!select(!vec4<bool>(true, var_0.d, var_0.d, var_0.e), !vec4<bool>(var_0.e, false, var_0.d, var_0.e), true)));
    global0 = global1[_wgslsmith_index_u32(var_2.a, 29u)];
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.x, 2147483647i, var_2.b.x), vec4<i32>(0i, 18878i, var_2.b.x, var_2.b.x))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_0.b, u_input.a, u_input.a, -2147483647i), vec4<i32>(2147483647i, u_input.a, var_3.x, global0.x)), -vec4<i32>(-2147483647i, -37830i, var_0.b, global0.x))), 0i, -var_0.b) >> (vec3<u32>(var_2.a | min(countOneBits(0u), u_input.b), 56354u >> ((4294967295u << (var_2.a % 32u)) % 32u), var_0.a.x) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~firstTrailingBit(var_0.a.x), 29u)], vec2<f32>(_wgslsmith_f_op_f32(abs(-2450f)), _wgslsmith_f_op_f32(sign(-164f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1213f, var_1.x)) + var_2.c.x), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -805f)), var_2.c.x, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1097f, -163f, 1108f, var_2.c.x))));
}

