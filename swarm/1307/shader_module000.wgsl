struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(65851u, 47881u, 7368u, 0u, 6156u, 0u, 4294967295u, 34634u, 0u, 4294967295u, 10820u, 22492u, 27515u, 1u, 1u, 4294967295u, 14078u, 1u, 1u, 1u, 3338u, 9970u, 1u, 0u, 4294967295u, 36730u, 0u, 0u, 1u);

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-21623i, 2147483647i), vec2<i32>(2147483647i, 8592i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -32120i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-24524i, 0i), vec2<i32>(-20523i, -58432i), vec2<i32>(2147483647i, -6573i), vec2<i32>(1i, -83634i), vec2<i32>(0i, -39738i), vec2<i32>(-25732i, 30992i), vec2<i32>(0i, -24446i), vec2<i32>(-24736i, -46919i), vec2<i32>(-18342i, 1i), vec2<i32>(4052i, -18956i), vec2<i32>(37266i, 2147483647i), vec2<i32>(-13025i, -5908i), vec2<i32>(-38085i, -61034i), vec2<i32>(-89883i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(4549i, i32(-2147483648)), vec2<i32>(-13767i, 0i), vec2<i32>(43974i, -1i), vec2<i32>(2147483647i, 54471i), vec2<i32>(58567i, 2147483647i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> f32 {
    let var_0 = -42710i != u_input.b.x;
    global0 = array<u32, 29>();
    let var_1 = Struct_3(153f, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(793f, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1385f, 898f))) + vec2<f32>(801f, -282f)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(507f)), _wgslsmith_f_op_f32(min(-769f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -970f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-445f)))))), vec2<bool>(true, true));
    var var_2 = var_1;
    global0 = array<u32, 29>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2239f)), 145f, any(arg_1.d.wx)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(123f, var_1.a)))) * -310f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> bool {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_1.x) * _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(686f)))) >= -436f;
    var var_2 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_4(Struct_1(false, u_input.c, vec4<bool>(true, true, true, false), true), vec2<bool>(true, true), vec3<i32>(u_input.b.x, u_input.b.x, -62068i), vec4<bool>(true, false, false, false))))))));
    var var_3 = arg_1.x;
    var var_4 = Struct_2(_wgslsmith_clamp_u32(u_input.e, _wgslsmith_dot_vec3_u32(u_input.d.xyx, min(vec3<u32>(7756u, 11569u, 23384u), u_input.a ^ u_input.a)), 1u), Struct_1(false, -(vec2<i32>(u_input.c.x, -6586i) | global1[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), 27u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), arg_1.x >= _wgslsmith_f_op_f32(floor(arg_1.x))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global0 = array<u32, 29>();
    global1 = array<vec2<i32>, 27>();
    var var_0 = Struct_3(141f, all(vec3<bool>(false, all(arg_2.c.zxz) | true, false)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -635f), 1306f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f + -1300f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-430f - 1265f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_div_f32(-378f, -1089f))), vec4<f32>(-217f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2403f), _wgslsmith_f_op_f32(-1346f + 688f))), _wgslsmith_f_op_f32(f32(-1f) * -1052f), -868f)), arg_0);
    global1 = array<vec2<i32>, 27>();
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2294f, var_0.c.x)) * var_0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -188f)), arg_2.c.x, var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) * _wgslsmith_f_op_vec4_f32(var_0.d + var_0.d))) * var_0.d), arg_2.c.xz);
    return Struct_3(var_0.a, !(reverseBits(abs(1u)) <= ~(4294967295u << (u_input.d.x % 32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(982f))) - -233f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f * var_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -197f, var_0.d.x, 606f)))))), select(vec2<bool>(any(!arg_2.c.zxz), all(!arg_2.c.xx)), var_0.e, var_0.e.x));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = array<u32, 29>();
    let var_0 = func_4(vec2<bool>(true, true), !func_2(vec2<f32>(462f, _wgslsmith_f_op_f32(641f + -1625f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-100f, 250f, -1243f) + vec3<f32>(1299f, -775f, 406f))))), Struct_1(true, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), ~(-vec2<i32>(-11988i, u_input.b.x)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(arg_0.x, -33947i)), -vec2<i32>(arg_0.x, -25691i))), select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), true));
    global1 = array<vec2<i32>, 27>();
    let var_1 = Struct_1(false, vec2<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -45851i, -79i), vec3<i32>(42280i, -595i, 0i)), vec3<i32>(-1i, u_input.c.x, arg_0.x) ^ vec3<i32>(arg_0.x, arg_0.x, 1i))), firstTrailingBit(-25814i) << (_wgslsmith_mult_u32(7756u ^ global0[_wgslsmith_index_u32(48257u, 29u)], 1u) % 32u)), select(vec4<bool>(_wgslsmith_div_u32(4294967295u, 1361u) < u_input.e, all(!vec2<bool>(true, var_0.b)), true, var_0.e.x), vec4<bool>(true != any(var_0.e), false, _wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)) >= -566f, !var_0.e.x & func_4(var_0.e, false, Struct_1(false, vec2<i32>(u_input.c.x, arg_0.x), vec4<bool>(var_0.e.x, true, var_0.b, var_0.e.x), var_0.e.x)).b), false), var_0.b);
    var var_2 = 1126f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = vec3<bool>(global0[_wgslsmith_index_u32(23930u, 29u)] == ~abs(arg_0.x), true, any(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), true)));
    var var_1 = vec4<u32>(min(~12977u >> (_wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 29u)], 51379u), _wgslsmith_add_u32(1u, 12874u)) % 32u), ~(~(~global0[_wgslsmith_index_u32(u_input.d.x, 29u)]))), u_input.e, arg_0.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.d.yxw));
    var_1 = ~(~(~(~u_input.d)));
    var_1 = vec4<u32>(4294967295u, arg_0.x, global0[_wgslsmith_index_u32(select(1u, arg_0.x, !(33381i >= u_input.c.x)), 29u)], 100067u);
    var var_2 = _wgslsmith_f_op_f32(round(arg_1.x));
    return Struct_4(Struct_1(false, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 3517i, u_input.b.x, u_input.c.x), vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.b.x)) << (~40122u % 32u), abs(~u_input.b.x)), vec4<bool>(-282f > _wgslsmith_div_f32(arg_1.x, arg_1.x), var_0.x, var_0.x, var_0.x), var_0.x), vec2<bool>(var_0.x, var_0.x), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.b.x, u_input.b.x, -34i), vec3<i32>(-4882i, -2147483647i, 0i)), select(vec3<i32>(-1i, 18023i, -2147483647i), vec3<i32>(u_input.b.x, -1i, -2147483647i), var_0.x), -vec3<i32>(0i, -2147483647i, u_input.c.x)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.c.x), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.e, 27u)], vec2<i32>(u_input.c.x, 5775i)), 16659i)), vec3<i32>(-1i) * -(~vec3<i32>(u_input.b.x, u_input.b.x, -1i))), select(select(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !(!vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(var_0.x, false, false && var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(!var_0.x, all(vec2<bool>(var_0.x, var_0.x)), false, any(var_0)), vec4<bool>(true, all(vec2<bool>(false, var_0.x)), true, !var_0.x)), (all(vec3<bool>(true, var_0.x, false)) && all(var_0)) | var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = func_5(~vec2<u32>(abs(u_input.d.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.e), 29u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-492f, -1484f, _wgslsmith_f_op_f32(675f + 1967f), _wgslsmith_f_op_f32(func_1(u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, -880f, -257f, -327f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(312f, -1989f, 786f, 1173f) * vec4<f32>(-495f, 1476f, -1749f, 418f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(438f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2257f))))))));
    global0 = array<u32, 29>();
    global1 = array<vec2<i32>, 27>();
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yw, vec4<f32>(var_1, -1949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1007f, _wgslsmith_div_f32(-234f, var_1))) - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1, var_1))))))));
}

