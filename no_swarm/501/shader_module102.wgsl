struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, true, false, true, true, false, false, true, true, true, false, true, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(arg_0.x, 1u, 1u), 25885u), ~633u), vec3<i32>(1i, reverseBits(countOneBits(-2147483647i)), 70364i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x))))));
    global0 = array<bool, 14>();
    var var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, ~select(arg_0, arg_0, vec4<bool>(global0[_wgslsmith_index_u32(19507u, 14u)], false, arg_1.c.x, global0[_wgslsmith_index_u32(37993u, 14u)]))), ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, u_input.a, var_0.a), vec4<u32>(7297u, 0u, 30599u, 26991u)))), ~(-var_1.b & -vec3<i32>(667i, -1i, var_0.b.x)) | firstTrailingBit(var_1.b), -880f);
    var_1 = Struct_1(arg_0.x, vec3<i32>(var_0.b.x, var_0.b.x, _wgslsmith_mod_i32(-2147483647i, ~(-2147483647i))), 212f);
    return countOneBits(1u);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = array<bool, 14>();
    let var_0 = func_3(~(~vec4<u32>(14347u, 19798u, arg_1, arg_1) | vec4<u32>(49292u, u_input.a, u_input.a, 4294967295u)), Struct_3(vec2<f32>(arg_0.c, arg_0.c), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 14u)]), select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(7598u, 14u)], global0[_wgslsmith_index_u32(arg_1, 14u)]), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(select(14994u, arg_0.a, global0[_wgslsmith_index_u32(30502u, 14u)]), 14u)]), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(22015u, 14u)])))) & ~0u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c))))), vec2<bool>(select(true, true, global0[_wgslsmith_index_u32(40402u, 14u)]), !global0[_wgslsmith_index_u32(abs(var_0), 14u)]), vec2<bool>(select(~18487u, abs(4294967295u), any(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 14u)], false, true))) >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, arg_0.a), vec3<u32>(arg_1, arg_0.a, 58849u)), !(!(arg_0.b.x <= arg_0.b.x))));
    global0 = array<bool, 14>();
    var var_2 = vec3<u32>(arg_1, arg_0.a, ~arg_1 << (1u % 32u));
    return -26740i;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = -(_wgslsmith_mult_i32(0i, -func_2(Struct_1(u_input.a, vec3<i32>(arg_0.b.x, arg_0.b.x, 41377i), 1000f), 4294967295u)) & -arg_0.b.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f - arg_0.c) + _wgslsmith_f_op_f32(arg_0.c + 299f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1209f)) - arg_0.c));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.c, arg_0.c), -1070f)), arg_0.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-283f, _wgslsmith_f_op_f32(step(arg_0.c, 1454f)))) + -988f))));
    var_3 = -534f;
    return Struct_1((_wgslsmith_sub_u32(~2928u, _wgslsmith_mult_u32(u_input.a, var_2.a)) | 93005u) >> (firstLeadingBit(var_2.a) % 32u), min(vec3<i32>(-_wgslsmith_mod_i32(var_2.b.x, 26892i), var_2.b.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_2.b.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.b.x, var_2.b.x, -2147483647i), vec3<i32>(arg_0.b.x, var_2.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(1520f + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(4294967295u, vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1083f)))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 14u)]);
    var_0 = func_1(func_1(func_1(Struct_1(1u, vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x), _wgslsmith_f_op_f32(round(var_0.c))), false), var_0.a > firstTrailingBit(~var_0.a)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, ~(~u_input.a), _wgslsmith_mod_u32(1u, ~var_0.a)), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(0u, u_input.a, 64578u)), ~(vec3<u32>(4294967295u, 0u, 0u) >> (vec3<u32>(4294967295u, var_0.a, 1u) % vec3<u32>(32u))))), 14u)]);
    let var_1 = !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, false, true);
    var var_2 = select(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(0u, 7400u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 19440u), vec2<u32>(30218u, 1u)), var_1.xx), _wgslsmith_sub_vec2_u32(vec2<u32>(18338u, var_0.a), ~vec2<u32>(var_0.a, var_0.a))), ~(~vec2<u32>(var_0.a, var_0.a) | ~vec2<u32>(4294967295u, var_0.a))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, u_input.a) ^ vec2<u32>(1u, 1u), min(vec2<u32>(var_0.a, var_0.a), countOneBits(vec2<u32>(1u, var_0.a))), vec2<u32>(_wgslsmith_mod_u32(52220u, u_input.a), ~18469u)) ^ abs(~vec2<u32>(u_input.a, 1u) >> (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), func_1(func_1(func_1(Struct_1(u_input.a, vec3<i32>(7972i, var_0.b.x, var_0.b.x), -1000f), global0[_wgslsmith_index_u32(23323u, 14u)]), true), false).b.x != (_wgslsmith_mod_i32(_wgslsmith_sub_i32(20965i, -61557i), var_0.b.x) << (40697u % 32u)));
    var var_3 = true;
    let var_4 = any(select(var_1.zw, vec2<bool>(true, -946f > var_0.c), var_1.x));
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b.xy, vec2<i32>(var_0.b.x, var_0.b.x)), 1i, 0i << (var_0.a % 32u)), -var_0.b), ~_wgslsmith_mult_i32(var_0.b.x, var_0.b.x | -32949i));
}

