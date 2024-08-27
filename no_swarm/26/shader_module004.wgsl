struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-650f))))), -18896i, select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), abs(~(vec3<i32>(-10529i, u_input.e.x, u_input.e.x) ^ vec3<i32>(u_input.e.x, 46135i, 2147483647i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(103748u, 2780u, u_input.b.x), vec3<u32>(u_input.c.x, 1u, 44341u)) % vec3<u32>(32u))), vec2<i32>(3988i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, u_input.a.x), firstLeadingBit(u_input.a.x), -11981i, 1i), vec4<i32>(-47106i, u_input.a.x, u_input.e.x, u_input.a.x) & abs(vec4<i32>(u_input.a.x, -14449i, -2147483647i, u_input.a.x)))));
    var var_1 = u_input.b.zxz;
    var var_2 = vec3<bool>(any(!(!vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x))), true, select(var_0.c.x, var_0.c.x, true));
    return all(!var_0.c.zy);
}

fn func_2() -> vec3<bool> {
    var var_0 = 742f;
    var_0 = -2572f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-515f))))) + -650f), -258f);
    let var_1 = !vec3<bool>(!any(vec3<bool>(true, true, true)), func_3(), (21331u >> (u_input.c.x % 32u)) > 36196u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-237f, -105f, false))))));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-827f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(138f - 1000f)))))), 65222i, func_2(), vec3<i32>(min(-u_input.e.x, _wgslsmith_sub_i32(17914i, arg_1.b) & min(1i, arg_1.e.x)), ~u_input.a.x, -(~arg_1.d.x) >> (_wgslsmith_sub_u32(12175u, ~4294967295u) % 32u)), ~_wgslsmith_sub_vec2_i32(arg_1.e, _wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), u_input.e) ^ u_input.a));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), 1i, !(!(!arg_1.c)), abs(_wgslsmith_sub_vec3_i32(var_0.d, min(var_0.d, var_0.d))), select(-vec2<i32>(arg_1.b, u_input.a.x), var_0.e, !func_2().yy)), vec3<u32>(12866u, _wgslsmith_sub_u32(~u_input.d.x, u_input.b.x), 0u) << (~firstTrailingBit(u_input.b.zxy) % vec3<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(max(1000f, arg_2.x)), 0i, var_1.a.c, max(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -arg_1.e.x), max(~vec3<i32>(arg_1.b, 626i, u_input.a.x), _wgslsmith_clamp_vec3_i32(var_1.a.d, var_1.a.d, vec3<i32>(var_1.a.e.x, u_input.e.x, -1i)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, arg_1.d.x, u_input.e.x), vec3<i32>(u_input.a.x, 55325i, var_1.a.e.x)), select(countOneBits(var_1.a.d), var_0.d, true), countOneBits(_wgslsmith_add_vec3_i32(arg_1.d, vec3<i32>(-28570i, -10592i, 11636i))))), arg_1.e);
    var var_2 = select(vec2<bool>(var_1.a.c.x, arg_0), select(var_1.a.c.zx, func_2().yx, vec2<bool>(any(select(vec4<bool>(arg_1.c.x, true, arg_0, arg_0), vec4<bool>(arg_0, var_0.c.x, false, false), false)), arg_1.c.x)), all(vec4<bool>(arg_0, !var_0.c.x, false, any(select(arg_1.c, vec3<bool>(false, true, arg_0), true)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_2.yy, arg_3)) - _wgslsmith_f_op_vec2_f32(ceil(arg_3)));
    return _wgslsmith_mult_vec3_i32(~(abs(-vec3<i32>(var_0.b, var_0.e.x, var_0.e.x)) << (min(_wgslsmith_clamp_vec3_u32(var_1.b, var_1.b, vec3<u32>(1u, 22876u, u_input.b.x)), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), arg_1.d);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_1.x, u_input.a.x, select(arg_3, !select(vec3<bool>(arg_3.x, false, false), vec3<bool>(true, arg_3.x, arg_3.x), arg_3), true), -(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 11363i, u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, -741i, -2147483647i, arg_2.x), vec4<i32>(u_input.a.x, arg_2.x, u_input.a.x, arg_2.x)), -vec4<i32>(54807i, u_input.e.x, 22277i, -1i)), u_input.e.x)), vec3<u32>(1u, ~(~50952u), max(~1u, ~4294967295u) << (arg_0.x % 32u)));
    let var_1 = -arg_2.x;
    var var_2 = var_0.a;
    var var_3 = var_0.a;
    var_3 = Struct_1(115f, -21850i, arg_3, _wgslsmith_div_vec3_i32(min(~(var_2.d ^ var_0.a.d), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.b, var_1, -71368i), vec3<i32>(1i, -6781i, 2147483647i))), var_2.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, _wgslsmith_clamp_i32(arg_2.x, 1i, var_3.b) | -2147483647i), _wgslsmith_div_vec2_i32(var_0.a.e, -(~vec2<i32>(u_input.e.x, 12778i))), var_0.a.e));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<u32>(5913u, ~11430u, u_input.b.x | ~0u, u_input.d.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1124f, 267f)), -632f, _wgslsmith_f_op_f32(ceil(-1322f)), _wgslsmith_f_op_f32(-1612f * -161f))))), ~_wgslsmith_add_vec3_i32(reverseBits(func_1(false, Struct_1(-960f, 0i, vec3<bool>(true, false, false), vec3<i32>(u_input.e.x, -8907i, u_input.e.x), u_input.a), vec4<f32>(-1408f, 937f, 1916f, -220f), vec2<f32>(-322f, -1075f))), vec3<i32>(u_input.e.x, -1469i, i32(-1i) * -95117i)), vec3<bool>(-_wgslsmith_mod_i32(-2147483647i, -1i) <= ~_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(2147483647i, u_input.a.x)), select(true | any(vec3<bool>(false, true, false)), false, !(u_input.d.x != u_input.d.x)), (~u_input.d.x | 10259u) != ~firstLeadingBit(u_input.d.x)));
    var_0 = Struct_2(func_4(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.xy, vec2<u32>(u_input.c.x, var_0.b.x)), firstLeadingBit(4294967295u), _wgslsmith_add_u32(u_input.d.x, 12538u), 0u), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(var_0.a.a - 815f), all(var_0.a.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(302f, 444f))), var_0.a.a, _wgslsmith_f_op_f32(376f - -246f)), countOneBits(~var_0.a.d), func_2()).a, countOneBits(func_4(select(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 32807u), vec4<u32>(44132u, var_0.b.x, var_0.b.x, u_input.d.x), vec4<bool>(var_0.a.c.x, false, true, var_0.a.c.x)) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.a.a, 772f, -761f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a, -1669f, -1072f, var_0.a.a), vec4<f32>(var_0.a.a, 1030f, var_0.a.a, var_0.a.a)), 33097i > u_input.a.x)), var_0.a.d, vec3<bool>(true, false, true)).b));
    var_0 = func_4(select(~min(u_input.b & u_input.b, vec4<u32>(var_0.b.x, var_0.b.x, 0u, var_0.b.x)), firstTrailingBit(u_input.b), select(select(select(vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, var_0.a.c.x), vec4<bool>(var_0.a.c.x, true, true, false), var_0.a.c.x), select(vec4<bool>(var_0.a.c.x, true, true, true), vec4<bool>(false, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), false), false && var_0.a.c.x), vec4<bool>(var_0.a.c.x || true, var_0.a.c.x, true, true), true)), vec4<f32>(284f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a))), 276f, -660f), ~var_0.a.d, vec3<bool>(!(!var_0.a.c.x), false, !(271f <= _wgslsmith_f_op_f32(sign(var_0.a.a)))));
    var_0 = func_4(~(vec4<u32>(abs(u_input.d.x), 0u, _wgslsmith_add_u32(1u, 0u), _wgslsmith_mult_u32(0u, 0u)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(41168u, var_0.b.x, var_0.b.x, u_input.d.x)), u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.a, 1000f), _wgslsmith_div_f32(var_0.a.a, -1059f))), 732f, var_0.a.a, -293f))), var_0.a.d, var_0.a.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -778f), var_0.a.a, var_0.a.a, -2877f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.yz & -(~(~var_0.a.e)));
}

