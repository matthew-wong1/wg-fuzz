struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(vec4<i32>(abs(16861i), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i & u_input.b.x, -arg_1.c.x), 1i ^ abs(arg_1.a.x)), _wgslsmith_mult_i32(37304i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13411u, u_input.c, u_input.c), vec4<u32>(u_input.e, u_input.e, 1u, u_input.e)) % 32u), -_wgslsmith_mod_i32(u_input.a, u_input.b.x))));
    let var_1 = !arg_0.x;
    let var_2 = vec2<f32>(1f, arg_2.x);
    let var_3 = arg_2.yy;
    let var_4 = countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.c, 74008u, 57439u)), vec3<u32>(4294967295u, 0u, u_input.e) | vec3<u32>(u_input.c, 0u, u_input.e)) | (_wgslsmith_div_vec3_u32(vec3<u32>(45983u, u_input.e, 20706u), vec3<u32>(4294967295u, 0u, 43028u)) | ~vec3<u32>(20646u, u_input.c, u_input.e))) ^ vec3<u32>(u_input.c, ~u_input.c, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.e)) << (vec2<u32>(u_input.e, 1494u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(29958u, 0u), vec2<u32>(u_input.c, 1u))));
    return Struct_1(_wgslsmith_div_vec2_i32(~abs(vec2<i32>(u_input.a, 1i)), vec2<i32>(_wgslsmith_div_i32(47813i, 19322i), _wgslsmith_add_i32(var_0.x, 19651i)) ^ ~firstTrailingBit(vec2<i32>(18697i, var_0.x))), arg_1.b, max(_wgslsmith_sub_vec4_i32(~arg_1.c & u_input.b, abs(~vec4<i32>(-2147483647i, 0i, arg_1.a.x, var_0.x))), arg_1.c));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(1i, 21248i), -47317i), select(vec4<bool>(!all(vec4<bool>(false, true, false, true)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)), true), vec4<bool>(true, true, true, true), min(u_input.c | u_input.e, _wgslsmith_clamp_u32(u_input.e, 10057u, u_input.c)) < ~(~u_input.c)), min(max(_wgslsmith_div_vec4_i32(u_input.b ^ u_input.b, -u_input.b), firstLeadingBit(firstTrailingBit(u_input.b))), select(reverseBits(_wgslsmith_add_vec4_i32(u_input.b, u_input.b)), _wgslsmith_add_vec4_i32(~u_input.b, select(vec4<i32>(u_input.d, u_input.b.x, u_input.d, 1i), u_input.b, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), true))));
    var var_1 = var_0.b.yx;
    let var_2 = Struct_2(func_2(func_2(vec3<bool>(true, var_0.b.x, !var_1.x), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-301f, 129f, -255f, -378f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, -1081f, -1204f, -646f)))).b.zxz, var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 1929f, 552f, 344f))) * vec4<f32>(994f, 201f, -754f, 3159f)))), 0i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, ~_wgslsmith_clamp_i32(var_0.c.x, -1i, u_input.b.x)), 0i), 1u);
    var_1 = vec2<bool>(true, var_1.x);
    var var_3 = vec4<u32>(41473u, _wgslsmith_clamp_u32(1u, abs(countOneBits(~1u)), var_2.d), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(42767u, 12767u, 7700u, 0u), vec4<u32>(4294967295u, u_input.e, 4294967295u, u_input.e)), vec4<u32>(~(~45095u), var_2.d, u_input.e, 176570u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, 0u, u_input.e, 0u), vec4<u32>(19151u, 4294967295u, 42015u, 30770u)) % 32u))), abs(select(_wgslsmith_div_u32(1u, 62795u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 56507u, 4294967295u), vec3<u32>(37057u, var_2.d, var_2.d)), var_0.b.x || var_2.a.b.x)) | 1u);
    return abs(abs(vec4<u32>(var_3.x, ~4294967295u, ~u_input.e, 38574u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = ~reverseBits(~_wgslsmith_mult_u32(u_input.e, 15847u));
    let var_1 = !select(!select(func_2(vec3<bool>(arg_0.b.x, false, false), Struct_1(u_input.b.zz, arg_0.b, arg_0.c), vec4<f32>(-699f, 178f, 202f, -517f)).b.wyz, select(arg_0.b.zzy, arg_0.b.xwx, arg_0.b.yxy), vec3<bool>(arg_0.b.x, false, arg_0.b.x)), !func_2(func_2(arg_0.b.wzx, arg_0, vec4<f32>(-694f, -516f, -1045f, -514f)).b.zyy, Struct_1(vec2<i32>(2147483647i, arg_1), arg_0.b, vec4<i32>(arg_1, 2147483647i, arg_1, 2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, 881f, -404f, -1146f) + vec4<f32>(1312f, -203f, 165f, -517f))).b.wyy, 1u < arg_2.x);
    let var_2 = Struct_1(~vec2<i32>(u_input.d, -2147483647i), select(select(arg_0.b, !func_2(var_1, Struct_1(vec2<i32>(arg_0.c.x, arg_1), arg_0.b, u_input.b), vec4<f32>(1797f, 959f, -1047f, 1649f)).b, vec4<bool>(select(var_1.x, var_1.x, false), any(vec2<bool>(var_1.x, false)), true, any(var_1.zz))), arg_0.b, !any(arg_0.b)), vec4<i32>(-16878i | -arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.d, u_input.d), select(42874i, arg_0.a.x, arg_0.b.x)), vec2<i32>(-arg_1, i32(-1i) * -1i)), arg_0.a.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1, -14706i, u_input.d)) & _wgslsmith_div_vec3_i32(vec3<i32>(-20252i, 1i, arg_0.a.x), vec3<i32>(u_input.a, arg_1, arg_0.c.x)), _wgslsmith_sub_vec3_i32(u_input.b.yzz << (arg_2.zzy % vec3<u32>(32u)), u_input.b.wzz))));
    let var_3 = Struct_1(arg_0.c.yy, select(!vec4<bool>(true, any(var_2.b), any(vec3<bool>(var_2.b.x, true, false)), var_2.b.x || false), func_2(vec3<bool>(all(vec2<bool>(var_2.b.x, var_2.b.x)), all(vec3<bool>(var_1.x, false, arg_0.b.x)), var_2.b.x && var_2.b.x), func_2(vec3<bool>(true, true, true), var_2, vec4<f32>(992f, 850f, -843f, 397f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1264f, 1300f, -1775f, 869f))))).b, all(!vec3<bool>(true, arg_0.b.x, var_1.x))), var_2.c);
    let var_4 = Struct_1(arg_0.c.zx, vec4<bool>(var_3.b.x, true, true, !arg_0.b.x && !arg_0.b.x), var_3.c);
    return select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(var_2.b.x, false), var_3.b.wx, var_2.b.x), any(var_2.b.yz)), !func_2(var_2.b.zwy, Struct_1(vec2<i32>(arg_1, 69789i), var_3.b, vec4<i32>(1i, 10185i, 2147483647i, 1i)), vec4<f32>(891f, 243f, -391f, 610f)).b.zy, !var_2.b.x | (31888u > u_input.c)), var_1.xy, vec2<bool>(any(vec2<bool>(false, true)) != any(var_3.b), any(vec2<bool>(true, true)))), vec2<bool>(true, true), !all(vec4<bool>(all(vec2<bool>(var_3.b.x, true)), false, false, select(var_2.b.x, true, var_2.b.x))));
}

