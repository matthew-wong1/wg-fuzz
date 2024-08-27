struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = u_input.a;
    let var_1 = global0.a;
    global0 = Struct_3(Struct_2(vec2<bool>(true, all(select(global0.d, vec3<bool>(false, global0.b, global0.d.x), vec3<bool>(global0.b, var_1.a.x, true)))), vec2<f32>(global0.a.c.a, -594f), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -861f))), u_input.c, abs(vec4<i32>(global0.c.c.x, -8779i, var_1.c.c.x, u_input.a))), var_1.d, var_1.e), all(select(!vec4<bool>(global0.d.x, var_1.a.x, false, var_1.a.x), !vec4<bool>(true, var_1.a.x, global0.d.x, global0.d.x), !(!vec4<bool>(global0.b, var_1.a.x, false, global0.d.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)), _wgslsmith_f_op_f32(-var_1.b.x), var_1.a.x)), arg_0.b.x, vec4<i32>(-1i) * -var_1.c.c), select(global0.d, !(!select(vec3<bool>(true, var_1.a.x, var_1.a.x), global0.d, vec3<bool>(true, false, true))), global0.d.x));
    global0 = Struct_3(global0.a, var_1.a.x, Struct_1(-915f, arg_0.b.x, _wgslsmith_mult_vec4_i32(vec4<i32>(-var_1.c.c.x, var_0, ~global0.c.c.x, _wgslsmith_div_i32(u_input.a, global0.c.c.x)), vec4<i32>(-var_1.e.x, ~var_0, var_0 >> (4294967295u % 32u), ~var_1.e.x))), !(!(!global0.d)));
    var var_2 = ~_wgslsmith_clamp_i32(-2147483647i, ~(~2147483647i), abs(0i));
    return _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.c), global0.c.b), 65487u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(min(global0.c.b, arg_0.b.x), 0u, ~15542u), abs(vec3<u32>(global0.a.d.x, global0.a.c.b, 32032u)))) | ~vec3<u32>(~(~global0.c.b), 0u, var_1.d.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>) -> i32 {
    let var_0 = global0.c.c.xwy;
    var var_1 = global0.a.c;
    let var_2 = _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.a.d.x, global0.a.c.b), func_3(arg_0, vec2<i32>(var_0.x, -1i))), abs(select(vec3<u32>(u_input.c, global0.a.d.x, 0u), vec3<u32>(var_1.b, var_1.b, arg_0.b.x), vec3<bool>(false, true, global0.d.x)))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, var_1.b, u_input.c), firstLeadingBit(vec3<u32>(4294967295u, u_input.c, 71578u))) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 25169u, u_input.b), vec4<u32>(arg_0.b.x, global0.c.b, global0.c.b, global0.c.b)) % 32u), 8122u, 41706u));
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i) | ~var_0.yy, firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, -2147483647i), var_1.c.xy))), vec2<i32>(min(reverseBits(global0.a.c.c.x), firstTrailingBit(-29711i)), min(var_0.x, global0.c.c.x) >> (u_input.c % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = false || !global0.a.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a + -483f), _wgslsmith_f_op_f32(trunc(-362f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1237f) * _wgslsmith_div_f32(global0.c.a, _wgslsmith_f_op_f32(min(397f, -680f)))));
    let var_2 = ~reverseBits(1u);
    var var_3 = global0.a.c;
    var var_4 = func_2(Struct_4(global0.a.c.a, global0.a.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.b.x, 1054f)))))));
    return global0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = Struct_3(Struct_2(global0.d.zy, _wgslsmith_f_op_vec2_f32(exp2(global0.a.b)), func_1(), firstLeadingBit(_wgslsmith_mult_vec2_u32(select(vec2<u32>(25290u, global0.a.d.x), global0.a.d, global0.b), vec2<u32>(u_input.c, 76471u))), _wgslsmith_add_vec3_i32(abs(global0.a.c.c.yzw ^ vec3<i32>(global0.a.c.c.x, u_input.a, global0.a.c.c.x)), abs(vec3<i32>(-24930i, global0.a.e.x, 34959i)))), false, global0.a.c, vec3<bool>(!global0.a.a.x, true, all(select(select(global0.d, global0.d, false), select(vec3<bool>(global0.b, global0.d.x, global0.d.x), global0.d, false), any(global0.d)))));
    let var_1 = ~u_input.c;
    let var_2 = select(select(global0.d.xx, vec2<bool>(select(!global0.d.x, true, global0.d.x), all(!global0.d)), global0.d.zz), vec2<bool>(~_wgslsmith_mod_u32(4576u, 26680u) > ~(13931u | u_input.c), (!global0.b | false) & true), all(vec3<bool>(true, true, global0.a.a.x | global0.d.x)));
    var var_3 = any(select(vec2<bool>(all(select(global0.a.a, vec2<bool>(true, true), var_2.x)), !all(vec3<bool>(false, false, false))), var_2, vec2<bool>(_wgslsmith_f_op_f32(-global0.c.a) != _wgslsmith_f_op_f32(max(global0.a.c.a, global0.c.a)), any(select(var_2, var_2, global0.a.a.x)))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.b.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, var_4.a, var_4.a) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-601f, -2025f, global0.c.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.a, var_4.a, 519f))))))), 0i, ~global0.a.c.c.x);
}

