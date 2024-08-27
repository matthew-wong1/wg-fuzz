struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = vec4<bool>(false, false, true, any(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, -509f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), -1229f) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1)))), arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), -819f));
    let var_2 = Struct_1(false);
    global0 = 0u;
    let var_3 = select(all(vec4<bool>(false, true, var_2.a, var_2.a || true)) & !var_0.x, true, any(!vec3<bool>(false, true, var_0.x)));
    return vec2<bool>((var_2.a | (true & var_2.a)) | !(!var_2.a), false);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~57384u;
    var var_1 = Struct_1(all(select(func_3(vec2<i32>(42981i, 2147483647i), -323f, vec2<u32>(30717u, var_0)), vec2<bool>(true, true), true)) | any(select(func_3(vec2<i32>(arg_0.x, arg_0.x), 813f, vec2<u32>(70193u, var_0)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false))));
    global0 = abs(u_input.a);
    var_1 = Struct_1(any(!vec2<bool>(true, var_1.a)));
    var_1 = Struct_1(all(vec4<bool>(!var_1.a, true, -1000f < _wgslsmith_f_op_f32(ceil(627f)), !any(vec2<bool>(false, true)))));
    return select(~(~(~(~u_input.a))), _wgslsmith_clamp_u32(u_input.a << (0u % 32u), _wgslsmith_mod_u32(~abs(var_0), countOneBits(1u)), ~1519u), var_1.a);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global0 = ~arg_2.d.b;
    var var_0 = arg_1.wx;
    var var_1 = ~1u;
    var_0 = arg_1.zx;
    global0 = arg_0;
    return Struct_1(_wgslsmith_sub_u32(~firstLeadingBit(4294967295u), u_input.a) == arg_2.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(arg_2.x, _wgslsmith_mod_u32(arg_2.x, u_input.a));
    var var_1 = func_4(~func_2(-firstTrailingBit(vec2<i32>(arg_0.x, arg_0.x))), vec4<i32>(-_wgslsmith_clamp_i32(-arg_1.x, firstTrailingBit(-1i), arg_1.x), arg_1.x, -abs(-11959i), arg_0.x), Struct_3(true, 1u | abs(arg_2.x), ~_wgslsmith_mult_u32(u_input.a, u_input.a), Struct_2(Struct_1(true), 1u, _wgslsmith_add_i32(arg_0.x, max(arg_0.x, -44068i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(182f, -645f) * vec2<f32>(-575f, -119f)))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, false))))), Struct_1(false));
    let var_2 = Struct_3(var_1.a, _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(arg_2.x, u_input.a, arg_2.x))), ~firstTrailingBit(vec3<u32>(0u, 4294967295u, u_input.a)) ^ vec3<u32>(~10265u, 0u, 1u)), 0u, Struct_2(Struct_1(true), u_input.a, arg_1.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1705f, -1171f), vec2<f32>(-1495f, -726f)))), !var_1.a);
    var_1 = var_2.d.a;
    var_1 = func_4(u_input.a | 1u, arg_1, var_2, Struct_1(var_2.d.a.a));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = 0u | u_input.a;
    var var_0 = _wgslsmith_mult_i32(0i, select(_wgslsmith_mult_i32(-(~(-1i)), firstLeadingBit(func_1(vec4<i32>(19248i, 21331i, 2147483647i, 19817i), vec4<i32>(-2147483647i, 2147483647i, 5058i, -2147483647i), vec2<u32>(u_input.a, 27062u)))), -31022i, true));
    global0 = _wgslsmith_mod_u32(u_input.a, 72966u);
    let var_1 = func_3(-(~vec2<i32>(~22111i, i32(-1i) * -8800i)), -1000f, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), 1u), _wgslsmith_mult_u32(min(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, 1u))), reverseBits(1u))).x;
    var_0 = -reverseBits(1i);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(1i, 1i, 1i)), 41385i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~1927i, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-9968i, -38448i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -1i, -8268i), vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-1i, 1i, -65284i, -9590i))), ~(~firstTrailingBit(-29827i)), 0i), -(~vec4<i32>(~(-1i), 1i, 1i, abs(-8793i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2219f, _wgslsmith_f_op_f32(trunc(376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1576f + -1334f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -177f)), _wgslsmith_f_op_f32(sign(1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1255f, 1047f, 1000f, -1131f), vec4<f32>(-935f, -1000f, -839f, -691f))))), _wgslsmith_add_u32(abs((u_input.a | u_input.a) & firstTrailingBit(u_input.a)), 0u));
}

