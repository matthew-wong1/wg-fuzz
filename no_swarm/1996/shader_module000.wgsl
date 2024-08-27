struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    global0 = Struct_1(_wgslsmith_add_vec2_u32(global0.a, reverseBits(~vec2<u32>(global0.a.x, var_0)) & _wgslsmith_mult_vec2_u32(global0.a, ~global0.a)));
    var var_1 = u_input.b.x;
    let var_2 = u_input.d;
    var var_3 = Struct_1(~(~abs(reverseBits(global0.a))));
    return Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 44002u), _wgslsmith_mod_vec2_u32(select(var_3.a, var_3.a, true), global0.a)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(-_wgslsmith_mod_i32(firstTrailingBit(u_input.a), u_input.a));
    let var_1 = !(!vec3<bool>(any(vec4<bool>(false, true, true, false)), true, true));
    let var_2 = u_input.b.yz;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_4 = arg_3;
    return -1591f;
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(countOneBits(~global0.a), global0.a));
    var var_0 = abs(~_wgslsmith_div_u32(func_2().a.x, min(u_input.d, ~global0.a.x)));
    var_0 = u_input.d;
    let var_1 = _wgslsmith_mult_u32(select(4294967295u, ~min(1u, global0.a.x), any(vec4<bool>(true, true, true, true))) ^ ~(~u_input.d), global0.a.x);
    var var_2 = countOneBits(-vec4<i32>(0i, ~(~arg_0), u_input.b.x, -_wgslsmith_add_i32(arg_0, -1473i)));
    return Struct_1(global0.a & abs(vec2<u32>(global0.a.x, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = func_4(0i, _wgslsmith_f_op_f32(max(-959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(arg_0.a.x, 1u), Struct_1(vec2<u32>(global0.a.x, arg_0.a.x)), u_input.b, func_2())) - -857f))));
    global0 = Struct_1(var_0.a >> (arg_0.a % vec2<u32>(32u)));
    return max(~(arg_0.a.x << ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 71600u, arg_2.a.x, 0u), vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, 1u)) | ~18393u) % 32u)), ~var_0.a.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = any(select(select(vec3<bool>(all(vec3<bool>(false, false, true)), true, true), vec3<bool>(true, all(vec3<bool>(false, true, true)), arg_0.x < 5839u), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), select(vec3<bool>(all(vec3<bool>(true, false, false)), global0.a.x > 4294967295u, true), vec3<bool>(0u <= arg_1, true, arg_0.x > global0.a.x), vec3<bool>(true, true, true))));
    var_0 = !(!any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, false, true))));
    var_0 = true;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = all(var_1);
    return Struct_1(abs(~vec2<u32>(10015u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8582u;
    global0 = func_5(~vec4<u32>(u_input.d ^ 24096u, _wgslsmith_sub_u32(abs(0u), func_1(Struct_1(vec2<u32>(1u, u_input.d)), Struct_1(global0.a), Struct_1(vec2<u32>(u_input.d, global0.a.x)), 51844u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), vec3<u32>(4294967295u, 1u, 1u)), ~(global0.a.x ^ 1u)), max(global0.a.x, abs(4905u)));
    let var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~(~37697i), 1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, u_input.b.x), countOneBits(1i)), countOneBits(1i)), countOneBits(u_input.c));
    global0 = func_4(2147483647i, 1f);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, reverseBits(abs(2147483647i) << (global0.a.x % 32u))), u_input.b.xx);
    var_2 = min(-27996i, _wgslsmith_div_i32(var_1, countOneBits(firstLeadingBit(-u_input.c.x))));
    var var_3 = Struct_1(~_wgslsmith_sub_vec2_u32(global0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x, u_input.d), vec2<u32>(u_input.d, 1u))) ^ vec2<u32>(global0.a.x, u_input.d));
    var_0 = _wgslsmith_sub_u32(global0.a.x, var_3.a.x);
    let var_4 = ~vec4<u32>(u_input.d, 38530u, max(u_input.d, _wgslsmith_add_u32(u_input.d, firstLeadingBit(4294967295u))), var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(~1u), 41618u), _wgslsmith_sub_vec2_u32(vec2<u32>(~34286u, min(4531u, 0u)), var_3.a)), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(-3564i, var_1, 2147483647i, -31532i), u_input.c, false) | abs(vec4<i32>(74940i, 0i, 2147483647i, -511i))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-11664i, 69079i, u_input.b.x, var_1), vec4<i32>(2147483647i, var_1, 12946i, u_input.b.x), vec4<i32>(2147483647i, -2147483647i, u_input.b.x, var_1))) << (var_4 % vec4<u32>(32u))), -406f, ~var_3.a, _wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.c.wyz, reverseBits(vec3<i32>(1i, var_1, u_input.b.x))), vec3<i32>(_wgslsmith_sub_i32(1i, 19170i), 23494i, 21176i), -_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(var_1, -53919i, 0i), u_input.c.xxx))));
}

