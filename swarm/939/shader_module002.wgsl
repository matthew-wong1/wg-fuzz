struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = arg_3.x;
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    var var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(min(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(max(15094i, 0i), ~u_input.b, arg_1.b, 2147483647i))), firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, -13133i, arg_1.b, arg_0.b) | vec4<i32>(0i, u_input.e.x, arg_0.b, arg_0.b)), ~(-vec4<i32>(-51232i, -1i, 2147483647i, -1i)))));
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~arg_0.b, _wgslsmith_mod_i32(-9195i, var_1.x), arg_0.b, firstTrailingBit(select(15665i, 33380i, arg_1.c.x))) & _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, var_1.x, 12811i, arg_1.b), vec4<i32>(-2147483647i, u_input.c, arg_1.b, var_1.x)) << (min(vec4<u32>(u_input.d, var_0, u_input.d, var_0), vec4<u32>(u_input.d, arg_3.x, 33792u, arg_3.x)) % vec4<u32>(32u)), vec4<i32>(0i, 0i, -1i, -2147483647i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 30587i, arg_0.b, 1i), vec4<i32>(30502i, u_input.a, -2147483647i, -2147483647i))), _wgslsmith_mod_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(arg_1.b, var_1.x, 22107i, var_1.x))), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(arg_1.b, 14225i)), firstLeadingBit(arg_1.b), -49226i, u_input.a)));
    return firstTrailingBit(~var_1.x);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(71408i, 2147483647i, u_input.a) & 0i, func_3(Struct_1(-653f, u_input.c, vec2<bool>(true, true)), Struct_1(839f, -37565i, vec2<bool>(false, true)), vec4<f32>(1143f, -585f, 3282f, 1905f), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) | 2147483647i, i32(-1i) * -2147483647i, u_input.c) << (vec4<u32>(u_input.d << (~7589u % 32u), ~_wgslsmith_sub_u32(20498u, u_input.d), _wgslsmith_div_u32(u_input.d, 4294967295u), u_input.d) % vec4<u32>(32u)), vec4<i32>(~(u_input.c & u_input.e.x) >> (42332u % 32u), -abs(u_input.c), _wgslsmith_mult_i32(0i, -1i), u_input.a));
    var var_1 = max(max(u_input.d, 1u), u_input.d) > (abs(u_input.d) | 57355u);
    let var_2 = min(var_0.x, 58613i >> ((abs(u_input.d) & 0u) % 32u));
    var_1 = false;
    let var_3 = vec2<i32>(7663i << (~reverseBits(u_input.d) % 32u), _wgslsmith_mult_i32(2147483647i, ~var_2));
    return any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: bool) -> vec2<f32> {
    global0 = array<vec2<u32>, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(-1236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f - 1348f) - 1000f) * _wgslsmith_f_op_f32(floor(667f))))), u_input.e.x, vec2<bool>(any(vec3<bool>(any(vec2<bool>(false, arg_0)), true, arg_0)), all(vec3<bool>(true, all(vec3<bool>(arg_0, arg_0, false)), arg_0))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a, 1843f)))), arg_0))), u_input.e.x, select(vec2<bool>(true, true), vec2<bool>(arg_0, false), false));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f + 145f) * -913f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)))))), abs(_wgslsmith_dot_vec2_i32(u_input.e, abs(vec2<i32>(u_input.c, u_input.a)))), vec2<bool>(true, var_0.c.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -635f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1308f, var_0.a), _wgslsmith_div_f32(519f, -873f))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: bool) -> StorageBuffer {
    var var_0 = arg_0.x;
    let var_1 = Struct_1(arg_0.x, -(u_input.a | abs(u_input.a)), vec2<bool>(true, true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, var_1.a)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a * -1055f)))))), -8261i, !select(vec2<bool>(var_1.a != -600f, true), var_1.c, !select(vec2<bool>(true, true), vec2<bool>(true, var_1.c.x), var_1.c)));
    let var_3 = var_2.c;
    let var_4 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~62710u << (min(u_input.d, 1u) % 32u), u_input.d, 1u), reverseBits(firstTrailingBit(vec3<u32>(0u, u_input.d, 4294967295u) >> (vec3<u32>(12142u, 0u, 1u) % vec3<u32>(32u))))), vec3<u32>(_wgslsmith_div_u32(4294967295u, firstTrailingBit(33198u)), firstLeadingBit(~countOneBits(11055u)), firstTrailingBit(u_input.d)));
    return StorageBuffer(var_1.a);
}

fn func_1() -> StorageBuffer {
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    return func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 516f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2923f, -1306f) - vec2<f32>(-130f, 106f)), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1244f, 523f)) * vec2<f32>(-1000f, -2326f)))) - _wgslsmith_f_op_vec2_f32(func_4(func_2()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(316f)), -1051f, 941f, -3327f))) * vec4<f32>(-635f, _wgslsmith_f_op_f32(trunc(-715f)), -1447f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1179f), 1733f)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 11>();
    let x = u_input.a;
    s_output = func_1();
}

