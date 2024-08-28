struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = vec3<i32>(u_input.b, 1i, -_wgslsmith_mult_i32(u_input.c ^ u_input.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(-43297i, 2147483647i, u_input.b, u_input.c), vec4<i32>(u_input.b, u_input.c, -20880i, u_input.c))));
    let var_1 = Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.c <= var_0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-109f, 186f) * -247f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1405f, -406f, -813f), vec3<f32>(717f, -1597f, 470f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 998f, -2528f))), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2521f, _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(f32(-1f) * -514f)))));
    var var_2 = firstTrailingBit(vec3<u32>(reverseBits(~11501u), 1u, _wgslsmith_mod_u32(1u, 1u)));
    return max(firstTrailingBit(~(-1i)), abs(~(-1i)) & (1i | abs(var_0.x)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = vec2<i32>(func_3(), u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(32899u, 0u), 26392u, 1u), vec3<u32>(~13616u, _wgslsmith_dot_vec3_u32(vec3<u32>(51816u, 22994u, 4294967295u), vec3<u32>(1u, 13666u, 13960u)), reverseBits(0u))) % 32u));
    var var_1 = vec2<i32>(0i, _wgslsmith_mult_i32(13217i, 1i));
    let var_2 = max(vec4<i32>(2147483647i, -46028i, 30885i, u_input.c), vec4<i32>(var_1.x, ~_wgslsmith_div_i32(u_input.b, 1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-370i, -var_1.x), -22605i), _wgslsmith_div_i32(30242i, firstTrailingBit(var_0.x))));
    var var_3 = _wgslsmith_div_vec4_i32(var_2, -var_2);
    var var_4 = Struct_1(!vec3<bool>(arg_0.x, true, any(vec2<bool>(arg_0.x, arg_0.x))), 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, 1f, _wgslsmith_f_op_f32(floor(-1685f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(120f, 451f, -208f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -634f, 624f))))));
    return var_4.a;
}

fn func_1() -> i32 {
    let var_0 = 4294967295u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1029f - _wgslsmith_f_op_f32(f32(-1f) * -550f)))), -297f, 338f);
    let var_2 = false;
    var var_3 = Struct_1(select(func_2(!select(vec2<bool>(true, var_2), vec2<bool>(true, var_2), false)), !vec3<bool>(select(true, var_2, var_2), all(vec3<bool>(true, var_2, true)), true), all(func_2(vec2<bool>(true, var_2))) != false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-727f)), _wgslsmith_f_op_f32(-var_1.x), var_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * var_1.x)), var_1.x, -1012f));
    var var_4 = vec4<i32>(u_input.a, -(u_input.b << (var_0 % 32u)), u_input.a, u_input.a);
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-2147483647i, u_input.c, u_input.b);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, func_1()), ~var_0.x);
    var var_2 = ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 34635i, firstLeadingBit(var_0.x), countOneBits(u_input.c)), select(-vec4<i32>(var_0.x, -1i, -45084i, u_input.c), -vec4<i32>(-2147483647i, var_0.x, var_0.x, 5636i), vec4<bool>(false, false, true, false))));
    let var_3 = Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), vec3<bool>(true, true, any(vec3<bool>(true, false, false))), vec3<bool>(true, _wgslsmith_f_op_f32(select(-1132f, -313f, true)) < -856f, all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(159f))) + -499f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, 2049f, -535f)))))));
    var_1 = 0i | func_1();
    var var_4 = Struct_1(select(vec3<bool>(var_3.a.x, any(vec2<bool>(var_3.a.x, var_3.a.x)), var_3.b <= _wgslsmith_f_op_f32(min(1827f, var_3.b))), vec3<bool>(var_3.a.x, true, var_3.a.x), !select(var_3.a, vec3<bool>(var_3.a.x, false, true), var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(var_3.c, var_3.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(865f, -245f, var_3.c.x), var_3.c, var_3.a.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1902f, var_3.b, -102f))))))));
    var_2 = select(-firstLeadingBit(~vec4<i32>(u_input.c, -2570i, var_2.x, -43494i)) & vec4<i32>(func_3(), -2147483647i, 4679i, 2147483647i ^ countOneBits(u_input.b)), vec4<i32>(select(var_2.x >> (1u % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-15755i, -21944i, -22473i)), func_1(), var_0.x), false), firstLeadingBit(-12265i), _wgslsmith_clamp_i32(-u_input.a, u_input.b, -var_2.x) >> (~46836u % 32u), 0i >> (firstLeadingBit(38363u >> (0u % 32u)) % 32u)), select(select(select(vec4<bool>(var_4.a.x, false, true, var_3.a.x), !vec4<bool>(false, true, false, var_3.a.x), !vec4<bool>(var_4.a.x, var_3.a.x, false, true)), !vec4<bool>(false, var_4.a.x, false, false), vec4<bool>(true, false, !var_3.a.x, true)), select(select(vec4<bool>(false, false, var_4.a.x, var_4.a.x), !vec4<bool>(var_3.a.x, false, false, var_4.a.x), var_4.a.x | var_4.a.x), select(select(vec4<bool>(var_3.a.x, var_3.a.x, var_4.a.x, true), vec4<bool>(false, var_3.a.x, true, true), vec4<bool>(true, var_3.a.x, var_4.a.x, false)), vec4<bool>(true, var_3.a.x, var_4.a.x, true), var_4.a.x | false), !select(vec4<bool>(var_4.a.x, true, var_4.a.x, true), vec4<bool>(var_4.a.x, var_4.a.x, var_3.a.x, var_3.a.x), vec4<bool>(true, false, var_4.a.x, false))), select(vec4<bool>(!var_4.a.x, var_3.a.x, var_3.a.x, u_input.c != var_0.x), vec4<bool>(true, true, !var_4.a.x, var_3.a.x), !select(vec4<bool>(true, var_4.a.x, var_4.a.x, true), vec4<bool>(var_4.a.x, var_4.a.x, false, false), vec4<bool>(var_3.a.x, false, true, false)))));
    var var_5 = any(!vec2<bool>(var_4.a.x, any(vec4<bool>(false, true, false, var_4.a.x))));
    var var_6 = _wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1198f)), 1238f))));
    let x = u_input.a;
    s_output = StorageBuffer(1210f, vec4<i32>(_wgslsmith_sub_i32(-26279i, var_2.x >> (4294967295u % 32u)), u_input.a, ~(43147i & var_2.x) << (1u % 32u), countOneBits(var_2.x)));
}

