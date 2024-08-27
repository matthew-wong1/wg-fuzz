struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    return 1f;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_5) -> bool {
    let var_0 = arg_2.a.a.a;
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.a.a.a, _wgslsmith_f_op_f32(func_2(vec2<i32>(0i, -33390i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_0), arg_1))), true));
    var var_3 = Struct_5(var_1.a);
    var var_4 = u_input.b.xz;
    return var_4.x <= select(var_4.x, 4294967295u, !(var_4.x > ~u_input.d));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(38713i, -1i, -1i);
    var_0 = arg_0;
    let var_1 = 19235i;
    var var_2 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, ~(-arg_0), arg_0, arg_0), -vec4<i32>(min(31039i, 0i), arg_0, ~966i, 1i), -select(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, -46447i, var_1, arg_0), vec4<i32>(arg_0, -2147483647i, var_1, var_1)), vec4<i32>(1i, 43117i, var_1, -8320i), select(vec4<bool>(false, arg_2.b, arg_2.b, true), vec4<bool>(arg_2.c.x, arg_2.b, arg_2.c.x, arg_2.c.x), arg_2.c.x))), ~(vec4<i32>(var_1, arg_0 & 5982i, var_1 >> (0u % 32u), i32(-1i) * -1i) & abs(min(vec4<i32>(-1269i, var_1, arg_0, -51647i), vec4<i32>(1i, arg_0, 37097i, 28607i)))), select(select(select(!vec4<bool>(arg_2.b, arg_2.b, arg_1.b.x, false), vec4<bool>(arg_2.b, true, false, arg_1.b.x), false), vec4<bool>(arg_1.b.x, all(vec3<bool>(false, arg_2.c.x, true)), arg_1.a > -1384f, false), !(arg_2.b | false)), vec4<bool>(arg_1.b.x, false, false, all(select(vec4<bool>(true, false, true, arg_1.b.x), vec4<bool>(arg_2.b, arg_1.b.x, true, true), arg_2.b))), (_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 12263i), vec2<i32>(var_1, -1594i)) <= var_1) | any(!arg_2.c)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f)), arg_1, !(!arg_2.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    var var_1 = _wgslsmith_f_op_f32(trunc(-1753f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(1436f))) + 478f)));
    var var_2 = Struct_1(625f, select(vec2<bool>(true, true), !vec2<bool>(true, all(vec2<bool>(false, true))), false));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1570f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(799f)))), func_1(var_2.a, _wgslsmith_f_op_f32(ceil(var_2.a)), Struct_5(Struct_4(Struct_1(var_2.a, var_2.b)))))) + _wgslsmith_div_f32(var_2.a, var_2.a)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-55524i, Struct_1(var_2.a, vec2<bool>(true, var_2.b.x)), Struct_3(vec4<u32>(4294967295u, 1u, 0u, 1u), var_2.b.x, vec3<bool>(true, true, false))))) + var_2.a) + _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -264f), 591f, true)))), select(var_2.b, var_2.b, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -707f, var_2.a, var_2.a)), abs(34581u), countOneBits(_wgslsmith_add_vec2_i32(~vec2<i32>(-32789i, 33054i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-16513i, 0i), vec2<i32>(-11114i, 3423i)))));
}

