struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_4 {
    return Struct_4(arg_2);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(~abs(-14019i), u_input.b), vec2<i32>(~(-15080i), _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0, -2147483647i) << (arg_1.a.c.a % 32u), _wgslsmith_add_i32(48130i, arg_0))));
    global0 = -1i;
    global1 = func_2(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(min(-1840f, -559f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)), arg_2.x))), arg_1.a, arg_2).a;
    global0 = _wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(-2900i, 1i) << (u_input.c.yx % vec2<u32>(32u)), var_0, global1.c.b) & _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global1.a), vec2<i32>(23898i, -38751i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-36080i, arg_0), vec2<i32>(-34470i, -1i)))), var_0);
    var var_1 = Struct_3(firstLeadingBit(-(~global1.a)), _wgslsmith_div_i32(34013i, arg_1.a.b & arg_0), func_2(false, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(776f)))), func_2(!select(false, arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f - 1000f)), Struct_3(func_2(true, -1795f, Struct_3(-667i, -2147483647i, Struct_2(u_input.c.x, arg_1.a.c.b)), arg_2).a.b, -2147483647i, arg_1.a.c), vec4<bool>(all(arg_2.wy), true, true, 5354u == global1.c.a)).a, vec4<bool>(arg_3.x, !(arg_3.x || global1.c.b), any(vec4<bool>(arg_3.x, arg_3.x, global1.c.b, false)), arg_2.x)).a.c);
    return !arg_2.yzy;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global0 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a, u_input.b, -53281i)), firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, u_input.b, global1.b), -vec3<i32>(-4421i, global1.b, global1.a)), ~reverseBits(vec3<i32>(global1.a, u_input.a, 1i)))));
    var var_0 = true;
    let var_1 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, -1243f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(269f, -529f)))), !select(func_3(1i, func_2(arg_1, -720f, Struct_3(30793i, 32311i, global1.c), vec4<bool>(arg_1, arg_1, arg_1, false)), !vec4<bool>(arg_1, arg_1, false, false), select(vec2<bool>(false, global1.c.b), vec2<bool>(false, false), global1.c.b)), !vec3<bool>(global1.c.b, true, false), !(!vec3<bool>(true, global1.c.b, true))), Struct_1(vec3<i32>(-1i) * -vec3<i32>(-49771i, global1.b, 2147483647i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, 1000f, 599f) - vec3<f32>(189f, -858f, -891f)), vec3<f32>(-856f, 1202f, -157f), arg_1)), vec3<f32>(_wgslsmith_f_op_f32(-403f + 2054f), 2001f, _wgslsmith_f_op_f32(1022f - -1607f)))), max(vec2<i32>(u_input.a >> (global1.c.a % 32u), u_input.a), -vec2<i32>(u_input.a, global1.b))), func_2(false, -760f, func_2((u_input.a < global1.a) && arg_1, 1854f, func_2(select(true, arg_1, true), _wgslsmith_f_op_f32(trunc(231f)), Struct_3(64649i, 1i, Struct_2(global1.c.a, false)), vec4<bool>(true, false, true, arg_1)).a, !select(vec4<bool>(true, arg_1, global1.c.b, global1.c.b), vec4<bool>(false, false, false, arg_1), global1.c.b)).a, vec4<bool>(any(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, arg_1, false, false))), !(!global1.c.b), !arg_1, arg_1)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(260f - _wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(-832f + -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(259f, var_1.c.b.x, false))), var_1.a.x, true || var_1.d.a.c.b)))));
    var var_3 = _wgslsmith_sub_vec4_i32(-countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b, -1i, 33057i, -32482i), vec4<i32>(2147483647i, 0i, 2147483647i, 52969i))), -vec4<i32>(0i, global1.b, -var_1.c.c.x, -7160i) << (abs(u_input.c) % vec4<u32>(32u)));
    return _wgslsmith_dot_vec2_i32(var_1.c.a.xz, reverseBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.d.a.a, u_input.b), vec2<i32>(-11554i, u_input.b))));
}

