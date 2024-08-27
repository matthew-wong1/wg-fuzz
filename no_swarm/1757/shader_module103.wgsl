struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(11172u, 4294967295u, 45255u, 1u);

var<private> global1: f32 = 1000f;

var<private> global2: f32 = -923f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_i32(~u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1807f), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), u_input.d, vec4<bool>(true, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), true, all(vec3<bool>(all(vec3<bool>(true, false, true)), false, u_input.a <= 1242i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, 1593f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(737f, var_0.b))))))));
    let var_2 = Struct_1(var_0.d, 1f, vec2<bool>(select(all(!vec3<bool>(false, var_0.e.x, var_0.e.x)), var_0.c.x, var_0.e.x), any(vec2<bool>(true, var_0.c.x))), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-25742i, -1i), reverseBits(vec2<i32>(u_input.a, var_0.d))), 1i), !(!vec4<bool>(11083u >= global0.x, true, true, true)));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_div_f32(-122f, -442f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_1.x)), -955f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(1705f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, -235f) + vec2<f32>(-2214f, var_2.b)))))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-516f))))), _wgslsmith_f_op_f32(-1161f + _wgslsmith_f_op_f32(round(-1107f)))));
    return true;
}

fn func_2() -> vec4<bool> {
    return !(!select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), func_3()));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = !(!select(select(func_2(), vec4<bool>(arg_3.c.x, false, false, false), select(arg_3.e, arg_3.e, false)), arg_3.e, !func_2().x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1845f, -2174f)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + arg_3.b)))));
    global2 = -1159f;
    let var_2 = vec4<i32>(38999i >> ((global0.x << (_wgslsmith_add_u32(118768u, global0.x) % 32u)) % 32u), ~arg_2, u_input.b, -5079i) | select(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a, arg_2, -4903i, arg_3.d), vec4<i32>(arg_3.a, 38282i, 2147483647i, -1i) ^ vec4<i32>(25184i, arg_3.a, arg_3.d, 1i))), vec4<i32>(firstTrailingBit(-arg_2), u_input.d, arg_3.d, 496i), !(!vec4<bool>(true, arg_3.e.x, true, false)));
    return !vec4<bool>(func_2().x, !var_0.x, true, !any(!vec2<bool>(var_0.x, true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = true;
    let var_2 = arg_1;
    global0 = _wgslsmith_div_vec4_u32(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(global0.zyy, vec3<u32>(4294967295u, global0.x, 40177u)), 1u, ~34818u) ^ countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(global0.x, global0.x, global0.x, 16214u)), ~vec4<u32>(global0.x, 16216u, global0.x, 0u))), firstTrailingBit(vec4<u32>(~min(global0.x, global0.x), ~4294967295u, 1591u, ~_wgslsmith_sub_u32(73947u, 62779u))));
    var var_3 = (_wgslsmith_mod_u32(~(1u >> (global0.x % 32u)), global0.x) < ~global0.x) && var_1;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32((_wgslsmith_clamp_vec4_i32(~vec4<i32>(-536i, -2147483647i, 35948i, arg_1.a), abs(vec4<i32>(u_input.d, arg_2.a, 0i, arg_1.a)), ~vec4<i32>(619i, u_input.a, 22348i, 33806i)) ^ _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_2.a, 76714i, -2147483647i, arg_0.d)), ~vec4<i32>(0i, arg_0.a, -1i, 0i))) & _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_1.a, -1i, 23691i, 5919i), select(vec4<i32>(34552i, u_input.d, 2147483647i, -1330i), vec4<i32>(u_input.b, arg_0.d, arg_1.d, -22606i), arg_0.e), true), abs(select(vec4<i32>(arg_1.d, 2147483647i, 0i, 0i), vec4<i32>(arg_2.a, 1904i, 0i, -2147483647i), vec4<bool>(arg_2.e.x, true, true, arg_2.c.x)))), vec4<i32>(firstTrailingBit(-(~u_input.b)), -2147483647i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(37840u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x)), ~global0.x) % 32u), arg_1.a, ~(-arg_2.d)));
    var var_1 = all(vec3<bool>(arg_2.e.x, any(!func_2().wx), any(!(!arg_2.c))));
    let var_2 = ~_wgslsmith_mod_i32(~2147483647i, -_wgslsmith_div_i32(_wgslsmith_add_i32(18991i, -1i), var_0.x ^ 0i));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1263f);
    var var_3 = arg_2;
    return func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1694f, -1161f))), arg_0, _wgslsmith_f_op_f32(ceil(arg_0.b)) > 378f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(vec2<f32>(arg_0.b, -466f), arg_1, var_3.e.x, arg_0.b).b) - _wgslsmith_f_op_f32(arg_1.b - arg_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1476f;
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, 287f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(703f, 329f), vec2<f32>(1411f, -916f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1038f, 474f)))), true)), Struct_1(0i, -894f, vec2<bool>(true, true), _wgslsmith_div_i32(27993i, 1i), func_1(1329f, abs(0u), -89259i, Struct_1(-2885i, -919f, vec2<bool>(false, false), u_input.d, vec4<bool>(false, true, true, true)))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), func_2())), 176f), func_4(vec2<f32>(_wgslsmith_f_op_f32(-1759f - 2104f), _wgslsmith_f_op_f32(f32(-1f) * -422f)), Struct_1((u_input.a >> (1u % 32u)) << (0u % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-783f)))), vec2<bool>(true, true), u_input.c.x | min(-17493i, u_input.d), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(813f - -1754f), 1089f))), func_4(vec2<f32>(_wgslsmith_f_op_f32(-func_4(vec2<f32>(1741f, -1398f), Struct_1(-1i, 860f, vec2<bool>(true, true), u_input.d, vec4<bool>(false, false, true, true)), false, 351f).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f * 1879f) + _wgslsmith_div_f32(-1000f, -1140f))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, -1574f) - vec2<f32>(-255f, -1000f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-442f, -137f)))), Struct_1(_wgslsmith_div_i32(-53692i, -4592i), -859f, vec2<bool>(true, true), -4467i, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), false, 1250f), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, 1420f)), Struct_1(u_input.c.x, 1103f, vec2<bool>(true, false), -1i, vec4<bool>(false, false, false, false)), true, 1000f).e.x & !any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(-1000f + -145f)));
    global0 = ~min(~vec4<u32>(global0.x, 821u, ~global0.x, _wgslsmith_sub_u32(global0.x, global0.x)), select(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(global0.x, 1u, global0.x, 1671u)), vec4<u32>(1u, 40532u, global0.x, 1u) ^ vec4<u32>(global0.x, 4294967295u, 0u, 90245u)), max(vec4<u32>(23593u, global0.x, 38674u, global0.x) >> (vec4<u32>(0u, 9304u, global0.x, global0.x) % vec4<u32>(32u)), ~vec4<u32>(global0.x, 4294967295u, 76055u, global0.x)), var_0.c.x));
    var var_1 = Struct_1(var_0.a, -1000f, !var_0.e.yw, -1i, vec4<bool>(any(var_0.e), var_0.c.x, func_2().x, (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, global0.x), global0.yxz) << (global0.x % 32u)) < global0.x));
    let var_2 = ((global0.x & (~4294967295u | global0.x)) < 1u) && false;
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(1i, _wgslsmith_mod_i32(var_0.d, u_input.d), 2147483647i)), -firstLeadingBit(~(~vec3<i32>(var_1.a, -4544i, 0i))), _wgslsmith_sub_i32((var_1.a & _wgslsmith_clamp_i32(u_input.a, -5971i, u_input.d)) << (global0.x % 32u), firstLeadingBit(reverseBits(-2147483647i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -865f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-104f, 3348f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-370f, var_1.b), vec2<f32>(2786f, var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, 128f)))))), u_input.b ^ countOneBits(-1i));
}

