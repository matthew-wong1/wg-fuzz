struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

var<private> global2: u32 = 0u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global1 = all(!(!select(vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(false, arg_0.c, true), u_input.c > -21106i)));
    let var_0 = Struct_2(arg_0);
    let var_1 = ~reverseBits(countOneBits(arg_0.d.yxx));
    let var_2 = Struct_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_div_f32(-1266f, _wgslsmith_f_op_f32(round(942f))), arg_0.a.x, var_0.a.a.x), true, Struct_3(~(-u_input.c)), Struct_1(arg_0.a, ~vec2<i32>(var_1.x, -2147483647i) >> (u_input.a.yz % vec2<u32>(32u)), var_0.a.a.x != _wgslsmith_f_op_f32(step(-1075f, var_0.a.a.x)), var_0.a.d | (vec4<i32>(u_input.c, var_0.a.d.x, 82271i, var_1.x) & vec4<i32>(2943i, var_1.x, 2147483647i, 19766i)), (arg_0.d.xy >> (vec2<u32>(global0.x, u_input.a.x) % vec2<u32>(32u))) ^ vec2<i32>(0i, -2147483647i)), Struct_3(-(~arg_0.e.x))), _wgslsmith_f_op_f32(-var_0.a.a.x), vec3<i32>(u_input.d, i32(-1i) * -49018i, u_input.d));
    var var_3 = var_2.a.c;
    return firstTrailingBit(-(~_wgslsmith_sub_vec3_i32(arg_0.d.xzw, vec3<i32>(1i, 2147483647i, -14927i))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_2(arg_0.d);
    global2 = 0u;
    return 68123u;
}

fn func_2() -> vec3<bool> {
    global0 = vec3<u32>(6539u, u_input.a.x, func_4(Struct_4(vec4<f32>(-1000f, 208f, _wgslsmith_f_op_f32(1776f * -568f), _wgslsmith_f_op_f32(715f - 156f)), select(true, true, false), Struct_3(_wgslsmith_mod_i32(u_input.d, u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1472f, -1184f, 3270f)), _wgslsmith_sub_vec2_i32(vec2<i32>(1575i, 0i), vec2<i32>(u_input.d, -2147483647i)), false, ~vec4<i32>(-2469i, -12766i, u_input.d, u_input.c), select(vec2<i32>(16077i, u_input.d), vec2<i32>(22668i, -1i), true)), Struct_3(max(55205i, u_input.c))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.d, 14360i, -2147483647i), vec3<i32>(u_input.d, u_input.c, 18279i)) ^ (vec3<i32>(-1614i, u_input.d, -1i) & vec3<i32>(u_input.c, 2147483647i, u_input.d)), func_3(Struct_1(vec3<f32>(1362f, 1227f, -499f), vec2<i32>(u_input.c, 4565i), false, vec4<i32>(u_input.c, 1i, -7417i, -17788i), vec2<i32>(u_input.d, u_input.c))))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(851f)), _wgslsmith_f_op_f32(f32(-1f) * -1541f), -498f))), (min(vec2<i32>(u_input.c, u_input.d), vec2<i32>(-1i, u_input.d)) >> (countOneBits(u_input.a.zz) % vec2<u32>(32u))) ^ select(firstLeadingBit(vec2<i32>(1i, -28091i)), vec2<i32>(0i, -2147483647i), vec2<bool>(false, false)), true, vec4<i32>(42491i, u_input.c, (u_input.c >> (u_input.a.x % 32u)) >> (_wgslsmith_clamp_u32(global0.x, global0.x, u_input.a.x) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(28329i, u_input.d, 1i, u_input.d), vec4<i32>(u_input.d, 20912i, 53233i, u_input.c)), u_input.c)), vec2<i32>(1i, ~(u_input.c ^ u_input.d))));
    var var_1 = ~(-2147483647i);
    var_1 = _wgslsmith_clamp_i32(-12599i, var_0.a.b.x, 0i);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + -344f)), -643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.a.x)))))), true, Struct_3(u_input.c), var_0.a, Struct_3(-1i));
    return select(vec3<bool>(true, false, false), select(!vec3<bool>(var_0.a.c, !var_0.a.c, true), select(vec3<bool>(true, !var_0.a.c, var_2.d.c), select(!vec3<bool>(false, false, var_0.a.c), vec3<bool>(var_0.a.c, var_0.a.c, var_2.d.c), vec3<bool>(var_2.d.c, var_2.b, true)), vec3<bool>(all(vec2<bool>(true, var_2.b)), var_0.a.c, !var_2.b)), false), var_2.d.c);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = !select(func_2(), vec3<bool>(true, true, true), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, -150f, 888f, -157f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2313f, -2586f, -1000f, -712f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-619f, -172f, 1506f, 763f))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-129f, -203f, 402f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1327f - -1380f)))))));
    var var_2 = Struct_3(reverseBits(u_input.c));
    global2 = firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(10503u, _wgslsmith_dot_vec3_u32(vec3<u32>(40547u, 25509u, 53043u), vec3<u32>(u_input.b, global0.x, 97042u)))) | select(~1u, countOneBits(21172u), any(var_0.yz) & all(vec4<bool>(true, true, var_0.x, var_0.x))));
    let var_3 = _wgslsmith_div_vec2_f32(var_1.yz, vec2<f32>(_wgslsmith_f_op_f32(781f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1020f)));
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(28351i, u_input.d), vec2<i32>(u_input.d, u_input.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f * _wgslsmith_f_op_f32(ceil(1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -918f)))));
    let var_1 = u_input.a.x;
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -337f, -651f, _wgslsmith_f_op_f32(-1804f + -133f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1508f, -804f, -676f, 1594f), vec4<f32>(252f, 623f, -416f, -822f))), vec4<bool>(true, true, true, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_3(reverseBits(u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(604f, 146f, 158f) - vec3<f32>(-930f, -1001f, 417f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1290f, -1518f, 1572f))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 2147483647i) << (vec2<u32>(14370u, 1u) % vec2<u32>(32u)), ~vec2<i32>(u_input.c, u_input.c)), true, abs(vec4<i32>(68519i, -1i, 2147483647i, 68018i)), vec2<i32>(u_input.d | u_input.c, u_input.d)), Struct_3(u_input.c)), _wgslsmith_f_op_f32(max(-1124f, _wgslsmith_f_op_f32(max(-2025f, _wgslsmith_f_op_f32(-526f * _wgslsmith_f_op_f32(func_1(u_input.c))))))), ~max(vec3<i32>(u_input.c, u_input.d, 68290i) | vec3<i32>(-6856i, u_input.d, u_input.d), vec3<i32>(-2147483647i, -15032i, -2147483647i)) & -vec3<i32>(firstTrailingBit(u_input.c), func_3(Struct_1(vec3<f32>(-1263f, -609f, -389f), vec2<i32>(u_input.d, u_input.c), false, vec4<i32>(u_input.d, -1i, 1i, 36454i), vec2<i32>(-1i, u_input.d))).x, _wgslsmith_clamp_i32(-40784i, 0i, u_input.d)));
    var var_3 = firstLeadingBit(countOneBits(global0.x));
    var_0 = -111f;
    var_3 = min(1u, _wgslsmith_mult_u32(countOneBits(81109u) | reverseBits(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(9221u, 12045u), 1u), 1u)));
    let var_4 = Struct_3(var_2.a.e.a);
    global0 = ~u_input.a;
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a.a.wxw), -(var_2.c.yz >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), any(!vec3<bool>(false, false, var_2.a.b)) | !var_2.a.b, firstTrailingBit(var_2.a.d.d >> (~vec4<u32>(0u, 7062u, 4294967295u, global0.x) % vec4<u32>(32u))), reverseBits(vec2<i32>(u_input.d | 1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a & (var_4.a << (~global0.x % 32u)), global0.x, var_4.a, 1u, 26842u);
}

