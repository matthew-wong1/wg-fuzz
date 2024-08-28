struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = ~4294967295u;
    var_0 = arg_0;
    var var_1 = u_input.a;
    var var_2 = Struct_1(vec2<u32>(~100806u, arg_0));
    var_1 = -firstTrailingBit(i32(-1i) * -1i);
    return false;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)), arg_1.x))), arg_1.xx, select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, func_3(1u, arg_1.x) && any(vec2<bool>(false, false))))));
    let var_1 = arg_2;
    var var_2 = vec2<i32>(firstLeadingBit(arg_0) | -(~max(2147483647i, arg_0)), max(-firstLeadingBit(_wgslsmith_clamp_i32(arg_0, arg_0, 1i)), 1i));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(arg_1.yx, arg_1.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xx) * vec2<f32>(1499f, var_0.x))))));
    let var_3 = any(vec2<bool>(arg_0 <= ~_wgslsmith_mod_i32(0i, arg_0), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))));
    return ~(-1i ^ var_2.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec3<i32>(14219i, -35894i, -(~max(-arg_0, -9241i)));
    var var_1 = !vec3<bool>(true, 1u != _wgslsmith_mod_u32(arg_1.a.x, abs(12477u)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))));
    let var_2 = !all(!(!vec4<bool>(false, var_1.x, true, var_1.x)));
    var_0 = select(~reverseBits(select(abs(vec3<i32>(-15442i, -2147483647i, arg_0)), vec3<i32>(0i, arg_0, 1i), vec3<bool>(false, true, var_2))), ~select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.a, 0i), vec3<i32>(1i, arg_0, arg_0)), reverseBits(vec3<i32>(2147483647i, arg_0, u_input.a)), select(vec3<bool>(var_2, var_1.x, false), vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x))) << (~firstLeadingBit(vec3<u32>(1u, 96609u, arg_1.a.x) ^ vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)) % vec3<u32>(32u)), abs(_wgslsmith_sub_i32(u_input.a, -26813i) << (abs(arg_1.a.x) % 32u)) > ~reverseBits(~arg_0));
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-10806i, u_input.a, _wgslsmith_div_i32(var_0.x, _wgslsmith_div_i32(arg_0, arg_0))) ^ vec3<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec2_i32(var_0.zz, var_0.xy)), -37254i ^ _wgslsmith_clamp_i32(-2147483647i, var_0.x, -45151i), 2147483647i), vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(17969i, -4909i, -10381i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, u_input.a, arg_0), vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(-35883i, -47823i, var_0.x)))), -45308i, 621i));
    return vec4<bool>(all(!(!(!vec4<bool>(true, true, var_1.x, false)))), true, !var_1.x, select(false, !var_1.x, true));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = max(_wgslsmith_clamp_vec3_i32(reverseBits(firstTrailingBit(~vec3<i32>(28889i, u_input.a, -1i))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(47595i, 0i, 1860i), vec3<i32>(15765i, u_input.a, -46155i)), vec3<i32>(0i, i32(-1i) * -34121i, -16311i)), reverseBits(vec3<i32>(-2147483647i, u_input.a, u_input.a))), ~min(vec3<i32>(u_input.a, -2147483647i, _wgslsmith_add_i32(u_input.a, 4910i)), (vec3<i32>(2094i, -20401i, u_input.a) | vec3<i32>(u_input.a, u_input.a, 1i)) << (vec3<u32>(1u, 5776u, 45356u) % vec3<u32>(32u))));
    var var_1 = ~(~(~(~vec3<u32>(4294967295u, 21167u, 1u))));
    let var_2 = countOneBits(var_1.xx);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f));
    var var_4 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(abs(select(vec2<u32>(var_2.x, 4294967295u), var_2, false)), firstTrailingBit(reverseBits(vec2<u32>(4294967295u, var_2.x)))), abs(~(~var_2))));
    return Struct_1(~_wgslsmith_sub_vec2_u32(abs(_wgslsmith_mult_vec2_u32(var_4.a, var_4.a)), var_1.yy));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = func_5(arg_0, func_4(~(1i | func_2(8934i, vec3<f32>(-559f, -659f, 411f), Struct_1(vec2<u32>(4294967295u, 79674u)))), Struct_1(firstLeadingBit(~vec2<u32>(4294967295u, 1u)))), !select(vec3<bool>(true, func_3(5999u, -1125f), true == arg_0), vec3<bool>(true, !arg_0, true), select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, false, arg_0), arg_0)));
    let var_1 = vec3<bool>(!arg_0, arg_0, arg_0);
    var var_2 = -vec2<i32>(u_input.a, 12939i);
    var var_3 = func_5(arg_0, select(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(arg_0, false, true, false), func_4(8076i, Struct_1(vec2<u32>(4294967295u, 4294967295u)))), vec4<bool>(true, true, !func_3(var_0.a.x, -1000f), false), !select(select(vec4<bool>(true, true, arg_0, false), vec4<bool>(var_1.x, arg_0, var_1.x, var_1.x), true), !vec4<bool>(true, arg_0, arg_0, var_1.x), var_1.x)), select(var_1, select(var_1, var_1, all(vec4<bool>(false, true, false, var_1.x))), select(!(!var_1), var_1, false)));
    var var_4 = true | (true | var_1.x);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 1987f))))) * _wgslsmith_f_op_f32(step(341f, _wgslsmith_f_op_f32(f32(-1f) * -300f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1000f - 1015f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-549f + -266f)), _wgslsmith_f_op_f32(select(631f, _wgslsmith_f_op_f32(floor(1756f)), any(vec3<bool>(false, true, true)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(select(any(vec3<bool>(false, false, false)), true, true))) * vec2<f32>(_wgslsmith_f_op_f32(-1000f + -2039f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(255f + 724f)))));
    var var_1 = Struct_1(vec2<u32>(4294967295u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), firstLeadingBit(vec2<u32>(4294967295u, 2126u))))));
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(var_1.a, max(vec2<u32>(~var_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 14348u, 65735u), vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u))), reverseBits(~var_1.a))));
    var_2 = func_5(false, !vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) < -1000f, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true, true), vec3<bool>(true, true, func_3(_wgslsmith_sub_u32(var_1.a.x, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -885f)) & false));
    var var_3 = var_1.a.x ^ (var_2.a.x | 60658u);
    var var_4 = func_5(true, vec4<bool>(!all(vec3<bool>(true, true, true)), false, any(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true));
    var_1 = Struct_1(select(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(33905u, var_1.a.x)), ~abs(var_4.a)), ~func_5(true, vec4<bool>(false, true, false, false), vec3<bool>(true, true, true)).a >> (var_1.a % vec2<u32>(32u)), !vec2<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.a, ~u_input.a, u_input.a));
}

