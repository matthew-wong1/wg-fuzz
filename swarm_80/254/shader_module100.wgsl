struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-1i, 2147483647i, 16666i, -32592i), vec4<i32>(13697i, i32(-2147483648), -13630i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 731i, i32(-2147483648), 29340i), vec4<i32>(-1i, i32(-2147483648), -5464i, 0i), vec4<i32>(18406i, 97226i, -1i, 31156i), vec4<i32>(-1i, 1i, -14123i, 44122i), vec4<i32>(i32(-2147483648), 92858i, -83011i, i32(-2147483648)), vec4<i32>(-37599i, 7806i, 2147483647i, 0i), vec4<i32>(33183i, 43718i, -70374i, i32(-2147483648)), vec4<i32>(-1i, 463i, -3768i, i32(-2147483648)), vec4<i32>(-39496i, 68965i, i32(-2147483648), -1i), vec4<i32>(-1i, 1i, 10306i, 2147483647i), vec4<i32>(-7469i, 2147483647i, 1i, -1i), vec4<i32>(-1i, -1i, 0i, 46417i), vec4<i32>(94211i, 2147483647i, 1i, -28043i), vec4<i32>(23073i, 1i, 1i, -1i));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(297f, 855f, -1206f, -1865f), 2147483647i, false, Struct_1(false, vec4<f32>(1131f, -1305f, -1536f, 744f)));

var<private> global3: array<bool, 7> = array<bool, 7>(false, true, false, false, false, true, true);

