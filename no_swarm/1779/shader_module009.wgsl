struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(0i, 7840i, 43614i), vec3<i32>(33158i, 2147483647i, -1i), vec3<i32>(1i, -1i, 1i), vec3<i32>(-70817i, 1i, 57426i), vec3<i32>(0i, -39035i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, -3579i), vec3<i32>(-9830i, 3925i, -14679i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(i32(-2147483648), 4290i, 2147483647i), vec3<i32>(439i, 2147483647i, -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = select(vec3<bool>(false, any(vec3<bool>(true, true, true)), false), select(vec3<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), false), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), false))), true);
    var_0 = select(vec3<bool>(all(!vec4<bool>(true, false, var_0.x, false)), false, true), !vec3<bool>(var_0.x, var_0.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)) | any(vec3<bool>(var_0.x, true, true))), vec3<bool>(var_0.x, false, true));
    let var_1 = abs(u_input.a);
    var var_2 = true;
    var_2 = var_0.x;
    return _wgslsmith_mod_i32(0i, -43796i);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(488f, 402f, -865f, -374f) - vec4<f32>(arg_1, 1000f, 256f, -961f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -891f, -1083f, 1903f))))) - vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1), -557f)));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(abs(firstLeadingBit(48729i) | ~u_input.c), (func_3() | _wgslsmith_mod_i32(-2147483647i, u_input.c)) << ((firstTrailingBit(39958u) | (u_input.a.x ^ 70088u)) % 32u), ~((u_input.e & u_input.c) & 60881i), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~u_input.a.x, 11u)] ^ vec3<i32>(79750i, 0i, -1i), global0[_wgslsmith_index_u32(45101u, 11u)])), ~(-vec4<i32>(1i, 1i, -u_input.c, u_input.e)));
    var var_3 = i32(-1i) * -_wgslsmith_mod_i32(~0i, _wgslsmith_div_i32(2117i, _wgslsmith_mod_i32(-34167i, u_input.c)));
    var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(var_2.yw), -var_2.xy);
    return 4294967295u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    global0 = array<vec3<i32>, 11>();
    let var_0 = any(!vec2<bool>(any(vec3<bool>(false, false, true)), true));
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, _wgslsmith_add_i32(-1i, 1i), ~u_input.e)), global0[_wgslsmith_index_u32(~(~21216u ^ countOneBits(arg_1.x)), 11u)]));
    var var_2 = arg_1.x;
    let var_3 = Struct_4(vec4<u32>(1u, firstTrailingBit(arg_2), func_2(!select(vec3<bool>(var_0, true, false), vec3<bool>(true, var_0, true), var_0), _wgslsmith_f_op_f32(abs(-717f))), ~3699u), Struct_1(!vec4<bool>(any(vec2<bool>(var_0, true)), var_0 | var_0, any(vec2<bool>(false, var_0)), true), var_1.a.zx, !vec3<bool>(false, true, arg_1.x >= 4294967295u), 0u > firstLeadingBit(arg_1.x ^ 0u)), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(arg_2, 0u) ^ arg_1.wz) | arg_1.zy, u_input.a >> (min(vec2<u32>(27540u, u_input.b), vec2<u32>(arg_2, 45643u)) % vec2<u32>(32u))), 11u)]), Struct_3(Struct_1(select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, var_0, true, false), var_0), vec2<i32>(_wgslsmith_add_i32(-2147483647i, var_1.a.x), _wgslsmith_sub_i32(0i, -5819i)), select(!vec3<bool>(true, false, var_0), select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, false, true))), false & var_0)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)) * arg_0.x)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = array<vec3<i32>, 11>();
    var var_0 = Struct_2(vec3<i32>(u_input.e, u_input.e, -2147483647i));
    var var_1 = min(select(countOneBits(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, arg_0.b.x, -13069i, arg_0.b.x), vec4<i32>(1i, arg_0.b.x, arg_0.b.x, arg_0.b.x)), -vec4<i32>(18435i, 0i, var_0.a.x, -2147483647i))), -(~vec4<i32>(2147483647i, u_input.c, -60321i, -1i)) & vec4<i32>(3735i ^ u_input.e, -1i, var_0.a.x, arg_0.b.x), !(!vec4<bool>(arg_0.d, true, arg_0.d, false))), -vec4<i32>(~1i, -1i | ~u_input.e, firstTrailingBit(arg_0.b.x) << ((42461u ^ u_input.b) % 32u), reverseBits(u_input.e)));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-908f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1334f) * 1092f)), _wgslsmith_f_op_f32(trunc(553f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -459f, -1068f))) - vec3<f32>(-324f, 226f, -1403f)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), vec4<u32>(79694u, 4294967295u, 8427u, u_input.b))), func_2(arg_0.a.wxz, -112f))))));
    var_0 = Struct_2(var_0.a);
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, -498f, -1372f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, var_2.x, var_2.x))) - var_2.wzw)), ~(((vec4<u32>(u_input.a.x, 29227u, 30568u, u_input.d) ^ vec4<u32>(63860u, u_input.a.x, u_input.d, 1u)) & vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.d)) & min(vec4<u32>(31379u, 29241u, u_input.a.x, 11827u) & vec4<u32>(1u, u_input.d, 55855u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(8907u, 0u, 58492u, u_input.d), vec4<u32>(4294967295u, u_input.d, u_input.d, 4294967295u)))), _wgslsmith_mult_u32(u_input.d, firstLeadingBit(u_input.d))));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-210f)), 1180f, select(!arg_0.x, !arg_0.x, 1358f == arg_2)))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-1007f * _wgslsmith_f_op_f32(trunc(-1065f)))) + _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(166f)))))), 189f);
    let var_1 = select(arg_1, countOneBits(_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), min(u_input.e, -25618i | u_input.c))), all(!(!arg_0.wwx)));
    var var_2 = Struct_4(vec4<u32>(select(_wgslsmith_div_u32(u_input.a.x, ~arg_3), 39708u << (countOneBits(arg_3) % 32u), all(select(arg_0, vec4<bool>(true, true, arg_0.x, false), arg_0))), _wgslsmith_div_u32(u_input.a.x, 0u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3, arg_3, arg_3), vec4<u32>(arg_3, u_input.b, 1u, u_input.a.x)), 0u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 1u, 0u) | vec3<u32>(u_input.d, 3705u, 45451u), ~vec3<u32>(u_input.d, 4294967295u, u_input.d)), u_input.a.x), Struct_1(arg_0, _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-39268i, u_input.c), vec2<i32>(2147483647i, 0i), vec2<i32>(11870i, -11326i)), abs(~vec2<i32>(u_input.e, u_input.e))), arg_0.zxz, any(!(!arg_0))), Struct_2(~global0[_wgslsmith_index_u32(u_input.d, 11u)]), Struct_3(Struct_1(vec4<bool>(any(vec2<bool>(true, true)), !arg_0.x, arg_0.x | true, 586f >= var_0.x), -max(vec2<i32>(var_1, 17647i), vec2<i32>(1i, u_input.c)), !(!arg_0.ywy), arg_0.x)));
    let var_3 = ~abs(_wgslsmith_dot_vec3_u32(var_2.a.yxw, var_2.a.wwz));
    var var_4 = vec3<i32>(_wgslsmith_mult_i32(~(-_wgslsmith_div_i32(var_1, -2147483647i)), func_3()), _wgslsmith_clamp_i32(countOneBits(~_wgslsmith_dot_vec3_i32(var_2.c.a, vec3<i32>(u_input.c, var_2.c.a.x, -11098i))), _wgslsmith_mod_i32(-(-46447i & var_1), reverseBits(-26164i)), u_input.c), -_wgslsmith_div_i32(arg_1, arg_1));
    return Struct_3(Struct_1(!vec4<bool>(true, true, var_2.b.d, !var_2.b.d), max(~(var_4.yz << (vec2<u32>(41319u, var_3) % vec2<u32>(32u))), var_2.b.b), var_2.d.a.c, true));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    var var_0 = min(select(u_input.e, func_3(), true), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-19334i, arg_1.a.b.x), vec2<i32>(arg_2.x, 14125i), arg_1.a.b), max(arg_0.zx, ~vec2<i32>(arg_1.a.b.x, 0i)))));
    var_0 = ~0i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec3<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, ~firstLeadingBit(select(u_input.d, u_input.b, false))), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(62522u, 21528u) ^ vec2<u32>(35060u, u_input.d)), vec2<u32>(1u, 30446u) & vec2<u32>(36948u, u_input.a.x)));
    var var_2 = vec4<i32>(firstLeadingBit(0i), -1i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, u_input.b, u_input.a.x, var_1.x), ~vec4<u32>(u_input.d, 4294967295u, 18982u, 39121u) & select(vec4<u32>(4294967295u, var_1.x, 1u, 0u), vec4<u32>(var_1.x, 83601u, 33465u, 56438u), false)) % 32u), u_input.e, 2147483647i);
    var var_3 = func_6(firstTrailingBit(min(select(select(vec4<i32>(0i, var_2.x, -57753i, u_input.c), vec4<i32>(-7277i, 0i, u_input.c, var_2.x), false), vec4<i32>(u_input.c, 2147483647i, var_2.x, u_input.c), false), vec4<i32>(-u_input.c, -56817i, _wgslsmith_mult_i32(var_2.x, -41740i), u_input.c))), func_5(select(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, false, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), ~_wgslsmith_add_i32(21661i, u_input.e) | var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(1286f, 1065f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(0i, u_input.e), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_f32(abs(-1964f)))), select(true, true, false) && true)), 0u & (_wgslsmith_sub_u32(u_input.d, u_input.d) >> (1u % 32u))), var_2.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(var_1.x, 20631u, 40085u)), ~_wgslsmith_mod_vec3_u32(var_1, var_1)), max(52668u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 4294967295u, 50914u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 65761u) ^ vec4<u32>(17595u, var_1.x, var_1.x, var_1.x))), ~22931u, 17867u), firstLeadingBit(vec2<u32>(~(~var_1.x), max(min(u_input.b, var_1.x), ~1u))), var_1.xz, ~(vec4<i32>(var_2.x, ~u_input.e, -2147483647i, 1i) & _wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.x, -46306i, 0i, 0i), ~vec4<i32>(-39897i, var_3.a.b.x, var_3.a.b.x, -2147483647i))));
}

