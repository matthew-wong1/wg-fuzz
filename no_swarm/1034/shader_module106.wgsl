struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1326f;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = 0i;
    global1 = Struct_1(global1.a, ~vec2<u32>(41654u, _wgslsmith_mult_u32(16073u, 0u)) >> (~vec2<u32>(arg_0, 42416u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - 1000f), _wgslsmith_div_vec3_f32(global1.d, vec3<f32>(global1.c, _wgslsmith_f_op_f32(step(-710f, arg_3.b)), -771f)));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, -1317f)))), global1.b, 431f, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(global1.c * arg_3.b)))), _wgslsmith_f_op_f32(-global1.c), 722f));
    let var_1 = arg_3.b;
    var var_2 = global1.b.x;
    return var_1;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> i32 {
    global1 = arg_0.b;
    global0 = -1000f;
    global1 = Struct_1(global1.a, reverseBits(~(~(~arg_0.b.b))), 378f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(0u, vec4<i32>(7965i, 0i, u_input.b, -1i), vec2<i32>(-1i, u_input.a.x), Struct_3(-59135i, -1225f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-541f, arg_0.b.c)) + 670f)), -1281f));
    return _wgslsmith_dot_vec3_i32(~((vec3<i32>(-75034i, u_input.b, u_input.a.x) | vec3<i32>(2147483647i, 42290i, -1i)) & vec3<i32>(u_input.b, 18258i, -u_input.b)), ~(~vec3<i32>(max(u_input.a.x, 2147483647i), i32(-1i) * -38777i, -2147483647i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1413f)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_div_f32(global1.c, -1206f)))));
    var var_1 = abs(119529u) < u_input.c;
    var var_2 = _wgslsmith_div_i32(27122i, _wgslsmith_sub_i32(abs(~(i32(-1i) * -13193i)), -u_input.b));
    let var_3 = vec3<bool>(true, _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-var_0)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1263f - 2244f))))), true);
    var var_4 = arg_1;
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(-1120f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(var_4.b * -430f))))), _wgslsmith_f_op_f32(select(arg_1.b, 1000f, var_3.x)));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(func_2(Struct_2(Struct_1(vec2<f32>(982f, global1.a.x), vec2<u32>(7439u, u_input.d), -277f, global1.d), Struct_1(vec2<f32>(global1.d.x, -322f), global1.b, global1.c, vec3<f32>(-773f, 1149f, 293f)), vec2<f32>(global1.c, global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - global1.d.x))), u_input.a.x, -_wgslsmith_clamp_i32(-2147483647i & u_input.b, arg_0, reverseBits(u_input.b)), ~(~u_input.b)), Struct_3(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), global1.a.x))));
    var var_1 = -arg_0;
    var var_2 = Struct_4(Struct_3(-1i >> (_wgslsmith_clamp_u32(u_input.c, 45666u, max(1u, global1.b.x)) % 32u), _wgslsmith_f_op_f32(350f - -322f)), select(select(vec3<bool>(true, true, true), vec3<bool>(-1i > arg_0, false, global1.a.x <= 759f), true), vec3<bool>(false, true, all(vec3<bool>(true, true, true))), !vec3<bool>(all(vec2<bool>(true, false)), true, true)), -(i32(-1i) * -(arg_0 | u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.xy, vec2<f32>(global1.a.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(291f, global1.c)))), any(vec4<bool>(true, true, true, false)) && any(vec3<bool>(true, false, false)))), ~countOneBits(countOneBits(global1.b)), _wgslsmith_f_op_vec3_f32(func_4(u_input.a, Struct_3(u_input.a.x, _wgslsmith_f_op_f32(sign(2050f))))).x, var_0));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, -658f) * _wgslsmith_f_op_f32(func_3(~(var_2.d.b.x | var_2.d.b.x), ~(~vec4<i32>(var_2.a.a, var_2.a.a, var_2.a.a, -2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_0), u_input.a.xw), Struct_3(var_2.c, _wgslsmith_f_op_f32(max(var_0.x, var_2.a.b)))))), -213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(min(228f, _wgslsmith_f_op_f32(min(var_2.a.b, -125f)))))), var_0.x);
    let var_4 = u_input.a.zwx;
    return -28494i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.d.xx - vec2<f32>(1265f, 1000f)), _wgslsmith_f_op_vec2_f32(sign(global1.d.xz)), 2147483647i <= u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, -788f) * vec2<f32>(global1.a.x, global1.a.x))))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1608f)), _wgslsmith_f_op_f32(global1.a.x * global1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.d.x, global1.c, false)))))), vec2<i32>(-10881i, -func_1(-2147483647i ^ u_input.a.x)));
}

