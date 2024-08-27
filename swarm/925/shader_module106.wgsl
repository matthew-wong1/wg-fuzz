struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(343f, -791f), vec2<f32>(1134f, -979f), vec2<f32>(719f, -783f), vec2<f32>(2551f, -298f), vec2<f32>(446f, -878f), vec2<f32>(-1083f, -196f), vec2<f32>(757f, 616f), vec2<f32>(610f, -941f), vec2<f32>(1548f, 122f), vec2<f32>(-1169f, -608f), vec2<f32>(-423f, -1000f), vec2<f32>(1659f, 1088f), vec2<f32>(-111f, -152f), vec2<f32>(1536f, 786f), vec2<f32>(-276f, -886f), vec2<f32>(718f, -1091f), vec2<f32>(111f, -482f), vec2<f32>(-625f, 417f), vec2<f32>(388f, -822f), vec2<f32>(367f, -1212f), vec2<f32>(532f, -155f), vec2<f32>(1922f, -1000f), vec2<f32>(-564f, -2332f), vec2<f32>(1273f, -875f), vec2<f32>(-1034f, -450f), vec2<f32>(318f, 1762f), vec2<f32>(-1000f, 1000f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> bool {
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<f32> {
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - arg_1.a)) + arg_1.d.x), -968f)), vec3<bool>(true, func_3(abs(vec4<u32>(55485u, arg_0, 4294967295u, 82999u)) & vec4<u32>(1u, 27217u, 42671u, 4294967295u), Struct_1(1748f, select(arg_1.b, vec3<bool>(false, arg_1.e, arg_1.b.x), arg_1.b), arg_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(941u, 21u)], global0[_wgslsmith_index_u32(arg_0, 21u)])), any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + global0[_wgslsmith_index_u32(4294967295u, 21u)]) - _wgslsmith_div_f32(-1267f, global0[_wgslsmith_index_u32(u_input.a, 21u)])), min(vec3<i32>(u_input.c.x, u_input.e.x, 1i), u_input.c.yxw & vec3<i32>(u_input.e.x, 2147483647i, u_input.c.x))), (arg_1.e & any(vec4<bool>(arg_1.e, arg_1.e, false, arg_1.e))) || any(vec4<bool>(arg_1.b.x, true, false, arg_1.b.x))), vec4<f32>(global0[_wgslsmith_index_u32(select(0u, ~u_input.d.x, u_input.e.x >= _wgslsmith_add_i32(-69774i, -16738i)), 21u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(822f + 1000f), 450f, _wgslsmith_f_op_f32(arg_1.c.x * global0[_wgslsmith_index_u32(arg_2.x, 21u)]) != global0[_wgslsmith_index_u32(arg_0, 21u)])), -593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f + 846f) + -415f) * arg_1.a)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(arg_0, 7005u) ^ _wgslsmith_dot_vec2_u32(arg_2.yx, vec2<u32>(u_input.d.x, arg_2.x)), ~u_input.d.x) ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 63240u) >> (u_input.d % vec3<u32>(32u)), vec3<u32>(arg_0, 51250u, arg_0))), 27u)], any(arg_1.b.xx));
    global2 = array<vec2<f32>, 27>();
    var var_1 = arg_1.e;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(min(abs(-2147483647i), _wgslsmith_sub_i32(10911i, u_input.c.x)), u_input.c.x, 1i, 0i), select(u_input.c, -(vec4<i32>(u_input.e.x, 13061i, 1i, 41875i) >> (vec4<u32>(4294967295u, arg_2.x, u_input.a, 99u) % vec4<u32>(32u))), select(true, any(var_0.b), var_0.e))) & firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-8289i, _wgslsmith_dot_vec2_i32(u_input.e.zy, vec2<i32>(-2147483647i, 0i)), min(u_input.c.x, u_input.e.x), u_input.c.x >> (u_input.a % 32u)), u_input.e));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(664f, var_0.c.x, var_0.c.x, arg_1.c.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -abs(1i)), u_input.e.x));
    let var_1 = u_input.e.x;
    global0 = array<f32, 21>();
    global2 = array<vec2<f32>, 27>();
    var var_2 = arg_0.d.x;
    return u_input.d.x;
}

