struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-976f, -1437f, -1142f);

var<private> global1: array<vec2<i32>, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> f32 {
    global1 = array<vec2<i32>, 16>();
    var var_0 = select(select(!vec2<bool>(arg_1, true), !(!select(vec2<bool>(false, false), vec2<bool>(arg_1, true), true)), select(vec2<bool>(arg_1, true), !vec2<bool>(arg_1, arg_1), !select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)))), !vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, !(!arg_1)));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~firstTrailingBit(u_input.b), max(0u, _wgslsmith_sub_u32(u_input.b, 4294967295u)) << (45577u % 32u)), vec4<i32>(abs(max(firstTrailingBit(17334i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(u_input.b, 16u)]))), 0i, reverseBits(select(-49310i, ~u_input.a, any(vec2<bool>(false, var_0.x)))), _wgslsmith_mod_i32(~(-u_input.a), -u_input.a)), vec2<bool>(!(any(vec2<bool>(arg_1, true)) & arg_1), arg_1));
    global0 = _wgslsmith_f_op_vec3_f32(-arg_0.yzz);
    let var_2 = Struct_1(_wgslsmith_div_u32(14958u, ~u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(8962i, -15075i & (u_input.a | -8943i), firstLeadingBit(u_input.a), var_1.b.x), firstTrailingBit(~(-var_1.b))), select(var_1.c, var_1.c, vec2<bool>(true & (u_input.a < 2147483647i), var_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, true)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(min(128f, -331f)), global0.x) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zxz)))));
    var var_0 = _wgslsmith_dot_vec2_i32(~global1[_wgslsmith_index_u32(10888u, 16u)], ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, ~u_input.b, 904u), firstTrailingBit(vec3<u32>(4216u, u_input.b, u_input.b))), 16u)]);
    let var_1 = !vec2<bool>(firstLeadingBit(u_input.b) < (1u | u_input.b), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true)));
    var var_2 = vec3<bool>(true, false, any(vec4<bool>(true, u_input.a == 69313i, true, any(var_1))));
    var var_3 = true;
    return Struct_1(~u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(16136i, -2147483647i, 2147483647i)), ~u_input.a), ~select(select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, 1i, -1i, u_input.a), var_2.x), min(vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a), vec4<i32>(365i, u_input.a, u_input.a, u_input.a)), vec4<bool>(var_2.x, var_2.x, true, true))), var_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = func_2(global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1081f, global0.x, -1000f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, global0.x, 1642f) + vec4<f32>(global0.x, -739f, -1765f, 428f)))))));
    let var_1 = select(vec4<bool>(true, false, all(!arg_3) & true, true), !select(!(!vec4<bool>(arg_2.c.x, arg_3.x, true, arg_2.c.x)), !select(vec4<bool>(arg_3.x, true, arg_1.c.x, arg_1.c.x), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(all(vec4<bool>(arg_0.c.x, true, true, arg_0.c.x)), var_0.c.x, !arg_1.c.x, false)), !(!vec4<bool>(arg_3.x, var_0.c.x, arg_0.c.x, any(arg_2.c))));
    var var_2 = vec3<u32>(~abs(4294967295u), 86124u, _wgslsmith_sub_u32(~countOneBits(~33927u), ~(~26552u)));
    var var_3 = func_2(-644f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    let var_4 = arg_0;
    return 61070i;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_f32(123f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(vec4<f32>(global0.x, global0.x, global0.x, global0.x), arg_1.c.x)), global0.x, _wgslsmith_f_op_f32(-233f * global0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(round(-181f)), global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -390f, -507f, 1000f) + vec4<f32>(global0.x, -503f, global0.x, global0.x)))));
    let var_1 = func_2(global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-396f + 208f), -1589f, _wgslsmith_div_f32(global0.x, 872f), -1918f))));
    let var_2 = arg_1;
    return Struct_1(abs(var_1.a << (var_2.a % 32u)), vec4<i32>(1i << (select(var_2.a >> (83786u % 32u), ~15288u, select(arg_0, arg_1.c.x, var_0.c.x)) % 32u), var_2.b.x, ~reverseBits(7260i), _wgslsmith_sub_i32(~(-var_0.b.x), ~arg_1.b.x | (var_2.b.x & u_input.a))), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 16>();
    var var_0 = func_4(true, Struct_1(u_input.b, max(vec4<i32>(func_1(Struct_1(20594u, vec4<i32>(6310i, 87650i, u_input.a, 2147483647i), vec2<bool>(true, false)), Struct_1(u_input.b, vec4<i32>(23723i, 0i, u_input.a, 2147483647i), vec2<bool>(true, false)), Struct_1(0u, vec4<i32>(29311i, 2147483647i, u_input.a, u_input.a), vec2<bool>(true, true)), vec3<bool>(false, false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(19313i, 6995i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)), max(u_input.a, -3348i), max(-29911i, u_input.a)), max(vec4<i32>(u_input.a, 40514i, -6908i, u_input.a) << (vec4<u32>(54499u, u_input.b, u_input.b, 14684u) % vec4<u32>(32u)), -vec4<i32>(21953i, u_input.a, u_input.a, u_input.a))), vec2<bool>(u_input.a > u_input.a, true)));
    let var_1 = func_2(1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(166f, 300f, -1249f, global0.x), vec4<f32>(-1498f, global0.x, global0.x, global0.x), false))) * vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), -151f, _wgslsmith_f_op_f32(f32(-1f) * -142f), 669f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, global0.x, -550f, 748f) + vec4<f32>(global0.x, 1000f, global0.x, global0.x)) + vec4<f32>(-2035f, 1581f, global0.x, global0.x))))));
    let var_2 = reverseBits(vec3<u32>(0u, var_1.a, var_1.a));
    var_0 = Struct_1(countOneBits(67173u), ~_wgslsmith_sub_vec4_i32(var_0.b, var_0.b), vec2<bool>(var_0.c.x, !any(!var_0.c)));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(var_1.b.xyy, var_0.b.zzy)), _wgslsmith_mult_vec3_i32(~(countOneBits(var_1.b.zwy) ^ select(vec3<i32>(-57972i, var_0.b.x, var_0.b.x), var_1.b.xxx, vec3<bool>(false, true, var_1.c.x))), max(max(var_1.b.zyw, _wgslsmith_mod_vec3_i32(var_0.b.yzx, var_0.b.zxw)), select(var_1.b.zxx, var_1.b.wwx, var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1i >> (u_input.b % 32u), -(-_wgslsmith_mult_i32(var_3.x, -1i) ^ (16919i >> (0u % 32u))), var_0.a);
}

