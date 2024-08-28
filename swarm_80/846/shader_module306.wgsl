struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global1: array<f32, 10>;

var<private> global2: f32 = -323f;

var<private> global3: vec4<f32>;

var<private> global4: array<vec3<f32>, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> vec3<bool> {
    global1 = array<f32, 10>();
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1107f, -1126f, global3.x, global3.x) - vec4<f32>(-1000f, -295f, arg_3, global1[_wgslsmith_index_u32(arg_1.x, 10u)])), vec4<f32>(global3.x, global1[_wgslsmith_index_u32(0u, 10u)], 988f, arg_3))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -989f, 1976f, 802f) - vec4<f32>(-1527f, arg_3, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 143f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1403f, global3.x, -423f, -1610f), vec4<f32>(global3.x, global3.x, -1169f, -1590f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(599f, arg_3, global3.x, -926f)))))), arg_0)), !vec4<bool>(arg_0, arg_0, all(!vec2<bool>(arg_0, arg_0)), true)));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, -889f, false)), _wgslsmith_div_f32(283f, arg_3)))), _wgslsmith_f_op_f32(-arg_3)));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.x)))) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~57123u, 10u)] - arg_3)))));
    var var_0 = vec3<f32>(global3.x, global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(select(countOneBits(arg_1.x), ~arg_1.x, true), 1u)), 10u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * 156f))))));
    return vec3<bool>(arg_0, true, true);
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(reverseBits(~_wgslsmith_div_u32(32275u, 1u)), 52374u);
    global0 = array<vec3<bool>, 13>();
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, global1[_wgslsmith_index_u32(var_0.a, 10u)], arg_0.b, 1360f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, global1[_wgslsmith_index_u32(18340u, 10u)], -734f, -758f))), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(step(-481f, -100f)), global1[_wgslsmith_index_u32(select(4294967295u, var_0.b, false), 10u)], arg_0.b))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_0.b, 10u)])), 461f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1659f), _wgslsmith_f_op_f32(global3.x * 1486f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))), global3.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-global3.x), global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 109f, -701f, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-509f, 1579f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)], 515f)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true))))), vec4<bool>(false && any(vec3<bool>(false, false, false)), false, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.b, 10u)], arg_0.b, false)) > global1[_wgslsmith_index_u32(~42439u, 10u)])))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> Struct_3 {
    var var_0 = vec3<bool>(arg_1, arg_1, false);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-427f, -1045f, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], -1160f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19575u, 10u)]), -1833f, -2241f)))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(firstLeadingBit(u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-961f - arg_3), _wgslsmith_div_f32(-571f, arg_3)), Struct_2(2275i)))));
    global4 = array<vec3<f32>, 5>();
    let var_1 = vec3<bool>(~2147483647i < -(u_input.c.x >> (~1u % 32u)), false, !(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 0u), vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x)) >= firstLeadingBit(abs(57421u))));
    global0 = array<vec3<bool>, 13>();
    return Struct_3(Struct_2(~(~(-2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(u_input.c.x), -215f, Struct_2(-25467i)))).x * 329f), Struct_2(u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_f32(-1208f * _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(842f + 1110f) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], -1263f)), all(func_1(false, u_input.a, u_input.c.x, 561f))))), false || !(_wgslsmith_div_i32(3814i, 3010i) > u_input.c.x), _wgslsmith_f_op_vec2_f32(ceil(global3.yw)), 1000f);
    let var_1 = Struct_4(Struct_1(~(~_wgslsmith_mod_u32(u_input.e.x, u_input.a.x)), u_input.d.x), vec4<f32>(global3.x, 149f, global1[_wgslsmith_index_u32(select(u_input.e.x, ~u_input.e.x, true) | _wgslsmith_mod_u32(u_input.a.x, select(u_input.b.x, 4294967295u, true)), 10u)], -1045f), ~(select(~u_input.c, countOneBits(u_input.c), true) & u_input.c), global1[_wgslsmith_index_u32(~1u, 10u)]);
    var var_2 = select(-u_input.c, abs(select(countOneBits(var_1.c), vec4<i32>(var_0.a.a, var_1.c.x, var_1.c.x, var_1.c.x) ^ u_input.c, any(vec3<bool>(true, true, false))) >> (_wgslsmith_mult_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.d.x, 0u, var_1.a.b), u_input.a, vec4<u32>(1u, u_input.b.x, var_1.a.b, u_input.b.x))) % vec4<u32>(32u))), select(vec4<bool>(func_1(true, vec4<u32>(0u, u_input.d.x, var_1.a.a, 35431u), var_0.c.a, _wgslsmith_f_op_f32(1000f * var_1.b.x)).x, _wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.yw) < abs(u_input.c.x), all(vec2<bool>(true, true)), true), !vec4<bool>(true, any(vec2<bool>(true, true)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))));
    var var_3 = func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(((u_input.a.x >> (20427u % 32u)) & var_1.a.b) ^ 11983u, 10u)]), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1297f), _wgslsmith_f_op_f32(sign(665f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_0.c, global3.x, Struct_2(var_2.x)))).x * -542f)), select(vec2<bool>(true, true), vec2<bool>(1711f < var_0.b, any(vec2<bool>(true, false))), all(vec4<bool>(true, false, false, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1680f, -1449f, all(global0[_wgslsmith_index_u32(var_1.a.a, 13u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_1.a.b, 10u)])) + 1f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(2849u, 10u)]))));
    var_2 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(abs(-778i), ~(-6891i)) << (~(~u_input.a.x) % 32u), u_input.c.x), -_wgslsmith_dot_vec2_i32(u_input.c.ww, max(vec2<i32>(var_0.c.a, var_1.c.x), -vec2<i32>(1i, u_input.c.x))), _wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, var_1.c.x), max(1i, var_1.c.x))), 6867i), -1i);
    let var_4 = Struct_1(5614u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(6015u, 0u, select(var_1.a.b, u_input.d.x, false), ~21139u), ~u_input.a), firstTrailingBit(1u));
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b)))), 219f, _wgslsmith_f_op_vec4_f32(func_3(func_2(-616f, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 556f)), _wgslsmith_f_op_f32(sign(var_3.b))))).x) * var_1.b);
    global3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u ^ var_4.b, var_1.a.b >> (u_input.e.x % 32u)), abs(firstLeadingBit(vec2<u32>(var_4.a, 74063u)))) >> (~select(~vec2<u32>(u_input.b.x, var_4.a), vec2<u32>(var_1.a.b, 1u), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))) % vec2<u32>(32u)));
}

