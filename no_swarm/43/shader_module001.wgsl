struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))));
    var var_0 = vec3<i32>(arg_0.x, reverseBits(u_input.b.x), u_input.a.x);
    global0 = -727f;
    let var_1 = firstLeadingBit(abs(-reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -1i, u_input.a.x, arg_0.x), vec4<i32>(arg_0.x, u_input.a.x, 2147483647i, -18593i)))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648f * _wgslsmith_f_op_f32(402f + -282f))))), -980f, 2147483647i <= ~(select(arg_0.x, 0i, true) >> (~14011u % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(1i, u_input.b.x, 1i, u_input.a.x)), abs(vec4<i32>(-2147483647i, u_input.b.x, 1i, 4444i))), ~select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.b.x), vec4<i32>(1i, 1i, u_input.a.x, u_input.b.x), false)), u_input.a.x, 2147483647i, -26165i) & firstTrailingBit(select(vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, u_input.a.x), -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.b.x), select(true, false, true)));
    let var_1 = _wgslsmith_add_vec2_i32(abs(u_input.b.yy), _wgslsmith_mod_vec2_i32(reverseBits(~(~u_input.a)), select(u_input.a, ~(var_0.yz << (vec2<u32>(127871u, 4294967295u) % vec2<u32>(32u))), vec2<bool>(true, true))));
    global0 = -780f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1641f, _wgslsmith_f_op_f32(min(-437f, 1221f))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -161f), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<i32>(0i, u_input.a.x), false)), var_2.x, _wgslsmith_f_op_f32(select(876f, var_2.x, true)), _wgslsmith_f_op_f32(func_3(var_0.xw, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, 733f, -1391f, -869f)))))), false, 1i, ~var_0, 1617f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-130f + -1000f), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.x)))), var_2.x, var_2.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(912f, var_2.x, -345f, 342f), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x * var_2.x), var_2.x, _wgslsmith_f_op_f32(func_3(var_0.wx, true))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 153f, -143f, 184f), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(floor(137f)), var_2.x)), true, var_1.x, var_0, _wgslsmith_div_f32(var_2.x, var_2.x)), 0i);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_3.b.e), var_3.d, var_3.b.a, var_3.b, -_wgslsmith_sub_i32(var_1.x | u_input.b.x, 2147483647i << (0u % 32u))), Struct_2(var_2.x, var_3.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_3.c.x, var_2.x, -812f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.d.a.x, var_3.c.x, 506f, -1000f)))))), var_3.d, var_3.b.c), var_3.d, 1047f, 1456f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1366f)))))));
    let var_0 = 8145u;
    var var_1 = vec2<i32>(arg_1.a.d.d.x, -34261i);
    global0 = arg_0.x;
    let var_2 = arg_1.a.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a.x + arg_0.x))))) + _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -296f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_5(any(!vec4<bool>(all(vec2<bool>(true, true)), true, false, true)));
    let var_1 = Struct_5(!var_0.a);
    var var_2 = func_2().a;
    let var_3 = min(var_2.b.d, _wgslsmith_div_vec4_i32(~(~var_2.b.d), vec4<i32>(-30970i, 1i, 5722i & u_input.a.x, 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 29899u), vec3<u32>(43342u, 4294967295u, 40087u)) % 32u))));
    let var_4 = var_2.b.b;
    return Struct_4(~72861u, Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.d.a), any(select(select(vec2<bool>(true, var_0.a), vec2<bool>(false, true), false), !vec2<bool>(false, var_2.b.b), vec2<bool>(false, true))), i32(-1i) * -2147483647i, vec4<i32>(reverseBits(u_input.b.x), u_input.b.x, ~firstLeadingBit(0i), -(var_2.e ^ 0i)), 198f), false, func_2());
}

fn func_1() -> Struct_5 {
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-369f, -239f) * _wgslsmith_f_op_f32(floor(1007f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1991f, -2154f)), func_2())), true)), _wgslsmith_f_op_f32(select(1143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f - -301f) - _wgslsmith_f_op_f32(-871f - 1000f)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))))), 1000f), u_input.a.x);
    global0 = _wgslsmith_f_op_f32(-var_0.d.e);
    let var_1 = func_2().a;
    let var_2 = func_2().c.b;
    global0 = var_0.d.a.d.a.x;
    return Struct_5(true);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    global0 = 525f;
    return 1771f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1834f;
    global0 = var_0;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(-146f, var_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_4(4294967295u, Struct_1(vec4<f32>(var_0, var_0, -414f, var_0), false, -1i, vec4<i32>(4160i, -9834i, -1i, 11536i), -1638f), false, Struct_3(Struct_2(var_0, Struct_1(vec4<f32>(var_0, var_0, -383f, -959f), true, -14817i, vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.a.x), 1000f), vec4<f32>(var_0, var_0, 1000f, -804f), Struct_1(vec4<f32>(var_0, var_0, var_0, 864f), false, u_input.a.x, vec4<i32>(u_input.b.x, -12013i, -6748i, u_input.b.x), var_0), 13848i), Struct_2(-533f, Struct_1(vec4<f32>(1000f, var_0, -1000f, var_0), false, -49907i, vec4<i32>(-49607i, -2147483647i, -16603i, 2147483647i), var_0), vec4<f32>(var_0, var_0, var_0, var_0), Struct_1(vec4<f32>(var_0, 297f, -285f, -363f), true, 0i, vec4<i32>(-2147483647i, -13748i, u_input.b.x, -2147483647i), var_0), u_input.a.x), Struct_1(vec4<f32>(var_0, -1000f, var_0, var_0), false, u_input.b.x, vec4<i32>(u_input.b.x, u_input.a.x, 0i, 11072i), -147f), var_0, -518f)), ~vec4<u32>(4294967295u, 0u, 0u, 36609u), Struct_1(vec4<f32>(1007f, var_0, 1000f, -1125f), false, -1i, vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), var_0), func_1())) + 1105f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0) - var_0)), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, -889f, -599f) - vec3<f32>(var_0, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(707f, var_0, 132f) * vec3<f32>(-1096f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, -220f, 110f), vec3<f32>(var_0, var_0, var_0))), vec3<bool>(true, true, true)))), 9649i ^ u_input.a.x).d.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1469f, -364f, var_0, var_0)), vec4<f32>(-387f, var_0, var_0, 981f))))), func_2().b.d, u_input.a.x & 1i);
    global0 = var_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(vec3<f32>(2134f, _wgslsmith_f_op_f32(trunc(1000f)), 1589f), u_input.b.x).d.a.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b.a))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(f32(-1f) * -323f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.d.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_2.x, var_1.d.a.x, var_1.b.e))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, 836f, 587f, var_0)))), _wgslsmith_sub_vec2_i32(var_1.d.d.zw, vec2<i32>(max(1622i, countOneBits(var_1.e)), _wgslsmith_clamp_i32(u_input.a.x, -1i, -1i) >> (min(0u, 25468u) % 32u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_1.d.e) * _wgslsmith_f_op_f32(var_2.x + -631f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_1.d.a.x) * func_2().d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.c.x, var_2.x)) - _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-880f))))), _wgslsmith_f_op_f32(f32(-1f) * -466f), var_2.x), 1532f, countOneBits(_wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(43175u, 40383u, 131281u)), vec3<u32>(18414u, 1u, 32749u >> (1u % 32u)))));
}

