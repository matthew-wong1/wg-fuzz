struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(629f, 1202f, 1485f, 244f), true, -744f, -2794f, 0i);

var<private> global1: Struct_1;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<f32> {
    let var_0 = -74057i;
    let var_1 = select(vec4<bool>(!global1.b, 8434i < ~global2.a.e, true, -1168f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1639f)), _wgslsmith_f_op_f32(min(global0.c, global0.c))))), select(select(select(select(vec4<bool>(global2.b.x, global0.b, global0.b, true), vec4<bool>(true, global1.b, false, false), false), !vec4<bool>(true, false, global1.b, global2.a.b), !global0.b), vec4<bool>(any(vec2<bool>(global2.b.x, false)), global2.b.x, global0.b != global0.b, true), vec4<bool>(true, false, global1.b, any(global2.b))), vec4<bool>(!any(global2.b), global0.b, global2.a.b, any(!vec4<bool>(false, global1.b, global2.b.x, global2.c.b))), !(!(!vec4<bool>(true, global2.b.x, global1.b, true)))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(global1.b, false, global1.b, global0.b), any(vec2<bool>(global0.b, global2.a.b))), !select(!vec4<bool>(true, false, global0.b, true), select(vec4<bool>(global1.b, global0.b, true, global1.b), vec4<bool>(global1.b, false, true, false), vec4<bool>(global0.b, global1.b, global2.b.x, global0.b)), vec4<bool>(true, global1.b, true, true)), any(!vec4<bool>(false, global1.b, global1.b, true))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.c, u_input.c) & vec2<i32>(var_0, global1.e)), vec2<i32>(global0.e, 5920i)), firstTrailingBit(~global2.c.e << (u_input.a % 32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~global0.e, global1.e), -vec2<i32>(-1i, global2.d)), global0.e & -(~0i)));
    global0 = Struct_1(global0.a, false, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1241f)))), _wgslsmith_f_op_f32(-global1.d), var_0);
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(~0i, global2.a.e, global0.e), ~(-2147483647i), var_0, global2.d << (reverseBits(u_input.b.x) % 32u));
    return vec4<f32>(_wgslsmith_f_op_f32(min(-165f, global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-255f))) * _wgslsmith_f_op_f32(global0.a.x - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, global0.d)))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(742f, _wgslsmith_div_f32(global0.a.x, global0.c), _wgslsmith_f_op_f32(exp2(global2.a.a.x)), 915f), global0.a) + _wgslsmith_f_op_vec4_f32(func_3())), true, -785f, -1758f, -_wgslsmith_dot_vec2_i32(select(-vec2<i32>(1i, global2.c.e), abs(vec2<i32>(global0.e, 52718i)), vec2<bool>(global0.b, true)), countOneBits(vec2<i32>(global1.e, global2.d))));
    var var_1 = Struct_2(Struct_1(var_0.a, (_wgslsmith_f_op_vec4_f32(func_3()).x < _wgslsmith_f_op_f32(sign(-1484f))) && ((u_input.c & global1.e) == -global1.e), _wgslsmith_f_op_f32(1785f * -572f), -1000f, 2620i), global2.b, global2.a, ~1i | firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.e, u_input.c), vec2<i32>(-50197i, global0.e))));
    let var_2 = Struct_2(var_1.a, vec2<bool>(global0.b, !global2.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(global2.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.a, global0.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -348f, global2.c.c, var_1.a.d), vec4<f32>(arg_0.x, 1000f, -2150f, global2.a.d))), vec4<bool>(true, global1.b, false, true || global2.b.x))), !all(select(vec3<bool>(global2.a.b, global2.b.x, true), vec3<bool>(global1.b, true, var_0.b), vec3<bool>(global0.b, global1.b, var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-302f))) * var_0.d), _wgslsmith_f_op_f32(-var_0.c), min(~(~(-2147483647i)), var_1.d)), 1i);
    let var_3 = -(~(abs(select(vec4<i32>(global1.e, var_2.d, 3989i, -31154i), vec4<i32>(var_1.a.e, var_1.c.e, -2387i, -2147483647i), false)) << (max(~vec4<u32>(1u, u_input.a, 0u, 0u), vec4<u32>(arg_1, 0u, u_input.a, u_input.b.x)) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1034f + -1713f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1638f, global1.a.x)) + 131f), global1.a.x));
    return Struct_1(global0.a, any(!(!(!vec3<bool>(var_0.b, global0.b, global2.c.b)))), global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-735f, 1000f)) + _wgslsmith_f_op_f32(-var_0.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - _wgslsmith_f_op_f32(max(-704f, 1105f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x))), _wgslsmith_add_i32(0i, 16616i));
}

fn func_1() -> f32 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.a.a.yx))), _wgslsmith_clamp_u32(u_input.a, 0u, u_input.a));
    global0 = global2.a;
    var var_0 = -25035i;
    let var_1 = global0.d;
    global0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a.a.xz)))), _wgslsmith_dot_vec3_u32(~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), u_input.b.xxz)), _wgslsmith_div_vec3_u32(vec3<u32>(21427u, ~20888u, ~1u), u_input.b.ywz)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global2.c.a.x, global0.d);
    let var_1 = true;
    global1 = global2.a;
    var var_2 = vec4<i32>(-(i32(-1i) * -_wgslsmith_add_i32(1i, u_input.c)), i32(-1i) * -(i32(-1i) * -global0.e), global0.e, global0.e);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global2.c.c)))))), _wgslsmith_f_op_vec4_f32(func_3()).x);
    let var_3 = _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(-select(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c), vec4<i32>(-2147483647i, 2147483647i, 6134i, -24844i), vec4<bool>(global2.c.b, false, false, true)), min(vec4<i32>(global0.e, global1.e, u_input.c, 0i) | vec4<i32>(global0.e, global1.e, var_2.x, u_input.c), vec4<i32>(global1.e, u_input.c, 0i, 10500i))), firstLeadingBit(vec4<i32>(global1.e, ~_wgslsmith_div_i32(global1.e, global2.c.e), ~global2.a.e & ~var_2.x, firstTrailingBit(global1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3), var_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1353f, _wgslsmith_f_op_f32(f32(-1f) * -660f), 1433f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_f_op_f32(709f - global2.c.d), -452f < global1.d)))), _wgslsmith_sub_u32(u_input.a, 4294967295u), vec4<i32>(global2.d, -1i, var_3.x, ~(~var_2.x)));
}

