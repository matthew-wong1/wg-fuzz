struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1613f;

var<private> global1: array<bool, 10>;

var<private> global2: array<bool, 29> = array<bool, 29>(true, true, true, false, true, true, false, false, false, false, true, true, true, true, true, false, false, true, false, true, false, true, true, true, true, false, true, false, false);

var<private> global3: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(7655u, 61175u, 1u), vec3<u32>(9532u, 4129u, 20565u), vec3<u32>(1u, 40906u, 48171u), vec3<u32>(35703u, 4294967295u, 0u), vec3<u32>(23848u, 0u, 63721u), vec3<u32>(0u, 15138u, 14261u), vec3<u32>(4294967295u, 20800u, 1u), vec3<u32>(1u, 23326u, 15860u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(117289u, 0u, 10648u), vec3<u32>(18361u, 17755u, 13157u), vec3<u32>(55851u, 25661u, 4294967295u), vec3<u32>(39285u, 4294967295u, 45313u), vec3<u32>(61797u, 4294967295u, 13818u), vec3<u32>(9398u, 1u, 10725u), vec3<u32>(39844u, 0u, 0u), vec3<u32>(19714u, 0u, 72307u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x) + _wgslsmith_f_op_f32(abs(arg_0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.e.x) - _wgslsmith_div_f32(-1000f, 1271f)))))) - arg_0.e.x);
    global2 = array<bool, 29>();
    var var_0 = !vec2<bool>(true, all(select(vec4<bool>(arg_2, arg_0.b.b.x, false, arg_0.b.b.x), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.a, 29u)], true, false, arg_2), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(102053u, 17u)], vec3<u32>(arg_1.a, 1u, arg_1.a)), 29u)])));
    let var_1 = Struct_4(!global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a, min(_wgslsmith_mod_u32(0u, 8755u), ~arg_1.a)), 29u)], Struct_3(vec4<i32>(-1i, 8200i, abs(4480i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, arg_0.a.c, u_input.a), vec4<i32>(-1i, -2147483647i, arg_0.d.c, arg_0.a.d.x))), !select(!vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(55202u, 10u)]), !vec4<bool>(false, arg_1.b.x, global2[_wgslsmith_index_u32(arg_0.c.x, 29u)], false), select(vec4<bool>(arg_0.b.b.x, var_0.x, true, false), vec4<bool>(arg_1.b.x, arg_1.b.x, var_0.x, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 29u)], true, true, false))), -1173f, Struct_2(_wgslsmith_clamp_u32(arg_1.a, select(arg_1.a, arg_1.a, false), ~arg_1.a), vec3<bool>(!arg_1.b.x, false, false & var_0.x)), -_wgslsmith_div_i32(~2147483647i, ~(-45884i))), Struct_3(abs(~(~vec4<i32>(arg_0.d.d.x, -2147483647i, u_input.a, -51952i))), vec4<bool>(true, any(!vec4<bool>(var_0.x, true, arg_0.b.b.x, true)), any(!arg_0.b.b.xz), !any(vec3<bool>(arg_2, arg_0.b.b.x, true))), arg_0.e.x, Struct_2(1u, !select(vec3<bool>(true, false, arg_1.b.x), arg_1.b, arg_1.b)), arg_0.d.a));
    var var_2 = 1u;
    return _wgslsmith_add_vec4_i32(~vec4<i32>(var_1.b.e, var_1.b.e << (firstTrailingBit(var_1.b.d.a) % 32u), abs(-19588i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.e, arg_0.d.a), vec2<i32>(-50872i, arg_0.d.a)))), var_1.c.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_5) -> bool {
    global1 = array<bool, 10>();
    var var_0 = arg_2.b.b.x;
    let var_1 = func_3(arg_2, arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.e.x * -2890f), _wgslsmith_f_op_f32(sign(718f)), true)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_2.e.x))))).x & _wgslsmith_div_i32(_wgslsmith_clamp_i32(28843i, u_input.a, arg_0.a.x) >> (~_wgslsmith_sub_u32(arg_0.d.a, 75809u) % 32u), arg_0.a.x);
    global0 = -1597f;
    var var_2 = select(select(arg_1.b.xz, arg_2.b.b.xx, ~_wgslsmith_dot_vec2_u32(arg_2.a.b, arg_2.c) > 8595u), !select(select(!arg_1.b.zy, vec2<bool>(true, true), arg_1.a == 13639u), arg_1.b.xx, arg_0.d.b.xz), !(!select(vec2<bool>(true, arg_2.b.b.x), !arg_0.b.ww, !vec2<bool>(arg_2.b.b.x, false))));
    return any(!(!(!arg_0.d.b.zy)));
}

