struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1279f, false, vec4<f32>(849f, 1116f, 1985f, 230f), Struct_2(-1486f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = min(~(~(~(arg_1.e.xz >> (arg_1.b % vec2<u32>(32u))))), arg_1.e.xw);
    var var_1 = !vec2<bool>((global0.b | true) | !global0.b, global0.b);
    global0 = Struct_3(global0.d.a, any(!(!(!vec4<bool>(false, var_1.x, global0.b, global0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, global0.a, -1003f, -655f), _wgslsmith_f_op_vec4_f32(sign(global0.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + global0.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1232f, 482f, arg_1.a.x, -959f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, -1936f, arg_0, arg_3.a) * vec4<f32>(arg_0, -646f, 1500f, -296f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, global0.d.a, 736f, 324f)))))), arg_3);
    var var_2 = Struct_3(global0.a, true & (_wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -370f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(global0.a + 237f), _wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(step(global0.d.a, arg_0))) * global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.c), global0.c, select(vec4<bool>(var_1.x, var_1.x, global0.b, false), vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(global0.b, false, true, false)))) * global0.c)), Struct_2(arg_1.a.x));
    let var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(22260i, _wgslsmith_add_i32(-arg_2.x >> (arg_1.b.x % 32u), var_0.x)), -vec2<i32>(1i, -7191i));
    return _wgslsmith_div_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 92420u, 41158u, arg_1.b.x), vec4<u32>(4294967295u, arg_1.b.x, 38266u, arg_1.b.x))), firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1.b << (vec2<u32>(arg_1.b.x, 0u) % vec2<u32>(32u)), arg_1.b))) < arg_1.b.x;
}

fn func_2() -> i32 {
    let var_0 = 607f;
    global0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1431f), any(vec2<bool>(true, global0.b || true)), global0.c, global0.d);
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * -1603f)))) + var_0), global0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1451f)), var_0))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1126f * _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(sign(global0.a)))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3581f + -2172f) * _wgslsmith_f_op_f32(-1101f * global0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(811f, 198f, func_3(-302f, Struct_1(vec2<f32>(var_0, -1000f), vec2<u32>(0u, 31312u), vec3<i32>(u_input.a.x, 1i, 1i), u_input.a.x, vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.a.x)), vec4<i32>(u_input.a.x, 52044i, 1i, -20996i), Struct_2(var_0)))), 344f), _wgslsmith_f_op_f32(-var_0)), global0.c);
    global0 = Struct_3(var_1.x, false, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d.a))), var_1.x)), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-651f, -1432f)) - _wgslsmith_f_op_f32(max(var_0, global0.a)))), _wgslsmith_f_op_f32(-var_0)), Struct_2(global0.d.a));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = -vec2<i32>(~1i, abs(2147483647i));
    let var_1 = global0.d;
    let var_2 = arg_0.a.x;
    global0 = Struct_3(1675f, !all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, global0.b), vec3<bool>(global0.b, global0.b, false))), _wgslsmith_f_op_vec4_f32(ceil(global0.c)), global0.d);
    var var_3 = _wgslsmith_f_op_f32(var_2 * var_2);
    return select(vec2<bool>(true, select(true, !all(vec2<bool>(global0.b, global0.b)), func_2() == arg_0.e.x)), select(!vec2<bool>(global0.b, var_1.a < var_1.a), vec2<bool>(false, global0.b), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, global0.b);
    var_0 = select(select(!vec2<bool>(false & global0.b, any(vec3<bool>(true, false, false))), vec2<bool>(var_0.x, true), !(!(!vec2<bool>(false, var_0.x)))), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-569f, 410f), vec2<f32>(364f, global0.a)) + _wgslsmith_f_op_vec2_f32(-global0.c.wz)), vec2<u32>(~0u, 4294967295u), abs(vec3<i32>(27332i, u_input.a.x, 2147483647i)), -31147i, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-45184i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 53603i, 1i, u_input.a.x), vec4<i32>(20128i, -20659i, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, -15469i, u_input.a.x, -31768i)))), ~abs(vec3<u32>(4294967295u, 1u, 6418u))), global0.b);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(global0.d.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(645f, 1127f)) - 1308f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.a))))))), all(vec3<bool>((global0.d.a <= global0.a) && true, !global0.b, func_3(-1780f, Struct_1(global0.c.xx, vec2<u32>(15763u, 41478u), u_input.a, 1i, vec4<i32>(u_input.a.x, 106596i, 631i, 37414i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(global0.d.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) * global0.c), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(select(-1376f, _wgslsmith_f_op_f32(max(global0.d.a, global0.a)), global0.b)))));
    var_0 = select(vec2<bool>(!var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1218f))) < -796f), !vec2<bool>(global0.b, var_1.b), global0.b);
    var_1 = Struct_3(global0.c.x, true, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.a, -370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a)), _wgslsmith_f_op_f32(round(global0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-606f + global0.d.a), global0.d.a, _wgslsmith_f_op_f32(abs(-246f)), _wgslsmith_f_op_f32(-var_1.a)))), var_1.d);
    var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a - 271f))))), global0.b, global0.c, Struct_2(global0.a));
    let var_2 = 614f;
    var var_3 = 1000f;
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))) + _wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(global0.a * var_1.d.a))), 293f), var_1.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.a - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2665f), 1503f, _wgslsmith_f_op_f32(-308f + var_2)) - var_1.c), global0.c)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2)) + 164f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.c.wy))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a)), var_2) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1611f)) + _wgslsmith_f_op_f32(var_1.c.x + var_2))));
}

