struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_1(any(vec4<bool>(true, !all(vec4<bool>(true, true, true, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), true)), any(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(234f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1239f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f), -367f)))), _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 1926i), vec2<i32>(0i, -81015i) << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))), max(vec2<i32>(26048i, -39208i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(74692i, 0i)))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, var_0.c, var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1422f, -633f)), !var_1.b)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.d)), var_0.d, _wgslsmith_f_op_f32(ceil(var_0.d))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(111f, var_0.d, var_0.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1859f, -1000f, 1148f))))));
    let var_3 = var_1;
    let var_4 = Struct_1(!(-var_3.e.x <= -6387i), any(vec3<bool>(any(vec4<bool>(false, true, var_3.b, false)), true, var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(select(var_0.c, -1063f, all(vec3<bool>(var_1.b, var_3.a, false))))) * var_3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 342f)), vec2<i32>(_wgslsmith_sub_i32(-9761i, countOneBits(var_0.e.x ^ 1i)), ~firstTrailingBit(-2147483647i)));
    return all(vec2<bool>(false, all(select(select(vec3<bool>(true, false, var_1.b), vec3<bool>(var_1.b, true, false), var_0.b), !vec3<bool>(var_4.a, var_4.a, false), !vec3<bool>(var_4.b, false, false)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<bool>(true && (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-931f + arg_0))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1530f + arg_0) * _wgslsmith_f_op_f32(arg_0 * 1000f))), all(vec3<bool>(true, (4294967295u != u_input.b.x) == true, select(func_3(vec2<u32>(1u, 0u)), any(vec2<bool>(true, false)), false))), max(1u, 0u) >= (u_input.b.x & ~23504u));
    let var_1 = false;
    let var_2 = Struct_1(var_1, (firstLeadingBit(~u_input.a) << (~u_input.b.x % 32u)) < _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(21801u, 1u, u_input.b.x, 1u), vec4<u32>(u_input.a, u_input.b.x, 1u, 1897u)) & vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(111230u, 13519u), u_input.b), abs(27465u), ~u_input.b.x)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -635f)))) + 173f), ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-28666i, 8084i), vec2<i32>(2147483647i, 1i)), vec2<i32>(1i, 1i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-14209i, 21506i), vec2<i32>(-1i, 0i))));
    var var_3 = vec4<bool>(!all(!select(var_0.zx, vec2<bool>(false, var_2.b), vec2<bool>(var_0.x, false))), true, var_0.x, (false & !func_3(u_input.b)) | true);
    let var_4 = vec3<u32>(u_input.a, ~u_input.a, abs(u_input.b.x)) >> (select(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a, 24912u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.a), vec4<u32>(76561u, u_input.b.x, u_input.a, u_input.a))), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(4294967295u, u_input.a)), 16033u), min(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, 14998u, 54707u), vec3<u32>(u_input.b.x, 57373u, u_input.a), var_0.x), min(vec3<u32>(u_input.a, 12448u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.b.x)), select(vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.b.x), var_3.xyx)), ~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), vec3<bool>(28969i >= var_2.e.x, var_3.x, var_0.x)) % vec3<u32>(32u));
    return var_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~abs(abs(min(vec3<i32>(2147483647i, arg_2.e.x, arg_2.e.x), vec3<i32>(0i, arg_2.e.x, 2147483647i)))) & (-abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.e.x, 2147483647i, -26298i), vec3<i32>(0i, 2147483647i, 2147483647i))) & vec3<i32>(_wgslsmith_div_i32(~arg_2.e.x, 0i), -_wgslsmith_sub_i32(1i, arg_2.e.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.e.x, arg_2.e.x, 2147483647i), vec3<i32>(arg_2.e.x, arg_2.e.x, arg_2.e.x))));
    let var_1 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~u_input.a, ~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(113921u, 11614u, 47559u, 1u) >> (vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a) % vec4<u32>(32u)), vec4<u32>(79778u, 20737u, 4283u, 1u) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) << (~vec4<u32>(u_input.b.x, 4294967295u, 31497u, ~u_input.a) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_clamp_vec4_i32(~reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -2147483647i, -17229i, arg_2.e.x), vec4<i32>(-2147483647i, -10065i, var_0.x, 15219i))) ^ vec4<i32>(reverseBits(31948i), firstLeadingBit(reverseBits(var_0.x)), -(var_0.x & var_0.x), arg_2.e.x), firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.e.x, -1i, -23444i, arg_2.e.x), vec4<i32>(-1i, 14914i, var_0.x, arg_2.e.x)), vec4<i32>(-32513i, 2147483647i, 0i, 0i))) | vec4<i32>(~(~arg_2.e.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.e.x, arg_2.e.x), vec2<i32>(arg_2.e.x, arg_2.e.x)), var_0.x, ~arg_2.e.x), reverseBits(min(vec4<i32>(_wgslsmith_sub_i32(arg_2.e.x, 13034i), _wgslsmith_dot_vec2_i32(vec2<i32>(78025i, var_0.x), var_0.zx), var_0.x, arg_2.e.x | arg_2.e.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_2.e.x, -34400i, arg_2.e.x, -31459i), vec4<i32>(2147483647i, var_0.x, arg_2.e.x, -2147483647i)))));
    let var_3 = func_2(458f);
    let var_4 = Struct_1(func_3(vec2<u32>(var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_1.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, var_1.x, var_1.x, u_input.b.x)), var_1))), any(select(!vec2<bool>(arg_2.b, var_3.b), !vec2<bool>(var_3.a, true), vec2<bool>(true | arg_2.b, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, arg_0.x))), _wgslsmith_f_op_f32(trunc(var_3.c)), _wgslsmith_div_vec2_i32(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_2.x), arg_2.e)), var_2.xx));
    return Struct_1(any(!vec2<bool>(false & arg_2.a, true)), arg_2.a | !any(select(vec2<bool>(var_3.a, true), vec2<bool>(var_3.a, true), vec2<bool>(true, var_4.a))), var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_div_f32(-1346f, -345f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_4.d))))), arg_2.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(!(arg_0.b | ((arg_0.e.x >> (u_input.b.x % 32u)) <= arg_0.e.x)), arg_0.e.x <= select(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-47353i, 1i, arg_1.e.x, -4445i), vec4<i32>(-18898i, 20431i, arg_1.e.x, arg_0.e.x), true), vec4<i32>(arg_1.e.x, arg_0.e.x, -1i, arg_1.e.x)), !select(arg_1.a, true, arg_1.a)), -1250f, _wgslsmith_f_op_f32(-arg_1.d), (vec2<i32>(19626i, 1i) | vec2<i32>(-arg_0.e.x, _wgslsmith_div_i32(1i, arg_1.e.x))) >> (u_input.b % vec2<u32>(32u)));
    let var_1 = _wgslsmith_mod_u32(8664u, ~(~(~70516u) << ((~1u << (u_input.b.x % 32u)) % 32u)));
    var var_2 = func_3(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(var_1, u_input.a) ^ (firstTrailingBit(u_input.b) & ~vec2<u32>(u_input.a, 11652u))));
    var var_3 = vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i >> (u_input.a % 32u), -1i, arg_1.e.x, ~0i), vec4<i32>(arg_1.e.x, arg_0.e.x, -var_0.e.x, arg_0.e.x)), arg_0.e.x, _wgslsmith_div_i32(7932i, 1i));
    let var_4 = ~vec3<i32>(arg_0.e.x, -2147483647i, -abs(0i));
    return func_3(u_input.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = vec2<bool>(arg_2, func_5(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(501f, 717f, arg_0.x, arg_0.x), vec4<f32>(464f, -1270f, -939f, 1875f)))), _wgslsmith_f_op_f32(-arg_0.x), func_2(arg_0.x)), func_4(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(arg_0.x, 999f)), arg_0.x, -957f), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 2318f, 1000f, 284f)), arg_0.x, func_2(-170f)).c, Struct_1(arg_2, all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), arg_0.x, _wgslsmith_div_f32(-1253f, arg_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1))))));
    let var_1 = Struct_1(var_0.x, false, -1100f, arg_0.x, -_wgslsmith_sub_vec2_i32(~firstLeadingBit(vec2<i32>(arg_1, -7422i)), firstTrailingBit(~vec2<i32>(-54367i, 4660i))));
    var var_2 = ~abs(~countOneBits(min(vec3<u32>(0u, 0u, 1u), vec3<u32>(16467u, 0u, u_input.b.x))));
    var_2 = vec3<u32>(21735u, ~47120u, ~(~1u));
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(233f))) - arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, -760f, -1481f), -45251i, true))))), 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2085f, 1f, true)))));
    var var_1 = -countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-5498i, -2147483647i), min(17405i, 28843i), countOneBits(-57312i)), firstLeadingBit(vec3<i32>(-2147483647i, 26950i, -853i)), -vec3<i32>(1i, 1i, 1i)));
    let var_2 = -abs(vec3<i32>(_wgslsmith_mult_i32(var_1.x, 0i) >> (~0u % 32u), var_1.x & var_1.x, 1i));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -384f)));
    var var_4 = Struct_1(false, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-783f * 501f) + -1194f)), _wgslsmith_f_op_f32(round(-134f))), _wgslsmith_f_op_f32(f32(-1f) * -620f), var_2.zx);
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, ~_wgslsmith_clamp_vec4_u32(max(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(7498u, u_input.b.x, 1u, 76413u)), vec4<u32>(1u, u_input.b.x, 108646u >> (1u % 32u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 21176u)))), 47406u, _wgslsmith_mult_i32(~(-25347i), var_2.x));
}