fn func_2() -> u32 {
    global1 = array<bool, 10>();
    var var_0 = u_input.b.x;
    let var_1 = func_4(Struct_3(func_3(Struct_5(Struct_1(0i, vec2<u32>(0u, 51159u), u_input.b.x, u_input.b), Struct_2(31620u, vec3<bool>(false, global2[_wgslsmith_index_u32(62069u, 29u)], false)), vec2<u32>(62850u, 1u), Struct_1(u_input.a, vec2<u32>(0u, 44591u), u_input.a, u_input.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1572f, -1552f)))), Struct_2(_wgslsmith_mod_u32(57559u, 1u), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(14587u, 29u)]), vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(22312u, 29u)], true))), true), vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(5959u, 10u)], true, true)), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31572u, 4294967295u, 1u), vec4<u32>(38911u, 0u, 4294967295u, 21137u))), 29u)], global2[_wgslsmith_index_u32(9867u, 29u)], global2[_wgslsmith_index_u32(select(4294967295u, 30408u, global1[_wgslsmith_index_u32(1u, 10u)]), 29u)] || !global1[_wgslsmith_index_u32(13791u, 10u)]), 140f, Struct_2(abs(0u), vec3<bool>(false, false, true)), u_input.a), Struct_2(~4294967295u, select(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 10u)], true), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(51436u, 10u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(23050u, 29u)]), all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 10u)], true))), true)), Struct_5(Struct_1(u_input.b.x, vec2<u32>(1u, 1u), ~(-u_input.b.x), u_input.b), Struct_2(countOneBits(countOneBits(4294967295u)), !select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], false), vec3<bool>(global2[_wgslsmith_index_u32(6909u, 29u)], true, false), true)), vec2<u32>(0u, _wgslsmith_add_u32(~5068u, 0u)), Struct_1(_wgslsmith_add_i32(-u_input.a, _wgslsmith_mod_i32(u_input.b.x, 9247i)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(6971u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(30267u, 0u), vec2<u32>(11251u, 0u)), !global1[_wgslsmith_index_u32(1u, 10u)]), -u_input.b.x, u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -616f)))))));
    let var_2 = select(select(select(vec3<bool>(all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 10u)], false)), !global1[_wgslsmith_index_u32(1u, 10u)], true), vec3<bool>(!var_1, true, any(vec4<bool>(var_1, false, global1[_wgslsmith_index_u32(84281u, 10u)], var_1))), vec3<bool>(false, global1[_wgslsmith_index_u32(firstTrailingBit(16221u), 10u)], any(vec3<bool>(false, true, true)))), !vec3<bool>(u_input.b.x <= u_input.a, all(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 29u)])), all(vec2<bool>(true, global2[_wgslsmith_index_u32(35953u, 29u)]))), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(5184u, 29u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 10u)]), true), !(!vec3<bool>(var_1, global1[_wgslsmith_index_u32(4625u, 10u)], false)), !(!vec3<bool>(global2[_wgslsmith_index_u32(12480u, 29u)], false, true)))), vec3<bool>(~(~u_input.a) > 0i, true, global2[_wgslsmith_index_u32(0u, 29u)]), !vec3<bool>(global2[_wgslsmith_index_u32(37032u, 29u)], global1[_wgslsmith_index_u32(min(1u, 4294967295u >> (1u % 32u)), 10u)], true));
    var var_3 = Struct_2(17223u, vec3<bool>(true, ((u_input.a | u_input.a) ^ 2147483647i) >= _wgslsmith_mod_i32(select(-2147483647i, 2147483647i, false), 67150i), !global2[_wgslsmith_index_u32(78098u, 29u)]));
    return var_3.a;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(1i, vec2<u32>(_wgslsmith_add_u32(abs(arg_3.a), min(4294967295u, 3268u)), func_2() >> (~9526u % 32u)) << ((~(vec2<u32>(119944u, arg_3.a) & vec2<u32>(4294967295u, arg_1)) | firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(11168u, 4294967295u), vec2<u32>(arg_3.a, 66830u), vec2<u32>(arg_1, arg_3.a)))) % vec2<u32>(32u)), ~firstTrailingBit(min(i32(-1i) * -30096i, arg_2)), ~(u_input.b | select(max(u_input.b, u_input.b), ~u_input.b, vec3<bool>(arg_3.b.x, global1[_wgslsmith_index_u32(arg_3.a, 10u)], true))));
    let var_1 = ~arg_2;
    global3 = array<vec3<u32>, 17>();
    global1 = array<bool, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(901f, -632f, -1002f, -990f))), vec4<f32>(-1796f, 1318f, -1099f, -2605f)))), vec4<f32>(_wgslsmith_f_op_f32(-358f - 1147f), _wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(abs(-1240f)), -1253f), !select(true, all(vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 29u)], false, true)), !global2[_wgslsmith_index_u32(var_0.b.x, 29u)])))));
    return Struct_1(0i, _wgslsmith_mod_vec2_u32(~select(vec2<u32>(49100u, 42984u), _wgslsmith_sub_vec2_u32(var_0.b, var_0.b), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 10u)], global1[_wgslsmith_index_u32(8196u, 10u)]), arg_3.b.yx, vec2<bool>(true, false))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 13137u, 38668u), vec3<u32>(arg_1, arg_3.a, 0u)), ~arg_1)), reverseBits(min(~reverseBits(u_input.a), _wgslsmith_sub_i32(max(73885i, 17876i), 1i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(select(-vec3<i32>(arg_2, -1422i, -7559i), reverseBits(var_0.d), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 29u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(3095u, 29u)]))), select(var_0.d, max(vec3<i32>(var_0.c, -45969i, var_0.d.x), vec3<i32>(-2147483647i, var_1, var_1)), true)), vec3<i32>(var_0.c, ~var_1 | (arg_2 & -33905i), 1i)));
}

