struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(455f, 305f, -1000f);

var<private> global1: i32;

var<private> global2: f32 = -785f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = true;
    let var_1 = (_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, 41102i, 0i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, u_input.c, u_input.d.x, -1i), max(vec4<i32>(arg_1.a, 13291i, -34733i, arg_1.a), vec4<i32>(-1i, u_input.c, u_input.d.x, u_input.d.x)))) | ~(~min(vec4<i32>(u_input.c, 1i, u_input.d.x, u_input.d.x), vec4<i32>(-35341i, 0i, arg_1.a, u_input.c)))) | max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -31501i, 58943i) & -vec4<i32>(u_input.c, 22720i, u_input.c, u_input.c), select(vec4<i32>(-2147483647i, u_input.c, arg_1.a, 22518i), vec4<i32>(-3974i, arg_1.a, u_input.c, arg_1.a), true) >> (vec4<u32>(arg_0, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(abs(~vec4<i32>(u_input.d.x, -37734i, 33741i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, arg_1.a), vec4<i32>(arg_1.a, 0i, u_input.d.x, 2147483647i), vec4<i32>(-24832i, -52541i, u_input.c, arg_1.a)) ^ abs(vec4<i32>(arg_1.a, u_input.c, u_input.d.x, 0i))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), arg_1.b.x)), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = arg_1;
    var_0 = (firstTrailingBit(_wgslsmith_mod_u32(0u, 4294967295u) ^ _wgslsmith_mod_u32(1u, arg_0)) > u_input.b.x) | false;
    return !(!select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), false)));
}

fn func_2() -> Struct_2 {
    let var_0 = !(true || !((u_input.a.x | u_input.a.x) != u_input.b.x));
    let var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, -191f) - vec3<f32>(1373f, 2528f, 621f)))))));
    var var_2 = Struct_1(-2147483647i, vec3<f32>(-674f, 1f, global0.x));
    let var_3 = 194f;
    global1 = select(var_1.a & (u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)), -23054i, any(select(func_3(u_input.a.x, var_1), select(!vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), all(vec3<bool>(false, false, var_0))), !vec2<bool>(false, var_0))));
    return Struct_2(firstLeadingBit(abs(select(vec4<u32>(6945u, 0u, 4294967295u, 4294967295u) & vec4<u32>(48261u, 0u, 55649u, u_input.b.x), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, u_input.a.x)), all(vec2<bool>(true, false))))), var_1, var_3, ~u_input.c);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1817f, 1483f, global0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(777f, 662f, 599f), vec3<f32>(global0.x, global0.x, global0.x)) + vec3<f32>(-1397f, global0.x, global0.x))))));
    let var_0 = 0i << (1u % 32u);
    global1 = ~max(~(52379i >> ((arg_2 | 52583u) % 32u)), -1i);
    var var_1 = func_2();
    var var_2 = func_2().b;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-267f + global0.x), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.a.x, u_input.d.x, u_input.a.x, vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(215f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, global0.x, 423f)))), vec3<bool>(true, true, true))));
    global1 = 0i;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f * var_0.b.x) + -219f)))));
    var var_1 = 4294967295u;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-548f - -426f), _wgslsmith_f_op_f32(global0.x + var_0.b.x))))) * var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz, u_input.a.x, _wgslsmith_f_op_f32(sign(-1000f)), var_0.b.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2057f, -1680f) * -185f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x * -557f))), -298f));
}