fn func_4(arg_0: i32) -> f32 {
    global1 = Struct_3(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(arg_0), -(-63515i ^ u_input.b), 1i), select(vec3<i32>(_wgslsmith_mod_i32(global1.b, u_input.a), global1.a, u_input.a), vec3<i32>(global1.b, arg_0, -2147483647i), !func_3(global1.b, Struct_4(Struct_3(arg_0, global1.b, global1.c)), vec4<bool>(global1.c.b, false, global1.c.b, true), vec2<bool>(global1.c.b, global1.c.b)))), Struct_2(4294967295u, any(select(vec3<bool>(true, true, false), !vec3<bool>(false, global1.c.b, global1.c.b), true))));
    global1 = Struct_3(-2147483647i, u_input.b, func_2((~u_input.c.x ^ ~global1.c.a) == global1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f) - _wgslsmith_f_op_f32(f32(-1f) * -1119f))), Struct_3(abs(u_input.b), -79753i, Struct_2(37517u, select(global1.c.b, global1.c.b, global1.c.b))), vec4<bool>(!global1.c.b, false, global1.c.b, true)).a.c);
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-630f + -1267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 235f) + _wgslsmith_f_op_f32(164f - 491f)))))));
    var var_1 = func_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1137f)) + _wgslsmith_f_op_f32(var_0 - var_0)), func_2(global1.c.b, _wgslsmith_f_op_f32(min(var_0, -1176f)), Struct_3(_wgslsmith_div_i32(-45953i, u_input.a) >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u), global1.a, global1.c), select(!select(vec4<bool>(global1.c.b, global1.c.b, global1.c.b, false), vec4<bool>(true, true, global1.c.b, global1.c.b), global1.c.b), vec4<bool>(true, !global1.c.b, false, var_0 < 1081f), vec4<bool>(any(vec2<bool>(global1.c.b, global1.c.b)), select(global1.c.b, global1.c.b, true), any(vec4<bool>(true, global1.c.b, global1.c.b, true)), global1.c.b))).a, vec4<bool>(all(!vec4<bool>(false, true, global1.c.b, global1.c.b)), false, !(var_0 < _wgslsmith_f_op_f32(var_0 - var_0)), !any(vec2<bool>(false, global1.c.b)))).a.c;
    let var_2 = global1.c.a >= 5884u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-666f * var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(firstLeadingBit(func_1(vec3<u32>(u_input.c.x, 0u, u_input.c.x), global1.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1274f - 1106f))) + -963f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f * -131f) + 1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -633f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1396f - 693f), -685f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(u_input.a))))), !(!(true || global1.c.b)))), -1059f);
    global1 = func_2(all(!(!vec4<bool>(false, false, global1.c.b, true))), _wgslsmith_f_op_f32(abs(var_0.x)), func_2(global1.c.b, var_0.x, func_2(!(false & global1.c.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * _wgslsmith_f_op_f32(-538f + var_0.x)), Struct_3(~0i, u_input.a, Struct_2(1u, false)), select(!vec4<bool>(true, true, global1.c.b, false), vec4<bool>(true, global1.c.b, global1.c.b, false), !global1.c.b)).a, vec4<bool>(global1.c.b, !(global1.c.b || true), false, global1.c.b)).a, select(!select(vec4<bool>(global1.c.b, true, global1.c.b, global1.c.b), !vec4<bool>(global1.c.b, true, true, false), true), select(select(!vec4<bool>(true, true, global1.c.b, true), !vec4<bool>(global1.c.b, false, global1.c.b, global1.c.b), vec4<bool>(global1.c.b, false, global1.c.b, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, global1.c.b, global1.c.b), vec4<bool>(global1.c.b, false, global1.c.b, global1.c.b)), !vec4<bool>(false, global1.c.b, true, true), select(vec4<bool>(global1.c.b, false, global1.c.b, global1.c.b), vec4<bool>(global1.c.b, true, global1.c.b, false), vec4<bool>(global1.c.b, global1.c.b, false, true))), !(-245f != var_0.x)), !(!vec4<bool>(false, false, false, global1.c.b)))).a;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f + 287f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1275f)) + var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.yx))), 0i, ~vec2<u32>(_wgslsmith_sub_u32(~0u, 43175u ^ global1.c.a), _wgslsmith_sub_u32(0u, reverseBits(0u))));
}

