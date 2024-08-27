struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(749f, -217f), vec2<f32>(-910f, 1130f), vec2<f32>(1073f, -902f), vec2<f32>(495f, -748f), vec2<f32>(1715f, 609f), vec2<f32>(2501f, 113f), vec2<f32>(-1004f, 1771f), vec2<f32>(1294f, -1499f), vec2<f32>(-257f, -1721f), vec2<f32>(702f, 986f), vec2<f32>(406f, -420f), vec2<f32>(-1000f, 454f), vec2<f32>(-526f, -1100f), vec2<f32>(497f, 1436f), vec2<f32>(-271f, -530f), vec2<f32>(-1533f, 124f), vec2<f32>(1000f, -573f), vec2<f32>(-1186f, 1000f), vec2<f32>(1000f, 634f));

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(u_input.a.x, u_input.c.x))));
    global2 = array<Struct_2, 24>();
    let var_1 = Struct_1(!(!arg_1.b.b | (all(global0[_wgslsmith_index_u32(u_input.c.x, 27u)]) && true)));
    let var_2 = countOneBits(vec3<i32>(-25767i, max(u_input.b.x << (var_0.a.x % 32u), u_input.b.x), ~u_input.b.x));
    global1 = array<vec2<f32>, 19>();
    return vec4<u32>(25944u, _wgslsmith_add_u32(_wgslsmith_add_u32(~var_0.a.x, countOneBits(u_input.a.x)) << (_wgslsmith_div_u32(var_0.a.x, var_0.a.x & 28964u) % 32u), ~var_0.a.x), 2306u, 0u);
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    global0 = array<vec2<bool>, 27>();
    var var_0 = Struct_4(u_input.c.zx);
    global1 = array<vec2<f32>, 19>();
    var var_1 = reverseBits(7201u);
    let var_2 = true;
    return max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(2052u ^ ~arg_0, ~19789u, ~countOneBits(u_input.c.x), 5695u), func_3(select(vec2<i32>(46480i, 2147483647i), u_input.b.xw, vec2<bool>(false, true)) ^ u_input.b.ww, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1289f, arg_1)), Struct_2(925i, var_2)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = array<vec2<bool>, 27>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1461f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-593f, _wgslsmith_f_op_f32(step(-228f, 689f))))))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1862f)))));
    global0 = array<vec2<bool>, 27>();
    return vec2<f32>(_wgslsmith_f_op_f32(-461f + -1134f), _wgslsmith_f_op_f32(var_2 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))), var_2)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(960f, -616f, 1260f)))) - vec3<f32>(_wgslsmith_f_op_f32(616f * -1716f), _wgslsmith_f_op_f32(select(718f, -617f, false)), 1375f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(621f, -1797f, 1556f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1353f, 430f, -908f) - vec3<f32>(-168f, 1031f, -1000f)), vec3<bool>(false, true, false))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-883f, -487f, 648f), vec3<f32>(852f, -379f, -1509f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-969f, -198f, 1560f) - vec3<f32>(-677f, 1581f, 1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1183f), -155f, -287f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(898f, -108f)), _wgslsmith_f_op_f32(select(-1500f, -1080f, false)), _wgslsmith_f_op_f32(f32(-1f) * -250f)))));
    var var_1 = Struct_2(~(~(~(~u_input.b.x))), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(global2[_wgslsmith_index_u32(func_2(abs(firstTrailingBit(~76073u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1510f)))), 24u)], _wgslsmith_clamp_i32(~36507i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -94262i), vec2<i32>(-14030i, -1i), vec2<i32>(var_1.a, u_input.b.x)), u_input.b.zy), u_input.b.xx), _wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, 0i, u_input.b.x), u_input.b.x))), vec4<i32>(u_input.b.x, _wgslsmith_add_i32(var_1.a, i32(-1i) * -u_input.b.x), -12294i, u_input.b.x), global2[_wgslsmith_index_u32(firstTrailingBit(~(~min(u_input.c.x, 4294967295u))), 24u)]));
    global1 = array<vec2<f32>, 19>();
    var var_3 = _wgslsmith_mult_vec3_i32(u_input.b.wxw, _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a ^ var_1.a, min(var_1.a, 2147483647i), u_input.b.x), u_input.b.yzy ^ ~vec3<i32>(15949i, u_input.b.x, u_input.b.x))) ^ _wgslsmith_sub_vec3_i32(u_input.b.yzy & vec3<i32>(_wgslsmith_add_i32(1i, 6891i), 29484i, countOneBits(2147483647i)), vec3<i32>(~25361i, 22189i, var_1.a | ~var_1.a));
    return min(_wgslsmith_mult_i32(select(firstTrailingBit(var_3.x), i32(-1i) * -38787i, select(true, true, false)) & var_3.x, -1i), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, u_input.a.x)) & _wgslsmith_sub_u32(~u_input.c.x, u_input.a.x);
    var var_1 = abs(1u);
    let var_2 = Struct_4(_wgslsmith_div_vec2_u32(u_input.a.zx, select(u_input.a.zz, abs(u_input.a.xx), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, ~u_input.c.x, u_input.a.x), 27u)])));
    global2 = array<Struct_2, 24>();
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1046f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-859f, 985f))))), _wgslsmith_f_op_f32(round(1114f))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-53621i, 1i, 2147483647i, u_input.b.x), u_input.b) >> (reverseBits(79833u & u_input.c.x) % 32u), _wgslsmith_add_i32(u_input.b.x, select(func_1(Struct_4(vec2<u32>(1u, 23238u)), vec3<u32>(89223u, u_input.c.x, var_2.a.x), vec2<u32>(4294967295u, var_2.a.x)), 2147483647i, any(vec2<bool>(true, true)))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)) || true), (~u_input.b >> (~_wgslsmith_div_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, var_2.a.x, 45906u))), ~(~vec4<u32>(33092u, var_2.a.x, 73892u, 0u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-26662i, i32(-1i) * -1i, u_input.b.x)), u_input.b.xxx, vec3<i32>(2147483647i, u_input.b.x >> (~var_2.a.x % 32u), u_input.b.x)));
}

