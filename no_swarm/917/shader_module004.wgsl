struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(477f, 511f), vec2<f32>(775f, 339f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1906f, -1485f), vec2<f32>(203f, -306f)), false)))), ~(~_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), ~2147483647i)), arg_0);
    let var_1 = var_0.d.x;
    let var_2 = var_0.a.zyy;
    global0 = array<vec4<f32>, 23>();
    var var_3 = all(arg_0.xyw);
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_4(-1974f);
    var var_1 = _wgslsmith_add_u32(~4294967295u, 62088u);
    let var_2 = !(1u >= ~arg_1);
    var var_3 = arg_0.b.d.zw;
    var_3 = select(!vec2<bool>(!arg_2.x, !arg_0.d), arg_0.b.d.yw, vec2<bool>(!func_3(select(vec4<bool>(var_3.x, arg_2.x, false, var_2), vec4<bool>(false, arg_2.x, false, arg_2.x), var_2), ~vec3<i32>(1i, arg_0.b.c, 1i)), false));
    return var_0.a;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> f32 {
    var var_0 = Struct_1(vec4<f32>(arg_0.a.a.x, 1766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1234f + -1270f)) - arg_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -2541f)))), arg_0.a.a.xx, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.a.c, arg_0.a.c, arg_1.b), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b, 0i, 10662i), vec3<i32>(2147483647i, -27240i, 30348i), vec3<i32>(arg_1.b, -34778i, 1i))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a.x)) <= 151f, !arg_1.a.d.x, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.a.d.x, arg_0.a.d.x, arg_1.a.d.x, true), arg_0.a.d, arg_0.a.d.x), true)), arg_0.a.d.x));
    global0 = array<vec4<f32>, 23>();
    var var_1 = Struct_5(arg_1.a, var_0.c);
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(124f * arg_0.a.a.x))))), -426f, _wgslsmith_f_op_f32(step(arg_0.a.b.x, _wgslsmith_f_op_f32(func_2(Struct_3(vec3<f32>(var_1.a.b.x, arg_1.a.b.x, 1207f), Struct_1(vec4<f32>(arg_1.a.b.x, arg_1.a.b.x, -590f, arg_0.a.b.x), var_1.a.b, var_1.a.c, var_0.d), false, true), ~1u, var_1.a.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-732f, -148f))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-684f))))), _wgslsmith_f_op_f32(-276f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_3(var_1.a.a.yxy, var_1.a, false, var_1.a.d.x), u_input.b.x, vec4<bool>(true, var_0.d.x, false, var_0.d.x))))))), var_0.c, !select(!(!vec4<bool>(var_0.d.x, arg_1.a.d.x, true, false)), vec4<bool>(select(arg_1.a.d.x, true, arg_0.a.d.x), false, true, arg_1.a.c > var_0.c), !(arg_1.a.d.x && arg_0.a.d.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) * arg_1.a.b.x) - arg_0.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-390f, 1747f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) * _wgslsmith_f_op_f32(func_1(Struct_5(Struct_1(global0[_wgslsmith_index_u32(71843u, 23u)], vec2<f32>(-1357f, -389f), -2147483647i, vec4<bool>(false, true, false, false)), -5926i), Struct_5(Struct_1(vec4<f32>(912f, -1000f, -497f, 1266f), vec2<f32>(1080f, 1471f), -3548i, vec4<bool>(false, true, true, false)), 20320i)))), 160f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1442f, -1026f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1966f, 1939f, -240f) - vec3<f32>(-346f, 1000f, -369f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-256f, -488f, -216f) * vec3<f32>(-894f, -879f, -1408f)))))));
    var var_1 = 0i;
    var_1 = ~(-48545i);
    var var_2 = global0[_wgslsmith_index_u32(~u_input.a, 23u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -871f))))), _wgslsmith_div_f32(-1176f, _wgslsmith_f_op_f32(func_1(Struct_5(Struct_1(vec4<f32>(var_2.x, var_2.x, var_2.x, var_0.x), vec2<f32>(619f, var_0.x), 2147483647i, vec4<bool>(false, true, false, true)), 1i), Struct_5(Struct_1(vec4<f32>(378f, 494f, 632f, var_0.x), var_0.zx, -30455i, vec4<bool>(false, true, true, false)), ~1829i)))), -1853f, -1309f);
    let var_4 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, var_2.x, -158f, var_2.x)) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.b.x), vec3<u32>(1u, 4013u, u_input.a)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) | vec3<u32>(0u, 26247u, u_input.a)), 23u)]), vec2<f32>(var_0.x, var_3.x), 1i, select(vec4<bool>(true, false, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))), -60410i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2468f - _wgslsmith_f_op_f32(f32(-1f) * -1243f))));
}

