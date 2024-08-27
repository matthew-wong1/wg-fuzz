struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = 1i;
    let var_1 = -max(abs(u_input.a), -1i) << (4294967295u % 32u);
    var var_2 = Struct_1(vec3<u32>(abs(67455u) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.zw), ~vec2<u32>(4294967295u, 17710u)) % 32u), arg_1.x, _wgslsmith_dot_vec2_u32(arg_1.zw, vec2<u32>(arg_1.x, reverseBits(105721u)))), -332f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(371f, arg_0.x)))), arg_0.x), vec4<f32>(-1347f, 753f, arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x))));
    var var_3 = select(vec2<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), true), vec2<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)), select(true & all(vec2<bool>(true, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true)), !vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), true));
    let var_4 = any(select(select(vec4<bool>(true, -25223i < var_1, false, var_3.x && var_3.x), vec4<bool>(true, true, var_3.x & var_3.x, all(vec3<bool>(true, var_3.x, var_3.x))), select(!vec4<bool>(false, false, var_3.x, false), !vec4<bool>(false, var_3.x, true, true), true)), !vec4<bool>(var_3.x != var_3.x, false && var_3.x, u_input.a > var_1, true), !any(vec2<bool>(var_3.x, var_3.x)) & all(select(vec2<bool>(true, true), vec2<bool>(var_3.x, true), vec2<bool>(false, var_3.x)))));
    return -667f;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec3<u32> {
    let var_0 = 794u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(109f, -873f), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, arg_2.x), 101312u, ~17059u, ~1u)))), -1000f);
    let var_2 = false;
    let var_3 = !select(select(!(!vec2<bool>(var_2, true)), select(select(vec2<bool>(true, false), vec2<bool>(var_2, true), true), select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), vec2<bool>(var_2, true)), var_2), vec2<bool>(false, true)), vec2<bool>(arg_2.x >= countOneBits(arg_2.x), any(!vec3<bool>(false, var_2, var_2))), !any(select(vec2<bool>(false, var_2), vec2<bool>(true, var_2), true)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1149f);
    return vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(var_0, select(var_0, 4156u, var_2), !var_3.x), 30314u), 1u), _wgslsmith_mult_u32(var_0, arg_2.x), 1u);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(vec3<u32>(~10875u, _wgslsmith_sub_u32(49730u, arg_1.a.x), ~0u) << (~abs(vec3<u32>(9106u, arg_1.a.x, arg_1.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(729f)), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-134f * -1445f), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1401f), arg_1.b)))));
    let var_1 = select(select(!select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, false, true)), !vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, true, arg_0.x)), vec3<bool>(true, select(all(vec4<bool>(true, false, arg_0.x, true)), arg_0.x, arg_0.x), _wgslsmith_f_op_f32(var_0.c + arg_1.d.x) < _wgslsmith_f_op_f32(trunc(-1000f))), var_0.c == arg_1.b), !select(!(!vec3<bool>(false, arg_0.x, true)), select(!vec3<bool>(arg_0.x, arg_0.x, false), !vec3<bool>(arg_0.x, false, false), !vec3<bool>(arg_0.x, true, false)), true), any(!select(!vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), false)));
    let var_2 = Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, 25131u, arg_1.a.x), vec4<u32>(0u, var_0.a.x, arg_1.a.x, arg_1.a.x)), vec4<u32>(var_0.a.x, arg_1.a.x, 43451u, arg_1.a.x) & vec4<u32>(12077u, arg_1.a.x, 7072u, 35979u)), ~func_2(51815i, vec2<i32>(-1896i, u_input.a), arg_1.a.yz).x, ~1u), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + arg_1.b), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b, 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))))), var_0.d.x, _wgslsmith_f_op_f32(max(1216f, 508f)), arg_1.b));
    var var_3 = any(!var_1.zy);
    let var_4 = ~arg_1.a.x;
    return var_2;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = func_4(vec2<bool>(!(!(arg_1 & false)), arg_0), Struct_1(_wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, 0u, 4294967295u)), ~func_2(-13180i, vec2<i32>(-50369i, u_input.a), vec2<u32>(64631u, 76300u))), arg_2, arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(120f, arg_2, 781f, -1745f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(314f, arg_2, 1151f, arg_2) * vec4<f32>(arg_2, arg_2, arg_2, -105f)) + vec4<f32>(arg_2, arg_2, arg_2, 464f)))));
    var_0 = Struct_1(vec3<u32>(select(func_4(vec2<bool>(arg_1, arg_0), func_4(vec2<bool>(arg_0, true), Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, 51268u), -923f, var_0.b, var_0.d))).a.x, var_0.a.x ^ ~0u, _wgslsmith_f_op_f32(abs(-1406f)) > var_0.b), var_0.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(565f, -1157f))) + -2480f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(242f, 1655f, arg_2, -2492f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -288f), var_0.d), _wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(arg_2, var_0.c, 255f, -848f)))))));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.d.xx, vec2<f32>(789f, arg_2)))))), ~(~select(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 1u), vec4<u32>(54567u, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, true, arg_0, arg_1))))), arg_2, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1136f, -569f), 199f, -598f, -781f) * var_0.d))));
    var_1 = func_4(select(select(vec2<bool>(arg_0, !arg_1), vec2<bool>(true, true), !select(vec2<bool>(true, arg_1), vec2<bool>(arg_0, true), arg_1)), vec2<bool>(all(vec2<bool>(true, true)), var_0.d.x != _wgslsmith_div_f32(arg_2, 964f)), false), Struct_1(~var_1.a, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) + _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(step(var_1.c, var_1.c)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_0.b, -843f, -1445f) + var_0.d))))));
    let var_2 = true & !(!(-650f <= _wgslsmith_f_op_f32(arg_2 * 681f)));
    return func_4(!(!(!vec2<bool>(var_2, arg_0))), Struct_1(~var_1.a, 781f, 1f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 513f, var_0.c, -133f))) - var_1.d)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = func_1(false, _wgslsmith_add_i32(firstTrailingBit(-u_input.a), 0i) >= u_input.a, _wgslsmith_f_op_f32(-arg_0.d.x));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(var_1.d.zwz + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-406f * var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2021f))), 1224f), vec3<f32>(var_1.b, 643f, _wgslsmith_div_f32(686f, _wgslsmith_f_op_f32(func_3(var_0.d.xy, vec4<u32>(arg_1.a.x, var_0.a.x, 149518u, 33272u)))))));
    var var_3 = -(i32(-1i) * -u_input.a);
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2112f, var_2.x)), var_0.c, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b)))), _wgslsmith_f_op_f32(abs(arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~1u, 73299u, countOneBits(~(~abs(0u))));
    var var_1 = u_input.a;
    var_1 = _wgslsmith_div_i32(firstLeadingBit(u_input.a), max(1i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a, -2147483647i, -28613i, -48105i)), ~vec4<i32>(u_input.a, 1210i, u_input.a, 1i) & vec4<i32>(-2147483647i, -42212i, 32939i, -34244i))));
    var_1 = u_input.a;
    let var_2 = Struct_1(~vec3<u32>(abs(69567u) << (var_0.x % 32u), abs(~var_0.x), abs(78335u) | ~var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2060f - -510f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1490f, 1643f))), _wgslsmith_f_op_f32(ceil(-998f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(true, false, -1657f), Struct_1(vec3<u32>(var_0.x, 13028u, 0u), 1520f, 559f, vec4<f32>(1190f, -975f, -316f, 310f)), _wgslsmith_f_op_f32(f32(-1f) * -327f))) * -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1384f, -1000f, 452f, 540f) * vec4<f32>(115f, 1000f, -922f, -1591f))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(113f)), _wgslsmith_f_op_f32(-252f - -308f), _wgslsmith_f_op_f32(-1307f * -322f), _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_3 = Struct_1(func_4(vec2<bool>(true, true), var_2).a, var_2.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(959f + _wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)) + var_2.d.x))), _wgslsmith_f_op_vec4_f32(step(var_2.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, var_2.c, 189f, -1344f), var_2.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(811f, abs(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.a, 2147483647i)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 24691i), vec2<bool>(true, true))) << (~(~vec2<u32>(var_2.a.x, 6819u)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_mod_u32(~15779u, ~countOneBits(4294967295u)), abs(func_1(true, false, -1395f).a.x)), vec3<i32>(1i, -8796i, u_input.a), var_2.c);
}

