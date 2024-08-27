struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> bool {
    let var_0 = 13858i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1026f, 1000f), vec2<f32>(1391f, 1031f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2075f, -1121f))) * vec2<f32>(474f, 582f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(235f - -800f), _wgslsmith_f_op_f32(-var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, var_1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1253f) + vec2<f32>(var_1.x, -387f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x)) + vec2<f32>(549f, var_1.x))), true)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1289f)) + -503f)));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, var_1.x))))))));
    return all(select(select(select(!vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, arg_1, true, arg_1))), vec4<bool>(all(vec3<bool>(true, false, arg_1)), !arg_1, all(vec3<bool>(false, arg_1, arg_1)), all(vec2<bool>(true, arg_1))), vec4<bool>(arg_1, arg_0.x == arg_0.x, !arg_1, arg_1)), !(!(!vec4<bool>(arg_1, true, false, arg_1))), vec4<bool>(all(vec4<bool>(false, arg_1, false, arg_1)), arg_1 & all(vec2<bool>(arg_1, true)), all(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), true)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<bool> {
    var var_0 = all(!select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, false), func_3(arg_0.wwz, true)), vec4<bool>(true, u_input.c.x == arg_1.x, true, any(vec4<bool>(true, true, false, true))), func_3(-vec3<i32>(-31932i, arg_1.x, -2147483647i), true)));
    var_0 = any(vec4<bool>(func_3(_wgslsmith_mod_vec3_i32(arg_1, select(vec3<i32>(u_input.c.x, arg_1.x, arg_0.x), arg_0.yxz, vec3<bool>(false, true, true))), -arg_1.x != ~u_input.c.x), true, 4294967295u == u_input.a, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
    let var_1 = Struct_2(arg_2, Struct_1(-_wgslsmith_dot_vec2_i32(arg_1.zz, -arg_0.xz)), u_input.c.x);
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, -1685f, arg_2))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1074f * var_1.a), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1542f - -1021f)))));
    return !(!(!select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, true, true, var_2.x), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = !vec4<bool>(!(arg_0 | false), true, arg_0, false);
    let var_1 = !(!var_0.ww);
    let var_2 = firstLeadingBit(abs(~min(vec4<u32>(u_input.b, 95932u, 45313u, u_input.b), vec4<u32>(0u, u_input.b, 45782u, 9276u)) | ~vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b)));
    var_0 = func_2(~vec4<i32>(abs(-arg_1.a), arg_1.a, u_input.c.x ^ u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -8052i, -1i, -1i), vec4<i32>(27842i, arg_1.a, -2147483647i, arg_1.a)), -2147483647i)), _wgslsmith_div_vec3_i32(~firstLeadingBit(~vec3<i32>(1i, 9079i, 21610i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, -21912i, 1i) ^ vec3<i32>(u_input.c.x, u_input.c.x, 22453i), firstLeadingBit(vec3<i32>(1i, 28308i, -8120i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885f + 560f)))))));
    var_0 = !vec4<bool>(all(vec4<bool>(any(vec4<bool>(false, true, false, var_1.x)), var_1.x, true, true)), false || (_wgslsmith_dot_vec3_u32(var_2.xyz, vec3<u32>(var_2.x, u_input.b, 0u)) != 1u), arg_2, true);
    return 186f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, Struct_1(u_input.c.x), true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-185f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-397f))) * _wgslsmith_f_op_f32(f32(-1f) * -259f)), 820f, 1f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x));
    var var_2 = Struct_1(-2147483647i);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-493f, _wgslsmith_f_op_f32(var_1 - -1000f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, 511f), var_0.x))), Struct_1(firstTrailingBit(-var_2.a)), 1i), 1i, Struct_2(var_1, Struct_1(u_input.c.x), reverseBits(_wgslsmith_clamp_i32(var_2.a, u_input.c.x, u_input.c.x) | -var_2.a)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 109776u, 43031u, u_input.b), abs(vec4<u32>(u_input.b, u_input.a, 101844u, u_input.b))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.c.x), vec3<i32>(var_2.a, u_input.c.x, var_2.a) >> (vec3<u32>(852u, 0u, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, -2147483647i, var_2.a))) | vec3<i32>(-43410i, 398i, 1i));
    let var_4 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(select(true, false, true), func_3(vec3<i32>(3391i, -18405i, 1i), false), var_3.e.x == 11010i), true), func_2(-_wgslsmith_sub_vec4_i32(vec4<i32>(27591i, 1i, u_input.c.x, 2147483647i), vec4<i32>(var_2.a, -9251i, 1i, -53501i)), min(vec3<i32>(var_3.a.c, -4752i, 24464i) & var_3.e, ~vec3<i32>(var_3.e.x, 15941i, -2147483647i)), var_3.c.a).ww));
    var_2 = Struct_1(abs(_wgslsmith_sub_i32(var_3.c.c, ~2147483647i)));
    var var_5 = !(!(!(!func_2(vec4<i32>(u_input.c.x, var_3.a.b.a, u_input.c.x, u_input.c.x), var_3.e, var_3.c.a).xxx)));
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(var_3.d.xwx, vec3<u32>(var_3.d.x, _wgslsmith_div_u32(u_input.a, var_3.d.x), ~min(1u, u_input.a))), _wgslsmith_clamp_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(~vec2<i32>(var_3.e.x, 1i) >> (vec2<u32>(u_input.a, var_3.d.x) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(26066i), ~var_2.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_2.a) << (select(var_3.d.xx, vec2<u32>(u_input.a, u_input.a), var_5.xx) % vec2<u32>(32u)), select(-vec2<i32>(var_2.a, u_input.c.x), countOneBits(u_input.c), !var_4), reverseBits(vec2<i32>(u_input.c.x, 2147483647i) << (var_3.d.yz % vec2<u32>(32u))))));
}

