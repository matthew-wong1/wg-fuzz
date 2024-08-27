struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 0i, i32(-2147483648));

var<private> global1: vec3<f32> = vec3<f32>(-432f, 766f, -182f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) != _wgslsmith_f_op_f32(round(554f));
    var var_1 = abs(arg_0.a) | 5327u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -879f)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(4126u), select(_wgslsmith_div_u32(1u, 4294967295u), firstLeadingBit(59055u), all(vec4<bool>(false, true, true, false)))), vec2<u32>(~1u, countOneBits(~1u))), ~(~14043u) | (~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), ~vec3<u32>(17240u, 1u, 0u)) % 32u)), ~(26995u << (~_wgslsmith_clamp_u32(4294967295u, 31251u, 0u) % 32u)));
    var var_1 = ~_wgslsmith_dot_vec2_u32(~countOneBits(countOneBits(vec2<u32>(1u, var_0.c))), vec2<u32>(_wgslsmith_div_u32(var_0.b, abs(var_0.c)), 1u));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 515f, global1.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-456f, -168f, 666f), vec3<f32>(-793f, 616f, global1.x))))))) * vec3<f32>(668f, _wgslsmith_f_op_f32(func_3(var_0)), global1.x)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(507f, 1650f, global1.x) + vec3<f32>(global1.x, -530f, global1.x))))))));
    var_1 = max(abs(0u) ^ var_0.c, var_0.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.x, 440f)), 467f)) + -167f), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.c, _wgslsmith_div_u32(var_0.c, 4294967295u), ~4294967295u))))) - _wgslsmith_f_op_f32(func_3(var_0)));
    return vec2<u32>(var_0.b, ~var_0.c);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0, _wgslsmith_dot_vec2_u32(select(func_2(), ~_wgslsmith_sub_vec2_u32(vec2<u32>(35581u, arg_0), vec2<u32>(1u, arg_0)), arg_1.yz), firstLeadingBit(~countOneBits(vec2<u32>(arg_0, arg_0)))), 1u);
    var var_1 = vec4<bool>((true & !(global0.x < -2147483647i)) == true, !all(vec2<bool>(true, true)), arg_1.x, arg_1.x | select(arg_1.x, 1u > var_0.b, any(select(arg_1.zzx, vec3<bool>(false, false, false), vec3<bool>(false, true, arg_1.x)))));
    let var_2 = !(!(!(u_input.a.x >= global0.x)) & true);
    let var_3 = max(~global0.x, countOneBits(~_wgslsmith_mod_i32(countOneBits(global0.x), abs(global0.x))));
    return Struct_1(abs(18490u), _wgslsmith_mult_u32(43241u, 15096u), max(~_wgslsmith_mod_u32(~0u, ~0u), arg_0));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = 1000f;
    var var_1 = _wgslsmith_dot_vec3_i32((_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-4134i, 2147483647i, global0.x), vec3<i32>(-14254i, -41385i, -2147483647i)), ~u_input.a) & ~_wgslsmith_mod_vec3_i32(vec3<i32>(47346i, 0i, 2147483647i), vec3<i32>(19859i, global0.x, -2147483647i))) | (vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, global0.x, u_input.a.x)), -min(firstTrailingBit(u_input.a), vec3<i32>(global0.x, _wgslsmith_mult_i32(u_input.a.x, 0i), -1i)));
    let var_2 = arg_2;
    let var_3 = 0u;
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, var_0) * _wgslsmith_f_op_f32(520f - var_0)), -1119f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1083f, global1.x, var_0) * vec3<f32>(var_0, arg_0, arg_0)), vec3<f32>(654f, -1667f, 365f)))))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-307f, -421f, _wgslsmith_f_op_f32(max(-964f, _wgslsmith_f_op_f32(f32(-1f) * -785f)))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(22289u, 1u, 4294967295u, 44956u), ~vec4<u32>(4294967295u, 7630u, 1u, 0u)), 66723u), func_4(-968f, 788f, func_1(_wgslsmith_clamp_u32(35762u, 72750u, 4294967295u), vec4<bool>(false, false, false, false), vec4<f32>(952f, global1.x, global1.x, global1.x)), 7025u)), abs(~_wgslsmith_mod_u32(~69276u, 1u)), reverseBits(global0.yx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

