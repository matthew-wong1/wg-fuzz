struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 5334u, 0u, 70204u);

var<private> global1: i32;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(vec3<i32>(34233i, 1i, 0i), vec4<i32>(4796i, 1i, 24063i, 1i))), Struct_3(Struct_1(vec3<i32>(28878i, 39789i, 1i), vec4<i32>(2147483647i, 30220i, 2147483647i, 1i))), Struct_3(Struct_1(vec3<i32>(13920i, 8117i, -3195i), vec4<i32>(-1i, 1i, 10946i, -20388i))), Struct_3(Struct_1(vec3<i32>(1i, -89152i, -1i), vec4<i32>(1i, 0i, 0i, 2147483647i))), Struct_3(Struct_1(vec3<i32>(-43197i, -1i, 8017i), vec4<i32>(28469i, -16621i, i32(-2147483648), 2439i))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>) -> vec3<f32> {
    global1 = _wgslsmith_add_i32(-1861i << (countOneBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.c.x, arg_1, arg_1)), abs(vec4<u32>(global0.x, 0u, arg_1, 117186u)))) % 32u), u_input.a.x);
    let var_0 = 737f;
    var var_1 = _wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(36925u, arg_1, 4294967295u))), ~select(vec3<u32>(1u, global0.x, arg_1), u_input.c, global0.x <= global0.x)) < arg_1;
    var var_2 = firstTrailingBit(u_input.a << (~(u_input.c | global0.xww) % vec3<u32>(32u))) << (~(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(arg_1, arg_1, 15068u)), vec3<u32>(arg_1, 1u, global0.x)) << ((vec3<u32>(u_input.b, 0u, global0.x) ^ max(u_input.c, global0.yxw)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = false;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, var_0, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1568f, -486f))) - vec3<f32>(var_0, _wgslsmith_div_f32(-426f, 604f), 547f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1689f + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_2.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(round(1000f)), arg_0.x)), select(!(!vec3<bool>(var_3, true, false)), vec3<bool>(any(vec4<bool>(true, false, false, var_3)), false, true), vec3<bool>(!var_3, !var_3, true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(29320u, u_input.b, global0.x, ~28591u), firstLeadingBit(vec4<u32>(global0.x, u_input.c.x, _wgslsmith_mod_u32(u_input.b, u_input.b), global0.x)));
    global0 = ~vec4<u32>(_wgslsmith_div_u32(u_input.c.x, ~(~0u)), max(u_input.c.x, 1u), 6946u, ~u_input.c.x);
    let var_1 = Struct_1(-vec3<i32>(-_wgslsmith_sub_i32(2147483647i, 54335i), -1i, -arg_2.a.x), firstTrailingBit(_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(1i, -40590i, u_input.a.x, 33046i), vec4<i32>(1i, u_input.a.x, u_input.a.x, 14306i) ^ vec4<i32>(-1667i, 23878i, -2147483647i, -2147483647i)), abs(reverseBits(vec4<i32>(arg_2.a.x, u_input.a.x, -1i, u_input.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_2.a.x, arg_2.a.x, -18876i) & vec4<i32>(2147483647i, 1i, u_input.a.x, arg_2.a.x), vec4<i32>(2147483647i, arg_2.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(0i, -47077i, -1i, 24961i)))));
    global0 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(5153u, global0.x) ^ vec2<u32>(76634u, 1u), u_input.c.zz), ~countOneBits(vec2<u32>(global0.x, 4294967295u))), 10613u, 1u | ~_wgslsmith_sub_u32(u_input.b, u_input.c.x), ~max(firstLeadingBit(u_input.c.x), global0.x)) ^ vec4<u32>(1u, firstLeadingBit(_wgslsmith_mod_u32(global0.x & global0.x, ~u_input.b)), ~(~_wgslsmith_mod_u32(4294967295u, global0.x)), ~38309u);
    let var_2 = global2[_wgslsmith_index_u32(0u, 5u)];
    return ~vec2<u32>(var_0.x, 22316u);
}

