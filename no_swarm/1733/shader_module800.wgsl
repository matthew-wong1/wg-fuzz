struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(0i, vec3<i32>(0i, i32(-2147483648), 31903i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> bool {
    global0 = arg_1;
    var var_0 = abs(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(3495u, 0u, 25445u)));
    let var_1 = var_0.x;
    global0 = arg_1;
    var var_2 = arg_1.a;
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> vec3<f32> {
    global0 = Struct_4(global0.a);
    var var_0 = vec2<i32>(1i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.a, arg_3, 2147483647i), _wgslsmith_add_vec3_i32(arg_1.a.b, max(vec3<i32>(arg_3, arg_1.a.b.x, 2147483647i), u_input.a)))));
    global0 = Struct_4(arg_1.a);
    var var_1 = Struct_2(Struct_1(arg_1.a.a, ~max(global0.a.b, vec3<i32>(-12727i, arg_3, var_0.x))));
    var_0 = firstLeadingBit(abs(vec2<i32>(-(~var_0.x), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -1i))));
    return vec3<f32>(-474f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(round(-299f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1497f, 1647f, 449f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, -1351f, -1000f))))) + _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -458f), Struct_4(Struct_1(_wgslsmith_dot_vec3_i32(arg_0.b, u_input.a), global0.a.b | vec3<i32>(-2147483647i, arg_0.b.x, 2147483647i))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), func_3(any(vec2<bool>(false, true)), Struct_4(global0.a))), 2147483647i)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(702f, 1909f, false)), 1f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), vec3<f32>(2279f, _wgslsmith_f_op_f32(f32(-1f) * -1183f), 1889f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(478f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1000f, var_0.x), vec3<f32>(var_0.x, var_0.x, -1306f))))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-872f, var_0.x, -509f))) + _wgslsmith_f_op_vec3_f32(func_4(2133f, Struct_4(arg_0), vec3<bool>(true, true, true), u_input.b.x)))))));
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), ~firstLeadingBit(vec3<u32>(4294967295u, 44152u, 95028u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 53174u, 22326u, 3722u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 39189u, 68538u), vec4<u32>(64548u, 4294967295u, 4294967295u, 39732u), vec4<u32>(53574u, 26472u, 4294967295u, 4294967295u))), min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(55336u, 42783u), vec2<u32>(11259u, 88499u))), ~1u)), _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(1u, 1u, 1u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, var_0.x, var_0.x))))));
    return global0.a;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_4(func_2(global0.a));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1591f, -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f + 139f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(792f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1851f * -473f))))), _wgslsmith_f_op_f32(ceil(208f)), -983f);
    let var_2 = !all(!vec3<bool>(true, false, -1i > u_input.a.x));
    let var_3 = global0.a;
    let var_4 = vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(29754u, 1595u, 4294967295u, 4294967295u), ~vec4<u32>(3751u, 47481u, 9846u, 5693u))), 0u, firstTrailingBit(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 1u, 1u))));
    return vec4<bool>(var_2, false, false, false & var_2);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = select(arg_1.x, any(func_1().zyy), arg_1.x);
    let var_2 = true;
    var_0 = arg_0;
    var var_3 = any(func_1().zww);
    return Struct_3(-637f, -arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global0.a.b.x, func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(435f, 370f, -301f, var_0.a) - vec4<f32>(var_0.a, var_0.a, -497f, 2514f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -340f, var_0.a, -839f) * vec4<f32>(803f, var_0.a, var_0.a, var_0.a)))), vec4<f32>(635f, var_0.a, var_0.a, _wgslsmith_f_op_f32(-var_0.a)))));
    var var_2 = select(func_1().zx, func_1().wz, !(!(!any(vec3<bool>(false, true, true)))));
    var var_3 = var_2.x;
    var_2 = vec2<bool>(true, !(_wgslsmith_div_f32(1662f, _wgslsmith_f_op_f32(var_0.a * 578f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(326f))))));
    var_0 = func_5(~0i, vec4<bool>(var_2.x, var_2.x, false, !(all(vec2<bool>(var_2.x, false)) & var_2.x)));
    let var_4 = Struct_2(func_2(global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a - 1753f), _wgslsmith_f_op_f32(select(var_1.x, 971f, false)), var_0.a) - vec3<f32>(_wgslsmith_f_op_f32(sign(1223f)), 1f, var_1.x)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 718f, 674f), var_1.zxw)) - _wgslsmith_f_op_vec3_f32(func_4(var_0.a, Struct_4(Struct_1(1i, u_input.a)), vec3<bool>(var_2.x, var_2.x, false), var_0.b)))))), global0.a.a, 1u);
}

