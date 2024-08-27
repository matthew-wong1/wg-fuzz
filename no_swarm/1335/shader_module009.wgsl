struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 1i, -37460i, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<u32> {
    return ~vec3<u32>(_wgslsmith_div_u32(u_input.c << (u_input.e.x % 32u), max(17136u, 0u)) << (firstLeadingBit(abs(u_input.c)) % 32u), ~2187u, 498u);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    global0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 44972u, arg_3), vec3<u32>(90517u, arg_3, 24967u)), ~abs(vec3<u32>(arg_3, 1u, arg_3))), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, arg_3, 18380u)), vec3<u32>(4294967295u, 4294967295u, arg_3) | ~vec3<u32>(arg_3, u_input.e.x, 5005u)));
    var var_0 = Struct_2(vec3<f32>(463f, _wgslsmith_div_f32(634f, arg_2.x), _wgslsmith_f_op_f32(floor(-202f))), select(~abs(u_input.e), ~vec2<u32>(4735u, arg_3), select(global1.a.x, global1.a.x, arg_1)), !arg_0, Struct_1(global1.a, vec4<i32>(u_input.a, -global1.b.x, max(u_input.d.x, _wgslsmith_div_i32(u_input.b, global1.b.x)), abs(global1.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.x)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c), u_input.e ^ u_input.e)));
    global0 = 53832u;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-649f, arg_2.d))))))), _wgslsmith_f_op_f32(f32(-1f) * -529f));
    global0 = u_input.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2105f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1273f)))))) - -1584f);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = global1.b;
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(!(!global1.a.x), all(!arg_1.yyz), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, arg_0, 507f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 447f, 1003f, arg_0)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -481f, -753f, -384f), vec4<f32>(arg_0, -1202f, arg_0, 681f)))), !global1.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(52856u, 1u, 1u), func_2()))), true, Struct_3(_wgslsmith_div_i32(1i, 3051i), vec4<f32>(107f, -248f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1156f + -148f), -121f), _wgslsmith_f_op_f32(-1592f + _wgslsmith_div_f32(-1901f, -1068f))), _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, arg_3.x), global1.b.xxw), vec3<i32>(var_0.x, arg_3.x, -1i) & var_0.wxw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -662f)))));
    var_0 = ~vec4<i32>(1i, -_wgslsmith_dot_vec4_i32(global1.b, global1.b) >> ((u_input.c ^ ~1u) % 32u), u_input.d.x, u_input.d.x);
    var var_2 = vec3<i32>(var_0.x, reverseBits(1i), -2147483647i);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -1064f, _wgslsmith_f_op_f32(f32(-1f) * -299f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -972f), arg_1.x & true))), ~vec2<u32>(~u_input.e.x, ~_wgslsmith_clamp_u32(0u, u_input.e.x, 29435u)), ~u_input.e.x <= 35430u, Struct_1(!global1.a, vec4<i32>((i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), vec3<u32>(67394u, 28446u, 36682u)) % 32u), _wgslsmith_dot_vec4_i32(abs(global1.b), ~global1.b), max(_wgslsmith_add_i32(arg_3.x, 2147483647i), 36456i), arg_3.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.x))) + _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.a.x, 368f), _wgslsmith_f_op_f32(func_4(var_3.a.x, true, Struct_3(arg_3.x, vec4<f32>(3399f, arg_0, arg_0, arg_0), var_0.xww, -296f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-102f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-680f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(727f, vec4<bool>(true, false, true, false), vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.d.x, global1.b.x)))))), _wgslsmith_f_op_f32(-1228f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-855f - -688f))), 957f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -323f))), -1332f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-var_0.x), true, Struct_3(u_input.a, vec4<f32>(849f, 1133f, 478f, -790f), vec3<i32>(-1i, global1.b.x, global1.b.x), 1980f)))) - _wgslsmith_f_op_f32(f32(-1f) * -384f)), -1000f);
    var var_1 = 1u;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-612f, 705f, var_0.x, var_0.x), vec4<f32>(var_0.x, -783f, var_0.x, 1892f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, 642f, 518f, 1139f) * vec4<f32>(var_0.x, -974f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(select(146f, var_0.x, true))), _wgslsmith_f_op_f32(max(-132f, -1025f)), _wgslsmith_f_op_f32(round(-608f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1052f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-707f, var_0.x, 1842f, var_0.x), vec4<f32>(var_0.x, -1187f, 1206f, -696f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1363f, 138f, var_0.x))))));
    var_1 = u_input.e.x;
    global1 = Struct_1(global1.a, -min(global1.b, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -7196i, global1.b.x, -30501i), vec4<i32>(51786i, u_input.d.x, global1.b.x, global1.b.x), global1.b), reverseBits(global1.b))));
    global0 = ~u_input.c;
    global1 = Struct_1(select(global1.a, !(!select(vec2<bool>(global1.a.x, false), vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(global1.a.x, true))), global1.a.x), -select(~global1.b | ~global1.b, _wgslsmith_div_vec4_i32(global1.b, select(global1.b, vec4<i32>(u_input.a, u_input.a, 2147483647i, -33230i), vec4<bool>(global1.a.x, global1.a.x, true, false))), vec4<bool>(false, u_input.c >= 1u, true, select(global1.a.x, global1.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(u_input.e.x, 18490u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-1f), -256f)), vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 932f)))));
}

