struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(-1023f, -942f, 317f);

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(34414i, 0i), vec2<i32>(-88443i, 17524i), vec2<i32>(1i, 1i), vec2<i32>(0i, 13834i), vec2<i32>(-5541i, 17277i), vec2<i32>(-11077i, i32(-2147483648)), vec2<i32>(1i, 23463i), vec2<i32>(-42792i, 51026i), vec2<i32>(60847i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-49784i, 27423i), vec2<i32>(-10665i, 1i), vec2<i32>(-21272i, 8464i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 1i), vec2<i32>(1i, -34216i), vec2<i32>(i32(-2147483648), 58514i), vec2<i32>(0i, -11111i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, 0i), vec2<i32>(-12056i, 46978i), vec2<i32>(-18542i, -52385i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 54061i), vec2<i32>(-34211i, -19602i), vec2<i32>(i32(-2147483648), -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = u_input.e;
    var var_1 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.a, 1000f)))));
    global2 = array<vec2<i32>, 26>();
    var var_2 = !(!(!(!(!vec4<bool>(false, true, arg_1, arg_1)))));
    var_2 = !(!(!select(!vec4<bool>(arg_1, arg_1, var_2.x, var_2.x), !vec4<bool>(true, var_2.x, arg_1, true), !vec4<bool>(var_2.x, var_2.x, arg_1, arg_1))));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(-1038f)), any(vec4<bool>(false, true, true, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1520f))));
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(956f))), -(~u_input.c.x), _wgslsmith_f_op_vec2_f32(-global1.xy));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a - -108f));
    global0 = var_0.a;
    let var_2 = ~58104u;
    return vec3<f32>(1224f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - -212f), var_1.a)), global1.x), _wgslsmith_f_op_f32(-global0.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    global2 = array<vec2<i32>, 26>();
    let var_0 = _wgslsmith_div_i32(u_input.e, _wgslsmith_dot_vec3_i32(-(_wgslsmith_mod_vec3_i32(u_input.d.wyy, u_input.d.yxz) & min(u_input.a, vec3<i32>(u_input.c.x, -20854i, u_input.a.x))), u_input.d.xzy));
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, global0.a)), 1663f, 160f)))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(433f, -2908f, -927f) * vec3<f32>(global1.x, 396f, 431f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(270f, global0.a, -1000f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(-1i, 1u)))))));
    let var_1 = Struct_2(u_input.c, Struct_1(-437f), Struct_1(516f));
    return Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(var_1.c.a, _wgslsmith_f_op_f32(ceil(1400f)))), !all(vec4<bool>(true, false, true, true))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + global1.x))), var_1.b.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    global0 = arg_1.b;
    global0 = Struct_1(1422f);
    global0 = arg_1.b;
    var var_0 = arg_1;
    let var_1 = Struct_2(~_wgslsmith_sub_vec3_i32(var_0.a, _wgslsmith_sub_vec3_i32(var_0.a, u_input.d.ywz ^ vec3<i32>(var_0.a.x, arg_1.a.x, -2147483647i))), func_1(countOneBits(~max(vec2<u32>(arg_0, arg_0), vec2<u32>(111312u, u_input.b))), ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, arg_0, arg_0, 43961u), vec4<u32>(u_input.b, u_input.b, 71025u, 4294967295u), vec4<bool>(true, false, arg_2.x, false)), select(vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec4<u32>(arg_0, 22941u, 18965u, u_input.b), arg_2.x), ~vec4<u32>(arg_0, 10508u, arg_0, 53774u))).c, Struct_1(_wgslsmith_f_op_f32(max(940f, _wgslsmith_f_op_vec3_f32(func_2(u_input.c.x, ~u_input.b)).x))));
    return Struct_1(global1.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(true, !select(!select(true, false, false), false, true), false);
    let var_1 = ~(~0u);
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-390f + -1312f) * -1428f) + _wgslsmith_f_op_f32(-arg_0.c.a))));
    global1 = _wgslsmith_f_op_vec3_f32(func_2(2147483647i, ~(~u_input.b)));
    return Struct_1(_wgslsmith_f_op_f32(-517f * -848f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(abs(u_input.b) >> (~(~abs(1u)) % 32u), 26u)], firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(abs(13967i), ~u_input.c.x), u_input.e)));
    global2 = array<vec2<i32>, 26>();
    let var_1 = _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a))));
    var var_2 = Struct_2(abs(-vec3<i32>(1i, u_input.a.x, u_input.d.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f + 610f) - _wgslsmith_f_op_f32(trunc(1096f))))), func_5(Struct_2(select(u_input.c, vec3<i32>(u_input.e, 19084i, 12077i), any(vec4<bool>(false, true, false, false))), Struct_1(1101f), func_4(4294967295u, func_1(vec2<u32>(u_input.b, u_input.b), vec4<u32>(8609u, u_input.b, 0u, 0u)), vec2<bool>(true, true))), Struct_2(-(~vec3<i32>(-2147483647i, u_input.d.x, -1i)), func_1(vec2<u32>(u_input.b, 69239u), min(vec4<u32>(35242u, u_input.b, 16846u, 4294967295u), vec4<u32>(0u, 72370u, 18360u, 65280u))).c, Struct_1(1549f))));
    var_0 = func_1(min(select(vec2<u32>(~87269u, _wgslsmith_add_u32(u_input.b, u_input.b)), (vec2<u32>(u_input.b, 0u) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) ^ firstTrailingBit(vec2<u32>(65410u, 57892u)), vec2<bool>(all(vec2<bool>(false, false)), true)), abs(vec2<u32>(u_input.b, 24983u) & select(vec2<u32>(u_input.b, 4980u), vec2<u32>(4294967295u, u_input.b), true))), ~(~(~(vec4<u32>(u_input.b, u_input.b, 53662u, u_input.b) ^ vec4<u32>(4294967295u, 0u, 528u, u_input.b))))).a.x;
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b, _wgslsmith_add_u32(0u, 1u), max(u_input.b, abs(u_input.b)), u_input.b), firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u), vec4<u32>(10107u, 0u, u_input.b, 0u), true), ~vec4<u32>(35931u, 2414u, u_input.b, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b), vec4<u32>(35976u, 54974u, 1u, u_input.b)))));
    global0 = Struct_1(-288f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(abs(~var_2.a.x), ~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.e, -2147483647i, var_2.a.x))) & _wgslsmith_mod_i32(~abs(u_input.e), 51032i));
}

