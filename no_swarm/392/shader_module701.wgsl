struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(max(u_input.a, ~u_input.d.x & _wgslsmith_sub_u32(arg_1.x, 4294967295u)), vec2<u32>(~_wgslsmith_add_u32(u_input.a, arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(40241u, 25303u), vec2<u32>(4294967295u, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(round(-633f)), _wgslsmith_f_op_f32(f32(-1f) * -1779f)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-543f, 1103f, -1722f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2673f, -513f, -1215f), vec3<f32>(1430f, 1952f, -1339f), arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(447f, 517f, -1113f) * vec3<f32>(-293f, -747f, -1190f)))))), Struct_1(_wgslsmith_add_u32(~abs(u_input.a), _wgslsmith_add_u32(~4294967295u, u_input.a)), u_input.d.xx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2076f - -477f)), _wgslsmith_f_op_f32(-505f - _wgslsmith_f_op_f32(select(330f, -581f, arg_0)))), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(119f, 1811f, -773f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, 787f, 693f)))))), Struct_1(select(1u, ~(4294967295u & arg_1.x), false), _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 27650u), u_input.d.yx, vec2<u32>(0u, u_input.a)), select(vec2<u32>(43414u, u_input.d.x), vec2<u32>(0u, 0u), global0[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(608f, 287f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1870f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(720f, 890f), vec2<f32>(590f, 141f)))), global0[_wgslsmith_index_u32(arg_1.x, 19u)])), all(select(global0[_wgslsmith_index_u32(~arg_1.x, 19u)], select(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(74421u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-1189f, _wgslsmith_f_op_f32(f32(-1f) * -179f), -1863f))), Struct_1(12789u, _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.x, 0u)), arg_1.wx, ~firstLeadingBit(vec2<u32>(46045u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(309f, -1146f))), select(arg_0, arg_0, select(true, true || arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, 1158f, 1421f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(677f, -2297f, -440f), vec3<f32>(-821f, 698f, 240f), false))))));
    var var_1 = Struct_4(Struct_2(var_0.b, Struct_1(~var_0.b.b.x, _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 65780u), _wgslsmith_sub_vec2_u32(arg_1.yy, vec2<u32>(53618u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(305f, var_0.a.c.x), vec2<f32>(var_0.c.e.x, 422f)))), all(select(vec2<bool>(arg_0, var_0.b.d), vec2<bool>(true, arg_0), vec2<bool>(false, false))), vec3<f32>(var_0.d.e.x, _wgslsmith_f_op_f32(floor(var_0.a.c.x)), _wgslsmith_f_op_f32(round(var_0.b.c.x)))), var_0.c, var_0.b));
    var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_1.a.d.a), _wgslsmith_sub_vec2_u32(arg_1.ww, vec2<u32>(1u, 30749u))), vec2<u32>(var_1.a.a.a, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(floor(-368f))), false, var_1.a.d.e), var_1.a.d, Struct_1(var_0.b.a & var_0.d.b.x, vec2<u32>(min(arg_1.x, u_input.a), ~u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.d.e.x, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.c.x, -1963f))), arg_0, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(trunc(var_0.c.c.x)), 146f)), var_1.a.b));
    var var_2 = var_1.a.c;
    let var_3 = var_1.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f + var_3.b.c.x)), 1133f);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32) -> vec4<f32> {
    var var_0 = ~(~u_input.d.x);
    global0 = array<vec2<bool>, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(-1396f + -1000f), 934f, arg_2));
    global0 = array<vec2<bool>, 19>();
    var_0 = 57857u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(false, vec4<u32>(1u, 1u, 46334u, 0u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(true, vec4<u32>(0u, 50651u, u_input.d.x, 4294967295u))), arg_1)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(abs(-1336f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -868f))), _wgslsmith_f_op_f32(f32(-1f) * -150f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec4<bool> {
    global0 = array<vec2<bool>, 19>();
    var var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35617i << (arg_0.a.a % 32u), -47606i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), min(vec2<i32>(u_input.c.x, -20691i), u_input.b))), u_input.b.x, select(21815i, -32663i, arg_1.x)));
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(61003i, -6004i, u_input.c.x), select(vec3<i32>(var_0.x, -1i, -2147483647i), -vec3<i32>(-2147483647i, var_0.x, var_0.x), !vec3<bool>(false, false, arg_1.x))), ~abs(vec3<i32>(u_input.c.x, 0i, u_input.e.x)) >> (vec3<u32>(arg_0.b.a, 2957u, arg_0.d.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-select(vec3<i32>(var_0.x, 1004i, 50419i), vec3<i32>(u_input.c.x, 1269i, u_input.c.x), vec3<bool>(arg_0.b.d, arg_0.c.d, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.x, 1i), countOneBits(vec3<i32>(-703i, u_input.b.x, u_input.e.x)), firstTrailingBit(vec3<i32>(u_input.e.x, u_input.e.x, 57206i))))), _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(max(vec3<i32>(0i, u_input.e.x, -2147483647i), vec3<i32>(var_0.x, var_0.x, 2147483647i)), select(vec3<i32>(44611i, -2147483647i, -19909i), vec3<i32>(-6514i, -1i, 2147483647i), arg_1.x)), select(_wgslsmith_add_vec3_i32(vec3<i32>(-18765i, var_0.x, u_input.c.x), vec3<i32>(u_input.c.x, var_0.x, var_0.x)) | vec3<i32>(var_0.x, 7920i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, -1i) >> (u_input.d.zyx % vec3<u32>(32u)), -vec3<i32>(-1i, var_0.x, u_input.c.x), ~vec3<i32>(u_input.e.x, -17422i, u_input.b.x)), vec3<bool>(true, false, any(vec3<bool>(true, false, arg_3.x))))));
    global0 = array<vec2<bool>, 19>();
    let var_1 = _wgslsmith_f_op_f32(step(arg_2.x, 299f));
    return select(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, any(vec3<bool>(4294967295u > u_input.a, !arg_1.x, any(vec3<bool>(true, arg_1.x, arg_3.x))))), vec4<bool>(false, !select(arg_3.x, true, true != arg_3.x), false, true), vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -651f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1754f * arg_2.x)), select(~u_input.b.x, u_input.b.x, arg_3.x) >= (var_0.x << (arg_0.a.b.x % 32u)), !(!(!arg_1.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32) -> vec2<u32> {
    let var_0 = arg_1.a.d.e;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-191f * _wgslsmith_f_op_f32(-1030f - -507f)), _wgslsmith_f_op_f32(min(arg_1.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(floor(268f))))))));
    var_1 = arg_1.a.a.e.x;
    var_1 = 644f;
    let var_2 = Struct_2(arg_1.a.b, arg_1.a.a, Struct_1(~arg_1.a.c.b.x, vec2<u32>(arg_0.x, 4294967295u), var_0.xz, any(func_4(Struct_2(Struct_1(arg_2, arg_0.yw, vec2<f32>(853f, arg_1.a.c.e.x), true, arg_1.a.c.e), arg_1.a.a, Struct_1(4294967295u, arg_1.a.a.b, vec2<f32>(var_0.x, arg_1.a.a.c.x), arg_1.a.d.d, vec3<f32>(var_0.x, arg_1.a.d.e.x, 229f)), arg_1.a.a), global0[_wgslsmith_index_u32(arg_0.x, 19u)], _wgslsmith_f_op_vec4_f32(func_2(arg_1.a.c.a, var_0.x, arg_1.a.c.e.x)), vec2<bool>(arg_1.a.a.d, arg_1.a.c.d))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_u32(0u, 18750u), arg_1.a.a.c.x, arg_1.a.a.c.x)).yyw))), arg_1.a.b);
    return var_2.b.b;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = 4294967295u;
    let var_1 = u_input.c.x;
    global0 = array<vec2<bool>, 19>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1312f, -1687f, -1992f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, 495f, -958f)), vec3<f32>(-1000f, -794f, 459f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(1000f, 297f), _wgslsmith_f_op_f32(1471f - -1410f), _wgslsmith_f_op_f32(abs(-724f))))))));
    global0 = array<vec2<bool>, 19>();
    return select(false, any(select(select(func_4(Struct_2(Struct_1(u_input.d.x, vec2<u32>(arg_1.x, arg_0), var_2.yy, true, vec3<f32>(160f, -1194f, 267f)), Struct_1(arg_0, vec2<u32>(u_input.a, arg_0), vec2<f32>(var_2.x, var_2.x), false, vec3<f32>(1591f, -2183f, 1887f)), Struct_1(6770u, u_input.d.yy, vec2<f32>(var_2.x, var_2.x), false, vec3<f32>(var_2.x, var_2.x, -1384f)), Struct_1(66158u, vec2<u32>(arg_1.x, var_0), var_2.zx, true, vec3<f32>(var_2.x, var_2.x, -1020f))), vec2<bool>(true, false), vec4<f32>(var_2.x, -472f, var_2.x, var_2.x), global0[_wgslsmith_index_u32(35180u, 19u)]).zxz, vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), false)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, ~vec4<u32>(0u, 1732u, 33124u, arg_0)), firstTrailingBit(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d))) < abs(23107u));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> bool {
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(945f, 1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) + 643f), -1119f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-603f, 2432f, 1000f, -831f), vec4<f32>(1943f, 1000f, 311f, 462f), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1570f, 256f, -297f, -947f) - vec4<f32>(-662f, -703f, -532f, 386f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1054f, -178f, -614f, -423f)))));
    global0 = array<vec2<bool>, 19>();
    var var_1 = true;
    var_1 = func_6(Struct_1(0u, ~vec2<u32>(firstLeadingBit(u_input.d.x), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), var_0.xz)))), true, var_0.xxz), !func_5(u_input.d.x, _wgslsmith_mod_vec2_u32(func_1(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 56833u), Struct_4(Struct_2(Struct_1(31562u, vec2<u32>(u_input.d.x, 1u), vec2<f32>(-886f, var_0.x), false, var_0.yxy), Struct_1(u_input.a, u_input.d.wy, vec2<f32>(1098f, 614f), true, var_0.xwy), Struct_1(69742u, vec2<u32>(u_input.d.x, u_input.a), var_0.xy, true, vec3<f32>(var_0.x, var_0.x, -863f)), Struct_1(u_input.d.x, vec2<u32>(0u, u_input.a), var_0.xz, true, vec3<f32>(var_0.x, -1706f, var_0.x)))), u_input.d.x), firstLeadingBit(vec2<u32>(u_input.a, 4440u)))));
    var var_2 = vec3<bool>(false, !(func_5(u_input.a, u_input.d.ww) & (2147483647i >= -u_input.e.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(u_input.e.x, -1i, -26776i, u_input.b.x)), vec4<i32>(-1i, ~u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, u_input.c.x), -1i)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, -1i), vec4<i32>(u_input.e.x, -2147483647i, u_input.b.x, u_input.e.x)))), u_input.a, _wgslsmith_sub_i32(2147483647i, min(-(2147483647i | u_input.e.x), ~(-16317i))));
}

