struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-10604i, -1i, 1i), vec3<i32>(1i, 1i, -17157i), vec3<i32>(-1i, -11460i, 1i), vec3<i32>(-1i, 17403i, -28518i), vec3<i32>(38762i, 1i, 22569i), vec3<i32>(1i, -15906i, 32078i), vec3<i32>(1i, 20285i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -14559i, 0i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-68448i, -37362i, -46780i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(40580i, 16779i, -39475i), vec3<i32>(1i, -16460i, i32(-2147483648)), vec3<i32>(-42336i, -1i, 14000i), vec3<i32>(9151i, 23287i, -1i), vec3<i32>(73461i, 0i, 3055i), vec3<i32>(0i, 1398i, 36742i), vec3<i32>(68425i, -23041i, 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = 1u;
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    return _wgslsmith_f_op_f32(f32(-1f) * -865f);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> Struct_3 {
    global0 = array<vec3<i32>, 18>();
    var var_0 = Struct_4(Struct_3(~21861i, firstLeadingBit(abs(~(-4743i)))), Struct_1(vec2<f32>(-751f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(4294967295u, arg_0))))), select(vec4<bool>(all(vec3<bool>(false, true, arg_0)), all(vec4<bool>(arg_0, arg_0, false, false)), true, !arg_0), !vec4<bool>(arg_0, false, true, true), arg_0)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(37599u, 1u, 1u, 0u)), ~vec4<u32>(0u, 10924u, 4294967295u, 73984u))), arg_2.x, vec3<u32>(1u, _wgslsmith_mult_u32((0u << (1u % 32u)) << (1u % 32u), 1u), select(21608u, ~1u, _wgslsmith_sub_i32(1i, arg_3) <= arg_3)));
    let var_1 = vec2<u32>(var_0.e.x, countOneBits(~(~var_0.e.x) ^ max(firstTrailingBit(8037u), ~95474u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-1036f + 1551f))));
    let var_3 = 50678u;
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = ~29710u;
    let var_1 = !select(arg_2.b.xx, vec2<bool>(false, true), !(!(!arg_2.b.yz)));
    global0 = array<vec3<i32>, 18>();
    var var_2 = arg_2.b.wwy;
    let var_3 = abs(1212i);
    return ~arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    global0 = array<vec3<i32>, 18>();
    let var_0 = vec3<bool>(_wgslsmith_dot_vec4_u32(func_4(func_2(arg_1.b.x, arg_1.c, vec4<f32>(arg_1.d.x, arg_1.d.x, -459f, -1025f), 11987i), _wgslsmith_mult_vec4_u32(vec4<u32>(32088u, 21111u, 0u, 40096u), vec4<u32>(0u, 0u, 31028u, 35297u)), Struct_1(arg_1.d, vec4<bool>(false, arg_1.b.x, true, true)), Struct_2(false, vec2<bool>(arg_1.a, true), arg_1.c, vec2<f32>(arg_1.d.x, 1528f))), vec4<u32>(1u, 1u, 1u, 1u)) <= countOneBits(9334u), false || all(arg_1.b), arg_1.b.x);
    global0 = array<vec3<i32>, 18>();
    let var_1 = Struct_4(Struct_3(17404i, ~_wgslsmith_div_i32(min(-1i, -23939i), _wgslsmith_mult_i32(-1i, arg_2.x))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1324f, -1285f), arg_1.d))), select(vec4<bool>(false, !var_0.x, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(vec4<bool>(true, var_0.x, arg_1.a, true))), vec4<bool>(var_0.x, any(vec4<bool>(arg_1.b.x, arg_1.b.x, var_0.x, arg_1.b.x)), !arg_1.b.x, false | arg_1.a), all(select(vec4<bool>(var_0.x, arg_1.b.x, true, false), vec4<bool>(arg_1.b.x, false, arg_1.a, true), vec4<bool>(true, var_0.x, true, var_0.x))))), max(max(~59553u, 0u), 4294967295u), _wgslsmith_f_op_f32(step(arg_1.c, 1000f)), abs(~func_4(func_2(var_0.x, 141f, vec4<f32>(-500f, arg_1.d.x, arg_1.c, -930f), u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(53513u, 0u, 21322u, 28337u), vec4<u32>(48261u, 4294967295u, 43244u, 1u)), Struct_1(vec2<f32>(arg_1.c, arg_1.c), vec4<bool>(true, false, arg_1.b.x, arg_1.b.x)), Struct_2(true, var_0.yy, arg_1.d.x, arg_1.d)).yxy));
    global0 = array<vec3<i32>, 18>();
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -582f;
    global0 = array<vec3<i32>, 18>();
    let var_1 = true | (_wgslsmith_mod_i32(_wgslsmith_add_i32(-15384i, u_input.c.x) ^ firstLeadingBit(-2147483647i), 1i & (u_input.b >> (0u % 32u))) > 1i);
    let var_2 = Struct_3(_wgslsmith_mod_i32(countOneBits((u_input.c.x | u_input.b) | ~u_input.b), 1430i), u_input.b | (i32(-1i) * -1i));
    let var_3 = Struct_3(_wgslsmith_add_i32(0i, -23038i), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(~_wgslsmith_div_i32(u_input.a, -17395i), Struct_2(var_1, select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-1745f - 1000f), vec2<f32>(-686f, 371f)), select(~vec4<i32>(u_input.d, 2147483647i, u_input.a, -2147483647i), vec4<i32>(var_2.a, var_3.a, u_input.a, -18868i), !vec4<bool>(var_1, false, var_1, var_1))));
}

