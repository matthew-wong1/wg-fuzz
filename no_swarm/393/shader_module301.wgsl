struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = select(_wgslsmith_div_i32(-51543i, u_input.a), select(countOneBits(-4336i), 21001i, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))), false);
    var var_1 = Struct_1(true, vec3<i32>(-1i) * -((vec3<i32>(var_0, -3924i, 22414i) & vec3<i32>(var_0, -1i, u_input.a)) ^ -vec3<i32>(var_0, -2147483647i, var_0)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f + 572f))) <= _wgslsmith_f_op_f32(floor(-1322f)), _wgslsmith_mod_vec3_i32(vec3<i32>(-25253i, (i32(-1i) * -428i) ^ -var_0, var_1.b.x), vec3<i32>(abs(u_input.a), ~63660i, -6155i) | -max(vec3<i32>(23164i, 2147483647i, var_0), var_1.b)));
    var var_2 = select(select(vec4<bool>(true, var_1.a, select(var_1.a, var_1.a, false) && var_1.a, false), select(vec4<bool>(any(vec3<bool>(var_1.a, var_1.a, var_1.a)), false && var_1.a, any(vec2<bool>(var_1.a, var_1.a)), all(vec4<bool>(false, true, true, false))), !vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec4<bool>(var_1.a, any(vec2<bool>(var_1.a, false)), var_1.a, all(vec2<bool>(var_1.a, false)))), select(!(!vec4<bool>(true, false, var_1.a, true)), select(vec4<bool>(var_1.a, false, false, var_1.a), vec4<bool>(true, false, false, var_1.a), vec4<bool>(false, var_1.a, var_1.a, false)), true || !var_1.a)), select(!vec4<bool>(true, true, false, all(vec3<bool>(var_1.a, var_1.a, true))), vec4<bool>(!any(vec4<bool>(false, false, false, false)), var_1.a, all(select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, true, true, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a))), false), vec4<bool>(all(vec2<bool>(false, var_1.a)), false, true, true)), !(!vec4<bool>(!var_1.a, false, all(vec2<bool>(var_1.a, var_1.a)), true)));
    let var_3 = Struct_1(var_2.x, vec3<i32>(-_wgslsmith_mult_i32(var_1.b.x, 2147483647i) & var_0, -1i, max(var_1.b.x ^ 2147483647i, -_wgslsmith_div_i32(u_input.a, var_1.b.x))));
    return max(var_1.b.x, u_input.a);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    return Struct_1(!arg_1.x, ~vec3<i32>(-23373i, -u_input.a, func_3(vec2<u32>(1u, 1u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    let var_0 = -arg_0.b.x;
    var var_1 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -273f))))), !select(!select(vec4<bool>(false, false, arg_1.a, true), vec4<bool>(arg_2.a, arg_0.a, arg_2.a, arg_1.a), arg_0.a), !select(vec4<bool>(true, arg_2.a, true, true), vec4<bool>(true, false, false, true), arg_0.a), select(!vec4<bool>(arg_1.a, arg_2.a, arg_2.a, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_1.a, true, false), vec4<bool>(arg_2.a, arg_1.a, arg_1.a, arg_0.a)), !vec4<bool>(arg_2.a, arg_1.a, arg_2.a, arg_2.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1573f)), -104f, _wgslsmith_f_op_f32(-559f * -477f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1372f, -223f, 201f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2129f, -375f, 429f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(153f, 1252f, -1539f), vec3<f32>(364f, -2522f, -149f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -299f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = vec4<u32>(1u, 39773u, arg_3.x, 1u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(11994u, arg_3.x, 0u, ~select(13595u, 19953u, true)), countOneBits(reverseBits(vec4<u32>(0u, arg_3.x, arg_3.x, 1u)) >> (abs(vec4<u32>(arg_3.x, 0u, arg_3.x, arg_3.x)) % vec4<u32>(32u))));
    var_1 = func_2(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)) * _wgslsmith_f_op_f32(round(531f))))), vec4<bool>(all(select(!vec4<bool>(arg_2.a, true, arg_0.a, var_1.a), vec4<bool>(arg_2.a, false, arg_2.a, arg_0.a), vec4<bool>(true, true, arg_1.a, false))), false, true, all(vec3<bool>(arg_0.a, any(vec4<bool>(false, arg_1.a, true, arg_2.a)), all(vec2<bool>(arg_0.a, arg_2.a))))));
    return any(!vec2<bool>(!arg_2.a & true, !(!arg_2.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(true, countOneBits(~firstTrailingBit(-arg_0)));
    let var_1 = arg_3;
    var var_2 = !vec4<bool>(func_4(var_1, func_2(_wgslsmith_f_op_f32(step(1837f, 2389f)), vec4<bool>(var_1.a, true, false, false)), arg_3, select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), arg_2 && true)), func_4(arg_3, func_2(_wgslsmith_f_op_f32(-arg_1.x), !vec4<bool>(arg_3.a, arg_3.a, var_1.a, arg_3.a)), var_1, ~vec3<u32>(1u, 1884u, 1u)), arg_3.a, arg_2);
    let var_3 = arg_3;
    var var_4 = _wgslsmith_mod_u32(4294967295u, select(~max(_wgslsmith_div_u32(30548u, 4294967295u), 0u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(47460u, 0u), vec2<u32>(91130u, 0u))), arg_3.a));
    return var_3;
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = true;
    var var_1 = 1u;
    var_1 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(countOneBits(select(vec3<u32>(0u, 4294967295u, 21438u), vec3<u32>(73286u, 0u, 7580u), false))), vec3<u32>(4629u, ~26482u, 1u));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(~1u, 1u, 24799u));
    var_1 = ~var_2.x;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1373f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(379f + 624f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1698f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-223f, -578f))), !(false & var_0)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = func_1(arg_0.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, 892f, arg_3.x, arg_3.x) + vec4<f32>(arg_3.x, -639f, -322f, arg_3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1221f, arg_3.x, -897f))))))), !(any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)) | true) || !arg_0.a, arg_0);
    let var_1 = -(~var_0.b);
    var var_2 = arg_0.a;
    let var_3 = select(vec3<bool>(true, arg_0.a, any(select(!vec4<bool>(false, arg_0.a, true, arg_0.a), select(vec4<bool>(arg_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false), false), select(vec4<bool>(arg_0.a, var_0.a, true, false), vec4<bool>(true, true, true, true), var_0.a)))), !(!select(!vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, true, true), false)), vec3<bool>(true, _wgslsmith_div_i32(abs(arg_2), -19712i) <= firstLeadingBit(firstTrailingBit(1i)), any(select(vec2<bool>(var_0.a, arg_0.a), select(vec2<bool>(true, false), vec2<bool>(false, arg_0.a), arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), var_0.a)))));
    let var_4 = Struct_1(var_3.x | all(!var_3), arg_0.b);
    return vec3<i32>(i32(-1i) * -_wgslsmith_clamp_i32(11089i, arg_0.b.x, arg_2), arg_0.b.x, -_wgslsmith_dot_vec4_i32(select(~arg_1, min(arg_1, arg_1), arg_0.a), vec4<i32>(var_1.x, i32(-1i) * -34159i, ~2147483647i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, i32(-1i) * -u_input.a, u_input.a), -vec3<i32>(u_input.a, max(u_input.a, 0i), u_input.a), _wgslsmith_div_vec3_i32(~(-vec3<i32>(u_input.a, u_input.a, 51033i)), max(vec3<i32>(0i, 7448i, u_input.a), vec3<i32>(u_input.a, u_input.a, -15176i)) | vec3<i32>(u_input.a, 1i, u_input.a))));
    let var_1 = vec2<u32>(1u, 1u);
    let var_2 = 987f;
    let var_3 = Struct_1(!var_0.a, -func_6(var_0, ~(vec4<i32>(-7708i, -29973i, u_input.a, u_input.a) & vec4<i32>(var_0.b.x, u_input.a, u_input.a, u_input.a)), -50369i, _wgslsmith_f_op_vec2_f32(func_5(func_1(vec3<i32>(u_input.a, var_0.b.x, -5507i), vec4<f32>(var_2, var_2, var_2, -1097f), true, var_0)))));
    var var_4 = ~vec2<u32>(_wgslsmith_sub_u32(22567u, var_1.x), var_1.x | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, var_1.x) ^ vec4<u32>(0u, 0u, var_1.x, var_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 46u, var_1.x, var_1.x), vec4<u32>(28596u, 9861u, var_1.x, var_1.x), vec4<u32>(46138u, var_1.x, var_1.x, var_1.x))));
    var_4 = vec2<u32>(4294967295u, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, var_1.x, 53339u), vec3<u32>(var_4.x, var_1.x, var_1.x)))) ^ var_1;
    var var_5 = 16022u;
    let var_6 = _wgslsmith_f_op_f32(step(-2354f, _wgslsmith_f_op_f32(exp2(var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 58214u, 32201u), vec3<u32>(var_4.x, var_4.x, var_4.x)), ~vec3<u32>(0u, var_4.x, 15821u))), 1u, _wgslsmith_clamp_u32(var_1.x, min(var_4.x, var_4.x) ^ ~var_4.x, ~countOneBits(26596u))));
}