fn func_1() -> i32 {
    let var_0 = true;
    var var_1 = func_5(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(5295u, ~func_2())), 29u)], ~(~min(1u, 0u)) >> (min(1u, ~(~6530u)) % 32u), abs(_wgslsmith_mod_i32(-2147483647i, countOneBits(u_input.b.x) << (max(21566u, 1935u) % 32u))), Struct_2(1u, !vec3<bool>(true, true, !global1[_wgslsmith_index_u32(87066u, 10u)])));
    global1 = array<bool, 10>();
    var var_2 = -(~vec2<i32>(~var_1.a ^ -32910i, _wgslsmith_div_i32(var_1.c, _wgslsmith_sub_i32(var_1.a, 1i))));
    global2 = array<bool, 29>();
    return u_input.a << (_wgslsmith_dot_vec2_u32(reverseBits(var_1.b), var_1.b) % 32u);
}

fn func_6(arg_0: Struct_3) -> Struct_5 {
    let var_0 = 599f;
    let var_1 = _wgslsmith_div_u32(52886u, arg_0.d.a);
    let var_2 = func_5(select(!any(arg_0.b.wwx), any(!vec2<bool>(global1[_wgslsmith_index_u32(32824u, 10u)], global2[_wgslsmith_index_u32(13859u, 29u)])), true), countOneBits(reverseBits(arg_0.d.a << (_wgslsmith_add_u32(0u, arg_0.d.a) % 32u))), i32(-1i) * -18058i, arg_0.d);
    var var_3 = Struct_4(false, arg_0, Struct_3(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(arg_0.a, ~arg_0.a), -28184i, 1i), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -509f) - _wgslsmith_f_op_f32(arg_0.c * 121f)), arg_0.d, arg_0.e));
    var_3 = Struct_4(false, Struct_3(var_3.c.a, vec4<bool>(~var_1 >= 1u, !(var_3.b.d.b.x || false), !(var_3.c.a.x == -54423i), true), _wgslsmith_f_op_f32(-arg_0.c), arg_0.d, var_3.c.e), Struct_3(~(-arg_0.a), !vec4<bool>(arg_0.d.b.x & arg_0.b.x, func_4(Struct_3(vec4<i32>(u_input.a, 0i, -16643i, var_2.a), arg_0.b, var_3.b.c, Struct_2(var_2.b.x, var_3.b.b.zzz), arg_0.e), arg_0.d, Struct_5(Struct_1(var_3.c.e, vec2<u32>(35923u, 33960u), -50601i, vec3<i32>(-29780i, arg_0.e, -2147483647i)), var_3.b.d, var_2.b, Struct_1(arg_0.e, var_2.b, var_3.b.e, vec3<i32>(-2147483647i, var_3.b.e, 11987i)), vec2<f32>(var_3.c.c, arg_0.c))), true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1100f, var_0)), var_3.b.d, -2147483647i));
    return Struct_5(func_5(any(!var_3.b.b.xy) | global1[_wgslsmith_index_u32(~countOneBits(var_2.b.x), 10u)], func_5(!all(var_3.c.b), arg_0.d.a, -39677i ^ _wgslsmith_mult_i32(u_input.b.x, 1i), Struct_2(~var_3.b.d.a, select(vec3<bool>(var_3.c.b.x, true, false), arg_0.d.b, arg_0.d.b))).b.x, max(_wgslsmith_div_i32(min(30266i, u_input.b.x), -arg_0.a.x), -2147483647i), Struct_2(1u | _wgslsmith_clamp_u32(15836u, var_2.b.x, var_3.c.d.a), vec3<bool>(!var_3.a, var_3.a & arg_0.d.b.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 9494u), 29u)]))), arg_0.d, countOneBits(~vec2<u32>(var_3.c.d.a, var_3.c.d.a)), Struct_1(~46824i, ~vec2<u32>(_wgslsmith_sub_u32(var_1, 1u), max(0u, var_1)), -_wgslsmith_mult_i32(1i, 1i), vec3<i32>(var_3.c.a.x, arg_0.a.x, -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 603f) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, -1208f), vec2<f32>(arg_0.c, var_3.c.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, 124f))))))));
}

