struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = global0.c;
    var var_1 = firstTrailingBit(~countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5476u), vec2<u32>(var_0.x, var_0.x)), global0.d.x >> (1u % 32u), min(4294967295u, arg_0.d.x), ~global0.c.x)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a - var_2.a))), _wgslsmith_f_op_f32(sign(-687f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1056f, 105f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1037f, -103f) * vec2<f32>(206f, global0.a)))))))));
    return vec2<bool>(var_2.b.x, true);
}

fn func_4(arg_0: vec2<bool>) -> bool {
    var var_0 = global0.c << (global0.c % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, -369f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1062f, global0.a)), true))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(274f, -361f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(204f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(global0.a)), global0.b, global0.c, vec2<u32>(~var_0.x, 0u));
    var var_4 = select(var_3.b, vec2<bool>(true, global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.a, var_1.x)) - -182f) + -929f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1217f)), var_1.x)));
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(-global0.a))))), vec2<bool>(func_4(func_3(Struct_1(-116f, global0.b, vec3<u32>(global0.d.x, global0.d.x, global0.c.x), vec2<u32>(global0.c.x, global0.d.x)))), true | global0.b.x), global0.c, ~_wgslsmith_mult_vec2_u32(~global0.c.xz, vec2<u32>(global0.d.x, ~0u)));
    let var_1 = vec2<i32>(u_input.a, ~_wgslsmith_sub_i32(1i, -u_input.a | -148i));
    var_0 = Struct_1(global0.a, vec2<bool>(all(var_0.b), var_0.c.x <= global0.c.x), abs(vec3<u32>(~31358u, global0.d.x, var_0.d.x)) >> (vec3<u32>(var_0.c.x, _wgslsmith_div_u32(var_0.d.x, var_0.c.x >> (var_0.d.x % 32u)), ~firstTrailingBit(var_0.c.x)) % vec3<u32>(32u)), _wgslsmith_clamp_vec2_u32(var_0.d, max(max(firstLeadingBit(var_0.d), vec2<u32>(0u, 4294967295u)), vec2<u32>(countOneBits(global0.c.x), reverseBits(38055u))), firstLeadingBit(vec2<u32>(var_0.d.x, _wgslsmith_div_u32(global0.c.x, global0.d.x)))));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_f_op_f32(min(-815f, var_0.a))), !select(var_0.b, !func_3(Struct_1(global0.a, var_0.b, var_0.c, vec2<u32>(35323u, var_0.c.x))), true), max(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(21971u, var_0.c.x), vec2<u32>(0u, global0.c.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0.c.x, var_0.c.x, global0.c.x), ~vec4<u32>(20592u, global0.d.x, global0.c.x, var_0.d.x)), ~(~85312u)), global0.c), var_0.c.yz);
    var var_2 = var_1.x;
    return ~25211u;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    global0 = arg_0;
    var var_0 = Struct_1(arg_0.a, arg_0.b, ~select(max(vec3<u32>(4294967295u, arg_0.d.x, global0.c.x) << (vec3<u32>(global0.c.x, global0.d.x, 41255u) % vec3<u32>(32u)), arg_0.c ^ vec3<u32>(6u, 20525u, global0.c.x)), vec3<u32>(~59027u, func_2(), min(arg_0.d.x, arg_0.d.x)), !all(arg_0.b)), ~(~(~vec2<u32>(arg_0.d.x, 4294967295u))) | ~(~global0.d));
    let var_1 = vec4<i32>(max(firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), vec4<i32>(-10004i, 2147483647i, u_input.a, u_input.a))), -4412i, ~min(0i, reverseBits(u_input.a)), 2147483647i) | firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-1i, u_input.a), -2147483647i, u_input.a, -42692i), select(vec4<i32>(95312i, u_input.a, u_input.a, -11744i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_0.b.x, arg_1, var_0.b.x, arg_0.b.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(48488u, 4294967295u, 70684u, 6865u), vec4<u32>(var_0.c.x, 0u, var_0.d.x, arg_0.c.x)) % vec4<u32>(32u))));
    return StorageBuffer(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1157f, _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(794f, _wgslsmith_f_op_f32(global0.a * var_0.a), arg_0.a, _wgslsmith_f_op_f32(3297f - 1876f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(-947f, global0.b, global0.c, reverseBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(global0.d), _wgslsmith_div_vec2_u32(global0.c.zy, vec2<u32>(4294967295u, 4294967295u))))), true);
}

