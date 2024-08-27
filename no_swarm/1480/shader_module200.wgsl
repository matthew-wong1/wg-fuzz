struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -1357f)) * 753f), -1673f))));
    let var_1 = select(vec3<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 974f), var_0, true)) == 1987f, any(vec4<bool>(any(vec3<bool>(true, false, true)), 857f >= var_0, any(vec2<bool>(false, false)), true))), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true == any(vec4<bool>(true, false, false, true)), !(arg_0.x != var_0)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, _wgslsmith_f_op_f32(-var_0), var_0)), vec3<f32>(var_0, 1525f, _wgslsmith_f_op_f32(arg_0.x + -306f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 2208f, 544f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, 897f, -195f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, var_0)))))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(arg_0.x + var_0));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -1277f, -1037f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a, arg_0.x, -1820f), var_2))) + _wgslsmith_f_op_vec3_f32(step(var_2, _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, 209f, -183f), vec3<f32>(-317f, arg_0.x, -1591f)))))));
    return _wgslsmith_div_u32(select(~1u, _wgslsmith_dot_vec4_u32((vec4<u32>(257u, 13258u, 15413u, 4294967295u) >> (vec4<u32>(u_input.a, 4294967295u, 0u, u_input.c) % vec4<u32>(32u))) << (vec4<u32>(u_input.c, 22007u, 4132u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 25499u, 0u, 56496u), countOneBits(vec4<u32>(11331u, u_input.a, u_input.c, 4294967295u)))), var_1.x | any(!vec3<bool>(false, var_1.x, var_1.x))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, _wgslsmith_div_u32(u_input.a, 133756u), 25281u), ~(~vec3<u32>(19577u, 121626u, 45820u)), true), ~firstTrailingBit(~vec3<u32>(25174u, 1u, 0u))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = reverseBits(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1203f, arg_2.x), _wgslsmith_f_op_vec2_f32(-arg_1.yz)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yx) - vec2<f32>(arg_3.a, arg_2.x)))));
    return -(~vec3<i32>(-20717i, 1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(34558i, -14810i), _wgslsmith_mult_i32(-1i, 1i), firstLeadingBit(0i))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-138f, 692f), vec2<f32>(-658f, -118f))))) - vec2<f32>(-127f, _wgslsmith_f_op_f32(f32(-1f) * -265f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-190f, 1359f)))))));
    var var_1 = ~_wgslsmith_clamp_vec3_i32(-select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2371i, 2147483647i, -1i), vec3<i32>(30329i, -9518i, -30218i), vec3<i32>(58606i, 45552i, 4296i)), vec3<i32>(-2147483647i, 11018i, -35848i), arg_0), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-5390i, 1i, -39111i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-98606i, -4216i, -1i), vec3<i32>(-7955i, -14943i, -2147483647i)))), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(25562i, -5087i, 1i)), select(-vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(1i, 1i, 1i), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, true), arg_0.x))));
    var_1 = select(vec3<i32>(-1i) * -vec3<i32>(var_1.x ^ 0i, _wgslsmith_clamp_i32(1i, var_1.x, 0i), ~var_1.x), ~(func_2(Struct_2(vec4<u32>(49971u, u_input.c, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1351f, 332f, var_0.x) - vec3<f32>(652f, 1668f, -197f)), Struct_1(-235f)) | (vec3<i32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(0u, u_input.c, 1u) % vec3<u32>(32u)))), !select(select(vec3<bool>(arg_0.x, true, arg_0.x), !arg_0, arg_0), vec3<bool>(true, true, true), true));
    var var_2 = vec2<i32>(-2147483647i, var_1.x);
    var_1 = _wgslsmith_mult_vec3_i32(-(vec3<i32>(var_2.x | 35368i, ~(-2147483647i), 69278i) | (~vec3<i32>(var_2.x, 9201i, var_2.x) << (vec3<u32>(1u, u_input.c, u_input.c) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 27452i), firstLeadingBit(_wgslsmith_div_vec2_i32(var_1.xx, vec2<i32>(var_2.x, var_2.x)))), -1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(9206i, var_1.x), i32(-1i) * -var_1.x)));
    return firstTrailingBit(vec2<u32>(0u, ~(~4294967295u >> ((u_input.a << (47854u % 32u)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = 64871u;
    var var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 2147483647i)) << ((vec2<u32>(u_input.a, var_0) ^ select(func_1(vec3<bool>(false, true, false)), vec2<u32>(var_0, var_0) ^ vec2<u32>(54542u, 86067u), true)) % vec2<u32>(32u)), vec2<i32>(114291i, 1i));
    let var_3 = -15863i;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(668f + 970f))))) + 854f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1135f - _wgslsmith_f_op_f32(round(1160f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

