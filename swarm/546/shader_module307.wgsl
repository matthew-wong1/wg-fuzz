struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1103f)))));
    var var_1 = arg_2.d.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1903f, arg_2.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, 667f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(851f, global0.x) * vec2<f32>(global0.x, 387f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1493f, 2405f) - vec2<f32>(849f, global0.x))) - vec2<f32>(_wgslsmith_f_op_f32(843f + arg_2.e), arg_2.b)));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-arg_2.c));
    return 7646u;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<i32> {
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - arg_0.a), global0.x), _wgslsmith_f_op_f32(-arg_0.a));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1075f + arg_0.a), _wgslsmith_f_op_f32(trunc(-122f))))));
    global1 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(arg_0.a - global0.x);
    var_0 = global0.x;
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(countOneBits(u_input.a.x), ~u_input.b), _wgslsmith_mult_i32(~u_input.b, ~0i)), u_input.a, ~_wgslsmith_mod_vec2_i32(u_input.a | u_input.a, max(u_input.a, vec2<i32>(-42172i, u_input.a.x)))) >> (select(abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), ~vec2<u32>(arg_1.x, arg_1.x))), abs(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.wx, arg_1.wy), vec2<u32>(arg_1.x, u_input.c))), vec2<bool>(true, true)) % vec2<u32>(32u));
}

fn func_2() -> f32 {
    let var_0 = -select(~func_3(Struct_3(global0.x, 0u), ~vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), abs(~vec2<i32>(u_input.a.x, -1i)), vec2<bool>(true, true));
    let var_1 = all(vec3<bool>(!all(vec2<bool>(true, true)), true, false));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(1u ^ ~_wgslsmith_div_u32(u_input.c, u_input.c));
    let var_1 = global1[_wgslsmith_index_u32(var_0, 10u)];
    let var_2 = global1[_wgslsmith_index_u32(25089u, 10u)];
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1056f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.c.e, var_2.b.c)), 211f))), ~(~select(func_1(-283f, 0i, Struct_1(20918u, 673f, var_2.b.e, var_2.b.d, var_2.b.b)), _wgslsmith_add_u32(0u, var_0), var_1.c.d.x)));
    let var_4 = firstLeadingBit(abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(40596u, 26133u), ~var_0, _wgslsmith_div_u32(var_3.b, 4294967295u))) & 4294967295u);
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(919f - 942f))) * _wgslsmith_div_f32(-183f, _wgslsmith_f_op_f32(-var_2.b.c))), _wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(-820f - global0.x)))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.b.c * var_1.b.c), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2()) >= -1783f)), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -(~24782i & ~u_input.b) & -u_input.a.x);
}

