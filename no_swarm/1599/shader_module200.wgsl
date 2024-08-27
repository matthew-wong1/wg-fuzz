struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1428f, -1035f, 373f));

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c.xwz;
    let var_1 = 31510u;
    var var_2 = ~u_input.c.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + global1.a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - -117f)))) * arg_0.a.x));
    var_0 = -250f;
    let var_1 = vec3<i32>(7593i, ~(~(u_input.b >> (_wgslsmith_mod_u32(4294967295u, 28659u) % 32u))), -10743i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(715f, 1195f, _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), select(select(arg_1.xxw, vec3<bool>(true, arg_1.x, false), arg_1.zwx), !vec3<bool>(arg_1.x, true, true), select(arg_1.xxw, vec3<bool>(arg_1.x, arg_1.x, false), false))))));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-378f)))), _wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1669f + global0.a.x))))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, ~_wgslsmith_dot_vec2_i32(u_input.a, var_1.yx) << (1u % 32u), arg_3.x ^ firstLeadingBit(-2147483647i)), min(var_1 ^ _wgslsmith_add_vec3_i32(-vec3<i32>(-32799i, 1i, var_1.x), arg_3.zwy), arg_3.zxw));
}

fn func_2() -> StorageBuffer {
    var var_0 = vec4<bool>(!((any(vec2<bool>(false, false)) & true) != true), func_3(Struct_1(vec3<f32>(global0.a.x, global1.a.x, global0.a.x)), vec4<bool>(true, true, true, true), Struct_1(global1.a), ~max(vec4<i32>(59326i, u_input.b, 2147483647i, -22688i), vec4<i32>(u_input.b, 23733i, -2147483647i, 1i))) <= 26528i, any(vec4<bool>(true, true, true, true)), true & any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))));
    let var_1 = -1557f;
    global2 = array<vec4<f32>, 13>();
    let var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(max(var_1, global0.a.x)))) - _wgslsmith_f_op_f32(min(130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) * _wgslsmith_f_op_f32(abs(-216f)))))), global1.a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0.a.x, global1.a.x)), 1406f, global1.a.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1796f, 1000f, var_1)))));
    return StorageBuffer(select(~2147483647i, ~_wgslsmith_add_i32(u_input.b << (0u % 32u), u_input.a.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(global0.a)));
    var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_div_f32(var_0.a.x, 1961f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1181f, 1002f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(var_1.a, var_0.a, vec3<bool>(true, !(global0.a.x < 206f), 18709i <= u_input.a.x))));
    let var_3 = ~select(_wgslsmith_mod_vec4_u32((u_input.c ^ vec4<u32>(2270u, u_input.c.x, 6037u, u_input.c.x)) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), reverseBits(u_input.c)), ~(reverseBits(vec4<u32>(45044u, 39895u, u_input.c.x, u_input.c.x)) << (u_input.c % vec4<u32>(32u))), select(true, false == (var_1.a.x == -1183f), all(vec3<bool>(false, true, true)) & true));
    var var_4 = var_2;
    let var_5 = !((func_1().a.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-428f, var_0.a.x))) | ((all(vec3<bool>(true, true, false)) && true) | (any(vec2<bool>(false, false)) && false)));
    var_4 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = func_2();
}

