struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(abs(global0.b.a.x), ~60319i, arg_0.b.a.x, _wgslsmith_sub_i32(u_input.b, global0.b.a.x)) ^ vec4<i32>(1i, _wgslsmith_sub_i32(0i, 1i), firstTrailingBit(-16725i), -arg_0.b.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(634i, 1i, -1i, -21498i), select(vec4<i32>(14067i, -1i, arg_0.b.a.x, 43669i), vec4<i32>(-50866i, -1i, -2147483647i, global0.b.a.x), false)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-5058i, -1i, global0.b.a.x, -2147483647i), -vec4<i32>(global0.b.a.x, global0.b.a.x, -9541i, 0i)))) & _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(66044i, arg_0.b.a.x, arg_0.b.a.x, global0.b.a.x) ^ vec4<i32>(-11101i, global0.b.a.x, 1i, u_input.b), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.a.x, global0.b.a.x, 1i, 0i), vec4<i32>(global0.b.a.x, 1i, -11154i, global0.b.a.x)), u_input.a.x, arg_0.b.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.a.x, u_input.a.x, 17196i), vec4<i32>(0i, -2147483647i, 44961i, u_input.a.x)))), countOneBits(~vec4<i32>(global0.b.a.x, arg_0.b.a.x, -2147483647i, arg_0.b.a.x) | -vec4<i32>(0i, global0.b.a.x, arg_0.b.a.x, 23389i)));
    var var_1 = vec3<i32>(-1i) * -max(var_0.zwz, u_input.a);
    let var_2 = vec2<bool>(arg_3, !arg_3);
    var_0 = firstLeadingBit(vec4<i32>(0i, reverseBits(var_0.x), reverseBits(arg_0.b.a.x), -1i)) & (vec4<i32>(reverseBits(~(-2147483647i)), global0.b.a.x, _wgslsmith_sub_i32(u_input.b, -1i) >> (global0.b.b % 32u), 1i & _wgslsmith_add_i32(global0.b.a.x, u_input.b)) << (abs(abs(vec4<u32>(arg_0.b.b, 6741u, 4819u, arg_0.b.b))) % vec4<u32>(32u)));
    var var_3 = -(~vec2<i32>(-(~global0.b.a.x), -var_0.x));
    return arg_0.c.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-874f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-global0.a)))), global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)), _wgslsmith_f_op_f32(func_3(Struct_2(240f, global0.b, global0.c), _wgslsmith_f_op_f32(f32(-1f) * -170f), 294f, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(-1000f, global0.c.x)) + vec2<f32>(global0.a, _wgslsmith_f_op_f32(exp2(global0.c.x))))));
    return var_0;
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1773f);
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(53641u), firstTrailingBit(~4294967295u));
    var var_2 = -(reverseBits(-firstTrailingBit(vec4<i32>(u_input.b, global0.b.a.x, 464i, -2078i))) | -_wgslsmith_add_vec4_i32(~vec4<i32>(global0.b.a.x, u_input.b, -1i, arg_0.b.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.a.x, -2147483647i, 2147483647i, 16819i), vec4<i32>(58793i, global0.b.a.x, arg_0.b.a.x, arg_0.b.a.x))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f + 819f)) * _wgslsmith_f_op_f32(-arg_0.a)) * -1096f)));
    var var_4 = Struct_3(Struct_2(global0.a, global0.b, arg_0.c), arg_0, arg_0.b, ~_wgslsmith_add_vec2_i32(min(-vec2<i32>(26685i, var_2.x), func_2().b.a.xy), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.a.x, var_2.x), arg_0.b.a.xx))));
    return 0i;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = select(_wgslsmith_mult_i32(_wgslsmith_mod_i32(33738i, 2147483647i), ~1i), -46409i, all(!vec3<bool>(true, false, -1i >= global0.b.a.x)));
    let var_1 = global0.b;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>((20363i >> (var_1.b % 32u)) ^ var_1.a.x, -52496i, var_1.a.x, -2147483647i), vec4<i32>(min(u_input.b, 21248i), global0.b.a.x ^ -7481i, -11592i, var_1.a.x) & vec4<i32>(37366i, -29378i ^ u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_1.a.x), vec2<i32>(var_1.a.x, global0.b.a.x)), 2147483647i)), u_input.a.x, -_wgslsmith_div_i32(-global0.b.a.x, i32(-1i) * -37141i) | abs(0i), -(~(-54338i)));
    var var_3 = vec4<f32>(171f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f * -157f))))), 1102f, _wgslsmith_f_op_f32(-405f - var_1.c));
    let var_4 = ~func_4(func_2());
    return global0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (reverseBits(vec2<i32>(_wgslsmith_add_i32(18051i, -31239i), u_input.b)) | -vec2<i32>(_wgslsmith_mult_i32(2147483647i, 0i), -u_input.a.x)) >> (~vec2<u32>(~4294967295u, 42531u & func_1(1000f)) % vec2<u32>(32u));
    var var_1 = Struct_2(1649f, global0.b, global0.c);
    var_1 = func_2();
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_1.b.a.zy, var_1.b.a.zy), global0.b.a.x) & u_input.b;
    global0 = Struct_2(-2734f, global0.b, _wgslsmith_f_op_vec2_f32(-var_1.c));
    var var_3 = vec4<i32>(-1i) * -min(min(~vec4<i32>(35842i, var_2, -1i, 15949i), vec4<i32>(-2147483647i, var_0.x, var_0.x, var_1.b.a.x) & vec4<i32>(0i, var_0.x, 54031i, -7730i)), max(vec4<i32>(global0.b.a.x, u_input.b, var_0.x, var_1.b.a.x), vec4<i32>(-1i, 1i, var_0.x, -61347i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(u_input.b, var_1.b.a.x), u_input.a.x, -10554i), abs(var_1.b.a.zx), countOneBits(reverseBits(min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, global0.b.b, var_1.b.b), vec4<u32>(0u, var_1.b.b, 50176u, 86116u)), vec4<u32>(4294967295u, var_1.b.b, 3043u, 0u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1071f, global0.a) - vec2<f32>(1f, 1f)))));
}

