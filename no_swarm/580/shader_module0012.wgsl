struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = vec2<u32>(2208u, u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-303f, -1751f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1735f, _wgslsmith_div_f32(881f, 133f))) * 1505f)), -_wgslsmith_sub_i32(1i, -u_input.b));
    let var_2 = Struct_2(vec2<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_1.a), _wgslsmith_f_op_f32(var_1.a - -1139f))), Struct_1(2159f, max(_wgslsmith_mod_i32(~var_1.b, var_1.b), u_input.b)), u_input.c.wyz);
    var var_3 = u_input.c.ww;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)), 1i);
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global1 = _wgslsmith_sub_vec3_u32(arg_0.c, vec3<u32>(~func_3(), u_input.a & _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, arg_0.c.x), max(1u, u_input.c.x)), 4294967295u));
    global1 = u_input.c.wzy;
    global0 = array<bool, 17>();
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = firstLeadingBit(~(~firstTrailingBit(14057u) >> (_wgslsmith_dot_vec2_u32(func_2(arg_2, arg_2.b.a).c.yy, ~vec2<u32>(u_input.c.x, u_input.a)) % 32u)));
    let var_1 = ~max(arg_3.x, 4294967295u);
    var var_2 = true;
    let var_3 = arg_2.b;
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, arg_1), _wgslsmith_f_op_vec2_f32(min(arg_2.a, arg_2.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a + vec2<f32>(1552f, arg_2.b.a))) - arg_0), !select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(2817u, 17u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.c.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.c.x, 17u)]), vec2<bool>(false, true)), vec2<bool>(false, true)))), arg_2.b, _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(u_input.c.x, arg_2.c.x), 1u, arg_3.x ^ 40171u), ~u_input.c.wxz & (vec3<u32>(4294967295u, var_1, 0u) | vec3<u32>(arg_2.c.x, 30799u, 2151u))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<bool, 17>();
    return arg_0;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    global1 = u_input.c.yyw;
    global0 = array<bool, 17>();
    var var_0 = _wgslsmith_f_op_f32(-arg_2.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(331f, -185f, -1639f, 212f), vec4<f32>(-780f, 109f, arg_2.b.a, -822f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.a, arg_2.a.x, arg_2.b.a, -864f), vec4<f32>(arg_2.b.a, 1233f, 836f, arg_2.b.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, -1577f, arg_2.b.a, 652f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, arg_2.b.a, -883f, 648f) * vec4<f32>(arg_2.b.a, 669f, -295f, -125f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, -977f, 426f, arg_2.a.x) + vec4<f32>(arg_2.a.x, -378f, arg_2.b.a, -516f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(641f, 1919f, -116f, 1654f))))))));
    let var_2 = false;
    return arg_2.b;
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f), 1f), arg_1.a)), arg_1, u_input.c.wyy ^ select(vec3<u32>(_wgslsmith_clamp_u32(global1.x, 78338u, 4294967295u), 99904u, ~u_input.c.x), ~select(vec3<u32>(u_input.c.x, 29337u, global1.x), u_input.c.xzw, arg_0.zxz), false));
    let var_1 = false;
    let var_2 = vec2<i32>(i32(-1i) * -5984i, ~(-(var_0.b.b << (4294967295u % 32u)))) << (u_input.c.yy % vec2<u32>(32u));
    var var_3 = func_5(func_2(func_4(arg_2.xz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_2.x) * arg_2.x), var_0, vec2<u32>(_wgslsmith_mult_u32(1u, var_0.c.x), u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)) - _wgslsmith_f_op_f32(-2578f * arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1174f, arg_2.x, func_5(var_0, vec3<f32>(-164f, var_0.a.x, arg_2.x), arg_2).a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 + vec3<f32>(400f, 281f, -514f))))), arg_2);
    var var_4 = ~1u;
    return func_5(func_2(func_5(var_0, vec3<f32>(805f, func_5(Struct_2(vec2<f32>(-1388f, var_0.a.x), Struct_1(-348f, 5910i), vec3<u32>(var_3.c.x, 1u, var_0.c.x)), arg_2, vec3<f32>(-635f, arg_2.x, arg_1.a)).b.a, _wgslsmith_f_op_f32(f32(-1f) * -1105f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, arg_2) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, var_0.a.x, -379f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1783f, var_0.b.a)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * 1029f), _wgslsmith_f_op_f32(f32(-1f) * -1499f))))), _wgslsmith_f_op_vec3_f32(ceil(arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1823f, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(max(721f, var_0.a.x))))));
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = vec2<i32>(((43837i << (global1.x % 32u)) & ~u_input.d.x) & abs(firstTrailingBit(-11634i)), ~u_input.d.x) & ~u_input.d.xy;
    var var_1 = func_7(select(!(!(!vec4<bool>(false, arg_0.x, false, true))), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(18953u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], arg_0.x, arg_0.x)), select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(53657u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], arg_0.x), all(vec3<bool>(arg_0.x, true, true))), true), vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(min(0u, 74271u)), 17u)], true, false, false)), func_6(~vec2<i32>(i32(-1i) * -7412i, _wgslsmith_sub_i32(-3643i, var_0.x)), ~(~vec3<u32>(0u, 4294967295u, u_input.c.x)), func_5(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(158f, 1146f) - vec2<f32>(-594f, 1817f)), 183f, func_2(Struct_2(vec2<f32>(-1000f, 233f), Struct_1(-412f, var_0.x), vec3<u32>(u_input.c.x, u_input.c.x, 0u)), -1186f), _wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(u_input.a, 4294967295u))), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -146f), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, -1020f, -1573f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1887f, -373f))), vec3<f32>(623f, _wgslsmith_f_op_f32(820f + -246f), _wgslsmith_f_op_f32(-2671f - 1363f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(728f, -2006f)), -553f, _wgslsmith_div_f32(-1000f, 888f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, -1159f, 733f)) * vec3<f32>(226f, 1505f, 392f))))));
    var var_2 = func_5(func_4(var_1.a, 598f, func_5(func_2(Struct_2(vec2<f32>(574f, var_1.a.x), var_1.b, u_input.c.wzx), func_6(u_input.d.wy, vec3<u32>(4294967295u, var_1.c.x, 113108u), Struct_2(var_1.a, Struct_1(var_1.a.x, var_1.b.b), vec3<u32>(var_1.c.x, 17618u, 30748u))).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, var_1.b.a, var_1.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -1198f, var_1.b.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -909f, -1000f)))), max(vec2<u32>(71978u, 47165u) & ~var_1.c.xx, ~vec2<u32>(1u, 1u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1050f), func_7(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_0.x, global0[_wgslsmith_index_u32(80309u, 17u)]), vec4<bool>(true, true, arg_0.x, arg_0.x), false), var_1.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(798f, -533f, 892f), vec3<f32>(var_1.b.a, var_1.a.x, var_1.b.a)))).a.x, _wgslsmith_f_op_f32(round(-2171f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(989f, 1159f, var_1.b.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -1495f, -557f) - vec3<f32>(var_1.a.x, -1922f, -999f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1914f, var_1.b.a, -957f)))), vec3<f32>(_wgslsmith_f_op_f32(step(func_7(vec4<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 17u)], arg_0.x, false, true), var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, -239f, 122f) * vec3<f32>(var_1.a.x, var_1.b.a, var_1.a.x))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.a))))), _wgslsmith_f_op_f32(1414f * _wgslsmith_div_f32(var_1.b.a, -161f)), _wgslsmith_f_op_f32(exp2(var_1.b.a)))).b;
    var var_3 = vec2<u32>(~global1.x, _wgslsmith_mod_u32(~(~var_1.c.x), 17498u));
    var var_4 = var_1.b;
    return select(vec4<i32>(2147483647i, -reverseBits(select(0i, 0i, true)), var_0.x, 0i), _wgslsmith_clamp_vec4_i32(u_input.d, firstTrailingBit(vec4<i32>(u_input.b, 0i, 1i, var_1.b.b) | vec4<i32>(var_2.b, u_input.b, var_0.x, u_input.d.x)), u_input.d), global0[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_dot_vec2_u32(var_1.c.xx, vec2<u32>(32663u, var_3.x)))), 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec3<bool>(u_input.b >= u_input.b, global0[_wgslsmith_index_u32(global1.x ^ 68102u, 17u)], any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 17u)]))), select(vec3<bool>(true, false, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(39582u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)])), global0[_wgslsmith_index_u32(select(u_input.c.x << (38115u % 32u), 46373u, true), 17u)])) | -countOneBits(_wgslsmith_sub_vec4_i32(abs(u_input.d), vec4<i32>(-42249i, u_input.d.x, -2147483647i, -22264i)));
    let var_1 = func_5(func_7(!(!select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(106620u, 17u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.x, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(global1.x, 17u)], true, global0[_wgslsmith_index_u32(73766u, 17u)]))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-127f, -858f)) - _wgslsmith_f_op_f32(min(1630f, 571f))), -abs(18101i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, 539f, 971f) * vec3<f32>(-452f, 551f, -942f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1614f, -1000f, 921f)))))))), vec3<f32>(1714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -874f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) * _wgslsmith_f_op_f32(f32(-1f) * -1342f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(var_1.c.x, 29834u, 45871u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.c.x, var_1.c.x, var_1.c.x), vec4<u32>(u_input.a, 0u, 135421u, 0u))), _wgslsmith_mod_u32(var_1.c.x, 4294967295u), 40742u), ~func_7(vec4<bool>(var_1.b.b < -1i, 52088u < global1.x, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(var_1.c.x, 17u)], true)), false), Struct_1(_wgslsmith_f_op_f32(872f + -448f), _wgslsmith_div_i32(-70151i, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, var_1.b.a, -1325f)))).c);
    global0 = array<bool, 17>();
    var_0 = u_input.d;
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-120f)), _wgslsmith_f_op_f32(-func_2(var_1, 713f).b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_1.a, func_7(vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_1.c.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), var_1.b, vec3<f32>(515f, -484f, var_1.a.x)).b.a, Struct_2(vec2<f32>(var_1.a.x, var_1.b.a), var_1.b, vec3<u32>(global1.x, global1.x, 4294967295u)), firstTrailingBit(var_1.c.yx)).a.x + var_1.a.x)));
}

