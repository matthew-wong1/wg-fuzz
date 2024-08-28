struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1532f, -222f, -1417f);

var<private> global1: i32 = -1i;

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = arg_0;
    let var_1 = true;
    return global0.x;
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global2.x, vec2<i32>(-1i, u_input.a), u_input.a), 65627u)) - _wgslsmith_div_f32(global0.x, -942f))) * vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(260f)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) * _wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = select(!(!select(!vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(true, global2.x, global2.x, global2.x), true)), vec4<bool>(_wgslsmith_clamp_i32(-u_input.a, 2147483647i, -2147483647i) == -26318i, true, true, global2.x), true);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 250f, 288f))));
    var var_1 = vec3<i32>(-(_wgslsmith_sub_i32(u_input.a, -19734i) << (~1463u % 32u)) << ((min(66526u | u_input.b, 74859u) ^ 4294967295u) % 32u), u_input.a, select(u_input.a & _wgslsmith_dot_vec3_i32(vec3<i32>(13787i, 26948i, u_input.a) << (vec3<u32>(21926u, u_input.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a))), _wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.a, 1i), _wgslsmith_mult_i32(u_input.a, 0i)), true));
    var var_2 = countOneBits(firstLeadingBit(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a, -1i, 0i))));
    return !var_0.zzw;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>) -> bool {
    var var_0 = false;
    let var_1 = Struct_1(global2.x, -(vec2<i32>(-1i) * -(~vec2<i32>(-1i, 4683i))), firstLeadingBit(countOneBits(-(~(-22171i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-349f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f * -417f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(trunc(594f))))), global0.x), vec3<f32>(-473f, 1306f, 1431f), vec3<bool>((-u_input.a << ((u_input.b ^ 53182u) % 32u)) > ((arg_2.x << (4294967295u % 32u)) | ~(-1i)), var_1.a, true)));
    var_0 = false;
    let var_3 = vec4<bool>(true, arg_0.x, any(select(!vec4<bool>(var_1.a, arg_0.x, false, var_1.a), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(func_2(Struct_1(var_1.a, arg_2.yw, 672i), 0u)) < _wgslsmith_f_op_f32(var_2.x * global0.x))), false);
    return false;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(1f >= global0.x, vec2<i32>(i32(-1i) * -31160i, u_input.a) | (_wgslsmith_sub_vec2_i32(max(vec2<i32>(-12449i, u_input.a), vec2<i32>(19947i, arg_2.c)), _wgslsmith_add_vec2_i32(arg_2.b, arg_2.b)) << (~reverseBits(vec2<u32>(44099u, 1u)) % vec2<u32>(32u))), _wgslsmith_mod_i32(-28526i, -23873i >> (1u % 32u)));
    let var_1 = reverseBits(u_input.b);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) * vec3<f32>(global0.x, global0.x, global0.x)) * vec3<f32>(global0.x, global0.x, -475f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(floor(398f))) * _wgslsmith_f_op_f32(sign(201f))), global0.x));
    let var_2 = arg_2;
    global1 = 181i ^ arg_0;
    return vec3<bool>(var_0.a, arg_2.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-480f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1546f, global0.x, -2178f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(279f, global0.x, 964f) * vec3<f32>(global0.x, global0.x, 1984f))), vec3<f32>(1635f, -652f, _wgslsmith_f_op_f32(func_2(Struct_1(global2.x, vec2<i32>(2147483647i, u_input.a), 1i), u_input.b))))));
    var var_1 = vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a << (4294967295u % 32u), 0i), u_input.a), _wgslsmith_add_i32(u_input.a, u_input.a));
    global1 = i32(-1i) * -15775i;
    global2 = select(!func_1(), select(!(!vec3<bool>(true, global2.x, global2.x)), func_4(-36009i, false, Struct_1(func_3(global2.yz, var_1.x, vec4<i32>(u_input.a, 29630i, -66837i, -1i)), min(vec2<i32>(52206i, var_1.x), vec2<i32>(-2147483647i, var_1.x)), var_1.x)), global2.x), func_4(reverseBits(countOneBits(~23153i)), !global2.x, Struct_1(func_3(vec2<bool>(true, true), min(-2147483647i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_1.x, -27836i, u_input.a), vec4<i32>(u_input.a, var_1.x, var_1.x, 42481i))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, -1i), -vec2<i32>(var_1.x, -11442i), abs(vec2<i32>(54719i, var_1.x))), ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x, 1i & (var_1.x << ((~u_input.b | u_input.b) % 32u)), _wgslsmith_f_op_vec2_f32(select(global0.yy, var_0.yx, any(!(!vec3<bool>(false, true, global2.x))))));
}

