struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 60451u, 39093u), vec3<u32>(62699u, 25767u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 27122u));

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 4294967295u, 18370u), vec2<i32>(1i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = arg_3.e.x;
    global0 = array<Struct_2, 2>();
    let var_1 = arg_1.e.x;
    var var_2 = _wgslsmith_f_op_f32(sign(var_1));
    let var_3 = arg_1.e.zxy;
    return _wgslsmith_sub_vec4_u32(abs(reverseBits(min(vec4<u32>(arg_3.b, arg_2.x, u_input.b, 7494u), vec4<u32>(1u, arg_3.b, 0u, 1u)))), vec4<u32>(arg_2.x, ~arg_1.d.a.x, firstLeadingBit(~1u), ~4294967295u)) & ~vec4<u32>(max(~global2.a.x, arg_1.d.a.x), 4294967295u, u_input.b, abs(_wgslsmith_mod_u32(u_input.b, arg_2.x)));
}

fn func_2(arg_0: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-801f, -944f, 373f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1171f, -706f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-274f, 2054f, -307f) - vec3<f32>(-917f, 1000f, -713f))), true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) + _wgslsmith_f_op_f32(step(557f, 1000f))), 651f, -331f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(696f, -801f, -1040f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-669f, 1200f, -534f) + vec3<f32>(593f, 1687f, -286f))))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b, 68783u, 4621u, u_input.b)), vec4<u32>(global2.a.x, u_input.b, global2.a.x, 1u), func_3(vec4<i32>(1i, global2.b.x, -1i, global2.b.x), global0[_wgslsmith_index_u32(global2.a.x, 2u)], vec2<u32>(global2.a.x, 3765u), Struct_2(Struct_1(vec3<u32>(0u, u_input.b, 4294967295u), global2.b), 0u, Struct_1(global1[_wgslsmith_index_u32(0u, 3u)], global2.b), Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), vec2<i32>(u_input.c, global2.b.x)), vec4<f32>(-225f, var_0.x, -799f, 1232f)))) << (~abs(vec4<u32>(11357u, 0u, 1u, 4751u)) % vec4<u32>(32u))), countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(48017u, 9422u, 17341u, 0u), vec4<u32>(0u, u_input.b, global2.a.x, 0u)), vec4<u32>(30751u, global2.a.x, global2.a.x, global2.a.x)), countOneBits(vec4<u32>(0u, u_input.b, 0u, global2.a.x)) << (vec4<u32>(global2.a.x, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(0u, global2.a.x), 111471u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 0u)), _wgslsmith_mod_u32(28223u, global2.a.x)))), vec4<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(global2.a.x, 1u)), firstLeadingBit(u_input.b)), ~global2.a.x, select(4204u, 19423u | global2.a.x, arg_0) & _wgslsmith_mult_u32(firstTrailingBit(0u), global2.a.x), 4294967295u));
    let var_2 = vec2<bool>(_wgslsmith_div_f32(var_0.x, 470f) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true)), false);
    var var_3 = arg_0;
    var_3 = true;
    return vec3<i32>(13027i, _wgslsmith_dot_vec4_i32(vec4<i32>(~(global2.b.x & global2.b.x), max(~54319i, countOneBits(-40188i)), _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(global2.b.x, -2147483647i, u_input.a.x, u_input.c)), reverseBits(global2.b.x)), abs(-(u_input.a & u_input.a))), global2.b.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global1 = array<vec3<u32>, 3>();
    var var_0 = _wgslsmith_clamp_vec3_i32(func_2(((arg_1.a.a.x >> (1252u % 32u)) <= arg_1.c.a.x) && true), -select(~(u_input.a.yzx << (arg_1.a.a % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -21663i, u_input.a.x), vec3<i32>(-2147483647i, u_input.c, global2.b.x)) >> ((global2.a | global2.a) % vec3<u32>(32u)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), max(select(u_input.a.zxz, u_input.a.zwy, select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b.x, u_input.c, arg_0.c.b.x), u_input.a.xyx), min(u_input.a.wyw, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), u_input.a.xwx, true)));
    var var_1 = arg_0.a;
    var var_2 = true;
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, countOneBits(_wgslsmith_mod_i32(6807i, global2.b.x))), max(_wgslsmith_clamp_i32(2147483647i, -(i32(-1i) * -19206i), ~(~global2.b.x)), var_1.b.x));
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, ~(~_wgslsmith_dot_vec2_u32(global2.a.zz, vec2<u32>(u_input.b, 4294967295u))) >> ((u_input.b & 22066u) % 32u)), 2u)];
    let var_2 = _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), -(reverseBits(vec4<i32>(-1i, arg_1, arg_0.b.x, arg_1)) ^ (-u_input.a << (vec4<u32>(1u, global2.a.x, 4294967295u, var_1.a.a.x) % vec4<u32>(32u)))));
    let var_3 = Struct_2(func_1(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(max(13405u, ~func_1(Struct_2(arg_0, arg_0.a.x, Struct_1(vec3<u32>(global2.a.x, u_input.b, 4294967295u), vec2<i32>(arg_0.b.x, var_2)), arg_0, vec4<f32>(var_0, var_1.e.x, 1386f, arg_2)), Struct_2(var_1.d, 62193u, var_1.d, arg_0, vec4<f32>(872f, arg_2, var_0, -267f))).a.x), 2u)]), _wgslsmith_dot_vec3_u32(func_1(Struct_2(var_1.c, 8354u << (arg_0.a.x % 32u), arg_0, func_1(global0[_wgslsmith_index_u32(5965u, 2u)], global0[_wgslsmith_index_u32(global2.a.x, 2u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1.e.x, 1054f, -1002f))), Struct_2(Struct_1(arg_0.a, vec2<i32>(-2147483647i, var_1.c.b.x)), _wgslsmith_mult_u32(var_1.a.a.x, 64651u), Struct_1(vec3<u32>(arg_0.a.x, 15832u, arg_0.a.x), vec2<i32>(arg_1, -1i)), func_1(global0[_wgslsmith_index_u32(global2.a.x, 2u)], Struct_2(arg_0, u_input.b, Struct_1(arg_0.a, arg_0.b), Struct_1(global2.a, global2.b), var_1.e)), _wgslsmith_f_op_vec4_f32(-var_1.e))).a, arg_0.a), Struct_1(vec3<u32>(1u, arg_0.a.x, ~arg_0.a.x), u_input.a.yw), Struct_1(~global2.a >> (var_1.d.a % vec3<u32>(32u)), (vec2<i32>(u_input.c, var_2) | arg_0.b) ^ u_input.a.xw), _wgslsmith_f_op_vec4_f32(sign(var_1.e)));
    var var_4 = arg_0;
    return var_3.e.ywx;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = -min(u_input.a.x >> (_wgslsmith_mod_u32(0u, u_input.b) % 32u), arg_1.b.x & _wgslsmith_sub_i32(_wgslsmith_div_i32(global2.b.x, global2.b.x), arg_1.b.x));
    global0 = array<Struct_2, 2>();
    let var_2 = var_0.a.yy;
    global2 = arg_1;
    return vec3<u32>(global2.a.x, 10032u, func_3(vec4<i32>(1i, 1i, 1i, 1i), global0[_wgslsmith_index_u32(~u_input.b, 2u)], var_2, global0[_wgslsmith_index_u32(~var_2.x, 2u)]).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 3>();
    var var_0 = Struct_1(abs((global1[_wgslsmith_index_u32(global2.a.x, 3u)] & vec3<u32>(0u, 24237u, 0u)) & ~global2.a) >> (func_5(_wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_2(Struct_1(global2.a, global2.b), 0u, Struct_1(vec3<u32>(4294967295u, 1u, 10343u), vec2<i32>(-1i, u_input.a.x)), Struct_1(vec3<u32>(global2.a.x, 0u, 1u), u_input.a.wy), vec4<f32>(-669f, -1783f, -1948f, 459f)), Struct_2(Struct_1(global2.a, vec2<i32>(u_input.c, -2147483647i)), u_input.b, Struct_1(vec3<u32>(39169u, u_input.b, 67659u), vec2<i32>(-1i, u_input.a.x)), Struct_1(vec3<u32>(0u, global2.a.x, 0u), vec2<i32>(-52287i, -2147483647i)), vec4<f32>(-1000f, -1416f, -646f, 1633f))), 22461i, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(max(vec3<u32>(global2.a.x, u_input.b, 15312u), global2.a), _wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(11382i, u_input.c))), true) % vec3<u32>(32u)), -u_input.a.wz);
    let var_1 = 273f;
    let var_2 = func_1(global0[_wgslsmith_index_u32(~4294967295u, 2u)], global0[_wgslsmith_index_u32(~67621u, 2u)]);
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(-min(_wgslsmith_div_i32(17088i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, -64094i, u_input.a.x), u_input.a.zwy)), firstTrailingBit(_wgslsmith_div_i32(-1i, var_0.b.x))));
}

