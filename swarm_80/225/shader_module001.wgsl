struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> vec3<bool> {
    var var_0 = 122563i;
    return vec3<bool>(!global0.x, all(arg_0.wx), _wgslsmith_dot_vec3_i32(~max(vec3<i32>(arg_1, arg_1, 2075i), vec3<i32>(u_input.b, arg_1, -1i)), max(-vec3<i32>(u_input.b, arg_1, u_input.b), countOneBits(vec3<i32>(24929i, 28692i, u_input.b)))) == arg_1);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_1 {
    global0 = select(select(!(!select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, true))), !select(select(vec2<bool>(true, true), vec2<bool>(global0.x, true), true), vec2<bool>(true, true), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), true)), vec2<bool>(-204f < _wgslsmith_div_f32(arg_2, global1.a.x), global0.x)), select(select(select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(true, false), global0.x), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, true), vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)), vec2<bool>(true, false))), vec2<bool>(any(func_3(vec4<bool>(global0.x, true, false, global0.x), -9101i, 0u)), arg_2 >= arg_2), any(select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, true), false), vec4<bool>(false, false, global0.x, true), func_3(vec4<bool>(false, global0.x, global0.x, false), -7065i, 94781u).x))), true);
    var var_0 = Struct_1(global1.a);
    let var_1 = Struct_1(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 + arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(893f - 1725f) + arg_2) - var_0.a.x)));
    let var_2 = var_1;
    let var_3 = _wgslsmith_div_vec2_f32(var_2.a.xx, var_0.a.zy);
    return var_2;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    global0 = func_3(!(!select(!vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x))), countOneBits(u_input.b), 34168u).yz;
    let var_0 = max(abs(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -4072i, -38407i)), max(select(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(0u, 69099u, u_input.d) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(0i, -1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, global0.x)), vec3<i32>(u_input.b, u_input.b, -24161i) << (vec3<u32>(1u, 0u, u_input.a.x) % vec3<u32>(32u))), !(!vec3<bool>(false, global0.x, global0.x))), -vec3<i32>(u_input.b ^ 1i, u_input.b, u_input.b & -46914i)));
    var var_1 = Struct_1(global1.a);
    return !vec2<bool>(global0.x, all(func_3(vec4<bool>(global0.x, global0.x, true, false), min(2147483647i, var_0.x), ~4294967295u)));
}

fn func_1() -> Struct_1 {
    global0 = select(!func_4(func_2(~vec4<u32>(u_input.c, 16036u, 6637u, u_input.d), 43551i, global1.a.x, -u_input.b)), !(!select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)))), !all(!vec2<bool>(global0.x, true)));
    let var_0 = 30292u;
    global1 = func_2(~select(~vec4<u32>(14778u, u_input.a.x, 69815u, 104763u), vec4<u32>(~0u, var_0, var_0, 3130u), 6380u <= (var_0 >> (u_input.a.x % 32u))), -u_input.b, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b) << (u_input.a % vec2<u32>(32u))), u_input.b), max(26738i, _wgslsmith_mult_i32(u_input.b, -2147483647i))));
    var var_1 = _wgslsmith_add_vec2_i32(-max(~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-58187i, 2147483647i)), abs(vec2<i32>(33463i, -2261i))), select(-countOneBits(vec2<i32>(u_input.b, 1i)), vec2<i32>(u_input.b, max(-2147483647i, u_input.b)), global0.x) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, 1u), vec3<u32>(1u, u_input.d, u_input.c)) | ~u_input.d, ~(~49432u)) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.a.x))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -788f), -497f, global1.a.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.x, -556f, -556f), global1.a)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(var_2.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, global1.a.x)), vec3<f32>(global1.a.x, var_2.a.x, -609f), vec3<bool>(global0.x, global0.x, global0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1190f;
    let var_1 = func_1();
    let var_2 = func_1();
    var var_3 = 1i;
    var_0 = _wgslsmith_f_op_f32(round(-780f));
    let var_4 = func_4(var_1).x;
    var var_5 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(14357u, _wgslsmith_mult_u32(max(firstTrailingBit(1258u), u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41233u, 39602u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.c)), vec3<u32>(21554u, u_input.d, u_input.a.x)))), select(vec4<i32>(_wgslsmith_mult_i32(u_input.b | u_input.b, countOneBits(-36052i)), _wgslsmith_div_i32(u_input.b ^ 30384i, -1i), firstLeadingBit(0i), 2147483647i), -vec4<i32>(-16326i, ~u_input.b, -2147483647i, min(31530i, u_input.b)), vec4<bool>(false, var_4, true, true)), 0u);
}

