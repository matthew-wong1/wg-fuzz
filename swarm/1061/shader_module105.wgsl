struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(4294967295u, 1u);
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1105f, 259f, 712f), vec3<f32>(357f, 608f, -675f)))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1518f, -1000f, -735f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(366f, -1710f, 1263f) + vec3<f32>(-1172f, -1842f, 975f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1293f, 950f, 400f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1672f, -789f, -305f) * vec3<f32>(624f, -294f, 796f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(768f, 1918f, -1902f) - vec3<f32>(619f, 607f, 1041f))) * vec3<f32>(1001f, _wgslsmith_f_op_f32(sign(-283f)), _wgslsmith_div_f32(1172f, 377f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + var_2.xz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1765f) - vec2<f32>(457f, 1765f))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_div_f32(1295f, -611f)))), vec2<f32>(-595f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_f_op_f32(-var_2.x), !any(vec3<bool>(false, false, false)))))));
    var_0 = ~var_1;
    return select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(u_input.a.x < -2147483647i, all(vec2<bool>(true, true))), false), select(!vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(var_1 <= arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(ceil(var_2.x))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec4<bool>(false, true, false, false)))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = !(!vec4<bool>(!arg_1, true, true, arg_1));
    var_0 = !vec4<bool>(true, var_0.x, !all(!vec4<bool>(false, true, arg_1, false)), arg_1);
    var_0 = !(!vec4<bool>(var_0.x && !arg_1, var_0.x && false, all(var_0.zz), false));
    var_0 = select(vec4<bool>(arg_1, all(vec2<bool>(all(var_0.wwz), true)), true, arg_1), vec4<bool>(!arg_1, true, var_0.x, var_0.x), !select(select(select(vec4<bool>(arg_1, false, true, false), vec4<bool>(false, arg_1, arg_1, true), false), vec4<bool>(var_0.x, arg_1, arg_1, false), var_0.x), select(!vec4<bool>(arg_1, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, arg_1, false), arg_1), all(var_0.zzz)));
    var_0 = !vec4<bool>((arg_0.c.x << (1u % 32u)) <= 1i, any(var_0.xww), true, all(func_3(arg_0.d)) & true);
    return Struct_1(_wgslsmith_sub_u32(arg_0.d.x, ~_wgslsmith_add_u32(~arg_2.x, arg_2.x ^ arg_0.d.x)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d.x, 56952u, arg_0.a, 0u), min(vec4<u32>(15830u, arg_2.x, arg_2.x, 4294967295u), vec4<u32>(arg_2.x, 15332u, arg_2.x, arg_0.a)), abs(vec4<u32>(0u, 56356u, 1u, 0u)))), true, false, arg_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1359f)))), -279f, _wgslsmith_f_op_f32(exp2(arg_3.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1361f, -2185f, -1696f) - vec3<f32>(arg_3.x, -515f, 857f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1196f, 696f, -599f) + vec3<f32>(arg_2.x, -1095f, -444f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 451f, 801f), vec3<f32>(-1065f, 156f, arg_3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 927f, arg_2.x) + vec3<f32>(166f, var_0.x, 1600f)))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(arg_3.x, arg_2.x))))));
    let var_1 = ~(~arg_0.b | vec4<u32>(arg_1.x, 0u, 58738u, firstLeadingBit(arg_1.x)));
    let var_2 = Struct_2(0u, arg_3.x, _wgslsmith_sub_vec4_i32(arg_0.e, -arg_0.e), ~_wgslsmith_mod_vec2_u32(~firstLeadingBit(arg_1), firstTrailingBit(countOneBits(vec2<u32>(47055u, arg_0.b.x)))));
    return select(vec4<bool>(_wgslsmith_clamp_u32(arg_0.b.x, firstTrailingBit(25591u), ~arg_0.b.x) > var_1.x, true, true, false), !select(!(!vec4<bool>(false, true, arg_0.c, false)), !select(vec4<bool>(arg_0.d, arg_0.d, false, false), vec4<bool>(true, arg_0.c, false, true), vec4<bool>(true, false, true, true)), false), select(any(vec4<bool>(any(vec4<bool>(true, false, arg_0.c, arg_0.d)), true, func_3(vec2<u32>(arg_1.x, 0u)).x, arg_0.c)), true, arg_0.c));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(0u, vec4<u32>(~arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, 61817u & (~1u | _wgslsmith_mult_u32(arg_0.a.d.x, 46732u))), all(select(vec4<bool>(arg_0.a.a <= arg_0.a.a, all(vec4<bool>(true, true, true, false)), true, false), vec4<bool>(any(vec3<bool>(true, true, true)), true, any(vec2<bool>(false, true)), true), func_4(func_2(Struct_2(arg_0.a.a, arg_0.a.b, vec4<i32>(-1i, arg_1.x, arg_0.a.c.x, -2147483647i), arg_0.a.d), false, arg_0.a.d), ~vec2<u32>(arg_0.a.a, 38601u), vec2<f32>(arg_0.a.b, arg_0.a.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, arg_0.a.b)))))), func_4(func_2(arg_0.a, all(vec3<bool>(false, false, true)) && func_3(vec2<u32>(1u, arg_0.a.d.x)).x, max(arg_0.a.d, arg_0.a.d) >> (arg_0.a.d % vec2<u32>(32u))), arg_0.a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(arg_0.a.b)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, arg_0.a.b))))))).x, reverseBits(vec4<i32>(_wgslsmith_sub_i32(1i, select(arg_1.x, arg_1.x, true)), arg_1.x, ~1i, select(arg_0.b.x << (1u % 32u), arg_0.b.x, 69485u < arg_0.a.d.x))));
    let var_1 = ~_wgslsmith_sub_vec2_u32(arg_0.a.d, ~arg_0.a.d);
    var var_2 = var_0.b;
    let var_3 = func_2(Struct_2(_wgslsmith_div_u32(~(~6425u), var_2.x), _wgslsmith_f_op_f32(-arg_0.a.b), var_0.e, vec2<u32>(var_2.x, var_2.x)), var_0.d, var_0.b.xw);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.a.b))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = any(vec2<bool>(!(true || (arg_0.a.d.x > 4653u)), any(vec2<bool>(true, true))));
    var var_1 = false;
    var var_2 = arg_0.a.a;
    let var_3 = Struct_1(func_1(arg_0, arg_0.a.c).a.a, vec4<u32>(7690u, 28361u, 4294967295u, 75852u), var_0, true, arg_0.a.c);
    var var_4 = all(!vec4<bool>(any(!vec4<bool>(var_0, true, false, true)), true, var_0, true));
    return func_1(Struct_3(arg_0.a, var_3.e.yx), arg_0.a.c).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_3(func_5(func_1(Struct_3(Struct_2(0u, 116f, vec4<i32>(var_0.x, var_0.x, -16977i, u_input.a.x), vec2<u32>(0u, 81258u)), select(var_0.xy, var_0.yy, true)), vec4<i32>(-2147483647i, var_0.x, -39830i, -8035i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f))), _wgslsmith_clamp_vec2_i32(-(~var_0.zx), vec2<i32>(-1i) * -vec2<i32>(var_0.x, var_0.x), min(~vec2<i32>(11796i, 26271i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), var_0.yy))) ^ vec2<i32>(37174i, -u_input.a.x | -1i));
    var_0 = _wgslsmith_div_vec3_i32(u_input.a, ~u_input.a);
    var var_2 = Struct_2(var_1.a.d.x, _wgslsmith_f_op_f32(-var_1.a.b), var_1.a.c, ~var_1.a.d);
    var var_3 = min(abs(_wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(var_2.c.x, 10391i, var_0.x) >> (max(1u, var_2.a) % 32u))), _wgslsmith_mod_i32(-var_1.b.x, -var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.d.x);
}

