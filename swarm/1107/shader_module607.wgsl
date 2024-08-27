struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(-2330i, 0i, 632i));

var<private> global1: Struct_4 = Struct_4(Struct_3(true, vec3<f32>(-1035f, -1784f, 1746f), vec4<i32>(71067i, 145i, 2147483647i, -1i), vec3<i32>(21189i, -20543i, 30609i), Struct_1(vec2<i32>(23059i, 2147483647i))), true, 1992i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    global1 = Struct_4(global1.a, 29291i <= arg_1.x, -1i);
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(global1.a.b.yz - global1.a.b.xx);
    var var_2 = global0.a.x;
    var var_3 = u_input.b <= _wgslsmith_add_u32(arg_2, 47805u);
    return global0.a;
}

fn func_1(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_2(select(~global1.a.c.xzw, ~abs(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.x, 60142i, 0i), arg_0.a.c.wzz)), !(!select(vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.b), vec3<bool>(true, global1.a.a, global1.a.a), vec3<bool>(global1.b, global1.b, true)))));
    global0 = var_0;
    let var_1 = ~vec3<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, ~u_input.b), u_input.b), 50610u);
    var var_2 = u_input.b;
    let var_3 = 25879i;
    return func_2(!all(!(!vec2<bool>(global1.b, arg_0.a.a))), firstLeadingBit(global0.a.xx), 34871u, var_0);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    global0 = Struct_2(vec3<i32>(10888i, abs(abs(u_input.a.x >> (34936u % 32u))), _wgslsmith_sub_i32((arg_2.a.x | 19945i) ^ -54565i, min(0i, arg_0.x))));
    global0 = Struct_2(arg_0);
    global1 = Struct_4(global1.a, true, i32(-1i) * -1362i);
    global1 = Struct_4(global1.a, false, arg_2.a.x);
    let var_0 = Struct_4(Struct_3(global1.a.b.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) + _wgslsmith_f_op_f32(-global1.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.a.b)) - global1.a.b)), -(vec4<i32>(arg_2.a.x, global1.a.c.x, arg_2.a.x, global1.c) ^ vec4<i32>(0i, -1i, global1.a.c.x, u_input.a.x)) & global1.a.c, (vec3<i32>(-1i) * -global0.a) & global1.a.d, Struct_1(global1.a.d.zx >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(arg_1, arg_1)) % vec2<u32>(32u)))), arg_2.a.x < _wgslsmith_sub_i32(-(u_input.a.x | arg_0.x), 0i), ~(_wgslsmith_mult_i32(0i, abs(-47784i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, global0.a.x, 0i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 36167i, global1.a.e.a.x, 2147483647i), global1.a.c))));
    return Struct_4(global1.a, all(vec2<bool>(true, true)) & (any(!vec4<bool>(true, false, false, var_0.a.a)) & true), -139i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_3(func_1(Struct_4(Struct_3(global1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, global1.a.b.x, 499f) * vec3<f32>(507f, global1.a.b.x, 337f)), vec4<i32>(-2147483647i, 0i, -6197i, global1.a.c.x), vec3<i32>(global1.a.c.x, global1.c, u_input.a.x), global1.a.e), any(!vec4<bool>(true, false, global1.b, global1.a.a)), -firstTrailingBit(-2147483647i))), ~11868u, Struct_2(vec3<i32>(global1.c, global0.a.x, 14410i)));
    global0 = Struct_2(vec3<i32>(~_wgslsmith_div_i32(u_input.a.x, global1.c), -26431i, ~u_input.a.x));
    let var_0 = func_3(vec3<i32>(~2147483647i, ~(-1i), ~(-14853i) & -firstLeadingBit(global0.a.x)), ~u_input.b, Struct_2(global1.a.c.ywz));
    var var_1 = Struct_3(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, -1000f, global1.a.b.x))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(510f, -837f), -644f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1112f)))), _wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x)), !(!(!vec3<bool>(true, global1.b, var_0.a.a))))), func_3(vec3<i32>(global0.a.x, min(-global0.a.x, abs(global0.a.x)), -(5497i >> (u_input.b % 32u))), u_input.b, Struct_2(global0.a)).a.c, vec3<i32>(-53850i, _wgslsmith_clamp_i32(~(~var_0.c), global1.c ^ global1.a.d.x, ~_wgslsmith_clamp_i32(21304i, 1i, u_input.a.x)), 0i), Struct_1(func_3(~global0.a ^ -vec3<i32>(global0.a.x, -3029i, u_input.a.x), ~_wgslsmith_add_u32(u_input.b, u_input.b), Struct_2(~vec3<i32>(-2147483647i, var_0.a.d.x, 50579i))).a.e.a));
    var var_2 = -_wgslsmith_mult_i32(~var_1.e.a.x, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(var_0.a.b.xz)), _wgslsmith_f_op_vec2_f32(floor(var_1.b.yx)), all(vec3<bool>(false, true, global1.b)))))), vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 10719u, u_input.b, 17250u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(73938u, u_input.b, 4294967295u)), vec3<u32>(u_input.b, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 51388u, u_input.b)), abs(1079u) & (u_input.b >> (1u % 32u)), 45008u, ~u_input.b), ~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)) >> (vec4<u32>(9400u, 16279u, u_input.b >> (u_input.b % 32u), 21641u) % vec4<u32>(32u))));
}