fn func_7(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = 46848i;
    var var_1 = arg_2.e.x;
    global1 = array<bool, 10>();
    var var_2 = ~func_6(Struct_3(-vec4<i32>(-32937i, arg_2.a.a, arg_3.x, arg_0), !(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(arg_1.x, 29u)], true, true)), _wgslsmith_f_op_f32(f32(-1f) * -485f), func_6(Struct_3(vec4<i32>(arg_0, 2803i, 0i, arg_2.a.c), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(56313u, 29u)]), arg_2.e.x, arg_2.b, 2147483647i)).b, ~_wgslsmith_mod_i32(u_input.a, arg_0))).c;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.x, 1000f, arg_2.e.x, _wgslsmith_f_op_f32(-arg_2.e.x)) - vec4<f32>(_wgslsmith_f_op_f32(2173f - arg_2.e.x), _wgslsmith_f_op_f32(max(arg_2.e.x, arg_2.e.x)), arg_2.e.x, _wgslsmith_div_f32(arg_2.e.x, -606f)))))));
    return StorageBuffer(~countOneBits(~(~vec2<u32>(64748u, 57387u))), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(arg_1, arg_1)), vec2<u32>(~min(var_2.x, 45615u), (var_2.x << (var_2.x % 32u)) & ~820u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -u_input.a, arg_0, arg_2.a.c), select(-vec4<i32>(arg_3.x, u_input.b.x, u_input.a, 8068i), func_3(arg_2, arg_2.b, true) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, -2147483647i, 54114i), vec4<i32>(arg_2.a.d.x, arg_0, -2147483647i, 2147483647i)), func_6(Struct_3(vec4<i32>(arg_0, arg_3.x, u_input.a, arg_2.d.c), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true, false, global1[_wgslsmith_index_u32(arg_2.b.a, 10u)]), -1496f, Struct_2(0u, vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_2.a.b.x, 29u)])), 0i)).b.b.x)), select(vec2<u32>(var_2.x, ~max(50446u, var_2.x)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_2.c.x, arg_1.x)), arg_2.d.b), vec2<bool>(all(select(vec4<bool>(arg_2.b.b.x, true, false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2.a.b.x, 10u)], global2[_wgslsmith_index_u32(1u, 29u)], false), false)), var_2.x >= (arg_2.d.b.x & 4294967295u))), ~_wgslsmith_dot_vec3_u32(~global3[_wgslsmith_index_u32(arg_1.x, 17u)], ~vec3<u32>(arg_1.x, arg_2.a.b.x, arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 10>();
    let x = u_input.a;
    s_output = func_7(u_input.b.x, vec2<u32>(_wgslsmith_mod_u32(75183u, 78921u), 62777u), func_6(Struct_3(vec4<i32>(u_input.a ^ u_input.b.x, func_1(), abs(-30322i), -8608i), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(60664u, 10u)], global2[_wgslsmith_index_u32(32511u, 29u)]), 1656f, Struct_2(~49242u, vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 29u)])), -27783i)), vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(u_input.a, u_input.a))) | (~7851i >> (firstLeadingBit(4294967295u) % 32u))));
}

