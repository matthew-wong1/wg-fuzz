struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(arg_1.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1085f * -1000f))), var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1579f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1194f)), 130f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -313f)), -654f))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(144f * arg_2.a), var_0.a) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(512f * -597f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_0.a))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, var_0.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, arg_1.a), vec2<f32>(-1718f, arg_1.a), arg_0.x))))))));
    var var_2 = select(!select(arg_0.zx, vec2<bool>(any(vec4<bool>(true, false, arg_0.x, true)), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), all(!arg_0)), !select(arg_0.yx, arg_0.zz, any(arg_0)), arg_0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(799f - 844f));
    return select(!(!(!(!vec3<bool>(var_2.x, false, arg_0.x)))), select(vec3<bool>(true, true, true), select(arg_0, arg_0, false), !any(arg_0)), var_2.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(false, !any(vec3<bool>(true, false, false)), false, any(func_3(vec3<bool>(true, true, true), Struct_1(-659f), Struct_1(635f)))), vec4<bool>(!all(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(arg_2.x, -20515i) == abs(-65568i)), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false))));
    var_0 = vec4<bool>(false, !(!var_0.x), func_3(vec3<bool>(var_0.x, var_0.x, !(!var_0.x)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1639f, 653f))))), Struct_1(-1737f)).x, false);
    let var_1 = vec4<u32>(arg_1, (_wgslsmith_mult_u32(arg_1, arg_1) >> ((~33617u & arg_1) % 32u)) ^ abs(arg_1), ~abs(~1u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(1u, arg_1))), arg_1);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(742f + -124f))) - -602f)));
    let var_3 = arg_1;
    return Struct_1(var_2.a);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(7356i, -39710i, -29059i, 2147483647i), arg_1) | _wgslsmith_div_vec4_i32(arg_1, arg_1), arg_1), arg_1), 4294967295u, vec4<i32>(1i, arg_1.x, arg_1.x, _wgslsmith_add_i32(arg_1.x, arg_1.x)));
    return vec3<bool>(any(!vec2<bool>(all(vec2<bool>(arg_0, false)), arg_0)), arg_0, ~(-reverseBits(arg_1.x)) != arg_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = 353i;
    let var_2 = func_2(~(~(~reverseBits(vec4<i32>(var_1, var_1, var_1, 3806i)))), ~(~(~14394u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(26669i, 1i, var_1, 26339i)), select(vec4<i32>(-7378i, 0i, var_1, var_1), ~vec4<i32>(var_1, var_1, var_1, var_1), arg_1.x)) ^ (~(-vec4<i32>(var_1, 1i, var_1, -12418i)) | vec4<i32>(~3375i, -5629i, var_1, var_1)));
    var var_3 = ~min(39762u, ~(~_wgslsmith_mod_u32(21486u, u_input.d)));
    var_3 = _wgslsmith_dot_vec2_u32(~(~(~(vec2<u32>(u_input.c, u_input.d) | vec2<u32>(u_input.a, u_input.d)))), vec2<u32>(select(u_input.a, _wgslsmith_mod_u32(u_input.d, ~u_input.a), any(arg_1.zz)), 9629u));
    return _wgslsmith_sub_i32(var_1, -_wgslsmith_mod_i32(i32(-1i) * -5225i, abs(var_1) ^ -32962i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f)))));
    let var_2 = vec2<i32>(select(-17284i, firstTrailingBit(abs(-61107i)), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), true))), _wgslsmith_add_i32(func_4(Struct_1(572f), !func_1(true, vec4<i32>(-1i, -6361i, 0i, -25618i))), 44656i));
    let var_3 = select(u_input.b, u_input.b, true);
    var_0 = true;
    var var_4 = firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, var_2.x, _wgslsmith_sub_i32(var_2.x, -var_2.x)), _wgslsmith_div_vec3_i32(~abs(vec3<i32>(var_2.x, 2147483647i, var_2.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(11923i, 14518i, 0i), vec3<i32>(var_2.x, var_2.x, var_2.x)))));
    var_4 = ~(abs(~select(vec3<i32>(0i, 1i, var_4.x), vec3<i32>(-62384i, -2147483647i, 2147483647i), vec3<bool>(true, false, true))) >> (~vec3<u32>(56175u, firstTrailingBit(u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(58148u, u_input.e))) % vec3<u32>(32u)));
    var_0 = -368f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(114f, 225f))));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(2147483647i, var_2.x) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -2147483647i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, -1i, var_2.x), vec3<i32>(var_2.x, -1i, 1i), vec3<i32>(var_4.x, 2147483647i, -6272i))), (-1i >> (u_input.c % 32u)) >> (var_3 % 32u)));
}

