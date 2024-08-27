struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec2<i32> {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-818f, -1248f, -478f) - vec3<f32>(220f, -1922f, 827f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(178f, -1000f, -1386f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 774f)), 425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2139f + -1252f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1431f, 823f, 1000f) * vec3<f32>(-1537f, 834f, 184f)), vec3<f32>(-1920f, -564f, 377f), true)), vec3<f32>(-540f, 457f, -785f)))));
    let var_1 = -(~u_input.c) | -(max(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(10160i, u_input.c.x)), u_input.c) & _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 2147483647i) ^ vec2<i32>(u_input.c.x, 0i), vec2<i32>(arg_1.x, arg_0), vec2<i32>(0i, arg_0)));
    var var_2 = Struct_1(min(19217i, 2147483647i), u_input.a.zyw, select(arg_1.x, arg_0, !(!all(vec3<bool>(true, false, false)))), vec4<bool>(false, arg_2.x, true, arg_2.x));
    return _wgslsmith_sub_vec2_i32(reverseBits(~(~(arg_1.yy ^ vec2<i32>(var_1.x, -25798i)))), _wgslsmith_div_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 0i) << (var_2.b.xy % vec2<u32>(32u)), -arg_1.xz), ~vec2<i32>(-5224i, arg_0), false), vec2<i32>(-1i, u_input.c.x)));
}

fn func_3() -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - -1534f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, -627f))))), -1449f);
    let var_1 = u_input.a.x & (u_input.b.x | _wgslsmith_div_u32(89345u, _wgslsmith_dot_vec3_u32(u_input.a.xyy ^ u_input.b.yyz, vec3<u32>(u_input.b.x, u_input.d, u_input.b.x))));
    global0 = array<bool, 14>();
    let var_2 = any(vec3<bool>(any(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_1, 14u)], false, false)), all(select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(var_1, 14u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1698u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true, global0[_wgslsmith_index_u32(var_1, 14u)]), true), !global0[_wgslsmith_index_u32(1u, 14u)])), any(!vec4<bool>(global0[_wgslsmith_index_u32(var_1, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], true, true))));
    global0 = array<bool, 14>();
    return u_input.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    global0 = array<bool, 14>();
    var var_0 = arg_1;
    var var_1 = arg_1.c.a;
    var_0 = arg_1;
    let var_2 = -1i;
    return abs(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-var_0.b.c), func_1(-36378i, max(vec3<i32>(2147483647i, var_0.b.c, u_input.c.x), vec3<i32>(arg_1.b.a, -46326i, -6850i)), vec3<bool>(true, var_0.a, arg_0.a)).x, ~func_3(), arg_1.b.a), countOneBits(vec4<i32>(firstTrailingBit(-1i), i32(-1i) * -2147483647i, u_input.c.x, var_0.c.c))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(290f)));
    global0 = array<bool, 14>();
    let var_1 = Struct_1(arg_0.x & countOneBits(-1i), min(u_input.a.zxz, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.d), u_input.b.xwx) & u_input.a.wyx), u_input.c.x, vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 14u)], false, global0[_wgslsmith_index_u32(~4294967295u, 14u)]));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, Struct_1(max(u_input.c.x, u_input.c.x), _wgslsmith_add_vec3_u32(~(vec3<u32>(10716u, 0u, u_input.b.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 55181u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(70249u, 1998u, 1u) << (u_input.b.wzx % vec3<u32>(32u)), select(u_input.b.yyy, vec3<u32>(43u, u_input.d, 1u), vec3<bool>(true, false, false)))), 33364i, !vec4<bool>(true & global0[_wgslsmith_index_u32(u_input.d, 14u)], false, true, true)), Struct_1(0i, u_input.b.xww, countOneBits(u_input.c.x), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false, true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(62115u, 14u)], false, global0[_wgslsmith_index_u32(u_input.d, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(19633u, 14u)], false, global0[_wgslsmith_index_u32(39474u, 14u)], false)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, global0[_wgslsmith_index_u32(u_input.d, 14u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(20166u, 14u)], false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), false))), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b.ww, vec2<u32>(4294967295u, 564u) & vec2<u32>(u_input.a.x, u_input.b.x)), 6723u), 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-817f, 934f)) * -1089f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f + 593f)), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))));
    let var_1 = Struct_2(true, var_0.b, func_4(_wgslsmith_div_vec2_i32(u_input.c, func_1(~var_0.b.a, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.a, u_input.c.x, -27988i), vec3<i32>(1i, var_0.c.c, 0i)), !vec3<bool>(var_0.c.d.x, var_0.d.x, var_0.d.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -24713i, 2147483647i, 14376i), vec4<i32>(-9471i, u_input.c.x, u_input.c.x, u_input.c.x)), ~func_2(Struct_2(false, Struct_1(-2147483647i, vec3<u32>(u_input.a.x, 0u, var_0.b.b.x), u_input.c.x, vec4<bool>(var_0.c.d.x, var_0.a, global0[_wgslsmith_index_u32(var_0.b.b.x, 14u)], global0[_wgslsmith_index_u32(var_0.b.b.x, 14u)])), Struct_1(0i, vec3<u32>(u_input.d, 1u, 12798u), -1i, vec4<bool>(true, var_0.c.d.x, var_0.c.d.x, global0[_wgslsmith_index_u32(var_0.c.b.x, 14u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(6487u, 14u)], true, false)), var_0))), var_0.c.d);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.b.b.x));
}

