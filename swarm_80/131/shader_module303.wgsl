struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3 = Struct_3(vec4<i32>(-1i, -853i, i32(-2147483648), 2147483647i), vec4<bool>(false, true, false, true), Struct_1(1163f, vec2<f32>(-380f, 565f), vec3<f32>(-839f, 685f, -426f)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-690f))))));
    let var_1 = -2100f;
    global0 = 0i;
    global0 = var_0.a;
    let var_2 = arg_0;
    return max(abs(4294967295u), ~(~(~min(23187u, u_input.c))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(39007i >> (~func_3(global1.c) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.c.c.x)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, -1295f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1228f) + -1236f)), global1.c.a, 604f);
    global0 = global1.a.x;
    var var_2 = select(select(-_wgslsmith_sub_vec3_i32(arg_0.a.xyw, max(vec3<i32>(2147483647i, -43000i, var_0.a), vec3<i32>(-70157i, -1i, 0i))), arg_0.a.zxx, vec3<bool>(arg_0.b.x, !(u_input.d == var_0.a), arg_0.b.x)), u_input.a.www, select(global1.b.yxz, !arg_0.b.zyz, select(!(!vec3<bool>(global1.b.x, false, global1.b.x)), !select(global1.b.xxy, vec3<bool>(global1.b.x, arg_0.b.x, arg_0.b.x), false), false)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1561f, 835f)), global1.c.c.yy)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.c.b, var_1.xy, global1.b.yw)), arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, global1.c.b.x), -978f, 903f))));
    return Struct_1(-219f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + global1.c.c.x))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-595f - var_1.x))), _wgslsmith_f_op_f32(round(-107f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), -926f))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = Struct_2(-abs(abs(30340i)), arg_0.x);
    global0 = -(~(~var_0.a << (((u_input.c & u_input.c) << (u_input.c % 32u)) % 32u)));
    global1 = Struct_3(vec4<i32>(i32(-1i) * -18878i, -1529i, arg_2, arg_1.a.x & 2147483647i), arg_1.b, func_2(arg_1, _wgslsmith_f_op_vec2_f32(-arg_0.xx)));
    global1 = Struct_3(reverseBits((vec4<i32>(0i, arg_2, global1.a.x, 5995i) | abs(vec4<i32>(arg_2, 33385i, var_0.a, arg_1.a.x))) << (~(~vec4<u32>(u_input.c, 1u, 54215u, 54992u)) % vec4<u32>(32u))), !arg_1.b, arg_1.c);
    let var_1 = Struct_2(24031i, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-425f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), global1.c.a)))));
    return countOneBits(var_0.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    let var_0 = Struct_3(u_input.a, !vec4<bool>(any(arg_0), -879f <= global1.c.a, true && global1.b.x, false), func_2(Struct_3(global1.a, select(vec4<bool>(arg_0.x, false, true, true), select(vec4<bool>(true, arg_0.x, false, global1.b.x), vec4<bool>(false, global1.b.x, false, false), global1.b), true), func_2(Struct_3(vec4<i32>(u_input.d, u_input.d, -1i, 38501i), global1.b, global1.c), vec2<f32>(443f, global1.c.a))), _wgslsmith_div_vec2_f32(arg_3, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_3), vec2<f32>(-277f, 206f))))));
    let var_1 = Struct_1(1077f, global1.c.c.zx, _wgslsmith_f_op_vec3_f32(-var_0.c.c));
    let var_2 = ~_wgslsmith_mult_u32(1u, min(~(1u >> (0u % 32u)), 0u));
    global1 = Struct_3(-_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(29190i, var_0.a.x, -17549i, -1i), vec4<i32>(global1.a.x, arg_2.a, var_0.a.x, -1i))), vec4<i32>(func_1(var_0.c.c, Struct_3(u_input.a, vec4<bool>(var_0.b.x, global1.b.x, true, false), Struct_1(620f, vec2<f32>(-433f, -136f), vec3<f32>(arg_1, -951f, var_0.c.b.x))), 22195i), func_1(var_0.c.c, Struct_3(global1.a, vec4<bool>(global1.b.x, false, global1.b.x, var_0.b.x), Struct_1(2435f, global1.c.b, vec3<f32>(1076f, arg_3.x, var_0.c.b.x))), arg_2.a), firstLeadingBit(0i), _wgslsmith_div_i32(-2147483647i, var_0.a.x))), !global1.b, func_2(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(787f, -1298f) - var_1.b))));
    var var_3 = func_2(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(142f, global1.c.a), var_1.c.xx)) - vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-411f)) + _wgslsmith_f_op_f32(-arg_1)))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec3<bool>(any(select(vec2<bool>(true, global1.b.x), global1.b.xx, select(global1.b.xy, vec2<bool>(global1.b.x, true), global1.b.yx))), global1.b.x | (u_input.c < u_input.c), !global1.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-1081f, global1.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 738f))), Struct_2(~_wgslsmith_mod_i32(global1.a.x & 1i, func_1(vec3<f32>(global1.c.c.x, global1.c.b.x, -1095f), Struct_3(vec4<i32>(u_input.b, global1.a.x, u_input.b, 1i), global1.b, global1.c), -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1742f)), vec2<f32>(_wgslsmith_f_op_f32(global1.c.a * -966f), global1.c.a));
    let var_0 = Struct_2(firstLeadingBit(select(-37021i, -u_input.d >> (0u % 32u), false)), global1.c.c.x);
    var var_1 = Struct_2(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1348f - _wgslsmith_f_op_f32(-global1.c.b.x)), _wgslsmith_f_op_f32(max(-805f, _wgslsmith_f_op_f32(var_0.b * var_0.b)))));
    global0 = firstLeadingBit(~global1.a.x);
    var var_2 = -vec2<i32>(0i >> (((u_input.c >> (5730u % 32u)) | ~18963u) % 32u), _wgslsmith_mod_i32(global1.a.x, 1i));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global1.c.c.yz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global1.c.c.xy, global1.c.b)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-868f, _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.c.b))))), !vec2<bool>(all(global1.b), u_input.c < 3154u))), global1.b.wx));
    let var_4 = firstLeadingBit(var_0.a);
    global0 = min((i32(-1i) * -23942i) << ((u_input.c | u_input.c) % 32u), ~1365i) | u_input.b;
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1167f + -690f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), -3707f, _wgslsmith_f_op_f32(var_1.b - var_1.b)), select(min(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, u_input.d), global1.a.yy), global1.a.zy >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(34068u, u_input.c)) % vec2<u32>(32u))), global1.a.xy, !(!global1.b.zw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(floor(global1.c.c.x)), false))));
}

