struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(global0.a + 615f))));
    global0 = Struct_1(global0.a);
    global0 = Struct_1(global0.a);
    var var_0 = u_input.a.xy;
    return var_0.x ^ ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0.x, 0u), vec4<u32>(1u, u_input.a.x, var_0.x, var_0.x)) ^ (max(var_0.x, var_0.x) & ~68602u));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -410f));
    var var_0 = -(~vec2<i32>(1i, countOneBits(-1i)));
    let var_1 = vec2<bool>(true, false);
    var var_2 = vec3<i32>(-1i) * -(vec3<i32>(0i, arg_0.a, 71845i) & ~(vec3<i32>(-55089i, 55091i, 2267i) & vec3<i32>(2147483647i, arg_0.a, 2147483647i)));
    let var_3 = ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(36108u, arg_1), 4294967295u), _wgslsmith_div_u32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 352f, global0.a) + vec3<f32>(185f, global0.a, -789f))), u_input.a.x & firstTrailingBit(arg_1)), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), 1492u, ~_wgslsmith_mult_u32(u_input.a.x, arg_1)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -337f)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    var var_0 = vec3<u32>(4294967295u, 4294967295u, abs(firstLeadingBit(28608u)));
    global0 = arg_1.a;
    let var_1 = Struct_5(331f);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 20044u), _wgslsmith_mult_u32(u_input.a.x, var_0.x)) ^ ~(~(1u >> (_wgslsmith_sub_u32(37808u, u_input.a.x) % 32u)));
    var_2 = ~27970u | (~_wgslsmith_mod_u32(38548u, ~0u) ^ countOneBits(u_input.a.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -957f);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(arg_1.b.d.wx, Struct_2(func_2(Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-21526i, arg_1.b.b, -12745i), vec3<i32>(arg_1.b.b, 0i, 1i))), _wgslsmith_clamp_u32(abs(12847u), 1u, u_input.a.x)), -2147483647i, vec4<f32>(arg_1.c.a, global0.a, arg_0.x, _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(1334f * arg_0.x))), vec4<bool>(any(select(vec2<bool>(arg_1.b.d.x, true), arg_1.b.d.xy, arg_1.b.d.ww)), any(vec2<bool>(arg_1.b.d.x, false)), any(vec2<bool>(arg_1.b.d.x, false)), !(868f > global0.a))), Struct_4(_wgslsmith_div_i32(1i, arg_1.b.b)), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_f_op_f32(-global0.a)) - 769f))));
    let var_1 = ~(~(-select(vec2<i32>(arg_1.b.b, arg_1.b.b), vec2<i32>(arg_1.b.b, arg_1.b.b), arg_1.b.d.x) >> (u_input.a.xy % vec2<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(135f - _wgslsmith_f_op_f32(func_4(arg_1.b.d.wy, Struct_2(arg_1.a, ~(-2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, arg_1.d, arg_1.a.a, -376f) + arg_1.b.c), vec4<bool>(false, arg_1.b.d.x, arg_1.b.d.x, true)), Struct_4(_wgslsmith_div_i32(arg_1.b.b, -1i)), Struct_5(_wgslsmith_div_f32(1704f, 1509f))))));
    var var_2 = u_input.a.yxx >> (max(vec3<u32>(arg_2, _wgslsmith_div_u32(u_input.a.x, arg_3 | 0u), ~abs(arg_3)), vec3<u32>(77855u, 3786u, arg_2)) % vec3<u32>(32u));
    let var_3 = _wgslsmith_dot_vec2_u32(~var_2.zx, ~var_2.yx) & 65035u;
    return 6693i & min(-_wgslsmith_clamp_i32(var_1.x, -2147483647i, -1i) << ((0u << (~4294967295u % 32u)) % 32u), -44704i);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_5 {
    var var_0 = vec3<bool>(false, true, false);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))), 1203f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(func_1(vec2<f32>(1000f, 2345f), Struct_3(Struct_1(-724f), Struct_2(Struct_1(global0.a), 2147483647i, vec4<f32>(global0.a, global0.a, global0.a, 386f), vec4<bool>(true, false, true, true)), Struct_1(-776f), global0.a), 1u, u_input.a.x) & firstTrailingBit(27476i)) ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -1i), vec2<i32>(25320i, 36171i) << (u_input.a.zw % vec2<u32>(32u))), 0i), Struct_4(-2147483647i), firstLeadingBit(-1i));
    var var_1 = firstLeadingBit(u_input.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(54004u, _wgslsmith_clamp_u32(u_input.a.x, ~17028u, 0u), 55974u, ~20930u), ~(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 85492u) & (u_input.a >> (u_input.a % vec4<u32>(32u)))), u_input.a) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(36024i, -_wgslsmith_add_i32(1i, func_1(vec2<f32>(441f, global0.a), Struct_3(Struct_1(var_0.a), Struct_2(Struct_1(var_0.a), 55415i, vec4<f32>(-1000f, global0.a, global0.a, var_0.a), vec4<bool>(false, true, false, true)), Struct_1(var_0.a), -1856f), _wgslsmith_sub_u32(0u, u_input.a.x), var_1.x << (var_1.x % 32u))));
}

