struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

var<private> global1: i32 = 44024i;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, 0i, -37281i, 2147483647i), vec4<i32>(arg_0.b.x, 2147483647i, 23642i, global0.x), arg_0.b)), ~(vec4<i32>(-49947i, global0.x, arg_0.b.x, global0.x) & firstLeadingBit(vec4<i32>(47029i, 51991i, -2147483647i, 1i)))), abs(-(vec4<i32>(-1i) * -u_input.b)));
    let var_0 = true;
    var var_1 = ~(-22587i);
    var_1 = abs(-u_input.b.x);
    let var_2 = var_0;
    return -21537i;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) + -537f);
    global0 = ~(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yx, ~u_input.b.wz), select(abs(vec2<i32>(u_input.b.x, u_input.b.x)), ~vec2<i32>(2147483647i, 26872i), any(vec3<bool>(arg_0.x, true, false)))) << (countOneBits(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 4304u), ~vec2<u32>(22657u, 46887u))) % vec2<u32>(32u)));
    global0 = arg_2.yz;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(103f, var_0, var_0) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0, -724f) * vec3<f32>(var_0, var_0, var_0))))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -259f) + var_0)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-685f, var_1.x, true))))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) * _wgslsmith_f_op_f32(round(1f))));
    return arg_2.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~func_2(Struct_1(1u, vec4<i32>(24587i, global0.x, global0.x, -17194i), vec3<u32>(arg_2, arg_2, u_input.a)), 1u), firstLeadingBit(i32(-1i) * -24295i)) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(global0.x, 42662i)), ~(vec2<i32>(-1i) * -vec2<i32>(-264i, -36083i)));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(~var_0.x, 5230i), min(~vec2<i32>(28570i, u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), -vec2<i32>(28167i, 2147483647i), -u_input.b.yy))));
    var var_2 = _wgslsmith_f_op_f32(-325f + _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(572f + -756f)));
    global0 = vec2<i32>(-1i, ~func_3(vec2<bool>(arg_3, !arg_3), Struct_2(~(-9848i)), u_input.b.wxy));
    let var_3 = Struct_2(var_0.x);
    return Struct_1(countOneBits(~1u) | (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x), arg_1.yz) << (~abs(arg_2) % 32u)), vec4<i32>(~(~(-var_1.a)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.x, 1i), countOneBits(u_input.b.yxz)), _wgslsmith_mult_i32(1i, -(i32(-1i) * -2147483647i)), global0.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, arg_1.x), _wgslsmith_dot_vec2_u32(arg_1.yz, vec2<u32>(u_input.a, arg_1.x))), 68600u), vec3<u32>(10515u, 4294967295u, 24497u) | arg_1));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1057f, 1364f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-3058f)), _wgslsmith_f_op_f32(-367f + -917f))))));
    let var_1 = vec2<u32>(u_input.a, 0u);
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global0.x, global0.x), arg_1), -(arg_0.b.xw << (var_1 % vec2<u32>(32u)))), ~(-abs(vec2<i32>(29485i, global0.x)))) << (vec2<u32>(arg_0.c.x, 22655u) % vec2<u32>(32u));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, -718f, -420f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -1054f, false)) + -609f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -189f)))), 554f));
    let var_3 = vec2<bool>(false, true);
    return -746f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-347f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1658f * 1377f))), _wgslsmith_f_op_f32(floor(756f)))), _wgslsmith_f_op_f32(select(607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-810f, -119f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(684f, 346f)), -829f))), false)));
    global0 = u_input.b.zw;
    let var_1 = _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2448f, var_0.x), vec2<f32>(-288f, 151f))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 37847u, u_input.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(14440u, u_input.a, 1u), vec3<u32>(0u, 1u, 4294967295u))), u_input.a, false), ~(~global0.x), u_input.a, Struct_2(~(-1i))));
    var var_2 = -2147483647i;
    var_2 = max(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x & u_input.b.x, -10121i) << (3702u % 32u), _wgslsmith_div_i32(global0.x & u_input.b.x, u_input.b.x), -_wgslsmith_add_i32(26041i, ~u_input.b.x)), -16742i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, min(vec3<u32>(8240u, ~u_input.a, u_input.a) << (_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(74360u, 78201u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 1u)), vec3<u32>(u_input.a, u_input.a, u_input.a))), select(max(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, 1063u), vec4<u32>(u_input.a, 0u, u_input.a, 0u))), vec4<u32>(_wgslsmith_sub_u32(65163u, u_input.a), max(u_input.a, 0u), ~u_input.a, u_input.a)), vec4<u32>(u_input.a, select(24578u, u_input.a, true) << (15825u % 32u), ~(~u_input.a), 4294967295u), select(vec4<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true, false), vec4<bool>(true, select(true, true, true), true, -55291i <= global0.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), vec3<i32>(-2147483647i, func_2(func_1(vec2<f32>(209f, var_1), vec3<u32>(0u, 64233u, u_input.a), 74708u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 57190u), vec3<u32>(u_input.a, 49829u, u_input.a))) & -global0.x, ~(~_wgslsmith_clamp_i32(u_input.b.x, -26273i, u_input.b.x))), ~(firstLeadingBit(u_input.b.x) >> (u_input.a % 32u)));
}

