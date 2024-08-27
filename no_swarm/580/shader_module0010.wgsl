struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1205f, 180f, -1010f, -992f, 573f, 464f, -1608f, -951f, 1073f, -349f, 335f);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 30803u);

var<private> global2: i32;

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-42626i, 0i), vec2<i32>(74543i, -64555i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, -7557i), vec2<i32>(-40600i, 11702i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(vec3<bool>(false, all(vec2<bool>(true, true)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)))), all(vec4<bool>(-1189f >= arg_0.a.x, false, false, true)) & true, 7286u);
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_3.a), ~4730i);
    var_1 = arg_0;
    global1 = abs(arg_1.yz);
    return var_2.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(50206u, 11u)];
    global0 = array<f32, 11>();
    global2 = 6490i;
    global3 = array<vec2<i32>, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<f32>(-1250f, global0[_wgslsmith_index_u32(50704u, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 11u)]))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(global1.x), _wgslsmith_div_u32(u_input.b.x, 38124u), 29149u | global1.x, 1u), ~select(u_input.b, vec4<u32>(4294967295u, 53015u, 4294967295u, u_input.b.x), true)), ~(-arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 1000f, -259f)), arg_0.x))), ~u_input.d);
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.wyy) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 501f, 2600f))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> i32 {
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.c, 11u)] - _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 11u)]))) + arg_0.a.x), global0[_wgslsmith_index_u32(arg_2, 11u)]));
    global2 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.yx, arg_0.a.xz) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.yz + arg_0.a.xy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)]) - vec2<f32>(855f, -217f))))), arg_0.a.xx)));
    let var_2 = u_input.b;
    return u_input.d;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = vec4<i32>(func_4(func_2(_wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(~global1.x, 5u)], max(u_input.c.xx, global3[_wgslsmith_index_u32(global1.x, 5u)]))), Struct_2(vec3<bool>(true, false, true), true, global1.x), firstLeadingBit(global1.x)), select(-1i, _wgslsmith_mod_i32(-5999i, u_input.c.x), true) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, 19996i), -vec3<i32>(u_input.c.x, u_input.d, u_input.d)), 31387i, ~(~u_input.d & u_input.c.x));
    global0 = array<f32, 11>();
    var var_1 = Struct_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true), true), select(vec3<bool>(global1.x < 19083u, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true), all(vec3<bool>(false, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), select(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))) || true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)] + 533f))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec3<bool>(true, true, true))), abs(min(firstLeadingBit(arg_0), ~69308u)));
    let var_2 = var_1.b;
    let var_3 = Struct_2(!var_1.a, true, u_input.b.x);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1890f, global0[_wgslsmith_index_u32(1732u, 11u)]))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.c, 11u)] - -665f), _wgslsmith_f_op_f32(796f * arg_1.x), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 11u)]))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], 560f, global0[_wgslsmith_index_u32(7681u, 11u)]))))));
    let var_1 = abs(select(-(~u_input.c.yxy), vec3<i32>(1i, u_input.d, -u_input.d), vec3<bool>(18049u <= global1.x, ~u_input.c.x >= u_input.d, true)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], var_0.a.x, global0[_wgslsmith_index_u32(global1.x, 11u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, -699f) + vec3<f32>(global0[_wgslsmith_index_u32(18248u, 11u)], -1140f, -961f))))));
    global3 = array<vec2<i32>, 5>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, global0[_wgslsmith_index_u32(24588u, 11u)], -653f, -581f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, var_2.a.x, var_2.a.x, -787f) * vec4<f32>(-1336f, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], -1913f, -807f))) + vec4<f32>(_wgslsmith_div_f32(1016f, -417f), 704f, 361f, arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -795f, 383f, -1644f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, arg_1.x, -142f, var_0.a.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], var_0.a.x, -634f, arg_1.x)))));
    return -419f;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = func_1(firstTrailingBit(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, global1.x), 1u))));
    global1 = ~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(~var_0.c, global1.x)), u_input.b.zz);
    global1 = vec2<u32>(0u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 9089u), firstLeadingBit(u_input.b.zx)), reverseBits(global1.x))));
    var var_1 = u_input.b.xy;
    return StorageBuffer(vec3<u32>(~(global1.x | ~var_0.c), _wgslsmith_mult_u32(u_input.b.x, global1.x), _wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(arg_1.c, ~arg_1.c))), arg_2.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(arg_0.a), u_input.b, -1i, arg_2)).x - 1274f)), 172f, _wgslsmith_f_op_f32(round(arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global1.x, 11u)]))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(335f, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(79761u, 11u)]), vec3<f32>(835f, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 550f), vec3<bool>(false, true, true)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 11u)], 994f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 11u)]))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * global0[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.x, 11u)], -1688f) - -516f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f) + global0[_wgslsmith_index_u32(455u, 11u)])));
    let x = u_input.a;
    s_output = func_6(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(global1.x), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), var_0.a.x)), Struct_2(vec3<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, -1i, u_input.c.x), u_input.c) <= u_input.c.x), false, 1u), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, _wgslsmith_f_op_f32(var_1.x + 889f), func_2(u_input.c.zz).a.x, var_1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2072f, var_1.x, global0[_wgslsmith_index_u32(121704u, 11u)], var_0.a.x) * vec4<f32>(var_0.a.x, 514f, var_1.x, -941f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], var_0.a.x, 711f, 1275f), vec4<f32>(var_0.a.x, 930f, var_0.a.x, var_0.a.x))))), i32(-1i) * -19126i), firstTrailingBit(vec2<i32>(u_input.d, u_input.c.x)));
}

