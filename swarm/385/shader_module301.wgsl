struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = 1i;
    var var_1 = Struct_1(vec4<i32>(~arg_0.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.a.x, arg_2), ~1i), 40929i, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -211f));
    let var_2 = Struct_1(~(~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, 1i, arg_0.x, 40667i), arg_1))), _wgslsmith_f_op_f32(var_1.b * -1572f));
    let var_3 = firstLeadingBit(vec2<u32>(0u, u_input.b)) | ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 101615u, 5172u, 1u), vec4<u32>(34977u, u_input.b, 1u, u_input.b)) ^ ~50769u, ~firstTrailingBit(u_input.d));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(518f - var_1.b)))))));
    return vec4<i32>(var_0, arg_1.x, _wgslsmith_dot_vec3_i32(u_input.a, select(_wgslsmith_mod_vec3_i32(firstLeadingBit(var_1.a.zxx), vec3<i32>(-14628i, -11870i, var_0) | u_input.a), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2, 2147483647i, 1i), reverseBits(var_1.a.wxx)), select(!arg_3.xxx, select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_3.x, true, false), arg_3.yyx), arg_3.x | arg_3.x))), reverseBits(arg_2));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(func_3(-u_input.a.zz, vec4<i32>(-2623i, -48471i, u_input.a.x, u_input.a.x), ~7570i, select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 0i, -1i, u_input.e), abs(vec4<i32>(54864i, 1i, u_input.a.x, u_input.e)))) & vec4<i32>(_wgslsmith_div_i32(1i, -2147483647i), ~(u_input.e ^ u_input.e), ~u_input.e ^ select(5817i, -6054i, false), u_input.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(252f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-742f + -729f)))), _wgslsmith_f_op_f32(ceil(438f))));
    let var_1 = Struct_1(~vec4<i32>(_wgslsmith_sub_i32(reverseBits(72841i), abs(6365i)), 2147483647i, i32(-1i) * -u_input.e, u_input.a.x), var_0.b);
    var var_2 = (u_input.d ^ _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(27236u), ~u_input.c), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, 118011u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(37312u, 4294967295u), vec2<u32>(u_input.d, 0u), vec2<u32>(16583u, 0u))))) ^ u_input.d;
    var_2 = 4294967295u;
    var_2 = 47620u;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -1i) & vec2<i32>(-2147483647i, var_0.a.x), vec2<i32>(2147483647i, 1i) << (vec2<u32>(u_input.d, u_input.b) % vec2<u32>(32u))), reverseBits(var_0.a.yw)) >> (~(~(~vec2<u32>(58107u, u_input.d))) % vec2<u32>(32u)), u_input.a.yy >> (vec2<u32>(_wgslsmith_mult_u32(min(1u, u_input.b), _wgslsmith_add_u32(0u, u_input.c)), reverseBits(u_input.d)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(-arg_1.a.x > (u_input.e | 2147483647i));
    var var_1 = arg_1;
    var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = reverseBits(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, 0u), vec4<u32>(1u, 4294967295u, 52528u, u_input.d))) << (vec4<u32>(22040u, _wgslsmith_div_u32(1u, firstLeadingBit(u_input.c)), 5335u, u_input.d) % vec4<u32>(32u)));
    return arg_0;
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(Struct_1(vec4<i32>(u_input.a.x, func_2(), _wgslsmith_add_i32(~1i, u_input.a.x), u_input.e), 345f), Struct_1(-_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<i32>(u_input.a.x, u_input.e, 2147483647i, u_input.e) >> (vec4<u32>(1u, u_input.c, 4294967295u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -205f)));
    let var_1 = Struct_1(max(countOneBits(vec4<i32>(u_input.a.x, max(var_0.a.x, -4075i), func_4(var_0, var_0).a.x, _wgslsmith_clamp_i32(var_0.a.x, u_input.a.x, -13696i))), var_0.a), _wgslsmith_f_op_f32(-2946f * var_0.b));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)))), var_1.b, var_1.b);
    var var_3 = Struct_1(var_1.a >> (vec4<u32>(19466u, 0u, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, 1u), vec3<u32>(u_input.d, u_input.b, 4795u)), firstTrailingBit(20310u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(var_1.b, 1053f)));
    let var_4 = func_4(func_4(Struct_1(~vec4<i32>(-660i, var_1.a.x, u_input.e, -41347i), var_3.b), var_0), func_4(func_4(Struct_1(var_3.a, _wgslsmith_div_f32(-1000f, var_0.b)), var_0), var_0));
    return vec4<u32>(4294967295u, firstTrailingBit(1u), ~(firstTrailingBit(select(41639u, 4294967295u, true)) << ((~u_input.d ^ u_input.c) % 32u)), 53976u | abs(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_vec2_u32((~(vec2<u32>(u_input.b, 0u) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(9420u, 0u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 22513u) | firstLeadingBit(vec2<u32>(u_input.d, u_input.d)), min(~vec2<u32>(11346u, u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(113829u, u_input.b), vec2<u32>(38606u, u_input.b)))), vec2<u32>(u_input.b, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 67946u), vec4<u32>(0u, 4397u, u_input.d, u_input.b)), func_1())), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c ^ 0u, 11173u), vec2<u32>(select(18449u, 1u, var_0), u_input.d) | firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, 50394u)))));
    let var_2 = func_4(func_4(func_4(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-36755i, 1i, 0i, 2147483647i), vec4<i32>(2147483647i, -21134i, -4985i, u_input.a.x)), _wgslsmith_f_op_f32(-1798f + 384f)), func_4(func_4(Struct_1(vec4<i32>(1i, u_input.e, u_input.a.x, u_input.e), 1057f), Struct_1(vec4<i32>(u_input.e, u_input.e, -2147483647i, -2147483647i), 269f)), func_4(Struct_1(vec4<i32>(1i, 1i, u_input.a.x, -15785i), -1122f), Struct_1(vec4<i32>(u_input.a.x, 0i, -18355i, u_input.a.x), 1217f)))), Struct_1(vec4<i32>(-2781i, ~u_input.e, _wgslsmith_mult_i32(u_input.a.x, 6449i), 11205i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(795f, -2675f, false))))), Struct_1(min(vec4<i32>(u_input.e & -22749i, func_4(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 30374i), -2513f), Struct_1(vec4<i32>(-2147483647i, 26915i, -2147483647i, u_input.e), -1576f)).a.x, _wgslsmith_sub_i32(u_input.e, u_input.e), _wgslsmith_mod_i32(u_input.e, u_input.a.x)), reverseBits(reverseBits(vec4<i32>(u_input.e, -2147483647i, u_input.e, u_input.e)))), _wgslsmith_f_op_f32(-1540f * _wgslsmith_f_op_f32(f32(-1f) * -1174f))));
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(6350u, var_1.x, var_1.x), max(vec3<u32>(var_1.x, 59641u, var_1.x), vec3<u32>(u_input.d, var_1.x, var_1.x))), (vec3<u32>(4294967295u, u_input.c, 23452u) | vec3<u32>(0u, u_input.c, 0u)) << (vec3<u32>(0u, 2120u, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 59623u, u_input.d), vec3<u32>(countOneBits(31902u), ~17534u, _wgslsmith_sub_u32(1629u, u_input.b)), vec3<u32>(_wgslsmith_clamp_u32(var_1.x, var_1.x, 49408u), _wgslsmith_sub_u32(33694u, u_input.d), 71544u))) >> (~select(~vec3<u32>(46197u, 1u, var_1.x), vec3<u32>(72902u, 1u, u_input.d & 2422u), any(select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0)))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(917f, -1720f) - 1687f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(774f, -440f))) * var_2.b));
    var_4 = !any(!(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true))));
    var var_5 = vec3<u32>(firstLeadingBit(~u_input.d >> (_wgslsmith_dot_vec3_u32(var_3, vec3<u32>(0u, var_3.x, 0u) & vec3<u32>(var_1.x, 90312u, 52357u)) % 32u)), ~u_input.c, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, var_2.a.x, var_2.a.x, u_input.e)), vec4<i32>(var_2.a.x, var_2.a.x, 32532i, var_2.a.x) << (min(vec4<u32>(var_1.x, 4294967295u, var_3.x, 82u), vec4<u32>(var_3.x, var_3.x, var_1.x, 0u)) % vec4<u32>(32u))), u_input.a.xz);
}

