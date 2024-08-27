struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    return select(vec2<bool>(true, any(!select(vec3<bool>(arg_3.b, arg_1, true), vec3<bool>(false, arg_3.b, arg_1), arg_3.b))), !select(!vec2<bool>(true, global0.x), select(!vec2<bool>(true, arg_2.a.b), !vec2<bool>(arg_3.b, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, arg_3.b), vec2<bool>(true, arg_1))), vec2<bool>(true, any(vec4<bool>(false, false, true, true)))), !vec2<bool>(true, all(vec3<bool>(true, false, arg_2.a.b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_3(-2147483647i, ~_wgslsmith_mult_vec3_u32(countOneBits(arg_1), vec3<u32>(arg_1.x, 1u, 84548u) ^ u_input.a) >> (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, arg_0.c.x, 4294967295u), vec4<u32>(4294967295u, arg_1.x, arg_1.x, u_input.a.x)), 0u, arg_0.a.x) % vec3<u32>(32u)));
    global0 = !select(vec2<bool>(false, true), !(!func_3(vec2<f32>(392f, arg_0.d), true, Struct_2(Struct_1(u_input.a.xx, global0.x, u_input.a, -494f), vec4<u32>(var_0.b.x, 102744u, 1u, arg_1.x)), Struct_1(arg_1.zz, false, vec3<u32>(53525u, 85742u, 0u), arg_2))), true);
    var_0 = Struct_3(firstLeadingBit(~816i), u_input.a);
    var_0 = Struct_3(var_0.a, ~select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, var_0.b.x), ~arg_1), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1, var_0.b), ~var_0.b.x, arg_0.c.x), !arg_0.b));
    var var_1 = _wgslsmith_mult_u32(var_0.b.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.a.x, ~4294967295u), 1u));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    global0 = select(vec2<bool>(all(select(vec3<bool>(true, false, true), !vec3<bool>(arg_0.a.b, true, global0.x), func_2(arg_0.a, vec3<u32>(arg_0.b.x, u_input.b, 4294967295u), arg_0.a.d).b)), arg_0.a.b), !select(!vec2<bool>(true, arg_0.a.b), vec2<bool>(arg_0.a.b, false), vec2<bool>(!arg_0.a.b, !arg_0.a.b)), false & !(min(u_input.b, 19995u) <= 25245u));
    var var_0 = true;
    global0 = select(!(!(!select(vec2<bool>(arg_0.a.b, global0.x), vec2<bool>(arg_0.a.b, global0.x), global0.x))), select(select(select(vec2<bool>(true, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), arg_0.a.b), true), vec2<bool>(-805f < arg_0.a.d, true), vec2<bool>(global0.x, arg_0.a.b)), !func_3(vec2<f32>(-1740f, arg_0.a.d), false, arg_0, arg_0.a), vec2<bool>(true, true)), !(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_3(vec2<f32>(arg_1.a, arg_1.a), false, Struct_2(Struct_1(vec2<u32>(u_input.b, 8288u), false, vec3<u32>(4366u, arg_0.a.a.x, 0u), -998f), arg_0.b), Struct_1(u_input.a.zy, global0.x, u_input.a, arg_1.a)))));
    let var_1 = Struct_3(1i, func_2(arg_0.a, max(u_input.a, vec3<u32>(40102u, u_input.b, 45099u)) ^ arg_0.b.yww, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(138f, arg_1.a), arg_0.a.d) * 1055f)).c);
    var_0 = false;
    return func_2(Struct_1(~vec2<u32>(~var_1.b.x, 48202u), true, countOneBits(_wgslsmith_mod_vec3_u32(var_1.b, max(u_input.a, vec3<u32>(1u, 1u, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -256f)), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~arg_0.b), _wgslsmith_div_vec4_u32(~arg_0.b, ~arg_0.b)), abs(1u), ~arg_0.b.x), arg_0.a.d);
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(func_4(Struct_2(func_2(Struct_1(arg_0.b.xz, global0.x, vec3<u32>(arg_0.b.x, 0u, u_input.a.x), -274f), vec3<u32>(arg_0.b.x, 11165u, u_input.a.x), _wgslsmith_f_op_f32(round(1527f))), ~(~vec4<u32>(arg_0.b.x, 1u, arg_0.b.x, 4294967295u))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -130f))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(0u, 1u), arg_0.b.x, countOneBits(u_input.a.x)), firstTrailingBit(select(vec4<u32>(20273u, 1u, u_input.a.x, 24295u), vec4<u32>(11885u, 17016u, u_input.b, 1u), global0.x)), vec4<u32>(countOneBits(u_input.b), arg_0.b.x, 20214u, u_input.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.d, var_0.a.d), vec2<f32>(-352f, -397f), false)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.d, -508f), vec2<f32>(var_0.a.d, var_0.a.d), vec2<bool>(true, var_0.a.b))), true)))) * vec2<f32>(_wgslsmith_f_op_f32(min(1467f, _wgslsmith_f_op_f32(max(var_0.a.d, var_0.a.d)))), _wgslsmith_f_op_f32(var_0.a.d - var_0.a.d))));
    global0 = vec2<bool>(var_0.a.b, ~(~(-21549i) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -14270i, arg_0.a, 2147483647i), vec4<i32>(arg_0.a, -2147483647i, -50694i, 0i))) > arg_0.a);
    var var_2 = arg_0;
    var_2 = Struct_3(~(~_wgslsmith_div_i32(arg_0.a, min(arg_0.a, var_2.a))), ~(~(~u_input.a)) << (vec3<u32>(0u, _wgslsmith_mult_u32(arg_0.b.x, _wgslsmith_clamp_u32(87287u, arg_0.b.x, 4294967295u)), _wgslsmith_mod_u32(var_0.b.x, ~u_input.a.x)) % vec3<u32>(32u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(_wgslsmith_sub_i32(max(~4267i, _wgslsmith_clamp_i32(-6932i, 1i, 2147483647i)), -reverseBits(0i)), min(u_input.a >> (~vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.b, u_input.a.x))));
    var var_1 = -167f;
    let var_2 = ~firstLeadingBit(_wgslsmith_add_vec4_i32(countOneBits(select(vec4<i32>(-1i, var_0.a, -1i, var_0.a), vec4<i32>(2147483647i, var_0.a, var_0.a, 2147483647i), vec4<bool>(false, false, global0.x, global0.x))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 1i, -10525i, var_0.a), vec4<i32>(-1i, 5187i, -7778i, 28069i)))));
    let var_3 = _wgslsmith_mult_vec3_i32(var_2.yxx, -max(_wgslsmith_sub_vec3_i32(~var_2.zxx, var_2.xxy), ~firstTrailingBit(vec3<i32>(2147483647i, 12774i, var_2.x))));
    var var_4 = select(~func_1(func_1(var_0)).b.x, 30857u, any(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, global0.x, global0.x, false)), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true)), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~countOneBits(_wgslsmith_div_u32(var_0.b.x, 40032u))), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-935f, -105f, 1256f, _wgslsmith_div_f32(-1447f, 1859f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(961f, 435f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1659f) - vec2<f32>(-2211f, -406f)), !global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-427f, 1185f), vec2<f32>(-890f, 1754f))), global0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-527f, -1270f), vec2<f32>(-661f, 1913f), vec2<bool>(global0.x, true)))))));
}

