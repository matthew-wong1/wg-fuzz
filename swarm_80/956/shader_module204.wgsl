struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = arg_0.d;
    let var_1 = max(u_input.b.x, arg_0.a.x);
    let var_2 = select(vec4<bool>(false, var_0.x, true, true), !vec4<bool>(true, all(vec3<bool>(arg_0.d.x, false, true)), all(select(vec2<bool>(false, var_0.x), vec2<bool>(arg_0.d.x, arg_2), var_0)), true), !vec4<bool>(all(vec3<bool>(var_0.x, false, true)) && false, arg_0.d.x, all(vec4<bool>(false, false, arg_0.d.x, true)), arg_2));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(707f * arg_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 251f)))), _wgslsmith_f_op_f32(trunc(860f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_1 - -535f)));
    var var_4 = ~(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(86017u, u_input.a.x), ~1u) & u_input.a.x));
    return _wgslsmith_mod_u32(var_1, var_1);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec3<u32>(1u, ~610u, select(u_input.b.x, firstTrailingBit(func_3(Struct_2(vec4<u32>(31424u, u_input.a.x, 0u, 0u), 1i, Struct_1(vec3<i32>(0i, -40028i, 35224i)), vec2<bool>(true, arg_0), 0i), 475f, arg_0)) & _wgslsmith_mod_u32(~4294967295u, ~12814u), all(!(!vec2<bool>(true, arg_0)))));
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, u_input.a.x);
    var var_2 = max(u_input.a ^ vec4<u32>(~(~var_0.x), max(21598u, 9404u | var_1), ~(~1u), _wgslsmith_dot_vec3_u32(var_0, var_0)), ~u_input.a);
    var var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(var_0, u_input.b.zwz), ~(abs(u_input.b.ywy) << (select(var_0, vec3<u32>(14864u, var_1, 0u), arg_0) % vec3<u32>(32u)))), u_input.b.wwx);
    var var_4 = 73387u;
    return Struct_1(vec3<i32>(15459i, _wgslsmith_clamp_i32(countOneBits(1i), -_wgslsmith_clamp_i32(100901i, -2147483647i, 14596i), _wgslsmith_mult_i32(firstTrailingBit(-42445i), _wgslsmith_div_i32(-1i, 12441i))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-25430i), -749i, 1i), reverseBits(vec3<i32>(1i, 1i, 1i)))));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(38690i, -29703i, _wgslsmith_sub_i32(func_2(-38241i == arg_0.a.x).a.x, _wgslsmith_mod_i32(-1i, -19343i)), 37630i), firstLeadingBit(reverseBits(vec4<i32>(-1i) * -vec4<i32>(-18790i, -1i, 2147483647i, arg_0.a.x))));
    let var_1 = Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, ~u_input.a.x), countOneBits(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 8819u))), u_input.b), arg_0.a.x, arg_0, select(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), vec2<bool>(true, !all(vec2<bool>(true, true)))), var_0.x);
    var var_2 = -1363f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-210f - -366f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1668f))));
    let var_3 = firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4522u, var_1.a.x), var_1.a.yz, var_1.a.wx), var_1.a.xz), _wgslsmith_mod_u32(~(~u_input.b.x), 70997u | ~var_1.a.x)));
    return arg_0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(func_4(func_2(arg_2.x)), ~vec3<i32>(-8789i, -1i, 2147483647i) ^ (vec3<i32>(1i, 2147483647i, 6759i) ^ (vec3<i32>(74022i, 2147483647i, -17157i) >> (u_input.b.xzy % vec3<u32>(32u))))));
    let var_1 = reverseBits(~abs(vec4<u32>(36935u, 14985u, 58636u, u_input.a.x))) >> (vec4<u32>(u_input.a.x, ~min(~13312u, ~54303u), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzw, vec3<u32>(75096u, u_input.b.x, 4294967295u)), arg_1 ^ arg_0.x), select(arg_1, 17326u, arg_2.x))) % vec4<u32>(32u));
    let var_2 = Struct_2(var_1, 2147483647i, Struct_1(vec3<i32>(~(~1i), ~_wgslsmith_sub_i32(57772i, var_0.a.x), var_0.a.x)), arg_2.yx, -13234i);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1089f, -1277f)) + 1650f), -214f, _wgslsmith_f_op_f32(ceil(-520f)), -2020f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), -123f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.wz + vec2<f32>(444f, 879f))), !all(arg_2.zz))), vec2<f32>(_wgslsmith_f_op_f32(var_3.x * 260f), -329f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(629f + var_4.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(541f)) * var_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1293f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1374f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) + _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, u_input.b.x), 46744u, vec3<bool>(true, true, true), false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1287f, _wgslsmith_f_op_f32(-2339f + _wgslsmith_div_f32(-412f, -2384f)), true)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1820f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-796f * -473f)))))), -841f);
    var var_1 = max(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, 2147483647i)), -(~vec2<i32>(3500i, -2147483647i))), _wgslsmith_mod_i32(1i, 2147483647i));
    var_1 = ~1i;
    var var_2 = false;
    var_2 = true;
    var_1 = 27620i;
    var_2 = any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), all(vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, -1i), reverseBits(28261i))), min(vec2<i32>(max(-2147483647i, 15552i), 1i), countOneBits(vec2<i32>(55851i, 1i))), ~abs(-vec2<i32>(0i, -17738i))), -1i, u_input.a.wy);
}

