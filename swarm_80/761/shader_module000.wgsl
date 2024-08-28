struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global0 = arg_1;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(722f, _wgslsmith_f_op_f32(-arg_1.c.x), global0.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)));
    let var_1 = vec3<bool>(!arg_1.a, global0.a, !global0.a);
    return true;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = ~4294967295u;
    global0 = Struct_1(global0.a != func_3(vec4<i32>(-6373i, global0.b, -2147483647i, u_input.a), Struct_1(!global0.a, ~2147483647i, _wgslsmith_f_op_vec2_f32(-global0.c))), _wgslsmith_add_i32(1i, select(-global0.b, ~1i, true)), vec2<f32>(-128f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x))))));
    var_0 = ~0u;
    global0 = Struct_1(all(vec3<bool>(true, true, !global0.a)) & global0.a, global0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.c)) * _wgslsmith_f_op_vec2_f32(floor(global0.c))))));
    let var_1 = vec2<i32>(133i, ~abs(u_input.a));
    return Struct_1(global0.a || global0.a, 1i, vec2<f32>(global0.c.x, global0.c.x));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(~vec3<u32>(1u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-269f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.c.x, -712f)))));
    let var_2 = ~vec4<u32>(4294967295u, ~abs(1u), ~firstLeadingBit(24394u), 16311u);
    var var_3 = _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, -19355i, u_input.a), vec3<i32>(29985i, global0.b, 40975i) >> (vec3<u32>(82653u, 4294967295u, var_2.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(1i, u_input.a, var_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, -28852i, -56153i), vec3<i32>(var_0.b, -1i, global0.b)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 1i) | _wgslsmith_mod_vec3_i32(vec3<i32>(50278i, 36926i, 0i), vec3<i32>(u_input.a, global0.b, global0.b)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, var_0.b), var_0.b >> (var_2.x % 32u), firstLeadingBit(u_input.a))), u_input.a, u_input.a));
    var var_4 = global0.c.x;
    return Struct_1(global0.a, func_2(var_2.xxz).b, _wgslsmith_f_op_vec2_f32(-var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, 1i, 1i), u_input.a) <= -1939i, ~global0.b, _wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(_wgslsmith_f_op_f32(-1000f + func_1().c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(100f)) * _wgslsmith_f_op_f32(f32(-1f) * -577f)))));
    global0 = Struct_1(false, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.c))));
    var var_0 = global0.c.x;
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1().c - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(global0.c, global0.c)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(544f, global0.c.x), global0.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(_wgslsmith_add_u32(83994u, 1u))), abs(abs(_wgslsmith_mult_u32(11867u, 17509u) & _wgslsmith_dot_vec3_u32(vec3<u32>(1740u, 1u, 78904u), vec3<u32>(1u, 48766u, 0u)))));
}

