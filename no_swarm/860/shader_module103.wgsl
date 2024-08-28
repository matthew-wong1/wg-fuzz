struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(select(!select(!global0.a, select(vec2<bool>(global0.a.x, true), global0.a, global0.a.x), !vec2<bool>(global0.a.x, true)), select(vec2<bool>(!global0.a.x, false), vec2<bool>(true, all(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x))), vec2<bool>(true, false)), !select(select(global0.a, global0.a, global0.a), !vec2<bool>(false, global0.a.x), false)));
    var var_0 = Struct_2(39920u, Struct_1(select(!(!vec2<bool>(global0.a.x, global0.a.x)), !global0.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-891f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(937f - 432f), _wgslsmith_div_f32(-792f, -2592f)))) * _wgslsmith_f_op_f32(-1f)), u_input.a.x, -(~1i));
    let var_1 = Struct_2(~abs(abs(4294967295u << (var_0.a % 32u))), var_0.b, var_0.c, 0i, _wgslsmith_clamp_i32(38905i, _wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(var_0.d, -9240i, -1648i)) >> (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u), u_input.a.x) & u_input.a.x);
    var_0 = var_1;
    var_0 = var_1;
    return vec2<bool>(false, true & (37884u < (var_1.a ^ ~65955u)));
}

fn func_2() -> vec2<bool> {
    let var_0 = true;
    return func_3();
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<bool>(!(!global0.a.x), all(!select(!vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, false), select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(false, global0.a.x, false), global0.a.x))), !(true & !any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x))));
    global0 = Struct_1(func_2());
    var var_1 = ~select(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 92076u)), ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(u_input.b), vec4<u32>(72144u, 12561u, u_input.b.x, 12397u) >> (vec4<u32>(31767u, u_input.b.x, 54267u, 1u) % vec4<u32>(32u)), u_input.b), all(vec4<bool>(false, any(vec4<bool>(var_0.x, true, false, true)), var_0.x, var_0.x)));
    let var_2 = 2520u;
    global0 = Struct_1(var_0.yz);
    return Struct_1(func_3());
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = func_1(u_input.a.wx);
    let var_0 = u_input.a.yw & vec2<i32>(~(-u_input.a.x ^ u_input.a.x), i32(-1i) * -1i);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(796f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1354f, -1180f), vec2<f32>(-771f, -1294f), vec2<bool>(arg_1.a.x, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, -1034f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-934f, -845f) * vec2<f32>(2283f, 1489f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1191f) + -1305f) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-1963f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(f32(-1f) * -1050f))))))));
    return reverseBits(~_wgslsmith_div_u32(u_input.b.x, 41988u));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(12747u, arg_0, 1u, u_input.b.x)), abs(_wgslsmith_sub_u32(arg_2, u_input.b.x))) >> (arg_0 % 32u), func_1(max(_wgslsmith_mod_vec2_i32(select(u_input.a.ww, u_input.a.zx, true), _wgslsmith_div_vec2_i32(vec2<i32>(7966i, 46428i), u_input.a.zw)), abs(vec2<i32>(1i, u_input.a.x)))), -1495f, i32(-1i) * -countOneBits(u_input.a.x), 1i);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xwz, ~abs(u_input.b.xyw)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0, 1u), ~11003u), arg_0), arg_2, _wgslsmith_sub_u32(firstLeadingBit(firstLeadingBit(var_0.a)), func_4(Struct_1(global0.a), var_0.b, var_0.b))), firstLeadingBit(u_input.b));
    var var_2 = func_1(vec2<i32>(-1i) * -u_input.a.zw);
    var_2 = Struct_1(select(vec2<bool>(true && func_1(vec2<i32>(0i, u_input.a.x)).a.x, arg_1.x), !select(vec2<bool>(false, arg_1.x), !vec2<bool>(true, arg_1.x), false), global0.a.x));
    var var_3 = _wgslsmith_sub_i32(-30210i, ~(1i << (firstTrailingBit(4294967295u) % 32u)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(min(1511f, var_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(global0.a, global0.a, !global0.a.x & !global0.a.x));
    let var_0 = !(!global0.a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(func_4(func_1(u_input.a.wx), Struct_1(vec2<bool>(false, global0.a.x)), Struct_1(global0.a)), vec4<bool>(global0.a.x, false, global0.a.x != var_0, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 0u), reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 0u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), 1081f), true)) - 133f);
    let var_2 = Struct_2(u_input.b.x, Struct_1(global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) - -653f)), 1i, _wgslsmith_mod_i32(2147483647i, ~6030i));
    global0 = func_1(vec2<i32>(-1i) * -u_input.a.zw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1030f, 738f), -1000f, -510f, _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, var_2.c, -1218f, -655f)))))), ~(func_4(func_1(u_input.a.yx), func_1(vec2<i32>(var_2.d, 3296i)), Struct_1(vec2<bool>(var_2.b.a.x, global0.a.x))) << (var_2.a % 32u)));
}

