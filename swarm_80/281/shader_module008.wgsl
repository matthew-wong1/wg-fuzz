struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(44470i, 33672i), vec2<i32>(10115i, i32(-2147483648)), vec2<i32>(9397i, -2292i), vec2<i32>(-1i, 4228i), vec2<i32>(2147483647i, 62832i), vec2<i32>(-3155i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-31517i, 12086i), vec2<i32>(-7941i, 1i), vec2<i32>(0i, 2357i), vec2<i32>(2147483647i, -77717i), vec2<i32>(i32(-2147483648), 15295i), vec2<i32>(-20476i, 73541i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 85785i), vec2<i32>(19762i, 1291i));

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, -12565i);

var<private> global3: bool = false;

var<private> global4: array<f32, 11> = array<f32, 11>(-1654f, 291f, -218f, -1022f, 234f, 325f, 572f, -230f, -623f, 273f, -1000f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_5(-_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.d.x, -6704i), 11809i), !arg_1.a.xx, !arg_1.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -638f, 657f) + vec3<f32>(-542f, -622f, global4[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1943f, 958f, 1623f)))))));
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.c, firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(u_input.e.x, u_input.a.x, 1u)) ^ ~reverseBits(vec3<u32>(u_input.e.x, arg_0.c.b, 26531u))));
    var var_3 = ~var_2 < u_input.e.x;
    var var_4 = Struct_4(Struct_3(!vec4<bool>(u_input.d.x == arg_0.c.d, true, arg_1.a.x, var_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.xy), vec2<f32>(140f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 11u)])))));
    return 258f;
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(!vec4<bool>(!arg_1.b.x, !arg_0, 110f < global4[_wgslsmith_index_u32(46254u, 11u)], true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 11u)], -777f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1692f, 976f) + vec2<f32>(global4[_wgslsmith_index_u32(u_input.b, 11u)], 829f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(arg_2.x, 11u)]))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1301f, global4[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 11u)], 1314f))))), vec2<f32>(905f, -194f), all(!(!vec3<bool>(arg_0, true, false))))));
    let var_1 = vec3<i32>(~global2.x, ~36429i, -_wgslsmith_sub_i32(global2.x, -2147483647i) << (~_wgslsmith_clamp_u32(u_input.b, ~arg_2.x, ~29628u) % 32u));
    var var_2 = !arg_1.c;
    global0 = arg_0;
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(countOneBits(arg_1.a) << (1u % 32u), ~abs(global2.x) & _wgslsmith_mult_i32(arg_1.a, -2147483647i)), ~global2.x, -(~(-_wgslsmith_mult_i32(-1i, 19301i))));
    return var_0.a.a;
}

fn func_2() -> Struct_1 {
    var var_0 = -22229i <= global2.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.e.x << (u_input.b % 32u)), 11u)]))), 1292f, _wgslsmith_f_op_f32(1484f * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 11u)] * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 11u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f * -974f)) - 300f)));
    global1 = array<vec2<i32>, 17>();
    global2 = ~(~select(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], vec2<i32>(global2.x, -23245i | global2.x), true));
    let var_2 = select(func_3(!(!(global2.x >= 8223i)), Struct_5(countOneBits(reverseBits(2147483647i)), vec2<bool>(select(false, true, false), true), all(vec4<bool>(false, false, true, true))), u_input.d), vec4<bool>(true, true, 3032i >= min(abs(global2.x), -global2.x), (_wgslsmith_f_op_f32(f32(-1f) * -143f) < _wgslsmith_f_op_f32(var_1.x - -686f)) == any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), true);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(259f)) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 11u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<f32>(-1913f, 786f), 60606i, Struct_1(1097f, u_input.b, var_1.yx, u_input.c.x), vec3<i32>(global2.x, global2.x, global2.x)), Struct_3(vec4<bool>(var_2.x, false, var_2.x, var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -523f))))), u_input.d.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_1.wx, vec2<f32>(_wgslsmith_f_op_f32(floor(-799f)), var_1.x))), var_1.wx)), countOneBits(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    global1 = array<vec2<i32>, 17>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<f32>(-1111f, -1000f), global2.x, Struct_1(-1352f, u_input.e.x, vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global4[_wgslsmith_index_u32(21254u, 11u)]), 0u), vec3<i32>(global2.x, global2.x, -12330i)), Struct_3(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), 105f))), global2.x, func_2(), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, _wgslsmith_sub_i32(13864i & global2.x, 1i), i32(-1i) * -global2.x), _wgslsmith_add_vec3_i32(vec3<i32>(~2147483647i, 23397i, 0i), vec3<i32>(1i, _wgslsmith_div_i32(1599i, -17108i), _wgslsmith_mod_i32(45543i, global2.x)))));
    global3 = var_0.x | select(var_0.x, false, 1830f > var_1.c.a);
    global1 = array<vec2<i32>, 17>();
    global3 = true;
    let var_2 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mult_vec4_i32(~vec4<i32>(global2.x, 21205i, var_1.d.x, 39656i), vec4<i32>(50689i, 23907i, var_1.d.x, 0i)) >> (~abs(u_input.d) % vec4<u32>(32u))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, u_input.c)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 1u, u_input.d.x, 25458u)), ~u_input.d)), u_input.b), 11u)], 845f, 2147483647i ^ _wgslsmith_mult_i32(-3245i, firstTrailingBit(~21172i)));
}

