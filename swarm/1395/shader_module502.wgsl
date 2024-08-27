struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = array<vec4<bool>, 12>();
    let var_0 = ~select(firstLeadingBit(arg_0.a), ~abs(30851u | arg_0.a), (_wgslsmith_sub_u32(arg_1.b, arg_0.a) | global1.x) != global1.x);
    global0 = array<vec4<bool>, 12>();
    let var_1 = arg_0;
    var var_2 = arg_0.b.d;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -443f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    global1 = vec2<u32>(_wgslsmith_mult_u32(arg_2.x, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(19271u, 4294967295u, 42600u, global1.x)), select(~vec4<u32>(global1.x, arg_2.x, arg_2.x, arg_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(32194u, global1.x, arg_2.x, arg_2.x), vec4<u32>(global1.x, arg_2.x, global1.x, global1.x)), true))), firstTrailingBit(4294967295u));
    global0 = array<vec4<bool>, 12>();
    global1 = arg_2;
    let var_0 = Struct_3(min(1u, _wgslsmith_mod_u32(74551u, ~78567u)), Struct_2(Struct_1(any(vec4<bool>(false, true, false, arg_3)), arg_2.x), any(select(!vec3<bool>(true, false, arg_3), vec3<bool>(false, arg_1.x, false), any(vec2<bool>(true, true)))), min(-15019i, ~_wgslsmith_mult_i32(u_input.a, 29734i)), true));
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(~min(vec2<i32>(u_input.a, var_0.b.c), vec2<i32>(u_input.a, -35912i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, -25412i), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-3391i, var_0.b.c))), reverseBits(min(firstTrailingBit(vec2<i32>(var_0.b.c, var_0.b.c)), countOneBits(vec2<i32>(var_0.b.c, 0i))) ^ (vec2<i32>(var_0.b.c, var_0.b.c) >> (~vec2<u32>(1u, 50346u) % vec2<u32>(32u)))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<vec4<bool>, 12>();
    var var_0 = _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.b, _wgslsmith_mod_u32(~arg_0.b, 111117u & global1.x))), vec2<u32>(70005u, arg_1.b));
    var var_1 = Struct_2(Struct_1((arg_0.a == false) == arg_1.a, ~11492u), false & arg_0.a, _wgslsmith_div_i32(~(~1i), ~u_input.a), arg_1.a);
    var var_2 = Struct_2(arg_1, arg_0.a, var_1.c, all(!(!vec4<bool>(arg_0.a, false, arg_0.a, false))));
    var var_3 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1003f, 1002f, 547f, 1153f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-901f, 294f, 1017f, 1487f), vec4<f32>(-262f, -724f, -1016f, 175f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1022f, 240f, 1119f, 101f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-718f, 1866f, 761f, 1000f), vec4<f32>(1292f, -161f, -1601f, -1000f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, _wgslsmith_f_op_f32(func_3(Struct_3(4294967295u, Struct_2(Struct_1(false, var_1.a.b), false, u_input.a, var_2.a.a)), Struct_1(var_1.a.a, arg_0.b), Struct_3(36766u, Struct_2(arg_1, true, 0i, arg_1.a)))), _wgslsmith_f_op_f32(func_3(Struct_3(global1.x, Struct_2(var_1.a, var_1.d, u_input.a, arg_1.a)), var_2.a, Struct_3(arg_1.b, Struct_2(arg_0, arg_0.a, var_2.c, true)))), _wgslsmith_f_op_f32(406f * 1573f)) * vec4<f32>(_wgslsmith_f_op_f32(1275f - -127f), -1404f, _wgslsmith_f_op_f32(min(-2664f, 108f)), _wgslsmith_f_op_f32(290f - 279f)))), !vec2<bool>(all(select(vec2<bool>(arg_0.a, var_2.d), vec2<bool>(false, false), vec2<bool>(arg_1.a, var_1.d))), true & (var_2.b | arg_0.a)), select((reverseBits(vec2<u32>(1u, 17777u)) | max(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(4294967295u, 11838u))) & vec2<u32>(_wgslsmith_sub_u32(23989u, var_1.a.b), ~0u), vec2<u32>(var_0.x, var_2.a.b), !vec2<bool>(true, all(vec2<bool>(var_1.b, arg_0.a)))), !(!arg_1.a)));
    return u_input.a;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = vec2<i32>(-func_2(Struct_1(true, ~68916u), Struct_1(u_input.a >= -7673i, ~arg_0.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i ^ u_input.a, max(-29164i, u_input.a), min(-2147483647i, 11281i)), max(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(1i, -17280i)), 8285i, abs(u_input.a)), abs(abs(vec3<i32>(-28236i, u_input.a, -36853i))))));
    let var_1 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(285f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f - -1507f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-981f, -485f, -1796f, 1602f), vec4<f32>(940f, -1077f, -1000f, -967f)), vec2<bool>(true, true), vec2<u32>(var_1.x, 4294967295u), true)), 254f), 132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1209f, 1000f), -398f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1315f)), -175f, true)))));
    return 856f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1208f * -1136f), _wgslsmith_f_op_f32(func_1(~min(~vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(global1.x, 36542u, 12729u) | vec3<u32>(45954u, global1.x, 76446u)))), _wgslsmith_f_op_f32(abs(-595f)));
    let var_1 = Struct_2(Struct_1(!(!any(vec3<bool>(false, false, false))), _wgslsmith_mult_u32(~(global1.x & 78344u), _wgslsmith_add_u32(~global1.x, ~46576u))), true, -45712i, true);
    var var_2 = ~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global1.x, 4294967295u, 0u), reverseBits(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x)))), ~85599u, var_1.a.b);
    var var_3 = vec4<u32>(global1.x, countOneBits(~0u), 1u, global1.x);
    global0 = array<vec4<bool>, 12>();
    global1 = vec2<u32>(global1.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.x, _wgslsmith_add_u32(27834u, 23673u)), 18822u), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

