struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<Struct_2, 1>;

var<private> global1: f32 = -1809f;

var<private> global2: vec4<u32> = vec4<u32>(0u, 29009u, 23660u, 21547u);

var<private> global3: Struct_3;

var<private> global4: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(1000f, 1939f), vec2<f32>(1447f, -1350f), vec2<f32>(-215f, -597f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global3.c.c.xx, _wgslsmith_f_op_vec2_f32(-global3.b.c.yx))) - global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(5312u >> (~global2.x % 32u), 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 41650u, global2.x), global2.ywy)), 3u)]));
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(960f, 949f), arg_0.d.yz)))) * vec2<f32>(917f, 2959f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.b.e), _wgslsmith_f_op_f32(f32(-1f) * -192f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.c.x + global3.a) + 1153f), arg_0.a.e)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4) -> vec4<f32> {
    global2 = _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(min(0u, global2.x)), 1u, 1u, arg_1.c.b), vec4<u32>(u_input.c.x, (6821u >> (min(19595u, global2.x) % 32u)) << (u_input.a.x % 32u), abs(66311u), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(u_input.c.x, 1u), 79u, global2.x)));
    global0 = array<Struct_2, 1>();
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_0, select(vec3<bool>(false, any(vec3<bool>(false, global3.d.b.x, global3.d.b.x)), true), vec3<bool>(!all(vec3<bool>(true, global3.b.b.x, false)), global3.b.b.x, var_0.c.a.b.x), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, arg_1.e.b.c.x, 386f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.b.c - _wgslsmith_f_op_vec3_f32(var_0.b.c - vec3<f32>(arg_1.c.a.c.x, -1413f, global3.c.c.x)))))), max(arg_0, vec4<i32>(abs(_wgslsmith_dot_vec3_i32(arg_0.wwx, vec3<i32>(var_0.e.c.d.x, global3.d.a.x, var_0.a.x))), countOneBits(global3.d.a.x) & 27899i, _wgslsmith_clamp_i32(~var_0.c.a.a.x, ~global3.c.a.x, _wgslsmith_mult_i32(0i, 2147483647i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.d.x, var_0.c.a.d.x), global3.d.d.xw))), global3.b.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.c.a, 21472u, global3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.c.e, var_0.d, -1143f, arg_1.b.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.d.x, -381f) - vec2<f32>(-719f, global3.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(global3.b.e, 1199f), vec2<f32>(-1575f, -927f))) + _wgslsmith_f_op_vec2_f32(func_3())))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.c.x))), global3.a, var_1.e, var_0.d);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.d, vec4<f32>(arg_1.x, global3.d.e, arg_0.c, -466f)), arg_0.d) + arg_1), _wgslsmith_f_op_vec4_f32(abs(arg_0.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(0i, -27938i, global3.b.a.x, arg_2.d.a.x), Struct_4(vec3<i32>(1i, global3.b.d.x, -2147483647i), Struct_1(vec4<i32>(arg_2.d.a.x, 1i, arg_2.b.d.x, arg_0.a.d.x), arg_2.d.b, arg_2.c.c, vec4<i32>(global3.d.d.x, -2279i, arg_0.a.d.x, global3.d.a.x), arg_2.a), global0[_wgslsmith_index_u32(45588u, 1u)], global3.d.c.x, arg_2))))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(725f, arg_2.b.c.x, arg_2.b.c.x, _wgslsmith_f_op_f32(global3.d.c.x - 1496f))))));
    var var_1 = (~(_wgslsmith_add_i32(0i, 11639i) | arg_0.a.a.x) >> (u_input.a.x % 32u)) > arg_2.d.a.x;
    var_1 = all(!(!select(select(vec4<bool>(true, true, global3.c.b.x, arg_0.a.b.x), vec4<bool>(global3.d.b.x, arg_0.a.b.x, true, true), false), select(vec4<bool>(arg_2.d.b.x, arg_0.a.b.x, true, true), vec4<bool>(false, global3.d.b.x, false, global3.c.b.x), true), select(vec4<bool>(false, false, false, arg_2.b.b.x), vec4<bool>(true, true, false, false), arg_2.d.b.x))));
    let var_2 = arg_0.a;
    var var_3 = Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(~max(-1i, var_2.a.x), 1i | _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.d.x, 27690i, -35118i, -2147483647i), vec4<i32>(arg_2.b.d.x, arg_0.a.d.x, global3.c.a.x, -1i)), arg_0.a.d.x), global3.c.a.xyz), arg_0.a, Struct_2(var_2, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-121f)) * arg_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), vec2<f32>(global3.c.e, arg_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, global3.a))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - -1996f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.e) - 598f)), Struct_1(var_2.d, global3.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.yxy, vec3<f32>(473f, var_0.x, 1414f)))), ~(~arg_0.a.d), -1028f), Struct_1(vec4<i32>(_wgslsmith_sub_i32(var_2.d.x, arg_0.a.a.x), _wgslsmith_add_i32(arg_2.b.a.x, arg_2.d.a.x), _wgslsmith_mod_i32(-1i, var_2.d.x), ~6307i), !vec3<bool>(global3.d.b.x, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 710f, arg_1.x)), ~select(vec4<i32>(global3.b.d.x, arg_0.a.a.x, 0i, 37087i), vec4<i32>(arg_0.a.d.x, -26894i, 27257i, var_2.d.x), vec4<bool>(true, var_2.b.x, arg_2.d.b.x, arg_2.d.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * -1362f)))), global3.c));
    return _wgslsmith_f_op_f32(912f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.c.x)), arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 3>();
    var var_0 = !global3.b.b.x;
    let var_1 = Struct_2(Struct_1(global3.d.d, global3.d.b, _wgslsmith_f_op_vec3_f32(-global3.d.c), global3.c.d, _wgslsmith_f_op_f32(f32(-1f) * -179f)), ~14475u, 1572f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -1000f, -125f, 565f))), _wgslsmith_div_vec4_f32(vec4<f32>(global3.a, global3.a, -3044f, 2299f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.c.x, -460f, -1000f, -761f))), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.d.e, -1000f, global3.a)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-957f, 904f, global3.b.c.x, global3.b.e)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1389f, global3.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global3.d.c.xy, global4[_wgslsmith_index_u32(31971u, 3u)]))) * _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(~global2.x, 3u)]))));
    var var_2 = select(vec3<bool>(!global3.c.b.x, any(vec3<bool>(var_1.a.b.x & global3.b.b.x, true, var_1.a.b.x || true)), true), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(var_1.b, 1u)], vec4<f32>(var_1.c, 174f, var_1.a.c.x, var_1.c), Struct_3(-540f, var_1.a, global3.d, Struct_1(vec4<i32>(var_1.a.d.x, 63272i, 2147483647i, 36222i), global3.d.b, vec3<f32>(2630f, 1041f, -1000f), vec4<i32>(18125i, var_1.a.d.x, 0i, var_1.a.d.x), global3.a))))) <= 2028f, all(!(!vec4<bool>(true, false, false, global3.b.b.x))), var_1.a.b.x), global3.d.b);
    let var_3 = select(select(vec3<bool>(var_2.x, !select(false, global3.d.b.x, true), any(!global3.c.b)), !vec3<bool>(false, false, var_2.x), true), !vec3<bool>(all(var_1.a.b), global3.c.b.x, true), any(select(select(var_1.a.b, select(var_1.a.b, vec3<bool>(var_1.a.b.x, false, global3.d.b.x), vec3<bool>(var_1.a.b.x, true, true)), var_2.x), vec3<bool>(select(true, var_2.x, true), var_2.x, true), select(select(global3.d.b, global3.d.b, global3.c.b), var_1.a.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b.a.x, global3.b.d.x), countOneBits(vec2<i32>(global3.d.a.x, 1i)), var_1.a.d.yz)), vec2<i32>(var_1.a.d.x, -global3.b.a.x), select(all(select(vec4<bool>(var_2.x, global3.c.b.x, var_2.x, var_1.a.b.x), vec4<bool>(var_2.x, var_3.x, false, var_2.x), false)), all(select(vec4<bool>(var_3.x, var_2.x, var_1.a.b.x, true), vec4<bool>(true, false, false, true), false)), var_1.a.b.x)));
}

