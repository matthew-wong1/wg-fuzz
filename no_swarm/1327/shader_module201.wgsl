struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-66063i, false, 1u, vec2<f32>(-1042f, -431f));

var<private> global1: vec3<i32> = vec3<i32>(0i, 2147483647i, -25958i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_2(arg_1, ~_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), arg_1, global0.d.x);
    var var_1 = var_0.a;
    var var_2 = -_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(-arg_0.yy, global1.yz), vec2<i32>(i32(-1i) * -70926i, arg_0.x & arg_0.x));
    var var_3 = -1i;
    let var_4 = _wgslsmith_f_op_f32(min(global0.d.x, var_1.d.x));
    return vec3<u32>(_wgslsmith_mod_u32(arg_3.x, countOneBits(arg_3.x)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, 64013u), 6343u ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.a.c, 38104u), 1u)), ~(~u_input.a.x | ~var_1.c));
}

fn func_3() -> vec3<u32> {
    global0 = Struct_1(~(-countOneBits(global1.x)), !any(vec4<bool>(false, u_input.c.x <= global0.c, true, true)), _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(1u, ~global0.c)) << ((_wgslsmith_dot_vec3_u32(u_input.c.yzz, u_input.a | vec3<u32>(33318u, 0u, 43064u)) & ~_wgslsmith_clamp_u32(global0.c, 2926u, u_input.a.x)) % 32u), global0.d);
    let var_0 = 58860u;
    global0 = Struct_1(_wgslsmith_sub_i32(~(-23160i), min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, 2147483647i), vec3<i32>(60810i, -2147483647i, -2147483647i)), vec3<i32>(9476i, global0.a, global0.a) << (u_input.a % vec3<u32>(32u))), u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d.x)) + global0.d.x), global0.d.x)) > -596f, abs(83635u >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.d * global0.d))));
    var var_1 = Struct_1(global1.x, false, ~firstLeadingBit(4294967295u & var_0) | (var_0 >> (4294967295u % 32u)), global0.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.d.x, global0.d.x, -1254f, var_1.d.x))))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -675f, -796f, 403f)))))));
    return _wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, select(0u, var_0, false), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1540u, 0u, 1u))), u_input.c.xzx)), abs(vec3<u32>(var_1.c, 22299u, 12102u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_1(~(-49860i), true, arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, global0.d.x)));
    global1 = -(~(min(vec3<i32>(-22613i, -31346i, global1.x), vec3<i32>(u_input.b, arg_1.a, global0.a)) >> (_wgslsmith_div_vec3_u32(u_input.c.yxz, vec3<u32>(u_input.a.x, 1u, 52165u)) % vec3<u32>(32u)))) << (firstLeadingBit(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(23799i, arg_1.a, 2147483647i, -1i), vec4<i32>(0i, global1.x, 2147483647i, 2147483647i)), Struct_1(1i, arg_1.b, global0.c, var_0.d), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-218f, 458f, -1000f))), ~vec3<u32>(0u, global0.c, arg_1.c)) | (~vec3<u32>(4294967295u, 41302u, u_input.c.x) ^ func_3())) % vec3<u32>(32u));
    let var_1 = abs(~vec2<i32>(global0.a, 2147483647i));
    let var_2 = all(select(vec3<bool>(false, !var_0.b, !arg_1.b), select(vec3<bool>(true, global0.b, true), select(vec3<bool>(false, true, var_0.b), !vec3<bool>(false, global0.b, true), select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(true, global0.b, true), false)), var_0.a <= arg_1.a), true));
    global1 = vec3<i32>(var_0.a, global1.x, 2147483647i | global0.a);
    return Struct_2(Struct_1(max(~max(global0.a, arg_1.a), ~var_0.a), all(vec2<bool>(all(vec4<bool>(var_2, var_0.b, var_0.b, true)), true)), (firstTrailingBit(1u) ^ var_0.c) << (~(~arg_1.c) % 32u), vec2<f32>(1000f, arg_1.d.x)), ~vec4<u32>(var_0.c, _wgslsmith_mod_u32(var_0.c, abs(27325u)), var_0.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, 21527u), func_2(vec4<i32>(var_1.x, u_input.b, u_input.b, global0.a), var_0, arg_2, vec3<u32>(arg_0.x, 17774u, 1u)).yz)), Struct_1(0i, all(!(!vec3<bool>(var_0.b, var_2, arg_1.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(70561u, countOneBits(u_input.c.x)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), abs(vec2<u32>(u_input.c.x, global0.c)))), _wgslsmith_f_op_vec2_f32(-arg_1.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1777f, var_0.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, arg_1.d.x, true)))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = 328f;
    let var_1 = arg_0.c.b;
    let var_2 = true;
    var var_3 = vec3<i32>(global0.a, 1i, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, -16631i, 10089i, u_input.b), vec4<i32>(0i, -11052i, arg_0.c.a, global0.a), vec4<i32>(-45371i, -20870i, arg_0.a.a, u_input.b)), ~(-vec4<i32>(global1.x, u_input.b, 1i, 13585i)))) ^ select(vec3<i32>(0i, arg_0.c.a, _wgslsmith_div_i32(~5416i, _wgslsmith_mod_i32(global1.x, 64508i))), vec3<i32>(global1.x, -_wgslsmith_mod_i32(global1.x, u_input.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, global1.x), vec4<i32>(global0.a, u_input.b, global0.a, 11464i))), all(select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, true, true), vec3<bool>(true, true, false))) || any(vec2<bool>(true, true)));
    var var_4 = -firstLeadingBit(-(firstLeadingBit(vec3<i32>(2147483647i, 11568i, var_3.x)) << (arg_0.b.wxy % vec3<u32>(32u))));
    return firstLeadingBit(-arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>((_wgslsmith_clamp_i32(-11106i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -18286i, global1.x), vec4<i32>(1i, u_input.b, u_input.b, global0.a)), _wgslsmith_dot_vec2_i32(global1.zy, global1.yy)) | u_input.b) & ((-global1.x >> (global0.c % 32u)) >> (~max(70500u, 26335u) % 32u)), ~_wgslsmith_mod_i32(abs(u_input.b) >> (select(u_input.a.x, global0.c, global0.b) % 32u), func_4(func_1(vec2<u32>(global0.c, 2342u), Struct_1(0i, global0.b, 45829u, vec2<f32>(622f, global0.d.x)), vec3<f32>(736f, -714f, global0.d.x)), 32009u)), global1.x);
    var var_0 = func_1(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, _wgslsmith_mult_u32(reverseBits(global0.c), global0.c)), ~select(abs(u_input.a.xx), ~u_input.c.ww, !vec2<bool>(global0.b, global0.b))), func_1(vec2<u32>(_wgslsmith_sub_u32(25298u << (global0.c % 32u), u_input.c.x), 19150u ^ global0.c), Struct_1(~global1.x, !global0.b & false, _wgslsmith_mult_u32(global0.c, u_input.c.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, 769f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1075f, global0.d.x, global0.d.x) - vec3<f32>(779f, -237f, -326f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, 182f, -1005f)))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1191f, -1535f, -713f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, 1631f, global0.d.x)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-872f, global0.d.x, global0.d.x) * vec3<f32>(-138f, -1134f, 269f)) - vec3<f32>(global0.d.x, global0.d.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(934f, 1773f, -202f), vec3<f32>(-589f, -1123f, 513f))))))).a;
    var_0 = func_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, reverseBits(1u)), u_input.a.yz), func_1(vec2<u32>(~abs(u_input.a.x), u_input.a.x), Struct_1(0i, !all(vec2<bool>(false, global0.b)), _wgslsmith_sub_u32(0u, 0u), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), -1290f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(910f)), _wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(1284f * 364f)))).a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(917f)), _wgslsmith_f_op_f32(exp2(global0.d.x)), _wgslsmith_f_op_f32(trunc(1738f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1125f), global0.d.x, global0.d.x), global0.b))))).c;
    let var_1 = Struct_1(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(global1.zy), -global1.zz), firstTrailingBit(1i)), false, var_0.c, var_0.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1498f, 1000f, -1443f, global0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-698f, -263f, global0.d.x, 1000f), vec4<f32>(var_0.d.x, global0.d.x, 1442f, global0.d.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-506f, -1288f, -1039f, global0.d.x) * vec4<f32>(var_1.d.x, var_0.d.x, 1000f, var_0.d.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, var_1.d.x, var_1.d.x, var_1.d.x), vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, -1000f), false))))), select(vec4<bool>(true || global0.b, true, all(vec4<bool>(global0.b, false, var_1.b, true)), !var_1.b), select(select(vec4<bool>(true, global0.b, true, true), vec4<bool>(true, true, false, var_1.b), vec4<bool>(true, false, false, global0.b)), !vec4<bool>(global0.b, true, false, true), u_input.b >= -2147483647i), all(select(vec2<bool>(var_0.b, false), vec2<bool>(var_1.b, var_0.b), vec2<bool>(global0.b, global0.b))))))));
    global0 = Struct_1(~41927i, any(select(select(!vec3<bool>(false, var_1.b, global0.b), vec3<bool>(var_1.b, true, var_0.b), !global0.b), select(select(vec3<bool>(true, global0.b, true), vec3<bool>(var_1.b, global0.b, var_1.b), var_1.b), !vec3<bool>(true, var_1.b, var_1.b), global0.b), false)), ~(~_wgslsmith_sub_u32(u_input.c.x ^ u_input.c.x, 4294967295u)), var_1.d);
    let var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, var_1.c, -15679i);
}

