struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    var var_0 = Struct_3(Struct_1(~13277u, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1157f, 500f, arg_2.d.x, -2110f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.c, arg_1.c.c))), arg_2.c.xzy), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_2.c.ywy))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)))), Struct_1(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2.a, 1u), 4294967295u) == ~4371u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), -192f, _wgslsmith_f_op_f32(arg_1.a.c.x + arg_1.c.d.x), _wgslsmith_f_op_f32(-1111f - arg_2.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.d.x, arg_1.a.d.x, 399f)), vec3<f32>(arg_2.c.x, arg_1.b.x, -113f)))), ~abs(28854u), max(arg_1.e, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, arg_3.x), -arg_3.x)));
    let var_1 = Struct_2(false);
    var var_2 = arg_1;
    let var_3 = Struct_4(arg_1.c, Struct_2(arg_0.x), _wgslsmith_mult_u32(~var_2.a.a, ~countOneBits(11160u)), false);
    let var_4 = ~vec2<u32>(arg_2.a, select(1u, 0u, var_0.a.b));
    return ~arg_3.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = vec3<f32>(107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(596f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-671f - 231f), -639f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1768f) + _wgslsmith_f_op_f32(max(-961f, -1125f))))), 1f);
    let var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(-_wgslsmith_div_i32(-40755i, arg_0), 1i), -_wgslsmith_sub_i32(func_3(vec3<bool>(arg_1.a, arg_1.a, true), Struct_3(Struct_1(67361u, false, vec4<f32>(1000f, var_0.x, -268f, -214f), vec3<f32>(-424f, 236f, var_0.x)), vec3<f32>(650f, var_0.x, -1154f), Struct_1(4631u, true, vec4<f32>(var_0.x, var_0.x, var_0.x, 1468f), vec3<f32>(643f, var_0.x, 947f)), 46010u, arg_0), Struct_1(1u, arg_1.a, vec4<f32>(var_0.x, -257f, var_0.x, var_0.x), vec3<f32>(var_0.x, 458f, -1673f)), abs(vec3<i32>(2147483647i, arg_0, 38366i))), select(min(-56987i, arg_0), 2147483647i, !arg_1.a)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(436f, var_0.x))) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) + _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(sign(-230f)), _wgslsmith_f_op_f32(f32(-1f) * -782f)) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(var_0.x, 706f))))), -878f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_div_f32(195f, var_0.x))))));
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = Struct_1(21065u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(410u, 1u, 18628u), vec3<u32>(14580u, 58148u, 58284u)), _wgslsmith_mult_u32(4294967295u, 0u)) <= 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2((u_input.b ^ u_input.a.x) ^ u_input.a.x, Struct_2(any(vec3<bool>(false, arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-792f, arg_1), _wgslsmith_f_op_f32(select(2578f, -293f, arg_0)))), 657f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -541f, 1354f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(153f, arg_1)) * _wgslsmith_div_f32(-436f, -1073f)) == -174f)));
    var var_1 = var_0.a;
    let var_2 = var_0.c.x;
    let var_3 = Struct_1(var_0.a, !arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_0.c, vec4<f32>(var_2, 400f, var_2, -675f))), var_0.c, any(vec3<bool>(false, arg_0, false)))), var_0.c), var_0.c)), _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d), vec3<f32>(var_0.c.x, var_2, 124f)))));
    var var_4 = Struct_2(all(!vec3<bool>(true, arg_0, var_0.b)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = -413f;
    global0 = all(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(func_1(false, -1427f), true, true)));
    var var_2 = Struct_2(true);
    var_0 = 10598u;
    var var_3 = 1u;
    var_0 = 0u;
    var_1 = -976f;
    let var_4 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1149f) - vec2<f32>(-281f, 689f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f))))));
}

