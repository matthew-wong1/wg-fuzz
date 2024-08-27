struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(59560u, 0u, 6881u, 1u), -1725f, Struct_1(vec3<f32>(630f, 263f, 354f), 1i), 25964i, vec2<i32>(i32(-2147483648), 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = -_wgslsmith_mult_i32(-(~(-10895i)), 0i);
    var var_1 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, false, true))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.a.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2043f * arg_1.c.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1165f)))), _wgslsmith_div_f32(-455f, _wgslsmith_f_op_f32(abs(-671f))), countOneBits(2147483647i) == firstTrailingBit(-45819i))), 2613f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(964f, 1670f, 528f, global0.c.a.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, global0.b, arg_3, arg_1.c.a.x), vec4<f32>(515f, -226f, arg_3, arg_1.c.a.x), vec4<bool>(false, true, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, -479f, 576f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -820f, 310f, -462f))))));
    let var_3 = Struct_2(vec4<u32>(38856u, ~1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(29558u, u_input.b, u_input.b, 4294967295u), arg_1.a)), abs(2870u) | _wgslsmith_add_u32(18627u, global0.a.x)), _wgslsmith_div_u32(global0.a.x, 4294967295u)), arg_2.a.x, Struct_1(arg_2.a, _wgslsmith_clamp_i32(~1i, arg_2.b, _wgslsmith_sub_i32(max(1i, 1i), 2147483647i ^ global0.c.b))), u_input.a, vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, abs(1i)), 2147483647i));
    let var_4 = -vec3<i32>(select(min(_wgslsmith_mult_i32(21517i, arg_2.b), -11059i), 51238i, var_1.x), reverseBits(~global0.d ^ 45885i), -15150i);
    return ~global0.d;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = global0.c;
    global0 = Struct_2(_wgslsmith_add_vec4_u32(~global0.a, (vec4<u32>(arg_1.x, 1u, arg_1.x, 4294967295u) ^ vec4<u32>(1u, 1u, 1u, 1u)) & (~vec4<u32>(1u, global0.a.x, arg_1.x, u_input.b) ^ global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -715f), Struct_1(global0.c.a, abs(u_input.a)), func_3(-var_0.b, Struct_2(vec4<u32>(arg_1.x >> (arg_1.x % 32u), firstLeadingBit(global0.a.x), global0.a.x, arg_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.a.x + global0.c.a.x))), global0.c, ~(var_0.b | arg_0), global0.e), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2117f, global0.c.a.x, 1019f)), _wgslsmith_f_op_vec3_f32(-var_0.a), vec3<bool>(true, true, true))), 39712i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c, 2147483647i)) >> (~(~global0.a.wy) % vec2<u32>(32u)), global0.e));
    let var_1 = global0.c.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-1284f, -347f), true)), _wgslsmith_div_f32(1722f, global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_f32(243f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(global0.b, -431f), true)))));
    return Struct_2(firstLeadingBit(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, global0.a.x, global0.a.x), _wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(arg_1.x, 15026u, arg_1.x, u_input.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))), var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, -118f, global0.c.a.x))), _wgslsmith_f_op_vec3_f32(select(var_2.yyz, vec3<f32>(-722f, -549f, var_0.a.x), vec3<bool>(false, true, false)))))), -1i), -max(_wgslsmith_sub_i32(1938i, u_input.a), global0.c.b), vec2<i32>(-var_0.b, -(~(-2147483647i))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    global0 = func_2(arg_2.x, global0.a.zzz);
    global0 = func_2(-2147483647i, vec3<u32>(abs(max(max(global0.a.x, 4294967295u), ~4294967295u)), global0.a.x >> (13727u % 32u), reverseBits(1u)));
    var var_0 = func_2(firstTrailingBit(global0.d), global0.a.yzw);
    let var_1 = reverseBits(-97228i);
    var var_2 = func_2(~abs(func_3(-1i, Struct_2(var_0.a, -1448f, var_0.c, 3187i, vec2<i32>(-1i, 0i)), global0.c, _wgslsmith_f_op_f32(-581f * var_0.b))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(8440u, 1u, global0.a.x) & vec3<u32>(u_input.b, global0.a.x, var_0.a.x)), vec3<u32>(global0.a.x, _wgslsmith_add_u32(~var_0.a.x, _wgslsmith_div_u32(arg_1.x, u_input.b)), u_input.b), ~(~(~global0.a.wxw))));
    return func_2(~reverseBits(max(func_2(global0.d, vec3<u32>(u_input.b, 1462u, u_input.b)).c.b, -global0.e.x)), reverseBits(~vec3<u32>(~var_0.a.x, _wgslsmith_mult_u32(47210u, u_input.b), 4294967295u))).c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1436f, -2678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -412f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x)) - _wgslsmith_f_op_f32(243f * _wgslsmith_f_op_f32(3012f + 426f)))) * vec4<f32>(_wgslsmith_f_op_f32(143f - _wgslsmith_f_op_f32(arg_0.a.x + func_1(global0.e.x, global0.a, vec3<i32>(global0.d, 2147483647i, 45661i), global0.c.b).a.x)), 920f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(1326f * _wgslsmith_f_op_f32(round(-297f)))));
    global0 = func_2(~reverseBits(u_input.c), global0.a.yww);
    var var_1 = Struct_2(vec4<u32>(global0.a.x, 15615u, u_input.b, abs(reverseBits(38010u))), _wgslsmith_div_f32(577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), global0.c, arg_1.b, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_2.b, global0.d), vec4<i32>(u_input.d, 1i, 30200i, -2147483647i)), -(~global0.d), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -19293i), global0.e), -20269i)), ~30987i));
    let var_2 = ~(~var_1.a.yw);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(var_1.a.yw), vec2<u32>((global0.a.x ^ 107294u) >> (reverseBits(57628u) % 32u), _wgslsmith_dot_vec2_u32(select(var_1.a.yw, vec2<u32>(4294967295u, u_input.b), arg_3.yx), var_2))), select(var_2.x, 4294967295u, false), _wgslsmith_dot_vec3_u32(~var_1.a.xwx, var_1.a.zxw), _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~var_1.a.x), ~(~104118u)), var_1.a.x));
    return func_2(-10838i, ~func_2(_wgslsmith_sub_i32(-1i, arg_2.b >> (33318u % 32u)), var_3.zxx).a.xyy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(2878i, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(7865u, u_input.b, u_input.b), abs(u_input.b), 4294967295u << (global0.a.x % 32u), ~global0.a.x), countOneBits(vec4<u32>(global0.a.x, global0.a.x, u_input.b, 60307u))), -((vec3<i32>(global0.c.b, 0i, 1i) >> (vec3<u32>(82041u, 1u, global0.a.x) % vec3<u32>(32u))) ^ abs(vec3<i32>(u_input.a, 31815i, 15903i))), _wgslsmith_sub_i32(~global0.d, _wgslsmith_mult_i32(~0i, -global0.e.x))), global0.c, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global0.c.a, vec3<f32>(global0.b, 351f, 2040f)))), vec3<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(trunc(global0.c.a.x)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.e.x, global0.e.x, -43483i, u_input.d)), firstLeadingBit(~vec4<i32>(-20401i, -1i, 146i, global0.e.x)))), select(vec3<bool>(!any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), vec3<bool>(true, true, true), select(true, false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c.a.x);
    global0 = func_4(func_4(func_2(var_0.e.x, ~vec3<u32>(2039u, global0.a.x, u_input.b)).c, func_2(var_0.d, vec3<u32>(select(15197u, global0.a.x, false), ~0u, abs(u_input.b))).c, Struct_1(var_0.c.a, 1i), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)).c, var_0.c, Struct_1(vec3<f32>(1494f, var_0.b, -715f), ~44615i), select(vec3<bool>(all(vec2<bool>(true, true)) & true, true && all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true))), vec3<bool>(!all(vec3<bool>(false, true, false)), true, true), !any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    var var_2 = ~vec3<u32>(_wgslsmith_add_u32(1u, func_4(func_4(var_0.c, Struct_1(var_0.c.a, 1i), Struct_1(vec3<f32>(-1055f, 887f, -1881f), global0.d), vec3<bool>(false, false, false)).c, var_0.c, Struct_1(global0.c.a, -2081i), vec3<bool>(false, false, false)).a.x), firstLeadingBit(70514u), ~_wgslsmith_dot_vec2_u32(var_0.a.ww >> (var_0.a.yw % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), global0.a.wz)));
    var var_3 = -firstTrailingBit(select(~vec3<i32>(-2147483647i, var_0.d, u_input.c) << ((global0.a.yww >> (vec3<u32>(29330u, 959u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<i32>(1i, -1i, global0.c.b)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_div_u32(~18986u, 59152u), 4294967295u, select(1u, 16234u, all(vec2<bool>(false, true)) && false), firstLeadingBit(_wgslsmith_sub_u32(max(u_input.b, 12959u), _wgslsmith_clamp_u32(43389u, u_input.b, 35904u)))), var_1, 0i, 4294967295u);
}