fn func_1() -> bool {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(34431u, 21u)], -1010f)), vec3<bool>(any(vec3<bool>(false, true, false)), true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_f_op_vec4_f32(func_2(52029u, Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 21u)] * global0[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(true, true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -1924f, global0[_wgslsmith_index_u32(0u, 21u)], 889f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], 1263f)), true), vec3<u32>(0u ^ u_input.b, select(14476u, 1u, true), reverseBits(0u)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(82955u, 21u)] - global0[_wgslsmith_index_u32(1u, 21u)])))), func_3(abs(vec4<u32>(4294967295u, 77509u, 44726u, u_input.a)), Struct_1(_wgslsmith_f_op_f32(min(-965f, 849f)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], 1210f, global0[_wgslsmith_index_u32(23281u, 21u)], 100f)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 27u)]), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], false)))), ~min(vec3<i32>(0i, u_input.e.x, 1i), vec3<i32>(u_input.c.x, u_input.e.x, 2147483647i)))), vec2<bool>(false, !(!func_3(vec4<u32>(46701u, 0u, 62051u, u_input.d.x), Struct_1(1840f, vec3<bool>(true, false, false), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec2<f32>(482f, global0[_wgslsmith_index_u32(u_input.a, 21u)]), true), 523f, vec3<i32>(-24976i, -2147483647i, u_input.c.x)))), global1[_wgslsmith_index_u32(max(u_input.b, 1u), 26u)], Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)]))), !vec3<bool>(true, u_input.e.x == 2147483647i, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(791f, _wgslsmith_f_op_f32(min(916f, global0[_wgslsmith_index_u32(u_input.d.x, 21u)])), -1889f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 21u)]))), global2[_wgslsmith_index_u32(u_input.b, 27u)], true));
    return false;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_1.c.x, select(arg_1.b, select(select(!vec3<bool>(true, false, arg_1.e), arg_1.b, vec3<bool>(true, true, true)), !arg_1.b, vec3<bool>(-18291i >= u_input.c.x, func_1(), arg_1.b.x)), all(!select(arg_1.b, vec3<bool>(arg_1.e, true, arg_1.e), vec3<bool>(arg_1.b.x, false, false)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 21u)]))) - arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)), _wgslsmith_f_op_f32(sign(-2128f)), 541f), arg_1.d, 0i < ~(-u_input.e.x));
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_1 = Struct_1(var_0.c.x, select(arg_1.b, !(!arg_1.b), any(select(vec3<bool>(true, arg_1.b.x, false), !vec3<bool>(true, var_0.e, arg_1.b.x), var_0.b))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)) + _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), global0[_wgslsmith_index_u32(abs(abs(u_input.a)), 21u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.d.x * var_0.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-864f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 21u)] * -1000f), _wgslsmith_f_op_f32(-2052f * 1376f), _wgslsmith_f_op_f32(f32(-1f) * -415f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 799f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * arg_1.c.x)), _wgslsmith_f_op_f32(-arg_1.c.x)))), true);
    let var_2 = select(select(vec3<bool>(var_0.e & false, false, true), arg_1.b, vec3<bool>(var_1.b.x, ~50878u == ~arg_0, true)), vec3<bool>(true || arg_1.b.x, true == !(var_0.b.x == false), arg_1.e), all(select(vec4<bool>(true, !var_1.b.x, any(var_0.b.zx), any(arg_1.b.yy)), select(!vec4<bool>(var_0.b.x, true, var_1.b.x, var_1.e), select(vec4<bool>(var_1.e, arg_1.e, arg_1.e, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.e, false), false), true), true)));
    return _wgslsmith_f_op_f32(-arg_1.a);
}

fn func_6(arg_0: bool, arg_1: f32) -> vec3<i32> {
    global2 = array<vec2<f32>, 27>();
    global2 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_mod_vec4_u32(countOneBits(~(vec4<u32>(0u, u_input.d.x, 1u, 4294967295u) ^ firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 0u, 17285u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, ~max(4294967295u, 4294967295u), ~u_input.d.x), vec4<u32>(100584u, _wgslsmith_mult_u32(1u, u_input.d.x), 27315u, ~_wgslsmith_clamp_u32(u_input.a, u_input.d.x, 0u))));
    let var_1 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.c.x, 2147483647i), u_input.c.zxy) & (i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.e, max(u_input.e, u_input.c)), countOneBits(vec4<i32>(54013i, u_input.e.x, 2147483647i, -65418i) >> (vec4<u32>(var_0.x, 33844u, 0u, u_input.a) % vec4<u32>(32u)))), min(select(u_input.e.x, ~(-2147483647i), true), -1870i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, 1i), firstLeadingBit(u_input.e.x)), 0i, _wgslsmith_clamp_i32(~u_input.c.x, 2147483647i, _wgslsmith_mult_i32(u_input.e.x, 1i))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1444f)), -1832f)), 1065f, 504f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~38741u, 21u)], 192f));
    return var_1.zwz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(false, _wgslsmith_f_op_f32(func_5(~1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-570f, global0[_wgslsmith_index_u32(66605u, 21u)]))), vec3<bool>(func_1(), all(vec2<bool>(true, false)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], -296f, -1000f, global0[_wgslsmith_index_u32(u_input.b, 21u)])), vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -171f)), true))));
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    global0 = array<f32, 21>();
    var var_1 = Struct_1(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(23265u, 21u)], 510f), select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(true, true)), false, true), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2013f, -1211f, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(14186u, 21u)])))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(45945u, 21u)], 1084f, 605f, global0[_wgslsmith_index_u32(u_input.d.x, 21u)]))) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(1661u, 21u)], -134f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], 842f), global2[_wgslsmith_index_u32(u_input.b, 27u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(234f, -601f) - vec2<f32>(-615f, global0[_wgslsmith_index_u32(1u, 21u)]))) * vec2<f32>(global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_f32(1000f * -434f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(228f, 731f) - global2[_wgslsmith_index_u32(u_input.b, 27u)])) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2172f, -237f) + vec2<f32>(334f, 1584f)) + _wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(63459u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]))))), true);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -476f), var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<f32>(global0[_wgslsmith_index_u32(38279u, 21u)], var_1.c.x), false)))))));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-621f, var_2.x, var_1.b.x)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)])))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), ~u_input.d), 21u)]), var_2.x, _wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_div_f32(-1764f, var_1.d.x));
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1391f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 277f) + _wgslsmith_f_op_f32(f32(-1f) * -1965f))))), var_2.x, -4677i, vec3<u32>(u_input.a, u_input.b, ~abs(u_input.a) | ~16547u), _wgslsmith_div_f32(var_2.x, var_1.c.x));
}

