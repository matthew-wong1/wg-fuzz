struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(18901i, -10929i, 1i, 1i, 15003i, -1i, i32(-2147483648), i32(-2147483648), -1i, -22372i, 1i, -18216i, i32(-2147483648), 23299i, -33095i, 1i, -41493i, 0i, -4830i, 1i, 2147483647i, -28102i, 14323i, 0i, 16894i, 13093i, 1i, 13283i, 25137i, -34167i, -16306i, -24903i);

var<private> global1: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    global1 = vec2<f32>(arg_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.b))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(f32(-1f) * -319f)) * 384f);
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.a.e, var_0)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-147f, -1002f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, 768f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(ceil(arg_2.c.b))) + vec2<f32>(global1.x, 141f))));
    let var_1 = ~firstTrailingBit(min(arg_2.c.a.b, -vec3<i32>(arg_0.x, global0[_wgslsmith_index_u32(arg_2.a, 32u)], -1i)));
    var var_2 = select(arg_0.x, u_input.b, false);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c.b * 1021f))))), 1000f, global1.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c.b, 292f, -1007f, var_0), vec4<f32>(var_0, 1572f, global1.x, var_0), arg_2.c.a.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1747f, global1.x, -332f))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(arg_3.x, vec3<i32>(global0[_wgslsmith_index_u32(1278u, 32u)], global0[_wgslsmith_index_u32(44005u, 32u)], -firstLeadingBit(u_input.b)) | vec3<i32>(u_input.b, 1i, ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 0u), 32u)]), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(34007i, -2147483647i)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 59472u), vec2<u32>(0u, 0u)), ~u_input.c.zx) % vec2<u32>(32u)), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(1i, 31664i)), 17051i)), ~u_input.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -695f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.wz)) - arg_2.wx) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, -909f))))))));
    global0 = array<i32, 32>();
    var var_2 = Struct_2(var_0, _wgslsmith_f_op_vec4_f32(func_3(var_0.c & vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.d, 4294967295u), vec3<u32>(u_input.a, 98887u, 71698u)), 32u)], 1i), false, Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 58356u, 7096u), vec4<u32>(u_input.c.x, 4294967295u, 1u, 4962u)), var_0.b, Struct_2(Struct_1(true, vec3<i32>(-1064i, var_0.c.x, var_0.c.x), vec2<i32>(var_0.c.x, u_input.b), u_input.a, arg_1), _wgslsmith_f_op_f32(round(var_0.e)), true), global0[_wgslsmith_index_u32(var_0.d, 32u)]))).x, var_0.a);
    var_2 = Struct_2(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x - 1324f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(var_0.e - var_1.x))))), var_0.a);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_1, arg_2.xz)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-264f, -1000f))), true))))));
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(true, global1.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-645f, global1.x, -1214f, global1.x), vec4<f32>(-877f, global1.x, global1.x, -1122f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 721f, -355f, 1000f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(-49655i, u_input.b), false, Struct_3(1u, vec3<i32>(u_input.b, -1i, u_input.b), Struct_2(Struct_1(true, vec3<i32>(-19600i, 34239i, 7701i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), u_input.c.x, global1.x), -914f, true), -1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1468f, global1.x, global1.x, -635f) + vec4<f32>(-966f, 1777f, global1.x, global1.x)))))), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, all(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -845f)));
    var var_0 = Struct_1(!((i32(-1i) * -25382i) < -(u_input.b & u_input.b)), _wgslsmith_sub_vec3_i32(~(~vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b)), firstLeadingBit(abs(vec3<i32>(u_input.b, -1858i, 4959i)))), min(~countOneBits(vec2<i32>(u_input.b, 0i)), vec2<i32>(u_input.b, reverseBits(abs(-5956i)))), abs(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)))) - -390f));
    var var_1 = (i32(-1i) * -_wgslsmith_mod_i32(~var_0.c.x, -14183i)) >= _wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.b, ~(-2147483647i)), var_0.b.x);
    var var_2 = Struct_2(Struct_1(all(!select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, true))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.b, var_0.b), vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 32u)], var_0.c.x)), vec3<i32>(global0[_wgslsmith_index_u32(30348u, 32u)], -2158i, u_input.b)), max(_wgslsmith_add_vec2_i32(~vec2<i32>(-23370i, var_0.c.x), ~var_0.b.zx), abs(vec2<i32>(u_input.b, -1i))), _wgslsmith_mult_u32(~1u, ~u_input.a), var_0.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(-556f * var_0.e)), _wgslsmith_f_op_vec4_f32(func_3(-(vec2<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(var_0.d, 32u)]) | vec2<i32>(u_input.b, -21950i)), true, Struct_3(u_input.c.x, -vec3<i32>(25204i, global0[_wgslsmith_index_u32(u_input.a, 32u)], -7105i), Struct_2(Struct_1(var_0.a, vec3<i32>(4498i, 39933i, 1i), var_0.b.xz, var_0.d, var_0.e), 803f, false), var_0.c.x << (var_0.d % 32u)))).x)), (var_0.a || var_0.a) || all(select(select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false)), !vec2<bool>(var_0.a, var_0.a), var_0.a)));
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-189f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f * _wgslsmith_f_op_f32(-var_2.b)))), var_2.c);
    return 773u;
}

