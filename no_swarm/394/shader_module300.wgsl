struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = min(~84376u, ~firstTrailingBit(~var_0.a));
    var var_2 = var_0.a;
    return 0i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(func_3(arg_0), ~u_input.b, -108019i, select(0i, u_input.b, true));
    let var_1 = vec4<i32>(1i, -(abs(u_input.b) & var_0.x), 1i, 17868i);
    var var_2 = _wgslsmith_div_vec4_i32(-select(var_1, var_1 & var_0, arg_0.a == u_input.a.x), -abs(-var_0)) & var_0;
    var_2 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-var_2.x, _wgslsmith_dot_vec3_i32(max(var_1.ywy, var_2.xyz), vec3<i32>(-6071i, u_input.b, 2147483647i)), ~_wgslsmith_add_i32(var_1.x, 0i), abs(_wgslsmith_div_i32(var_1.x, 20241i))), vec4<i32>(var_1.x, var_0.x, 2147483647i, _wgslsmith_mult_i32(var_1.x, 0i)), _wgslsmith_add_vec4_i32(var_1 & select(var_0, var_0, false), abs(vec4<i32>(-38936i, var_1.x, u_input.b, var_2.x)))), _wgslsmith_mod_vec4_i32(reverseBits(var_0), var_1), vec4<bool>(true && (all(vec4<bool>(false, false, true, true)) || false), true, true, false));
    let var_3 = ~_wgslsmith_dot_vec3_u32(select(~u_input.a, u_input.a, ~(-73103i) < _wgslsmith_div_i32(u_input.b, var_2.x)), u_input.a);
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xx), 36415u, _wgslsmith_div_u32(abs(arg_0.a), 1u | var_3)), firstTrailingBit(u_input.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(func_2(func_2(Struct_1(arg_0))));
    var var_1 = Struct_1(u_input.c);
    var var_2 = vec2<f32>(1318f, -295f);
    var_1 = Struct_1(u_input.a.x);
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(0i, i32(-1i) * -56471i, _wgslsmith_add_i32(2147483647i, 0i), 0i), -countOneBits(~vec4<i32>(u_input.b, u_input.b, 0i, -89779i))), abs(_wgslsmith_add_vec4_i32(~(vec4<i32>(u_input.b, u_input.b, u_input.b, 39776i) ^ vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), min(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, 1i, u_input.b), vec4<i32>(-1i, 0i, 2147483647i, 1i), vec4<i32>(58054i, -1i, u_input.b, 1i))))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(u_input.c);
    let var_1 = func_4(~(countOneBits(var_0.a) | _wgslsmith_dot_vec2_u32(~vec2<u32>(39946u, 4294967295u), firstTrailingBit(u_input.a.yz))), func_2(Struct_1(abs(1u))));
    var var_2 = !select(false && any(vec3<bool>(true, true, false)), (933i == u_input.b) | (896f <= arg_1), true) && any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_0 = Struct_1(_wgslsmith_mod_u32(~(~(~var_1.a)), select(~(~5967u), 1u, 2147483647i != u_input.b)));
    var_2 = any(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))) | any(vec3<bool>(true & all(vec4<bool>(false, true, false, false)), true, true));
    return var_1;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.b, -2147483647i) >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), i32(-1i) * -25549i, ~arg_0.x >> (1u % 32u)), max(vec3<i32>(arg_0.x, _wgslsmith_mod_i32(u_input.b, 5436i), countOneBits(arg_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -20286i, 24763i) << (vec3<u32>(38465u, 1u, 0u) % vec3<u32>(32u)), min(vec3<i32>(arg_0.x, arg_0.x, u_input.b), vec3<i32>(2147483647i, u_input.b, 31612i))))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(40522i, 2685i, 25443i), max(vec3<i32>(1i, u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -1i, 1i), vec3<i32>(44957i, -57356i, 2147483647i)))), vec3<i32>(-reverseBits(arg_0.x), arg_0.x, _wgslsmith_mult_i32(i32(-1i) * -31071i, ~arg_0.x))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(1u, Struct_1(54358u));
    var var_1 = 412f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-368f)) * _wgslsmith_f_op_f32(floor(-1183f))))));
    var_1 = -1000f;
    var_1 = 2074f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i) * -(~(-vec2<i32>(-22644i, u_input.b)));
    var var_1 = -2147483647i;
    var var_2 = func_6(vec4<i32>(func_5(-vec2<i32>(-1i, var_0.x), func_1(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(-544f + 109f)), _wgslsmith_f_op_f32(-806f + -730f), ~_wgslsmith_mod_u32(u_input.a.x, 10295u)), firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1104i, -37655i), vec3<i32>(1i, -1i, -2147483647i)))), ~_wgslsmith_div_i32(17183i, -6981i) & max(u_input.b, var_0.x), _wgslsmith_add_i32(func_5(vec2<i32>(u_input.b, u_input.b), func_4(6565u, Struct_1(u_input.a.x)), -813f, ~0u), func_5(var_0, Struct_1(21106u), -559f, ~1u))), func_4(_wgslsmith_sub_u32(4294967295u, ~u_input.a.x & u_input.c), Struct_1(_wgslsmith_clamp_u32(u_input.c, u_input.a.x, 1u))), func_1(_wgslsmith_f_op_f32(max(-464f, _wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(-102f - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2608f * 575f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)));
    var var_4 = func_4(_wgslsmith_mult_u32(var_2.a, _wgslsmith_div_u32(u_input.c >> (u_input.a.x % 32u), abs(142832u))) | _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(u_input.c, u_input.a.x)), 0u), Struct_1(~27778u));
    let var_5 = -19747i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(456f + _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-var_3.x), any(vec3<bool>(false, false, false))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1011f)), -580f), 233f))));
}

