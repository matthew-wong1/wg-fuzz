struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = global0.b;
    var var_1 = abs(global0.a);
    var var_2 = min(-(~max(vec2<i32>(global0.a, 77703i), vec2<i32>(25824i, 7057i)) | vec2<i32>(abs(u_input.b), u_input.b)), vec2<i32>(~_wgslsmith_add_i32(u_input.b, 0i), reverseBits(-40945i) << (~u_input.c.x % 32u)) >> (u_input.c % vec2<u32>(32u)));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), firstLeadingBit(20432u) | reverseBits(u_input.a.x), 3835u);
    return all(select(select(global0.b.yxw, select(global0.b.zwx, global0.b.yyy, !var_0.x), global0.b.x), vec3<bool>(global0.b.x, select(true, var_0.x, var_0.x || false), true), global0.b.yzy));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 39508i), -vec2<i32>(global0.a, -17064i)), vec4<bool>(!global0.b.x, func_3() && any(!vec4<bool>(false, false, global0.b.x, true)), true, false));
    global0 = Struct_1(-2147483647i, vec4<bool>(any(!select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), false)), select(global0.b.x, global0.b.x, _wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(arg_0.x, arg_0.x, arg_0.x)) < _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(4294967295u, u_input.c.x))), ~58058u <= _wgslsmith_dot_vec2_u32(u_input.a.wz << (vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u)), select(vec2<u32>(1u, 119943u), arg_0, false)), true));
    global1 = array<Struct_2, 23>();
    return Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-1i, 3164i)), _wgslsmith_mod_vec2_i32(select(-vec2<i32>(0i, 1265i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-41002i, -1i)), false), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(global0.a, global0.a)), -vec2<i32>(2147483647i, 14605i)))), select(global0.b, global0.b, any(vec4<bool>(func_3(), global0.b.x, true, true))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    global0 = func_2(select(min(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, arg_0.c), vec2<u32>(u_input.c.x, arg_0.c)), select(u_input.c, vec2<u32>(4294967295u, arg_0.c), true)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 31133u), vec2<u32>(u_input.c.x, arg_0.c))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, arg_0.c) >> (vec2<u32>(121602u, 0u) % vec2<u32>(32u)), ~u_input.c, ~u_input.a.ww) & vec2<u32>(16814u, arg_0.c), arg_0.b.x));
    let var_0 = Struct_2(func_2(u_input.c), select(global0.b.wyx, func_2(u_input.a.xz & vec2<u32>(51550u, 4294967295u)).b.ywz, global0.b.xyy), countOneBits(1u));
    var var_1 = func_2(vec2<u32>(arg_0.c, abs(select(40196u, 4294967295u, true) | ~1u)));
    global0 = Struct_1(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.a, 0i), abs(2147483647i))) >> (_wgslsmith_clamp_u32(min(4294967295u, ~1u), ~arg_0.c, ~var_0.c) % 32u), global0.b);
    let var_2 = Struct_2(var_0.a, !select(vec3<bool>(var_0.a.b.x, !global0.b.x, true), func_2(vec2<u32>(arg_0.c, var_0.c)).b.xzy, true), 7037u);
    return ~var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 749f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1586f, -799f)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(max(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-18847i, u_input.b, global0.a), -4448i, max(-1i, -1i)), _wgslsmith_div_i32(firstLeadingBit(u_input.b), _wgslsmith_mod_i32(2147483647i, global0.a))), -22403i, global0.a), vec3<i32>(func_1(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))), global0.a, -global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(2929f)), -1619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1098f))), -213f, ~65246u);
}

