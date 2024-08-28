struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    var var_0 = vec2<bool>(all(arg_1.ww), arg_2);
    var var_1 = select(!vec3<bool>(!(arg_0 < 1176f), arg_2, all(vec3<bool>(false, false, false)) && true), vec3<bool>(any(arg_1.xz) & arg_1.x, true, var_0.x), false);
    let var_2 = !all(select(!vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(true, var_1.x, var_1.x, true), !arg_1));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f)), global0.x, global0.x))), ~(~u_input.c.yy));
    let var_4 = Struct_2(~firstLeadingBit(-u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(global0.xww)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-505f - var_3.a.x), -1522f))), _wgslsmith_mod_i32(~10168i, u_input.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1209f, arg_0), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1760f, arg_0))), !var_0.x)))), vec4<bool>(arg_1.x, !var_0.x, true, true), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 15002i, abs(10263i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(-2147483647i, -63101i, 0i)), select(u_input.c, vec3<i32>(var_3.b.x, u_input.d, 1i), var_2)), 1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1182f + global0.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-global0.x), arg_1, false || arg_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(735f)), _wgslsmith_div_f32(-1466f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)), _wgslsmith_f_op_f32(1000f - 1584f), _wgslsmith_f_op_f32(floor(144f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1637f, global0.x, -1774f, 462f), vec4<f32>(global0.x, global0.x, -615f, global0.x), !arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 766f, -769f, 520f), vec4<f32>(-437f, global0.x, global0.x, global0.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 152f, 259f, 1271f) * vec4<f32>(732f, -320f, -735f, -1529f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1365f, global0.x, global0.x, global0.x) - vec4<f32>(965f, -667f, -360f, -908f)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -643f), -617f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -726f, global0.x, global0.x) * vec4<f32>(-1204f, 180f, -533f, -1352f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1474f, -1000f, global0.x, 370f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-global0.x), global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1126f)), _wgslsmith_f_op_f32(f32(-1f) * -1808f))), global0.x, _wgslsmith_f_op_f32(max(301f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(sign(global0.x)))))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1394f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * var_0) + -484f))), _wgslsmith_f_op_f32(abs(-883f)), var_0, global0.x);
    return vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1369f))) + _wgslsmith_f_op_f32(-1881f * var_0))), var_0, 1118f);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(abs(vec3<i32>(32734i, arg_2.e.x, -51937i)), vec4<bool>(any(arg_2.d), !arg_3.x, select(arg_3.x, true, arg_3.x), !arg_3.x)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1380f * -1343f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.x))), _wgslsmith_f_op_f32(max(1604f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x - global0.x), 549f)))), arg_2.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a) + vec4<f32>(arg_2.a.x, arg_2.c.x, global0.x, var_0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(sign(var_1));
    let var_2 = Struct_2(min(-arg_2.e, -_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-1i, arg_0.b.x, arg_1.x)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, 27849i, arg_2.b), arg_2.e))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.zzz + var_1.yyw)))), 6237i, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(arg_2.c.x + arg_0.a.x))), select(arg_2.d, vec4<bool>(false, !arg_2.d.x, true, true), !any(vec3<bool>(arg_3.x, arg_3.x, true))), vec3<i32>(arg_1.x, firstTrailingBit(arg_0.b.x), (u_input.d & -2147483647i) | (i32(-1i) * -2147483647i))));
    var var_3 = arg_2.a.x;
    return -681f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec4<f32>(-346f, 195f, -1145f, -474f), vec4<bool>(true, false, false, true))), vec4<f32>(_wgslsmith_f_op_f32(-650f - global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-175f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(step(global0.x, -881f)), -964f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(vec4<f32>(global0.x, -737f, 1707f, -1522f), u_input.c.xz), u_input.c.xx, Struct_1(vec3<f32>(global0.x, global0.x, -1953f), -1i, global0.zw, vec4<bool>(false, true, true, true), vec3<i32>(-32831i, u_input.d, u_input.a)), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-global0.x), -692f, _wgslsmith_f_op_f32(-1148f - global0.x))))));
    let var_0 = 1370f;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(475f)) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(716f + -874f) * global0.x), 194f, 690f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -275f, var_0, -1000f)))) - _wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(14813i, u_input.b.x, u_input.c.x) & vec3<i32>(u_input.c.x, -2147483647i, -5144i), vec4<bool>(true, true, true, true))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, var_0)) + var_0), global0.x, global0.x, -1103f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, -199f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-850f, vec4<bool>(true, false, false, true), false))))), true));
    var var_1 = ~13112i >= _wgslsmith_sub_i32(_wgslsmith_mult_i32(~5053i, u_input.d) ^ firstTrailingBit(4869i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, max(1i, u_input.b.x), u_input.d, u_input.b.x), vec4<i32>(7895i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), 0i, -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(9677u, 50188i);
}

