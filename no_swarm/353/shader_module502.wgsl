struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    global0 = u_input.d.x;
    let var_0 = Struct_1(vec2<bool>(true, true), false, u_input.d, u_input.d);
    let var_1 = var_0;
    return abs(var_1.d.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1689f));
    let var_1 = true;
    return Struct_1(vec2<bool>(true, var_1), any(!vec4<bool>(var_1 | var_1, true, u_input.b.x <= u_input.b.x, var_1)), u_input.d, max(vec3<u32>(func_3(), select(6676u, 1u, var_1), 81547u), _wgslsmith_sub_vec3_u32(u_input.d << (u_input.d % vec3<u32>(32u)), vec3<u32>(u_input.d.x, ~64563u, u_input.d.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = vec2<u32>(4294967295u, 52404u);
    global0 = 0u;
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 0u, 4294967295u, arg_2.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 5357u, arg_2.c.x, 0u), vec4<u32>(50421u, 1u, 10652u, arg_0.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_2.c.x, var_0.x), vec4<u32>(4294967295u, var_0.x, arg_2.c.x, arg_0.x))), arg_0.x);
    global0 = 23263u;
    let var_2 = -(~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.b, _wgslsmith_mult_vec2_i32(vec2<i32>(9562i, 2147483647i), u_input.b)), -firstTrailingBit(vec2<i32>(-18820i, arg_3))));
    return _wgslsmith_div_vec3_f32(arg_1.ywx, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(642f + 622f)))), _wgslsmith_f_op_vec3_f32(-arg_1.wyz))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, -417f, 458f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2131f, -523f, 166f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1554f, -644f, 1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 139f, 535f) - vec3<f32>(-1522f, -521f, 840f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f), _wgslsmith_f_op_f32(select(-1382f, 1323f, true))), _wgslsmith_f_op_f32(f32(-1f) * -355f), 256f) * _wgslsmith_f_op_vec3_f32(func_4(~vec3<u32>(50113u, 8057u, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, 547f, -1364f, -1000f))), func_2(), abs(_wgslsmith_mod_i32(arg_2.x, u_input.c)))))));
    let var_1 = 0u;
    let var_2 = Struct_1(func_2().a, arg_0.a.x, abs(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(6909u, 29407u, arg_0.d.x), u_input.d))), reverseBits(vec3<u32>(15975u, 16890u, u_input.d.x) | ~vec3<u32>(var_1, arg_0.c.x, 4294967295u)) ^ (~func_2().c ^ vec3<u32>(1u | arg_0.d.x, _wgslsmith_mod_u32(arg_0.c.x, 31963u), 4294967295u)));
    let var_3 = Struct_1(arg_0.a, !(!arg_1.b), select(vec3<u32>(arg_1.d.x, var_2.c.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x) & var_2.d.x), max(~var_2.d, var_2.d), !(!(!vec3<bool>(true, false, var_2.a.x)))), countOneBits(min(u_input.d, arg_0.c)));
    return Struct_1(var_2.a, var_3.b, ~vec3<u32>(arg_0.d.x & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.d.x, 0u, var_1), vec4<u32>(16673u, 4294967295u, var_3.d.x, 24482u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d.x, 0u, arg_0.c.x, u_input.a), firstLeadingBit(vec4<u32>(4294967295u, 26536u, 0u, var_1))), var_2.d.x), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), false, u_input.d ^ ~abs(vec3<u32>(u_input.a, 1u, 0u)), u_input.d), Struct_1(vec2<bool>(true, true), true, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 31691u, firstLeadingBit(u_input.d.x)), u_input.d), ~vec3<u32>(~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 22450u), 0u)), ~(-u_input.b));
    global0 = 1u;
    var var_1 = var_0;
    global0 = _wgslsmith_mult_u32(0u, 12474u);
    var var_2 = Struct_1(select(var_1.a, !var_1.a, select(!var_0.a, select(vec2<bool>(true, false), !vec2<bool>(var_1.b, false), true), all(select(vec3<bool>(var_0.b, var_1.a.x, var_1.a.x), vec3<bool>(var_0.a.x, var_1.b, var_1.a.x), vec3<bool>(var_1.a.x, true, false))))), false, vec3<u32>(u_input.d.x, 4294967295u, 1u), func_1(func_2(), func_2(), vec2<i32>(firstTrailingBit(firstTrailingBit(0i)), 1i)).c);
    var var_3 = func_1(var_0, Struct_1(vec2<bool>(false, true), var_1.a.x, _wgslsmith_sub_vec3_u32(min(var_0.d, _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(var_2.c.x, 0u, 3204u))), vec3<u32>(u_input.d.x, max(22415u, var_1.d.x), ~29101u)), ~var_1.c), _wgslsmith_sub_vec2_i32(~u_input.b, _wgslsmith_mod_vec2_i32(-u_input.b, u_input.b)) & u_input.b);
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.yz, -(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 2147483647i, -1i)));
}

