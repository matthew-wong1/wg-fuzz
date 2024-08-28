struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 1u, vec2<i32>(-58278i, i32(-2147483648)), vec4<u32>(1u, 13749u, 4294967295u, 1u));

var<private> global1: vec3<u32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global1.x, global1.x, 1u), arg_1) ^ global0.d)), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u << (u_input.b.x % 32u), global0.a | 0u), ~select(u_input.b.x, u_input.b.x, true), ~0u, 3497u));
    global0 = Struct_1(1u, reverseBits(u_input.b.x), vec2<i32>(reverseBits(1i), i32(-1i) * -(i32(-1i) * -5258i)), countOneBits(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, 0u, 4294967295u, 36117u), vec4<u32>(global1.x, 38641u, global1.x, 41658u)), var_0, select(vec4<bool>(false, true, false, arg_2.x), vec4<bool>(arg_2.x, false, true, true), vec4<bool>(true, arg_2.x, false, arg_2.x)))));
    global0 = Struct_1(firstLeadingBit(global0.a), ~61492u, ~(~select(vec2<i32>(19881i, 21401i), ~global0.c, true)), global0.d | abs(~global0.d));
    global0 = Struct_1(arg_1.x, 1u, vec2<i32>(-2147483647i, max(-2147483647i, global0.c.x)), var_0);
    let var_1 = abs(0u);
    return min(_wgslsmith_mod_u32(2482u, _wgslsmith_add_u32(arg_0.x, _wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_add_u32(global0.d.x, global1.x)))), ~(~(~_wgslsmith_div_u32(global0.b, 86906u))));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = ~vec2<u32>(~_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), 39831u);
    global1 = ~vec3<u32>(4294967295u, ~func_3(select(vec3<u32>(var_0.x, 4294967295u, global0.a), vec3<u32>(global0.d.x, global1.x, 4294967295u), vec3<bool>(false, false, true)), ~vec4<u32>(17143u, global0.a, var_0.x, global1.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x & 4294967295u, ~34179u), 16859u));
    global1 = select(vec3<u32>(22263u, _wgslsmith_add_u32(global1.x, ~var_0.x), _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), u_input.b, ~(i32(-1i) * -2147483647i) >= -(u_input.a >> (var_0.x % 32u))) | global0.d.wyx;
    let var_1 = !select(vec3<bool>(true, true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))), select(vec3<bool>(arg_0 >= 1u, true, true), vec3<bool>(true, true, any(vec2<bool>(false, true))), true), ~28106u < ~_wgslsmith_sub_u32(global0.b, 1u));
    var var_2 = Struct_1(1u, 21373u | func_3(select(global0.d.zyy, ~vec3<u32>(52247u, 16274u, arg_0), true), vec4<u32>(u_input.b.x, ~global0.d.x, _wgslsmith_clamp_u32(1u, 55681u, 1u), _wgslsmith_mult_u32(arg_0, 4294967295u)), var_1.xz), ~_wgslsmith_div_vec2_i32(-vec2<i32>(44419i, global0.c.x), firstLeadingBit(-vec2<i32>(1i, global0.c.x))), global0.d);
    return var_2.d.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(global0.d, global0.d), ~(func_2(59647u) & _wgslsmith_mult_u32(u_input.b.x, 36188u)), global0.c, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, global0.d.x, 0u), global0.d) & global0.d));
    var var_0 = 1u;
    var var_1 = global0.d;
    var_0 = ~4294967295u;
    var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(global1.x, 0u, global0.b) ^ vec3<u32>(56301u, var_1.x, 39301u)), vec3<u32>(reverseBits(75116u), 92706u, ~var_1.x)), ~((u_input.b & u_input.b) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, var_1.x), vec3<u32>(2732u, 21644u, var_1.x)) % vec3<u32>(32u)))), ~firstTrailingBit(countOneBits(~vec3<u32>(0u, arg_0, global0.b))));
    return Struct_2(reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -11524i, u_input.a), vec3<i32>(global0.c.x, 1i, global0.c.x))) | _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 64053i, 0i), vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(1i, 10346i, u_input.a)) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -31273i, global0.c.x), vec3<i32>(-27653i, -16497i, 1i)), (vec3<i32>(u_input.a, 41564i, 2147483647i) << (vec3<u32>(global1.x, var_1.x, 36732u) % vec3<u32>(32u))) ^ (vec3<i32>(-1i, global0.c.x, u_input.a) >> (global0.d.wwy % vec3<u32>(32u)))), select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), false), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(false, true, false)), vec2<bool>(any(vec4<bool>(true, true, false, false)), true)), !all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f - 238f) + _wgslsmith_f_op_f32(step(1873f, -2115f))), -603f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~19407u));
    var_0 = func_1(global0.b);
    var var_1 = Struct_1(global1.x, ~1u, global0.c, global0.d);
    let var_2 = -1i;
    global0 = Struct_1(_wgslsmith_add_u32(1u, ~_wgslsmith_mult_u32(~var_1.a, 50263u)), abs(firstTrailingBit(0u)), ~(~var_0.a.xz), select(~(~global0.d) << (max(vec4<u32>(0u, 23879u, global1.x, global0.b) >> (var_1.d % vec4<u32>(32u)), select(var_1.d, var_1.d, var_0.b.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(48489u, global0.b), _wgslsmith_sub_u32(54161u, global0.d.x), 4294967295u, ~u_input.b.x), true));
    var var_3 = _wgslsmith_mod_u32(9796u, var_1.b ^ 52438u);
    let var_4 = Struct_1(_wgslsmith_dot_vec3_u32(var_1.d.wwz, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(global0.d.zyx, u_input.b, var_0.b.x), ~vec3<u32>(0u, global0.d.x, 13512u)), global0.d.yxy)), select(~0u, ~58837u, var_0.b.x), var_1.c, vec4<u32>(1u, 0u & abs(max(u_input.b.x, 39495u)), ~global1.x, firstTrailingBit(min(global0.b << (global1.x % 32u), 4294967295u))));
    global1 = var_1.d.zxz;
    var_0 = Struct_2(~(vec3<i32>(var_2, 1i, _wgslsmith_mult_i32(11518i, var_2)) ^ abs(var_0.a)), !vec2<bool>(all(select(var_0.b, var_0.b, false)), var_0.b.x), 937f);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(_wgslsmith_add_u32(abs(2076u), _wgslsmith_add_u32(10858u, 52168u)), 23859u, ~global0.d.x), _wgslsmith_mod_vec3_u32(~u_input.b | firstTrailingBit(var_4.d.yzy), countOneBits(_wgslsmith_mult_vec3_u32(global0.d.xwy, vec3<u32>(global0.b, 89687u, 0u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, var_0.c)))) - _wgslsmith_f_op_f32(func_1(global0.b).c - var_0.c)), func_2(_wgslsmith_add_u32(~var_1.a ^ ~var_4.d.x, ~countOneBits(68716u))), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) + 653f) - _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(1580f - var_0.c)))), abs(vec2<i32>(-1i) * -vec2<i32>(var_4.c.x, -6406i)));
}

