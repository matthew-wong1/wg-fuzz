struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, -48511i), 0u, vec3<i32>(-1i, 2147483647i, 1i), vec4<bool>(true, true, true, false));

var<private> global1: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> bool {
    global1 = array<vec2<bool>, 29>();
    let var_0 = u_input.c.yx;
    global1 = array<vec2<bool>, 29>();
    let var_1 = false;
    var var_2 = -36406i;
    return !(!(-50938i == arg_0));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(u_input.d, firstTrailingBit(~14688u), global0.c, !(!global0.d));
    global0 = var_0;
    global1 = array<vec2<bool>, 29>();
    global0 = Struct_1(max(vec2<i32>(var_0.c.x << (_wgslsmith_mod_u32(u_input.b, global0.b) % 32u), ~0i), -(~(-vec2<i32>(-28695i, var_0.c.x)))), abs(~global0.b), vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_0.c.x, u_input.a) << (vec2<u32>(1u, 18353u) % vec2<u32>(32u))), global0.c.yx), ~(-2885i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.d.x, 33424i))), vec4<bool>(!(!var_0.d.x), true, true, true));
    let var_1 = 495f;
    return (var_0.c.x >> (~_wgslsmith_mod_u32(var_0.b, select(u_input.e, 0u, true)) % 32u)) & ~var_0.a.x;
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 29>();
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-global0.a.x, _wgslsmith_dot_vec2_i32(u_input.d, firstLeadingBit(global0.a))), ~u_input.d), _wgslsmith_add_u32(1u, select(global0.b, 91086u, false) & _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(27626u, 45140u, u_input.c.x))) >> (~firstLeadingBit(global0.b) % 32u), abs(global0.c), vec4<bool>(!global0.d.x, false, all(vec4<bool>(true, func_2(u_input.d.x), true, true)), global0.d.x));
    let var_1 = ~1u;
    global0 = Struct_1(var_0.a, u_input.e | min(_wgslsmith_sub_u32(~var_1, 76304u), u_input.b), firstTrailingBit(_wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(var_0.a.x, 2147483647i, global0.a.x))), !(!vec4<bool>(global0.d.x & true, var_0.d.x, all(vec2<bool>(false, false)), global0.d.x)));
    var_0 = Struct_1(~vec2<i32>(var_0.c.x, ~var_0.c.x), global0.b, vec3<i32>(var_0.c.x, var_0.c.x, func_3()), !select(!select(global0.d, var_0.d, global0.d.x), vec4<bool>(u_input.d.x <= 2147483647i, !global0.d.x, true, func_2(-2147483647i)), all(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x))));
    return Struct_1(~var_0.a | global0.c.yy, 67775u, vec3<i32>(1i, (i32(-1i) * -31802i) & (i32(-1i) * -u_input.d.x), abs(firstLeadingBit(0i))), !select(var_0.d, vec4<bool>(true, !global0.d.x, global0.d.x, all(vec2<bool>(global0.d.x, global0.d.x))), true));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(978f + -784f), 795f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f) - _wgslsmith_div_f32(-658f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(870f, -914f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1148f)))))));
    let var_1 = func_1();
    let var_2 = -486f;
    global0 = func_1();
    var var_3 = _wgslsmith_mult_vec2_i32(global0.c.xx, _wgslsmith_div_vec2_i32(~func_1().a, vec2<i32>(2147483647i, _wgslsmith_add_i32(arg_2.a.x | 25333i, 10654i))));
    return ~vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.e), ~4294967295u), var_1.b, ~(arg_1 >> (51519u % 32u)), ~_wgslsmith_add_u32(0u, 4294967295u)) | vec4<u32>(5776u, global0.b, global0.b, ~reverseBits(5842u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.e, 4294967295u, 39776u, global0.b))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, u_input.e, 16126u, 0u), vec4<u32>(14141u, global0.b, 54515u, global0.b)), func_4(func_1(), ~1u, Struct_1(u_input.d, u_input.e, global0.c, global0.d)), ~vec4<u32>(u_input.b, global0.b, u_input.e, 68783u)) | abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.e, global0.b, u_input.e) | vec4<u32>(694u, 0u, u_input.c.x, 123379u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 4294967295u, global0.b, 42355u), vec4<u32>(global0.b, u_input.c.x, global0.b, 64596u)))));
    let var_1 = func_1();
    global0 = var_1;
    var var_2 = func_4(var_1, u_input.e, var_1);
    let var_3 = func_1();
    let var_4 = Struct_1(~global0.a, max(~(~(~u_input.c.x)), 1u), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(select(global0.c, var_1.c, vec3<bool>(true, var_1.d.x, false))), var_1.c), vec3<i32>(~(u_input.a ^ var_3.a.x), u_input.a, ~(i32(-1i) * -32649i))), vec4<bool>(global0.d.x, true, all(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-578f, -771f))))), _wgslsmith_f_op_f32(step(1000f, -512f)));
}