fn func_1() -> bool {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(_wgslsmith_sub_u32(31451u, u_input.a)), 1930u, ~49188u), _wgslsmith_div_vec3_u32(vec3<u32>(func_2(), u_input.c.x, 0u), min(~u_input.c, vec3<u32>(u_input.c.x, 23157u, 75304u)))), vec3<i32>(0i, min(u_input.b, countOneBits(-24509i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(2267i >> (u_input.a % 32u), 3018i >> (u_input.c.x % 32u)), select(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(55635u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), global0[_wgslsmith_index_u32(u_input.a, 32u)], true))), Struct_2(Struct_1(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)] | -2147483647i, u_input.b >> (1u % 32u), 1i), vec2<i32>(select(-18951i, u_input.b, true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 75787i), vec4<i32>(u_input.b, 1i, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 973i))), abs(~1u), global1.x), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_vec4_f32(func_3(~vec2<i32>(1i, u_input.b), false, Struct_3(1u, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], -76952i, -12913i), Struct_2(Struct_1(true, vec3<i32>(global0[_wgslsmith_index_u32(1u, 32u)], u_input.b, 47506i), vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), 1u, 640f), global1.x, true), 2147483647i))).x), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), u_input.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(max(vec2<i32>(-1i) * -var_0.b.yy, vec2<i32>(global0[_wgslsmith_index_u32(~func_2(), 32u)], abs(var_0.c.a.c.x))), true, Struct_3(~(~4294967295u), abs(select(var_0.b, abs(var_0.b), !vec3<bool>(var_0.c.c, false, false))), var_0.c, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~firstTrailingBit(1u)), 32u)])));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -749f, global1.x, 787f) + vec4<f32>(var_0.c.b, -1226f, -1289f, -461f))) * vec4<f32>(275f, var_1.x, global1.x, var_0.c.b)))));
    var var_2 = !select(select(vec4<bool>(var_0.c.c, all(vec4<bool>(true, false, true, true)), !var_0.c.a.a, any(vec3<bool>(true, var_0.c.a.a, true))), vec4<bool>(true, true, u_input.b <= -1i, false && var_0.c.c), vec4<bool>(var_0.c.c & false, true, !var_0.c.c, true)), select(vec4<bool>(any(vec3<bool>(var_0.c.c, var_0.c.c, true)), false, !var_0.c.c, var_0.a != u_input.a), vec4<bool>(all(vec3<bool>(var_0.c.c, var_0.c.c, var_0.c.a.a)), true, var_0.d <= 0i, var_0.c.a.a), any(vec3<bool>(var_0.c.a.a, var_0.c.a.a, var_0.c.c))), vec4<bool>(true, false, true, var_0.c.c));
    let var_3 = max(_wgslsmith_sub_i32(firstLeadingBit(u_input.b), var_0.d), _wgslsmith_clamp_i32(-u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(~(var_0.b ^ vec3<i32>(u_input.b, var_0.c.a.b.x, 11993i)), abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.b, -1i)) >> (vec3<u32>(var_0.c.a.d, 0u, 4294967295u) % vec3<u32>(32u)))));
    return var_2.x | var_0.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var var_1 = !(!vec3<bool>(false, func_1(), false));
    global0 = array<i32, 32>();
    var_1 = vec3<bool>(var_1.x, any(vec4<bool>(all(vec2<bool>(true, true)), true, func_1(), !func_1())), ~_wgslsmith_sub_u32(~58439u, u_input.a) >= u_input.c.x);
    let var_2 = Struct_3(~17207u, vec3<i32>(select(~64516i, -3130i, true), global0[_wgslsmith_index_u32(19722u, 32u)] << ((0u ^ ~u_input.c.x) % 32u), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~1u, 32u)], ~_wgslsmith_mod_i32(44639i, u_input.b))), Struct_2(Struct_1(true, firstTrailingBit(vec3<i32>(-2147483647i, u_input.b, global0[_wgslsmith_index_u32(34844u, 32u)])) | firstTrailingBit(vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 32u)], u_input.b)), vec2<i32>(-16163i, -5787i) >> (u_input.c.zx % vec2<u32>(32u)), ~u_input.a, global1.x), global1.x, false), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, ~(var_2.c.a.d | (var_2.c.a.d << (34792u % 32u))), 25303u, firstLeadingBit(1u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, 1189f, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1127f, global1.x, var_2.c.a.e) * vec3<f32>(-121f, var_2.c.a.e, 165f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, -1092f, -1000f)))))), -firstLeadingBit(abs(~var_2.c.a.b.xy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(335f, 1444f, var_2.c.b, -254f) + vec4<f32>(-812f, global1.x, var_2.c.b, 272f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-701f, -1357f, global1.x, -430f), vec4<f32>(1026f, global1.x, -655f, global1.x))))))));
}