var<private> global4: f32 = 1271f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d.b * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.b.x, -1395f, global2.d.b.x, -544f) * vec4<f32>(global2.d.b.x, global2.a.x, -436f, 318f)))))), global2.b, !arg_0, Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-754f))), -358f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1410f, -559f)), global2.a.x), _wgslsmith_f_op_f32(sign(1606f)))));
    var var_0 = Struct_1(all(select(vec3<bool>(true, arg_0, global2.c && global2.d.a), select(vec3<bool>(true, global2.d.a, global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), select(vec3<bool>(global2.d.a, global3[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_0), vec3<bool>(global2.d.a, global2.d.a, global2.c), vec3<bool>(global3[_wgslsmith_index_u32(24351u, 7u)], true, global2.c)), true), vec3<bool>(!arg_0, true, true))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-3792f, _wgslsmith_f_op_f32(f32(-1f) * -595f), -1568f, 427f))));
    global0 = array<vec2<u32>, 27>();
    var var_1 = Struct_3(~vec3<u32>(~(~101077u), 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1196u, 23640u, u_input.a.x, 17827u), vec4<u32>(u_input.a.x, u_input.b.x, 82587u, 4294967295u))), Struct_1(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, global2.a.x, 1000f, 1029f)) * global2.a))), global2.d);
    let var_2 = select(vec4<bool>(!(!var_0.a), select(true, false, true), global2.c, arg_0), !select(vec4<bool>(u_input.b.x == var_1.a.x, any(vec2<bool>(arg_0, true)), global2.b < -11883i, true), !(!vec4<bool>(var_0.a, global2.c, false, false)), select(!vec4<bool>(var_1.b.a, var_0.a, var_0.a, true), select(vec4<bool>(true, global2.d.a, arg_0, global2.c), vec4<bool>(var_0.a, var_1.b.a, var_1.c.a, true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 7u)], var_0.a, false, false)), false)), all(select(vec3<bool>(arg_0 & global2.c, -7004i == global2.b, false), vec3<bool>(!arg_0, false, u_input.b.x <= u_input.b.x), vec3<bool>(true, true, false))));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global2.d.b.yw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d.b.wx))))));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_3(vec3<u32>(~(var_0 ^ u_input.a.x), _wgslsmith_clamp_u32(8322u & u_input.a.x, var_0, ~u_input.b.x), ~_wgslsmith_mod_u32(0u, 29859u)) ^ _wgslsmith_mult_vec3_u32((vec3<u32>(var_0, 0u, var_0) >> (vec3<u32>(var_0, var_0, 1u) % vec3<u32>(32u))) & select(vec3<u32>(44276u, u_input.b.x, 1u), vec3<u32>(24559u, u_input.a.x, u_input.b.x), true), ~vec3<u32>(var_0, var_0, u_input.a.x)), global2.d, Struct_1(all(vec4<bool>(select(global2.c, false, arg_0), select(true, global3[_wgslsmith_index_u32(23498u, 7u)], true), true, any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.d.b.x, global2.d.b.x, -573f, -556f), global2.a)) + global2.d.b) + vec4<f32>(_wgslsmith_f_op_f32(select(global2.d.b.x, global2.a.x, true)), _wgslsmith_f_op_f32(sign(1463f)), _wgslsmith_f_op_f32(step(global2.d.b.x, global2.d.b.x)), _wgslsmith_f_op_f32(-global2.a.x)))));
    let var_2 = global2.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(all(vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(106840u, 7u)], arg_0, var_1.b.a)), global2.c & var_1.c.a, var_2.a))))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1994f)));
    return var_1.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-abs(0i), ~_wgslsmith_sub_i32(-63984i, -global2.b), ~(~4811i)), ~(~(abs(vec3<i32>(arg_1, 1i, global2.b)) ^ vec3<i32>(-25521i, 2147483647i, -2147483647i))));
    global0 = array<vec2<u32>, 27>();
    global2 = Struct_2(arg_2.b, -var_0.x, true, global2.d);
    global3 = array<bool, 7>();
    var var_1 = ~arg_3.a.yx;
    return global2.d;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = Struct_3(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, u_input.b.x, u_input.b.x) ^ countOneBits(arg_0.yxz), _wgslsmith_mult_vec3_u32(~arg_0.wwz, vec3<u32>(u_input.a.x, arg_0.x, 0u) >> (vec3<u32>(4294967295u, u_input.a.x, arg_0.x) % vec3<u32>(32u)))), func_4(!(!(!vec3<bool>(arg_2.d.a, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(68684u, 7u)]))), -arg_2.b, arg_2.d, Struct_3(_wgslsmith_div_vec3_u32(min(vec3<u32>(4294967295u, u_input.b.x, arg_0.x), arg_0.wwz), _wgslsmith_mod_vec3_u32(arg_0.yyy, vec3<u32>(13280u, 8199u, 0u))), func_2(false && global2.d.a, 0i), Struct_1(global2.a.x < -292f, _wgslsmith_f_op_vec4_f32(-arg_2.a)))), arg_1.d);
    global0 = array<vec2<u32>, 27>();
    var var_1 = func_4(vec3<bool>(true, true, true), select(global2.b, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b, arg_1.b, global2.b, -1i), ~vec4<i32>(arg_1.b, global2.b, 27395i, -15834i)), firstLeadingBit(reverseBits(vec4<i32>(49671i, arg_1.b, global2.b, global2.b)))), 39833u <= ~reverseBits(var_0.a.x)), Struct_1(all(select(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 7u)], true), vec2<bool>(true, true), var_0.c.b.x == arg_1.d.b.x)), global2.d.b), Struct_3(~vec3<u32>(var_0.a.x << (arg_0.x % 32u), ~11566u, 54912u ^ var_0.a.x), func_4(vec3<bool>(any(vec4<bool>(global2.c, arg_2.d.a, arg_2.d.a, global2.d.a)), var_0.b.a, arg_2.c), 0i | arg_1.b, Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 7u)], var_0.b.b), var_0), arg_1.d));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_div_u32(u_input.a.x, u_input.a.x) <= u_input.b.x, any(select(vec3<bool>(global2.c, global2.c, true), vec3<bool>(global2.d.a, false, true), vec3<bool>(global3[_wgslsmith_index_u32(26671u, 7u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 7u)]))), true)) && (any(vec4<bool>(true, global3[_wgslsmith_index_u32(8271u, 7u)] | global2.d.a, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], func_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(vec4<f32>(622f, global2.a.x, global2.a.x, -1264f), 13693i, global3[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_1(global2.c, global2.a)), Struct_2(vec4<f32>(global2.d.b.x, 600f, 1508f, -765f), 50693i, false, global2.d)))) & !global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, 59640u, _wgslsmith_sub_u32(2179u, u_input.a.x)), 7u)]);
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(global2.d.b)), -1i, !(!global3[_wgslsmith_index_u32(1726u, 7u)]), Struct_1(!global2.c & true, _wgslsmith_f_op_vec4_f32(global2.a - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(global2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.b.x, global2.a.x, global2.d.b.x, global2.a.x)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f - global2.d.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.d.b.x, global2.d.b.x), func_4(vec3<bool>(var_0, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], var_0), global2.b, global2.d, Struct_3(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), Struct_1(global3[_wgslsmith_index_u32(1u, 7u)], global2.a), Struct_1(false, vec4<f32>(-308f, -1000f, global2.d.b.x, global2.d.b.x)))).b.x, var_0)), _wgslsmith_f_op_vec2_f32(func_3(global2.b == global2.b)).x)), firstLeadingBit(1i << (u_input.b.x % 32u)) & 1i, _wgslsmith_clamp_i32(max(min(568i, global2.b), ~1i), 0i, 1i) <= -1i, global2.d);
    let var_2 = Struct_1(!(!all(!vec2<bool>(true, var_1.c))), var_1.d.b);
    global4 = func_2(true, ~global2.b | -2147483647i).b.x;
    global1 = array<vec4<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, reverseBits(~(-2147483647i)), var_1.b);
}

