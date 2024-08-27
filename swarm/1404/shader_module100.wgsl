struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(16609u, 28044u)) << ((~28132u >> (1u % 32u)) % 32u)));
    global1 = Struct_1(~abs(global1.a));
    let var_1 = Struct_1(countOneBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(global1.a & 13437i, 0i >> (var_0 % 32u)), _wgslsmith_dot_vec2_i32(u_input.a.zw, min(u_input.a.yw, vec2<i32>(u_input.a.x, global1.a))))));
    global1 = Struct_1(_wgslsmith_add_i32(reverseBits(0i), -13787i));
    var var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xzw, u_input.a.zwy), reverseBits(vec3<i32>(max(1i, global1.a), max(2147483647i, var_1.a), 2827i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 15929i, 40461i), u_input.a.xzx << (vec3<u32>(4294967295u, var_0, 1u) % vec3<u32>(32u)), ~u_input.a.yyx)));
    return Struct_1(11047i);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global1 = func_2();
    global0 = 632f;
    global0 = 756f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1864f, -187f))), vec2<bool>(true, false))) + vec2<f32>(-445f, 887f)));
    return func_2();
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(81287u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 63707u, 1u), vec3<u32>(1u, 0u, 0u)), _wgslsmith_sub_u32(1u, 1u), 1u), ~(~1u), select(~1u >> (_wgslsmith_mult_u32(46703u, 0u) % 32u), max(13616u, 1u), true)), vec4<u32>(1u, 1u, 1u, 1u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - 1f) + _wgslsmith_f_op_f32(ceil(-999f))))) * 458f);
    return var_0.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(func_3(abs(vec3<i32>(13152i, global1.a, 1i)), func_1(Struct_1(2147483647i), 11346i, Struct_1(global1.a), Struct_1(u_input.a.x))) & ~(~vec2<u32>(1u, 0u))) & vec2<u32>(abs(_wgslsmith_sub_u32(1u, 1u)), _wgslsmith_div_u32(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 68575u, 65044u), vec3<u32>(0u, 0u, 1u))), _wgslsmith_clamp_u32(select(0u, 10869u, false), _wgslsmith_div_u32(4294967295u, 4294967295u), ~4294967295u)));
    var_0 = vec2<u32>(~(~abs(0u)), ~(~(~_wgslsmith_mod_u32(var_0.x, var_0.x))));
    global1 = func_2();
    var var_1 = abs(abs(_wgslsmith_add_vec2_i32(u_input.a.yx, countOneBits(u_input.a.xw)) & vec2<i32>(abs(global1.a), ~global1.a)));
    var var_2 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, 228f, 1465f, -1191f) - vec4<f32>(818f, 438f, -861f, 922f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -683f, -913f, 916f))), vec4<bool>(true, true, true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1072f)), _wgslsmith_f_op_f32(-2127f * -729f), any(vec3<bool>(true, false, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + -1792f)))), _wgslsmith_f_op_f32(-1682f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + 1033f), _wgslsmith_f_op_f32(max(-586f, -1216f)), all(vec4<bool>(false, false, false, true))))))));
}

