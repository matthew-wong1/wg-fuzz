struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_1;
    var var_1 = abs(~(~select(vec3<i32>(-1i, u_input.b, -2147483647i) >> (arg_2.zyy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 1i, 1i), vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b)), !arg_3.x)));
    var var_2 = abs(vec2<u32>(u_input.a, var_0.a));
    var var_3 = abs(~var_1.yx);
    var_1 = max(abs(reverseBits(vec3<i32>(_wgslsmith_mod_i32(var_3.x, var_1.x), _wgslsmith_clamp_i32(-1i, u_input.b, 27151i), 21600i))), vec3<i32>(select(~reverseBits(u_input.b), min(-51570i, _wgslsmith_clamp_i32(-39512i, var_1.x, 37464i)), true), -arg_0, countOneBits(arg_0)));
    return min(u_input.d, _wgslsmith_add_u32(1u, 11384u) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), ~4294967295u) % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(632f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)))));
    var var_1 = !(!vec3<bool>(false, select(true, true, any(vec2<bool>(true, true))), func_3(14234i, Struct_1(u_input.a), vec4<u32>(4294967295u, 59356u, u_input.a, u_input.c), vec3<bool>(true, true, false)) < u_input.c));
    var_1 = !vec3<bool>(all(var_1.xx), var_1.x, true);
    var_1 = !vec3<bool>(false, _wgslsmith_div_u32(u_input.c, _wgslsmith_sub_u32(68738u, u_input.c)) < ~abs(4294967295u), select(u_input.c == _wgslsmith_mult_u32(60382u, u_input.e.x), var_1.x, true));
    var_1 = !(!select(vec3<bool>(true, true, true), select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), var_1.x), !(!vec3<bool>(false, false, var_1.x))));
    return Struct_1(4294967295u);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(63887u, 1u, var_0.a), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e, u_input.e), u_input.e)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-747f, _wgslsmith_div_f32(-1079f, 1093f)));
    let var_2 = ~u_input.a;
    var_0 = func_2();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = ((_wgslsmith_mod_u32(6276u, 1u) & u_input.c) << (1u % 32u)) < 1u;
    var var_2 = arg_2;
    var_2 = Struct_1(1u);
    let var_3 = func_2();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1521f, _wgslsmith_f_op_f32(ceil(-956f))))) - _wgslsmith_f_op_f32(max(200f, -1964f)));
    let var_1 = Struct_1(4294967295u);
    var var_2 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 - var_0), -1307f, var_0, var_0))), Struct_1(u_input.e.x));
    var_2 = func_1();
    var var_3 = select(vec3<bool>(false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-725f * 1000f)) >= 987f), vec3<bool>(all(vec3<bool>(true, true, true)), true, true), true);
    let var_4 = var_3.x;
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(func_2().a, abs(u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, 51063u) << (vec2<u32>(var_2.a, 55568u) % vec2<u32>(32u)), vec2<u32>(2672u, var_1.a)))), ~_wgslsmith_add_i32(firstLeadingBit(41045i) | u_input.b, ~firstTrailingBit(1i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -203f)))), 28297i, _wgslsmith_mult_u32(~(~var_1.a), abs(~(~var_2.a))));
}