fn func_1() -> i32 {
    var var_0 = vec4<bool>(false, all(func_4(func_2(vec3<bool>(true, true, true), Struct_1(u_input.b.xy, vec4<bool>(false, true, false, false), u_input.b), vec4<f32>(-1257f, -1195f, 1426f, 478f)), firstLeadingBit(firstTrailingBit(u_input.d)), func_3())), true, true);
    var var_1 = -426f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1218f - 810f)), all(vec2<bool>(var_0.x, var_0.x)))))));
    var_0 = vec4<bool>(!(!(!var_0.x)) & !(u_input.b.x >= u_input.b.x), func_2(vec3<bool>(all(!vec3<bool>(var_0.x, true, false)), var_0.x, !any(var_0.wz)), Struct_1(vec2<i32>(u_input.b.x, -2147483647i) ^ u_input.b.yx, select(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), vec4<i32>(firstLeadingBit(40089i), 1i, -11497i, -u_input.b.x)), vec4<f32>(-1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1302f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) * _wgslsmith_f_op_f32(floor(-243f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1949f)), -1000f)))).b.x, !(true & var_0.x), false);
    let var_2 = Struct_2(func_2(!func_2(!var_0.zyw, Struct_1(vec2<i32>(u_input.d, u_input.b.x), vec4<bool>(var_0.x, false, var_0.x, true), vec4<i32>(57695i, u_input.d, 27505i, u_input.a)), vec4<f32>(-1000f, -950f, -1000f, -1546f)).b.yyw, func_2(!vec3<bool>(true, true, var_0.x), func_2(var_0.zxy, func_2(var_0.ywy, Struct_1(vec2<i32>(u_input.d, u_input.a), vec4<bool>(var_0.x, var_0.x, true, true), u_input.b), vec4<f32>(-1000f, 1294f, 1984f, -766f)), vec4<f32>(155f, -659f, -822f, -560f)), vec4<f32>(_wgslsmith_f_op_f32(-1865f + -275f), _wgslsmith_f_op_f32(-164f - 823f), -129f, -1151f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1110f, -369f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1562f * -136f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1087f)) * -663f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1632f, 1000f) + -1371f))), u_input.a, -_wgslsmith_clamp_i32(min(abs(-29038i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.b.x), vec3<i32>(-32074i, u_input.d, -1i))), _wgslsmith_mult_i32(40112i, u_input.b.x), u_input.b.x), u_input.c);
    return min(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-var_2.c, _wgslsmith_div_i32(u_input.d ^ var_2.a.a.x, _wgslsmith_mult_i32(1i, u_input.b.x))), var_2.c), reverseBits(var_2.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-u_input.a, func_1(), (u_input.b.x | u_input.b.x) << (29735u % 32u), u_input.b.x), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, 1i, u_input.b.x)));
    let var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-470f, 88797u);
}

