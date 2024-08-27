struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(33401i, vec3<bool>(false, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = arg_2.a;
    global0 = Struct_2(Struct_1(global0.e.a, vec3<bool>(true, true & arg_2.b.x, any(vec3<bool>(true, true, global1.b.x)))), ~global0.b, -global1.a, global0.e, Struct_1(-27864i, select(vec3<bool>(true, !arg_1.x, arg_1.x), !vec3<bool>(arg_0, arg_2.b.x, arg_1.x), true)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(562f, arg_3.x, arg_3.x), arg_3.wyx)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-440f, arg_3.x, arg_3.x))))));
    let var_2 = 930f;
    global1 = Struct_1(~arg_2.a, select(arg_2.b, !(!arg_1), vec3<bool>(global1.b.x, true, select(true, true, global0.d.b.x))));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec2<u32>(max(func_3(all(global0.a.b) && all(vec3<bool>(global1.b.x, false, global0.e.b.x)), !vec3<bool>(false, var_0.b.x, false), Struct_1(~global1.a, !vec3<bool>(true, var_0.b.x, true)), vec4<f32>(-385f, -260f, -618f, _wgslsmith_div_f32(-167f, -1000f))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(24317u, u_input.a, 60205u, u_input.a), ~vec4<u32>(17010u, 1u, u_input.a, 4294967295u)), abs(max(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(23140u, u_input.a, 18095u, 4294967295u))))), u_input.a);
    global0 = Struct_2(var_0, _wgslsmith_sub_vec4_i32(global0.b, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-31037i, 12627i, global0.e.a, 4639i)), vec4<i32>(u_input.b.x, -2147483647i, 2676i, global0.b.x), firstTrailingBit(vec4<i32>(global0.e.a, 1i, u_input.b.x, 0i)))) & firstLeadingBit(countOneBits(max(vec4<i32>(-15105i, -10272i, arg_0.a, arg_0.a), u_input.b))), -12791i, Struct_1(-var_0.a & -2147483647i, select(select(vec3<bool>(arg_0.b.x, false, true), !vec3<bool>(var_0.b.x, arg_0.b.x, false), global0.d.b), !(!vec3<bool>(arg_1.b.x, true, false)), vec3<bool>(arg_0.b.x, true, true))), Struct_1((abs(53901i) ^ var_0.a) | _wgslsmith_sub_i32(arg_0.a, -arg_1.a), !var_0.b));
    let var_2 = !vec3<bool>(all(select(vec4<bool>(true, true, global1.b.x, global1.b.x), select(vec4<bool>(false, arg_1.b.x, true, false), vec4<bool>(false, true, global0.a.b.x, true), true), global1.b.x | global0.e.b.x)), select(true || select(true, true, false), false, true), any(global0.e.b.xy) == global1.b.x);
    global1 = arg_0;
    return Struct_1(abs(-firstLeadingBit(~arg_0.a)), vec3<bool>(arg_1.b.x, any(select(!vec4<bool>(global0.d.b.x, false, false, true), select(vec4<bool>(global1.b.x, var_0.b.x, false, false), vec4<bool>(arg_1.b.x, false, arg_1.b.x, global0.e.b.x), vec4<bool>(false, var_0.b.x, false, false)), select(vec4<bool>(false, arg_0.b.x, var_2.x, true), vec4<bool>(global0.e.b.x, true, true, global0.e.b.x), global0.e.b.x))), true));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.b;
    var var_1 = global0.d;
    global1 = func_2(global0.d, Struct_1(-(arg_2.a ^ 2147483647i) | 1i, select(!global0.d.b, var_1.b, var_1.b.x)));
    var var_2 = Struct_2(arg_2, vec4<i32>(~(~(~8826i)), 0i, arg_1.x, ~arg_1.x), _wgslsmith_div_i32(abs(global1.a), -4794i), Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.wz, vec2<i32>(4178i, var_1.a)), global0.b.x), !select(vec3<bool>(global1.b.x, false, false), global0.e.b, vec3<bool>(arg_2.b.x, var_1.b.x, global1.b.x))), global0.a);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, arg_1.x), min(vec2<i32>(0i, var_2.c), vec2<i32>(23372i, var_1.a))), arg_1.x) << (~u_input.a % 32u), max(firstLeadingBit(-2147483647i), global0.e.a));
    return _wgslsmith_dot_vec2_i32(-var_0.yw, u_input.b.ww ^ vec2<i32>(1i, min(arg_1.x, -17973i)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> StorageBuffer {
    let var_0 = func_2(global0.e, Struct_1(select(firstLeadingBit(~arg_1), arg_1, global0.d.b.x), select(!(!vec3<bool>(true, global0.e.b.x, global1.b.x)), select(select(global0.e.b, global1.b, false), select(vec3<bool>(global0.e.b.x, true, global0.a.b.x), global1.b, true), true), false)));
    var var_1 = !vec3<bool>(true, func_2(Struct_1(27956i, !var_0.b), Struct_1(0i, var_0.b)).b.x, !(global0.a.b.x && any(vec4<bool>(var_0.b.x, var_0.b.x, false, false))));
    var_1 = !(!(!vec3<bool>(true, select(false, global1.b.x, false), 56807u > u_input.a)));
    var var_2 = func_2(func_2(global0.d, global0.d), var_0);
    global1 = var_0;
    return StorageBuffer(abs(abs(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_div_u32(4294967295u, u_input.a), select(u_input.a, u_input.a, var_0.b.x), _wgslsmith_add_u32(0u, 74722u)))), ~(-reverseBits(vec2<i32>(global0.c, 10697i))), 4294967295u, vec2<i32>(-_wgslsmith_clamp_i32(firstLeadingBit(global0.c), -2147483647i, ~43577i), _wgslsmith_mod_i32(0i, select(var_2.a, 2147483647i, var_2.b.x)) >> (u_input.a % 32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a), ~1u, 1u, u_input.a), vec4<u32>(func_3(var_0.b.x, var_2.b, global0.e, vec4<f32>(arg_0.x, 329f, -725f, -530f)), ~39370u, _wgslsmith_mod_u32(u_input.a, 17375u), ~77440u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1f, -329f);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1218f, _wgslsmith_f_op_f32(max(-1531f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-887f)))))), 369f, _wgslsmith_f_op_f32(max(-421f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1723f), _wgslsmith_f_op_f32(-var_0.x)))))) + vec4<f32>(var_0.x, 602f, var_0.x, 1962f));
    let var_2 = 23120u;
    var var_3 = -vec3<i32>(21668i, 1i, -1i);
    let var_4 = select(vec2<bool>(true, false), global0.e.b.zy, global1.b.yx);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(-var_1.xyw)))), -(func_1(var_3.x == global1.a, select(var_3.yy, var_3.yx, var_4), global0.e) | -1i));
}

