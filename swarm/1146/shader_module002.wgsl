struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = Struct_1(arg_3.e.a, vec3<u32>(reverseBits(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(arg_3.b, vec2<u32>(63582u, 1u)))), u_input.c, 1u), _wgslsmith_f_op_f32(sign(-1124f)));
    var var_1 = -vec3<i32>(-9009i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_1.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 0i), arg_1.zw)), 77429i), _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(-40496i, 15282i)), _wgslsmith_mod_i32(u_input.b, countOneBits(9531i))));
    let var_2 = Struct_1(1f, ~var_0.b, -674f);
    var var_3 = 71211i;
    let var_4 = !all(!select(!vec4<bool>(arg_3.c, arg_3.c, false, arg_3.d.x), select(vec4<bool>(true, arg_3.c, arg_3.d.x, arg_3.c), vec4<bool>(false, false, arg_3.d.x, true), arg_3.c), select(arg_3.d.x, true, arg_3.d.x)));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1043f, arg_0) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, 2654f, arg_0), vec3<f32>(arg_0, 1262f, 449f)))) - vec3<f32>(2408f, arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -237f)))), vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f) * 198f)), arg_3.e.a)));
}

fn func_2() -> vec4<bool> {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1083f + 156f), 1028f, _wgslsmith_f_op_f32(f32(-1f) * -629f)))) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(select(1323f, _wgslsmith_f_op_f32(1f - -1000f), false)), vec4<i32>(-1i, _wgslsmith_add_i32(min(u_input.b, -26452i), i32(-1i) * -1i), -1i, 2746i), u_input.e, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(352f, 474f) - vec2<f32>(1496f, -951f))), ~(vec2<u32>(5904u, u_input.c) | vec2<u32>(u_input.c, 34386u)), true, select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(607f - -242f), ~vec3<u32>(u_input.d, 4294967295u, u_input.d), -658f)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1233f - 699f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1071f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(var_1.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -396f)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(-602f, select(vec4<i32>(-20115i, u_input.b, -67464i, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.b, 16702i), vec4<bool>(true, true, false, false)) << ((vec4<u32>(77908u, u_input.c, 2101u, u_input.c) | vec4<u32>(0u, 4294967295u, u_input.c, 0u)) % vec4<u32>(32u)), ~_wgslsmith_mult_i32(2147483647i, u_input.e), Struct_2(var_2.yz, vec2<u32>(u_input.a, u_input.d), any(vec3<bool>(true, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(var_1.x, vec3<u32>(35501u, 20989u, 4294967295u), -1110f)))).x), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(14005u, u_input.c, 35930u) << (vec3<u32>(22691u, 23599u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.c, u_input.a, u_input.c) >> (vec3<u32>(u_input.a, u_input.d, u_input.a) % vec3<u32>(32u)))), 1397f);
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(max(var_3.a, 375f))) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 1196f, var_2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(var_3.a, -410f, var_3.c)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(var_1.x, vec4<i32>(1i, u_input.e, 8325i, 2147483647i), 2162i, Struct_2(var_2.zy, var_3.b.zy, false, vec2<bool>(false, false), Struct_1(var_3.c, vec3<u32>(u_input.c, u_input.a, 4294967295u), 733f)))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1, vec3<f32>(var_2.x, var_1.x, var_3.c))))));
    return !(!(!vec4<bool>(false, true, any(vec2<bool>(true, true)), true)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)))), -289f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1883f), arg_1.a) * -189f)));
    let var_1 = any(select(!vec4<bool>(any(vec3<bool>(false, false, true)), true, false, true), vec4<bool>(true, true, true, true), func_2()));
    var var_2 = ~arg_1.b.x;
    var_2 = 27241u;
    let var_3 = !any(select(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), select(vec2<bool>(true, true), !vec2<bool>(true, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1)), vec2<bool>(true, var_1)));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<i32>(max(max(_wgslsmith_add_i32(65702i, 22764i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(80410u, 53221u, 4294967295u, arg_3.b.x), vec4<u32>(arg_3.b.x, 1u, 84289u, arg_3.b.x)) % 32u), 5521i), u_input.e), abs(_wgslsmith_div_i32(countOneBits(u_input.b ^ -9542i), _wgslsmith_mult_i32(u_input.b, ~(-10750i)))));
    let var_1 = Struct_1(arg_3.a, countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(83021u, _wgslsmith_sub_u32(u_input.a, 1u), ~u_input.a), vec3<u32>(u_input.d, ~0u, 11738u))), arg_2.x);
    var var_2 = arg_3.a;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_2.zy, vec2<f32>(arg_2.x, 898f))))))), _wgslsmith_div_vec2_u32(~arg_3.b.xx, vec2<u32>(_wgslsmith_add_u32(0u, 1u), select(arg_3.b.x, 4294967295u, arg_1))) >> (~firstLeadingBit(var_1.b.yz) % vec2<u32>(32u)), arg_0.x, !select(func_1(53928i, Struct_1(arg_3.c, vec3<u32>(0u, 18944u, var_1.b.x), 1129f)), select(vec2<bool>(arg_1, arg_0.x), select(vec2<bool>(false, true), vec2<bool>(arg_1, false), true), !arg_0.yy), arg_0.yy), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-113f * -1000f), countOneBits(vec4<i32>(-2147483647i, -1i, -1588i, u_input.b)), -2147483647i, Struct_2(vec2<f32>(575f, var_1.c), vec2<u32>(var_1.b.x, 84453u), arg_1, arg_0.zx, Struct_1(603f, vec3<u32>(var_1.b.x, 4294967295u, var_1.b.x), arg_3.a)))).x - var_1.c), _wgslsmith_add_vec3_u32(var_1.b, _wgslsmith_div_vec3_u32(arg_3.b, var_1.b)) >> (_wgslsmith_add_vec3_u32(~var_1.b, firstLeadingBit(arg_3.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_vec3_f32(func_3(137f, vec4<i32>(52333i, u_input.b, 2147483647i, -2147483647i) >> (vec4<u32>(4294967295u, 74157u, u_input.c, arg_3.b.x) % vec4<u32>(32u)), min(u_input.e, 1i), Struct_2(arg_2.yz, var_1.b.xz, false, arg_0.xz, var_1))).x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec3<bool>(all(func_1(36547i, Struct_1(-655f, vec3<u32>(u_input.c, u_input.c, u_input.c), 540f))), false, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true)))), vec4<f32>(-230f, -381f, _wgslsmith_f_op_f32(1941f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(-219f, vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), 0i, Struct_2(vec2<f32>(-1123f, 1007f), vec2<u32>(u_input.d, u_input.a), true, vec2<bool>(true, false), Struct_1(-900f, vec3<u32>(u_input.d, 8258u, u_input.c), -731f)))).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, 1252f)))), Struct_1(-740f, vec3<u32>(u_input.c, u_input.a, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.d)), -1110f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, select(var_0.e.b, abs(vec3<u32>(1u, u_input.c << (var_0.e.b.x % 32u), abs(u_input.d))), func_2().yyw), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.b.x, u_input.a, ~(~var_0.e.b.x)), min(min(vec4<u32>(var_0.e.b.x, u_input.c, 1u, 23673u), vec4<u32>(1u, u_input.c, 0u, var_0.b.x) << (vec4<u32>(0u, var_0.e.b.x, u_input.d, u_input.d) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(var_0.e.b.x, u_input.a, u_input.a, var_0.b.x)))));
}

