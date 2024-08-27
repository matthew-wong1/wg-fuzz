struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global1 = Struct_1(-1i, select(select(select(!global1.b, vec4<bool>(true, false, true, true), global1.b), global1.b, global1.b.x), !global1.b, global1.b), global1.c);
    let var_0 = Struct_3(Struct_2(-max(-vec3<i32>(global1.a, 2147483647i, -18002i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, global1.a), vec3<i32>(10098i, u_input.c.x, u_input.b))), u_input.e, Struct_1(~u_input.b, vec4<bool>(all(global1.b.zxy), false, global1.b.x, true), 1990f), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c * global1.c))) + _wgslsmith_f_op_f32(f32(-1f) * -582f))), false, 278f);
    let var_1 = vec4<f32>(-1946f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1156f * _wgslsmith_f_op_f32(-1000f + var_0.c)), global1.c)))), var_0.a.e, _wgslsmith_f_op_f32(-1f));
    global1 = Struct_1(0i, global1.b, -621f);
    global2 = abs(vec2<u32>(0u, firstTrailingBit(~1u)));
    return max(-u_input.d.x, global1.a) >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(global2.x, global2.x ^ u_input.a.x) << (~(global2.x ^ 44252u) % 32u), abs(_wgslsmith_div_u32(43053u & global2.x, 0u >> (u_input.e.x % 32u)))) % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_mod_i32(global1.a, ~arg_1.a.a.x);
    let var_1 = u_input.e;
    var var_2 = arg_1.a.c;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(trunc(arg_1.a.e)));
    let var_4 = Struct_3(Struct_2(vec3<i32>(func_3(), max(0i | global1.a, 46902i), u_input.c.x), arg_1.a.b, Struct_1(~arg_1.a.a.x >> (55209u % 32u), vec4<bool>(true, arg_1.b, true, true), var_3.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(494f)))))), _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), var_2.b.x, _wgslsmith_f_op_f32(floor(-1817f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-895f)), -1724f)) >= _wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-613f, _wgslsmith_f_op_f32(-var_2.c))) + 229f));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    let var_0 = select(vec2<bool>(true, false), !(!vec2<bool>(all(vec3<bool>(arg_2.a.c.b.x, arg_2.a.c.b.x, global1.b.x)), func_2(vec4<u32>(arg_1.x, arg_0, 14097u, 1u), arg_2))), all(vec4<bool>(false, !all(arg_2.a.c.b.zxz), !arg_2.b, !arg_2.b || !global1.b.x)));
    let var_1 = Struct_4(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(global1.a, 30915i, 0i)), vec3<i32>(1i, _wgslsmith_clamp_i32(countOneBits(-3731i), arg_2.a.a.x, global1.a), -2147483647i), arg_2.a.a), arg_2, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a, u_input.d.x, 0i, arg_2.a.a.x), vec4<i32>(u_input.c.x, arg_2.a.a.x, 1i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_2.a.a.x, global1.a, -6663i), _wgslsmith_mod_vec4_i32(vec4<i32>(21356i, u_input.c.x, global1.a, 21402i), vec4<i32>(2147483647i, -2147483647i, 32153i, global1.a)))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-454f)), _wgslsmith_f_op_f32(sign(-1976f)))))), arg_2.a.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-484f, global1.c, arg_2.c))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.c, 593f, 622f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1017f, global1.c, global1.c), vec3<f32>(global1.c, arg_2.c, 1097f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(911f, -2160f, 109f) - vec3<f32>(global1.c, arg_2.c, 1000f)))), vec3<bool>(true, true, var_0.x))));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -global1.a, -u_input.d.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.a, -19399i, u_input.d.x), vec3<i32>(global1.a, 48785i, -2147483647i) ^ vec3<i32>(u_input.b, -49515i, global1.a)), 19355i), ~(~vec4<i32>(0i, 2147483647i, global1.a, global1.a))), !global1.b, _wgslsmith_f_op_f32(global1.c * -652f));
    var var_0 = _wgslsmith_sub_u32(u_input.e.x, min(u_input.e.x, ~global2.x));
    global1 = Struct_1(-42244i, vec4<bool>(global1.b.x, all(vec2<bool>(true, true)), func_1(global2.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, 1u, 0u), vec4<u32>(global2.x, 0u, global2.x, 61891u)) % 32u), vec2<u32>(global2.x, u_input.a.x), Struct_3(Struct_2(vec3<i32>(global1.a, u_input.b, global1.a), vec4<u32>(32531u, 4294967295u, 11141u, global2.x), Struct_1(u_input.d.x, vec4<bool>(global1.b.x, false, true, true), -1854f), -1000f, global1.c), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -787f))), global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * global1.c));
    var_0 = global2.x;
    var var_1 = abs(u_input.e.wx >> (u_input.e.zx % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a.x, reverseBits(44968u), global2.x, ~_wgslsmith_mod_u32(global2.x, var_1.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.c), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(step(415f, global1.c)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c, -454f, global1.c, _wgslsmith_f_op_f32(global1.c + global1.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1120f, global1.c, global1.c, global1.c))))))))));
}

