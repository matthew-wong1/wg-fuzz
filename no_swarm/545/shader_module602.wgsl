struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(i32(-2147483648), -5834i), vec2<u32>(1u, 51071u), vec4<u32>(1u, 7956u, 1u, 1430u), true), Struct_1(vec2<i32>(-6082i, 50983i), vec2<u32>(28850u, 40979u), vec4<u32>(48479u, 0u, 9207u, 19206u), false), Struct_1(vec2<i32>(-61034i, -64064i), vec2<u32>(4294967295u, 0u), vec4<u32>(1u, 1361u, 36519u, 25228u), true), Struct_1(vec2<i32>(2147483647i, 1i), vec2<u32>(54037u, 4294967295u), vec4<u32>(0u, 0u, 52752u, 12695u), true), Struct_1(vec2<i32>(25451i, 2147483647i), vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 2061u), true), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<u32>(25037u, 0u), vec4<u32>(20942u, 109841u, 21602u, 15110u), false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(45049u, 55303u), vec4<u32>(0u, 4294967295u, 39384u, 5012u), true), Struct_1(vec2<i32>(-24252i, -3008i), vec2<u32>(4294967295u, 11839u), vec4<u32>(0u, 1u, 1u, 30048u), true));

var<private> global2: bool;

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(24753u, 1u, 65870u, 0u), vec4<u32>(25278u, 28222u, 3613u, 1u), vec4<u32>(37735u, 0u, 0u, 0u), vec4<u32>(541u, 18804u, 43666u, 0u), vec4<u32>(1u, 2891u, 60901u, 25839u), vec4<u32>(47278u, 86163u, 68297u, 1u), vec4<u32>(4294967295u, 1992u, 75916u, 68708u), vec4<u32>(89285u, 27304u, 102101u, 1u), vec4<u32>(1u, 18629u, 4294967295u, 28741u), vec4<u32>(24661u, 11742u, 4294967295u, 3425u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4) -> f32 {
    global0 = ~_wgslsmith_sub_i32(min(-74432i, ~(~2147483647i)), abs(_wgslsmith_mult_i32(~arg_1.a.c.c, ~arg_1.a.c.c)));
    let var_0 = Struct_1(firstTrailingBit((arg_1.a.a.a << (vec2<u32>(13335u, u_input.a) % vec2<u32>(32u))) << (~vec2<u32>(arg_1.b, 0u) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a | _wgslsmith_mult_u32(u_input.a, 23995u), arg_1.a.a.b.x) % vec2<u32>(32u)), arg_1.a.a.c.xx | ~(~select(vec2<u32>(arg_1.a.a.c.x, u_input.a), vec2<u32>(91468u, 0u), arg_1.d.zz)), global3[_wgslsmith_index_u32(0u, 10u)], true);
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.b.x, u_input.a, u_input.a, 13503u), ~global3[_wgslsmith_index_u32(73570u, 10u)]), select(_wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], vec4<u32>(arg_1.a.a.c.x, u_input.a, 0u, u_input.a), vec4<u32>(50252u, u_input.a, arg_1.b, u_input.a)), min(arg_1.a.a.c, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), arg_1.a.b.x <= arg_1.a.b.x))), 8u)], _wgslsmith_f_op_vec3_f32(min(arg_1.a.c.a.wxz, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.b.x, _wgslsmith_div_f32(arg_1.a.c.a.x, -1345f), 683f), arg_1.a.b)))), arg_1.a.c);
    global3 = array<vec4<u32>, 10>();
    var var_2 = arg_1.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-879f)), _wgslsmith_f_op_f32(select(var_1.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-731f))), true)), any(!arg_0.xz)))));
}

fn func_2() -> Struct_5 {
    global2 = all(vec4<bool>(true, any(vec3<bool>(true, true, true)) & true, (_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], global3[_wgslsmith_index_u32(u_input.a, 10u)]) > ~36969u) || any(vec4<bool>(true, true, true, true)), true));
    global1 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(237f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), Struct_4(Struct_3(Struct_1(vec2<i32>(2147483647i, 23481i), vec2<u32>(u_input.a, u_input.a), global3[_wgslsmith_index_u32(0u, 10u)], false), vec3<f32>(1177f, -1000f, -322f), Struct_2(vec4<f32>(-1346f, -680f, 495f, 441f), 1i, -2147483647i)), u_input.a, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = abs(_wgslsmith_dot_vec2_u32((abs(vec2<u32>(7328u, u_input.a)) & (vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) ^ abs(vec2<u32>(4294967295u, 95133u) | vec2<u32>(1u, u_input.a)), countOneBits(vec2<u32>(51252u, u_input.a))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(152f + 741f), _wgslsmith_f_op_f32(1305f * -1748f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1326f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1196f, -1089f, 373f, 457f) * _wgslsmith_div_vec4_f32(vec4<f32>(644f, -1007f, 1000f, -1401f), vec4<f32>(-2305f, -2401f, 1327f, 2194f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-711f, _wgslsmith_f_op_f32(-1641f - -328f), _wgslsmith_f_op_f32(sign(1970f)), _wgslsmith_f_op_f32(1852f - -231f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, 983f, -404f, -748f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2451f, -156f, 1981f, 506f))))), min(-6143i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -5991i), ~vec3<i32>(-13697i, -1i, -12764i))) & select(~_wgslsmith_dot_vec4_i32(vec4<i32>(35857i, -1i, 2147483647i, -37310i), vec4<i32>(-11694i, 52175i, -6097i, 20764i)), 2147483647i, true), _wgslsmith_div_i32(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(5293i, -2147483647i, 212i), vec3<i32>(-2147483647i, 0i, 3838i)), firstTrailingBit(21011i)), 9111i));
    return Struct_5(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.a.wy)))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(73176u, u_input.a, u_input.a) ^ vec3<u32>(1u, 4294967295u, 11609u), ~vec3<u32>(u_input.a, u_input.a, 63589u))));
}

fn func_1(arg_0: u32) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec2_i32(countOneBits(-(~select(vec2<i32>(-12583i, -6820i), vec2<i32>(1i, 0i), true))), vec2<i32>(min(~_wgslsmith_sub_i32(27362i, -79422i), 39978i), ~min(select(1i, -14202i, false), 14311i)));
    global1 = array<Struct_1, 8>();
    let var_1 = 1u;
    global3 = array<vec4<u32>, 10>();
    global1 = array<Struct_1, 8>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 10>();
    var var_0 = 63619u;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~39347u, u_input.a), u_input.a), 10u)];
    let var_2 = func_1(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(16672i, _wgslsmith_clamp_i32(var_2.a, 52418i, var_2.a)) ^ -(vec2<i32>(var_2.a, 3617i) << (vec2<u32>(1u, var_2.c) % vec2<u32>(32u))), min(vec2<i32>(abs(var_2.a), 0i), vec2<i32>(~var_2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.a, -73320i), vec3<i32>(var_2.a, var_2.a, 26479i))))));
}

