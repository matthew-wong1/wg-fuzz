struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-237f, vec3<bool>(false, true, true), -1557f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec4_i32(~((select(vec4<i32>(25403i, -8854i, 0i, -22181i), vec4<i32>(22111i, 12194i, -1i, -2147483647i), true) & vec4<i32>(53625i, 2147483647i, -41371i, -10043i)) | ~(~vec4<i32>(2147483647i, -15483i, 18961i, -1i))), countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-11970i, 2147483647i, 32937i, 0i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(2147483647i, 1982i, -46989i, -2147483647i), ~vec4<i32>(-2147483647i, -2147483647i, -55301i, 0i))));
    var_0 = vec4<i32>(min(abs(-(~0i)), var_0.x), -27322i, var_0.x ^ max(0i, var_0.x), _wgslsmith_clamp_i32(19015i | var_0.x, -1i, -firstLeadingBit(3722i)));
    let var_1 = Struct_2(false, 1058f, ~var_0.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(-1000f * global0.c)) <= global0.a, Struct_1(global0.a, global0.b, 875f));
    return !vec4<bool>(_wgslsmith_f_op_f32(ceil(global0.a)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a, global0.a)), -1097f)), global0.b.x & !var_1.a, global0.b.x, false);
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(global0.c, global0.b, global0.c);
    let var_0 = -(~(-max(_wgslsmith_mod_vec4_i32(vec4<i32>(-13495i, 89718i, -87222i, -35738i), vec4<i32>(-22162i, -709i, 19054i, 1i)), max(vec4<i32>(1i, 1i, 3571i, 0i), vec4<i32>(-92701i, 2147483647i, -1i, 2147483647i)))));
    return !select(select(!select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<bool>(false, global0.b.x, global0.b.x, true)), !(!vec4<bool>(true, global0.b.x, true, global0.b.x)), global0.b.x), !select(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), func_3(), true), 0u < select(~7435u, u_input.c, true));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = select(func_2(), !select(!vec4<bool>(false, global0.b.x, false, true), func_2(), global0.b.x), global0.b.x);
    var var_1 = Struct_1(arg_0.x, !var_0.zwy, 1221f);
    global0 = Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(-347f))), !func_3().wyy, var_1.a);
    let var_2 = Struct_1(var_1.a, global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-1000f * arg_0.x)))), 508f)));
    let var_3 = var_2.b.x;
    return false;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = select(0u, 7934u, true);
    global0 = Struct_1(global0.c, vec3<bool>(any(vec2<bool>(arg_2, arg_2 && global0.b.x)), arg_2, func_1(vec4<f32>(-662f, -1190f, 566f, _wgslsmith_f_op_f32(round(-285f))))), -1279f);
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.c, -1440f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(global0.c + global0.c)))), !(~arg_0.x != ~(arg_1.x & arg_1.x)), func_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-945f, -1090f)))), 371f, -614f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(global0.c, global0.c)), -667f))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -389f))), _wgslsmith_div_f32(global0.a, 169f)))));
    let var_3 = Struct_2(global0.b.x, _wgslsmith_f_op_f32(floor(-143f)), reverseBits(vec2<i32>(_wgslsmith_div_i32(arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-4240i, 2147483647i), vec2<i32>(arg_3.x, 45525i))), i32(-1i) * -arg_1.x)), var_1.x, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1544f, -1748f)) - global0.a))), vec3<bool>(false, all(!vec2<bool>(global0.b.x, false)), var_1.x), _wgslsmith_f_op_f32(-var_2.x)));
    return var_3.e;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = firstTrailingBit(~(~(u_input.b & 34484u)));
    global0 = func_4(arg_2.c, ~abs(vec3<i32>(firstTrailingBit(26879i), _wgslsmith_sub_i32(arg_2.c.x, 2147483647i), arg_2.c.x)), true, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~(~vec3<i32>(arg_2.c.x, -1637i, arg_2.c.x)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -41296i, arg_2.c.x), vec3<i32>(-2147483647i, arg_2.c.x, -40912i)), arg_2.c.x)), abs(~vec3<i32>(arg_2.c.x, 9319i, -2147483647i))));
    global0 = arg_2.e;
    let var_1 = Struct_2(false, -802f, firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(-3945i, arg_2.c.x), ~vec2<i32>(0i, arg_2.c.x))), true, Struct_1(257f, !func_2().zyy, _wgslsmith_f_op_f32(min(-1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 394f))))));
    global0 = var_1.e;
    return Struct_1(_wgslsmith_f_op_f32(341f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(421f))))), vec3<bool>(arg_2.d | (_wgslsmith_dot_vec4_i32(vec4<i32>(-23705i, 0i, 7267i, 4415i), vec4<i32>(var_1.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x)) < -2147483647i), any(!func_3().xz), !func_4(-vec2<i32>(arg_2.c.x, 0i), firstTrailingBit(vec3<i32>(var_1.c.x, var_1.c.x, arg_2.c.x)), var_1.a || false, -vec3<i32>(var_1.c.x, -55267i, 0i)).b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), 374f) + arg_0.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.e.c - _wgslsmith_f_op_f32(ceil(arg_1.x))))), !(max(arg_2.c.x, arg_2.c.x) < ~var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 30977i, 0i), vec3<i32>(-33406i, 37911i, -4187i)), vec3<i32>(69491i, 2147483647i, 42404i)), 32872i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(6220i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(6950i, -37313i), vec2<i32>(-6794i, 2147483647i)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, global0.c) * vec4<f32>(-1498f, global0.c, -234f, -359f)))), abs(select(vec3<i32>(1i, -4209i, 0i), vec3<i32>(0i, -1i, 2147483647i), select(global0.b, global0.b, global0.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(772f, 302f), vec2<f32>(global0.c, 693f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, global0.a))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c)) * _wgslsmith_f_op_f32(min(global0.c, 1270f))), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(min(595f, 1119f))))), Struct_2(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-221f, global0.a) * func_4(vec2<i32>(1i, -2147483647i), vec3<i32>(-42978i, 1i, 20611i), false, vec3<i32>(2147483647i, 0i, -14338i)).c) - _wgslsmith_f_op_f32(1308f - global0.a)), ~(~(vec2<i32>(-2147483647i, 38332i) << (vec2<u32>(6725u, u_input.b) % vec2<u32>(32u)))), false, Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a - global0.c))))));
    let var_0 = abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(-1i, 45706i, -1874i))), vec3<i32>(1i, 1i, 1i), firstLeadingBit(select(vec3<i32>(13057i, -1i, -2147483647i), vec3<i32>(2147483647i, 43953i, -20059i), global0.b)))) ^ (countOneBits(firstTrailingBit(-vec3<i32>(1i, 30014i, 2147483647i))) >> (~(_wgslsmith_mod_vec3_u32(u_input.a.ywz, vec3<u32>(1u, 0u, u_input.c)) ^ u_input.a.xyz) % vec3<u32>(32u)));
    let var_1 = select(select(vec4<bool>((true | global0.b.x) || (global0.b.x || global0.b.x), any(global0.b), false, func_2().x), vec4<bool>(global0.b.x, true & all(global0.b), global0.b.x, global0.b.x), !vec4<bool>(select(global0.b.x, global0.b.x, global0.b.x), true, true, global0.b.x)), vec4<bool>(global0.b.x, (_wgslsmith_mod_i32(-2147483647i, var_0.x) >= 1i) & select(all(vec3<bool>(global0.b.x, true, global0.b.x)), true, global0.b.x && false), false, global0.b.x), !func_2());
    let var_2 = func_5(Struct_1(global0.c, var_1.zyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(818f + global0.c), _wgslsmith_f_op_f32(select(global0.c, 267f, false)))) - _wgslsmith_f_op_f32(-1000f + -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1131f)), _wgslsmith_f_op_f32(sign(global0.a)))), Struct_2(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(580f, global0.c, false)), _wgslsmith_f_op_f32(f32(-1f) * -341f))), any(var_1.wxz))), ~vec2<i32>(1i, var_0.x), true, func_5(Struct_1(_wgslsmith_f_op_f32(global0.a * global0.a), !global0.b, 1f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, 1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 238f), vec2<f32>(global0.c, global0.c), global0.b.x)))), Struct_2(var_1.x || global0.b.x, global0.a, _wgslsmith_mult_vec2_i32(var_0.zx, vec2<i32>(69468i, var_0.x)), true, func_5(Struct_1(global0.c, vec3<bool>(global0.b.x, global0.b.x, true), 581f), vec2<f32>(1000f, global0.c), Struct_2(true, global0.a, vec2<i32>(var_0.x, -1i), var_1.x, Struct_1(global0.c, vec3<bool>(global0.b.x, true, true), global0.a)))))));
    var var_3 = Struct_1(var_2.c, vec3<bool>(false, false, !((var_0.x >> (u_input.c % 32u)) > ~var_0.x)), func_5(func_5(var_2, vec2<f32>(_wgslsmith_f_op_f32(select(1693f, 267f, var_2.b.x)), _wgslsmith_f_op_f32(floor(602f))), Struct_2(select(true, global0.b.x, var_1.x), _wgslsmith_f_op_f32(max(global0.a, var_2.c)), var_0.xy, true, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(global0.c)))), Struct_2(1u < ~u_input.a.x, _wgslsmith_f_op_f32(sign(-509f)), _wgslsmith_div_vec2_i32(reverseBits(var_0.yz), vec2<i32>(-16638i, var_0.x)), true, var_2)).c);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.c, u_input.a.x)))), select(_wgslsmith_clamp_vec3_i32(~var_0, var_0 ^ select(vec3<i32>(var_0.x, 20577i, var_0.x), var_0, var_2.b.x), vec3<i32>(-1i, countOneBits(var_0.x), abs(-27063i))), abs(reverseBits(var_0)), var_1.x), abs(u_input.a.zw));
}

