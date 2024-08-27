struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 17537i;

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_4 {
    global0 = -74049i;
    return Struct_4(506f, (0i < -global1.c.x) || true, vec2<i32>(4094i, ~_wgslsmith_add_i32(u_input.e.x, global1.c.x & global1.c.x)), vec3<bool>(global1.e.a, global1.e.a, true), global1.e);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = arg_2 & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, arg_2), ~vec4<u32>(4294967295u, 44317u, arg_2, arg_2)), arg_2), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, ~arg_2), reverseBits(_wgslsmith_mod_u32(arg_2, arg_2)), 3180u));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.e, reverseBits(u_input.e)), true, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, global1.c.x, 1i, -1i)), vec4<i32>(global1.c.x, ~arg_1, arg_1, ~arg_1)) >> (select(~(~vec4<u32>(60269u, arg_0.x, u_input.b.x, arg_2)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, arg_2, 23779u, arg_0.x), vec4<u32>(4294967295u, 0u, arg_2, 53091u)), global1.b) % vec4<u32>(32u)));
    global1 = func_2();
    let var_2 = global1.e;
    global0 = func_2().c.x;
    return u_input.d.yy;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = (arg_1 | u_input.a) | u_input.a;
    global0 = 8913i;
    var var_1 = min(u_input.a.x, i32(-1i) * -2147483647i);
    global0 = 1i;
    global0 = u_input.a.x;
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-673f, 611f) - _wgslsmith_f_op_f32(global1.a + -469f)))), _wgslsmith_f_op_f32(trunc(1017f)))), any(global1.d), var_0 << (~func_3(u_input.d, ~arg_1.x, u_input.b.x << (u_input.d.x % 32u), u_input.e.zy) % vec2<u32>(32u)), !vec3<bool>(!arg_0.a, global1.e.a, any(!vec2<bool>(global1.e.a, global1.b))), Struct_3(!(!(!arg_0.a))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> bool {
    let var_0 = func_2();
    global1 = func_4(Struct_3(all(!vec2<bool>(global1.d.x, global1.d.x)) && !any(vec2<bool>(false, var_0.e.a))), _wgslsmith_div_vec2_i32(global1.c, u_input.e.zx) << (((func_3(arg_1, global1.c.x, arg_1.x, global1.c) >> (vec2<u32>(70996u, 0u) % vec2<u32>(32u))) << ((arg_1.xy & ~u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * func_4(Struct_3(true), u_input.e.zx).a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f - var_0.a)))), global1.a, _wgslsmith_div_f32(1234f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.a)), 204f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(abs(-292f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-179f, var_0.a, global1.a, global1.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-722f, -229f, global1.a, var_0.a), vec4<f32>(-1579f, -938f, global1.a, global1.a), true))), true)) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-var_0.a), all(var_0.d.yx))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(trunc(-143f))), _wgslsmith_f_op_f32(trunc(var_0.a)))));
    let var_2 = true;
    var var_3 = global1.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(vec4<bool>(!global1.b | all(vec2<bool>(true, false)), !(!global1.e.a), any(vec4<bool>(true, true, false, false)), true && select(global1.d.x, true, true))), select(any(select(vec3<bool>(global1.b, global1.e.a, global1.e.a), vec3<bool>(false, false, global1.d.x), global1.b)) == global1.d.x, func_1(~u_input.b.x | _wgslsmith_mod_u32(u_input.d.x, 115791u), ~select(u_input.d, u_input.d, false)), global1.b && (0u >= (u_input.b.x << (u_input.c % 32u)))));
    let var_1 = global1.e;
    global0 = u_input.a.x;
    let var_2 = !func_4(Struct_3(true), vec2<i32>(u_input.a.x, global1.c.x)).d.xx;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, -510f), -152f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a)) + _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(-global1.a)), global1.a, global1.a));
    let var_4 = Struct_1(-u_input.a.x, !(u_input.b.x >= _wgslsmith_mult_u32(~u_input.d.x, ~4294967295u)), abs(vec4<i32>(i32(-1i) * -1i, ~0i, _wgslsmith_dot_vec2_i32(u_input.e.yx, vec2<i32>(u_input.a.x, 1i)), -2147483647i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 48838u, u_input.b.x, u_input.c), reverseBits(vec4<u32>(41060u, 0u, 4294967295u, u_input.c)), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 67889u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-2147483647i, 1i ^ ~(-global1.c.x)), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a - -620f), -708f)))));
}