fn func_2() -> Struct_3 {
    var var_0 = global0.xw;
    var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1560f, -546f, 1469f) - _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(-570f, 789f), global0.x, vec2<f32>(1316f, -1238f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1307f, -1201f, 1688f), vec3<f32>(-304f, 513f, 511f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2276f, 1239f, -652f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-616f, -1076f, 1000f), vec3<f32>(697f, -1436f, -1011f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(950f, 250f, -389f), vec3<f32>(-1123f, 865f, -503f))), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -323f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f - 1000f)))), Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.yy, max(vec2<i32>(-22939i, 0i), vec2<i32>(5996i, 2147483647i))), u_input.a.xy, min(vec2<i32>(-16959i, u_input.a.x), u_input.a.yz))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), !vec2<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, false))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec3<bool>(false, false, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    var var_1 = 43429u;
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 3408u, var_0.x, ~4294967295u), vec4<u32>(reverseBits(var_0.x), ~var_0.x, global0.x, 1u), reverseBits(countOneBits(vec4<u32>(27762u, global0.x, 7193u, 4294967295u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1001u, u_input.c.x, 1u, var_0.x) ^ vec4<u32>(u_input.b, global0.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, var_0.x, 4294967295u, 17671u), countOneBits(vec4<u32>(var_0.x, 4294967295u, 4294967295u, 18130u)))) >= firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, ~(~var_0.x)));
    var_1 = 1u;
    return global2[_wgslsmith_index_u32(u_input.b, 5u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<f32>(-241f, -902f, -115f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1691f, 1437f))) * -1907f));
    global0 = ~select(vec4<u32>(arg_3.x, abs(~62418u), abs(~0u), 4294967295u), firstTrailingBit(~(vec4<u32>(1u, u_input.c.x, 41257u, 68897u) >> (vec4<u32>(60972u, 1u, arg_3.x, u_input.b) % vec4<u32>(32u)))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true));
    var var_1 = arg_2.a;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_mod_u32(abs(global0.x), firstTrailingBit(select(global0.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c, global0.zyy)), true)));
    return func_2().a;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = true;
    var var_2 = Struct_2(vec2<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.x, -2147483647i, -16471i, u_input.a.x), vec4<i32>(arg_0.b.x, 0i, -26138i, var_0.a.a.x)) | func_2().a.a.x), ~0i));
    var_2 = Struct_2(-arg_0.a.yx);
    var var_3 = any(!vec2<bool>(!select(var_1, true, var_1), !var_1));
    return func_2();
}

fn func_1() -> vec3<f32> {
    let var_0 = ~u_input.c.x ^ 1u;
    var var_1 = ~4294967295u >> (_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec2_u32(global0.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x) | vec2<u32>(u_input.b, 48698u), vec2<u32>(var_0, var_0)))) % 32u);
    let var_2 = func_6(func_5(func_2(), Struct_2(u_input.a.zx), Struct_3(Struct_1(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(27910i, u_input.a.x, u_input.a.x, 2147483647i)))), ~(~(~global0.xyz))));
    let var_3 = var_2.a;
    var var_4 = u_input.a.x & var_2.a.a.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1050f)))), _wgslsmith_f_op_f32(round(1f)), 547f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-662f, 1253f, true)), _wgslsmith_f_op_f32(abs(-1872f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-697f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, -776f, _wgslsmith_f_op_f32(f32(-1f) * -401f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, 1045f, -1371f)))) * vec3<f32>(419f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f - 388f) * _wgslsmith_f_op_f32(-1041f - 919f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -19915i), vec4<i32>(-73349i, -1i, u_input.a.x, u_input.a.x)) & max(vec4<i32>(-7719i, 54178i, 14156i, u_input.a.x), -vec4<i32>(u_input.a.x, 2147483647i, -48778i, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-137f)), _wgslsmith_f_op_f32(-var_0.x)));
}

