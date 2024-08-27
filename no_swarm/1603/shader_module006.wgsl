struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<bool> {
    var var_0 = vec3<bool>(global0.x, true, !all(vec3<bool>(u_input.b.x != -2147483647i, true, any(vec2<bool>(true, global0.x)))));
    global0 = !(!(!vec3<bool>(true, global0.x, false)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, u_input.c.x, u_input.c.x, 1u), vec4<u32>(1u, arg_1, 0u, u_input.c.x), vec4<u32>(arg_1, 1u, u_input.a.x, 4294967295u)), u_input.a, var_0.x), (u_input.a & vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 260u)) & vec4<u32>(91645u, u_input.a.x, 2706u, arg_1)), u_input.a);
    global0 = vec3<bool>(true, !global0.x, all(!vec3<bool>(true, true, all(vec3<bool>(true, var_0.x, global0.x)))));
    var_1 = 4294967295u;
    return !select(!vec3<bool>(true, true, -742f <= arg_0), !(!vec3<bool>(var_0.x, false, false)), false);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: i32) -> vec2<f32> {
    global0 = !select(vec3<bool>(false, all(!vec4<bool>(arg_0.x, false, global0.x, arg_0.x)), true), select(vec3<bool>(arg_0.x, false || arg_0.x, any(vec4<bool>(false, global0.x, arg_2.b.b, arg_2.d.a))), arg_0, select(func_3(arg_2.a, 0u), func_3(1002f, arg_2.d.c), all(arg_0.xy))), false);
    var var_0 = any(!global0.zz);
    var_0 = true;
    var_0 = ~arg_1.x >= arg_2.b.c.c;
    let var_1 = global0.yz;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a), -556f));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_2.xy;
    let var_1 = u_input.b.xz;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(361f, 1044f)) - _wgslsmith_f_op_f32(step(532f, -390f))), _wgslsmith_f_op_f32(round(1128f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, var_0.x, arg_1.x), arg_1.x), ~vec2<u32>(u_input.c.x, 63926u), Struct_3(1120f, Struct_2(var_1, arg_1.x, Struct_1(arg_1.x, var_1.x, arg_0, true, -1i), u_input.b.x, u_input.b), 911f, Struct_1(arg_1.x, -2147483647i, u_input.a.x, true, var_1.x)), u_input.b.x)))));
    return Struct_2(min(select(~u_input.b.yy, max(vec2<i32>(-2147483647i, 27642i), var_1), !arg_1) << (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)), ~(-(vec2<i32>(-12705i, var_1.x) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))))), !(u_input.c.x < _wgslsmith_sub_u32(~arg_0, ~4099u)), Struct_1(global0.x, firstTrailingBit(1i), 1u, false, var_1.x), -u_input.b.x, _wgslsmith_sub_vec3_i32(-select(u_input.b, vec3<i32>(-24660i, var_1.x, u_input.b.x) ^ vec3<i32>(u_input.b.x, 0i, 39492i), false), vec3<i32>(abs(u_input.b.x), -2147483647i, countOneBits(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~1u, select(global0.xy, !select(vec2<bool>(global0.x, global0.x), !vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), !global0.xx), vec3<bool>(true, global0.x | (_wgslsmith_dot_vec3_i32(vec3<i32>(-26030i, 0i, -13591i), u_input.b) >= 2147483647i), false));
    var var_1 = Struct_2(vec2<i32>(1i, min(2147483647i, ~_wgslsmith_div_i32(u_input.b.x, 32276i))), global0.x, func_1(u_input.a.x, select(!global0.zx, global0.yx, var_0.c.a), !(!vec3<bool>(var_0.b, true, false))).c, _wgslsmith_div_i32(1i, 1i), -u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_1.c.c, var_0.c.c)), u_input.a.zxx >> (~vec3<u32>(var_0.c.c, var_0.c.c, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_sub_u32(var_1.c.c, firstLeadingBit(var_1.c.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(var_0.b, var_1.b, false), vec2<u32>(u_input.c.x, var_1.c.c), Struct_3(382f, Struct_2(var_1.e.yx, var_0.b, var_1.c, 2147483647i, var_0.e), 1548f, var_0.c), -1i)).x) - -1000f))), 4294967295u);
}

