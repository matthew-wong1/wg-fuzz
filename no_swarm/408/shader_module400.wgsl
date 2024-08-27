struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec4<f32>(-992f, -838f, -339f, 1137f), false, true, -147f), vec2<bool>(true, false), Struct_1(false, vec4<f32>(490f, 705f, 972f, 2041f), false, false, -1388f));

var<private> global2: vec3<u32> = vec3<u32>(67137u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = global0.c.a;
    var var_1 = !arg_1.zwx;
    let var_2 = Struct_3(select(var_1.yy, !arg_1.yx, any(!select(arg_1.xwx, arg_1.zyw, false))), -1250f, arg_0 == 20521i, 835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.a.b.x, global1.a.e)), -1059f))))));
    let var_3 = _wgslsmith_div_f32(global1.a.b.x, global1.a.b.x);
    var var_4 = u_input.a.xzy;
    return !vec2<bool>(global0.c.c, var_3 != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.b.x))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    global0 = Struct_4(global2.yy, global0.b, Struct_3(vec2<bool>(all(vec3<bool>(arg_1.b.d, arg_0.b.c, global0.c.a.x)), !(!global1.a.a)), 1587f, any(!vec4<bool>(arg_1.b.d, true, true, global0.d.a)) & arg_0.b.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.b.x - global1.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(971f - global1.a.e) - _wgslsmith_f_op_f32(sign(arg_0.c.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b.x * arg_1.b.b.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d.e), 918f)))), Struct_1(func_1(-u_input.b.x, select(select(vec4<bool>(arg_1.b.c, true, false, global0.d.a), vec4<bool>(global0.d.c, arg_0.b.d, global1.c.c, false), false), select(vec4<bool>(arg_1.b.d, false, global0.c.c, false), vec4<bool>(global0.c.a.x, true, global0.b.c, true), vec4<bool>(true, global1.c.c, arg_1.b.c, false)), all(vec4<bool>(true, true, arg_0.b.a, arg_1.d.d)))).x, global0.d.b, arg_1.c.a.x, global1.c.a, global0.b.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.e, global0.e, -1i, arg_1.e) ^ vec4<i32>(arg_0.e, arg_0.e, arg_1.e, arg_1.e)) >> (~u_input.a % vec4<u32>(32u)), ~countOneBits(vec4<i32>(2147483647i, u_input.b.x, arg_0.e, arg_1.e)) << (vec4<u32>(1u, firstTrailingBit(65184u), 4294967295u, ~arg_0.a.x) % vec4<u32>(32u))));
    var var_0 = false;
    let var_1 = global0.b;
    var var_2 = Struct_2(Struct_1(global1.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.b.x, global1.c.e, arg_1.c.b, 1000f))), all(select(vec4<bool>(global1.b.x, global1.b.x, arg_0.d.a, true), vec4<bool>(global1.c.c, var_1.a, arg_1.c.c, var_1.a), true)), all(func_1(2147483647i, !vec4<bool>(false, true, arg_0.c.a.x, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1176f)))), vec2<bool>(true, false), Struct_1(!global0.c.a.x, arg_0.d.b, false, all(vec4<bool>(arg_0.c.c, true || arg_1.d.c, any(vec3<bool>(var_1.d, global0.d.d, global0.d.c)), arg_1.c.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-721f + _wgslsmith_f_op_f32(global1.a.e - -747f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.d - 934f), _wgslsmith_f_op_f32(-var_1.e), false))))));
    var var_3 = Struct_2(arg_1.d, !vec2<bool>(!arg_1.c.c, true), var_2.c);
    return global0.b.d;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.b.x), vec3<i32>(global0.e, global0.e, u_input.d))), -2147483647i) ^ -global0.e, ~(~global0.e), 54650i);
    return Struct_2(global1.c, vec2<bool>(!(!global0.c.a.x), func_3(Struct_4(global2.zz, Struct_1(false, global1.a.b, global0.c.a.x, false, arg_0.b), Struct_3(vec2<bool>(false, global1.c.d), -507f, true, 134f, global1.c.b.x), global0.b, -u_input.c.x), Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2.x), u_input.a.yy), Struct_1(false, global1.a.b, true, true, 596f), Struct_3(vec2<bool>(false, global1.b.x), -242f, global0.c.a.x, arg_0.d, -858f), global0.d, 2147483647i))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(global0.c, func_1(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(29644i, -37460i, 43643i, -1i), vec4<i32>(22008i, -1i, -1i, global0.e)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 37442i, global0.e), vec3<i32>(u_input.d, 38709i, global0.e))), vec4<bool>(true, global0.b.c, global1.c.a, true)));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.c.x << (max(1u, u_input.a.x) % 32u)) << (global0.a.x % 32u), vec2<u32>(abs(u_input.a.x) | 62657u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(u_input.a.x, 4294967295u, 67163u, global2.x)), u_input.a)), 1794f);
}

