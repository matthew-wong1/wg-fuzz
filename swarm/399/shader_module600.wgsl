struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(arg_0, u_input.a.x, arg_0) >> (_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x) % 32u), u_input.a.x, func_3(abs(46921u), _wgslsmith_div_f32(876f, -619f))), vec3<u32>(_wgslsmith_add_u32(arg_0, _wgslsmith_clamp_u32(49668u, reverseBits(u_input.a.x), arg_0)), u_input.a.x, 1u));
    let var_1 = Struct_3(select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, false))), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), true), Struct_1(true, 1i), Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(38466u, arg_0), select(vec2<u32>(arg_0, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x), false)), min(vec2<u32>(u_input.a.x, 1u), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), var_0.zz), 1f, 30457i, -(~vec3<i32>(1i, 1i, 1i)), Struct_1(true, 23362i)));
    let var_2 = !(-548f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-778f * _wgslsmith_f_op_f32(ceil(651f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.b, 434f))));
    var var_3 = -countOneBits(vec4<i32>(firstTrailingBit(~var_1.c.e.b), max(abs(var_1.c.c), abs(var_1.b.b)), 21436i, 2147483647i));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.b, 1061f, -115f), vec3<f32>(var_1.c.b, -593f, var_1.c.b))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.b, var_1.c.b, var_1.c.b), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-969f, var_1.c.b, 1904f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1576f, 985f, var_1.c.b) + vec3<f32>(-586f, 1056f, -1051f))))), var_1.c, ~max(vec4<i32>(~1i, -var_3.x, i32(-1i) * -24929i, -2147483647i | var_1.b.b), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.c.d.x, 2147483647i, var_1.c.c, 8410i), _wgslsmith_mod_vec4_i32(vec4<i32>(4726i, -41389i, 0i, 0i), vec4<i32>(-1i, var_1.c.d.x, var_1.b.b, -18469i)), vec4<i32>(-23405i, var_1.b.b, var_1.b.b, -5823i) << (vec4<u32>(4294967295u, arg_0, var_1.c.a.x, var_0.x) % vec4<u32>(32u)))), _wgslsmith_mult_i32(var_1.c.c, -_wgslsmith_mult_i32(var_1.b.b, -1i)), Struct_3(vec4<bool>(var_1.a.x, all(var_1.a.xxx) & true, any(!var_1.a), !any(vec2<bool>(false, var_1.c.e.a))), var_1.b, Struct_2(firstLeadingBit(vec2<u32>(4294967295u, 0u)), var_1.c.b, 70358i, ~var_1.c.d, Struct_1(all(var_1.a), var_1.c.c ^ -10223i))));
    return Struct_2(~(~(~u_input.a) ^ (var_4.e.c.a ^ _wgslsmith_mult_vec2_u32(var_4.b.a, var_1.c.a))), 306f, var_1.b.b, ~(-((var_4.c.zww ^ var_1.c.d) ^ ~vec3<i32>(var_3.x, 18523i, -3636i))), Struct_1((false && any(var_1.a)) | var_4.b.e.a, ~firstLeadingBit(-var_3.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = -var_0.d.yy;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2187f, -2011f, 1445f) + vec3<f32>(var_0.b, arg_0.b, -399f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 965f, 2852f), vec3<f32>(-3283f, var_0.b, -354f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1246f, arg_0.b))))), func_2(15500u), _wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(var_1.x, var_1.x, -78943i, 2147483647i), ~vec4<i32>(-1i, arg_0.c, -2147483647i, arg_0.d.x), select(vec4<bool>(false, var_0.e.a, false, false), vec4<bool>(arg_0.e.a, true, false, true), false))), ~(vec4<i32>(-11833i, arg_0.c, arg_0.e.b, arg_0.e.b) & vec4<i32>(1i, 24392i, arg_0.e.b, var_0.c)) >> (max(vec4<u32>(0u, 1u, arg_0.a.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(68700u, u_input.a.x, 56371u, 1u), vec4<u32>(30493u, var_0.a.x, arg_0.a.x, 1u))) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 30524i), ~vec2<i32>(-1i, arg_0.d.x)) >> (36481u % 32u), Struct_3(vec4<bool>(true, true, any(select(vec2<bool>(arg_0.e.a, var_0.e.a), vec2<bool>(arg_0.e.a, var_0.e.a), vec2<bool>(var_0.e.a, var_0.e.a))), false), arg_0.e, func_2(u_input.a.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -477f))))));
    var var_4 = vec4<i32>(reverseBits(_wgslsmith_div_i32(-2147483647i, ~_wgslsmith_div_i32(2147483647i, arg_0.e.b))), var_0.e.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-547i, arg_0.c, -3475i), vec3<i32>(var_1.x, var_2.e.c.c, var_1.x)), -46919i) & 1i, -var_1.x), arg_0.d.x);
    return arg_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = Struct_5(arg_2.e.a.yx);
    var var_2 = var_0.e;
    var_1 = Struct_5(vec2<bool>(1387f >= arg_2.b.b, var_2.a.x));
    let var_3 = arg_2.c;
    return func_4(func_2(_wgslsmith_div_u32(arg_3.x, var_2.c.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_5(!vec2<bool>(all(vec2<bool>(true, arg_1.a)), select(false, true, func_1(arg_2, vec4<f32>(arg_0.b, -558f, 197f, arg_0.b), Struct_4(vec3<f32>(arg_0.b, -123f, 688f), arg_0, vec4<i32>(arg_1.b, arg_0.d.x, 2147483647i, arg_1.b), -11725i, Struct_3(vec4<bool>(false, false, true, arg_0.e.a), arg_0.e, arg_0)), arg_2).e.a)));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_2.yzy, ~vec3<u32>(86445u, arg_2.x, u_input.a.x), vec3<u32>(47524u, 26454u, 47240u)), ~arg_2.zxw, vec3<u32>(select(arg_2.x, _wgslsmith_mult_u32(24553u, u_input.a.x), any(var_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, arg_2.x) ^ arg_2.zzy, arg_2.zwy), u_input.a.x));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0.d.xz, vec2<i32>(-1i) * -vec2<i32>(-57478i, 14892i)), 0i);
    var var_3 = firstLeadingBit(10796i);
    var_3 = -var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(func_1(~arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 116f, 1811f) * vec4<f32>(-455f, arg_0.b, arg_0.b, arg_0.b)), Struct_4(vec3<f32>(690f, 259f, arg_0.b), Struct_2(vec2<u32>(4294967295u, 0u), 1156f, var_2, vec3<i32>(arg_1.b, arg_1.b, arg_1.b), arg_0.e), vec4<i32>(0i, var_2, arg_1.b, -4630i), 41920i, Struct_3(vec4<bool>(true, true, true, true), arg_0.e, Struct_2(vec2<u32>(arg_0.a.x, var_1.x), -1692f, var_2, vec3<i32>(arg_1.b, -11380i, var_2), Struct_1(arg_1.a, 0i)))), vec4<u32>(arg_0.a.x, var_1.x, 31734u, 4294967295u) & arg_2).b, arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((u_input.a.x & 1u) ^ (~u_input.a.x | 17780u));
    let var_1 = Struct_2(~select(u_input.a, _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(19729u, 4294967295u)), true) & abs(abs(u_input.a) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 2538u), u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(func_1(countOneBits(vec4<u32>(u_input.a.x, var_0, u_input.a.x, var_0)), vec4<f32>(1f, 1f, 1f, 1f), Struct_4(vec3<f32>(2448f, -1843f, 745f), Struct_2(u_input.a, -675f, 1i, vec3<i32>(0i, -1i, 2147483647i), Struct_1(true, 36797i)), vec4<i32>(-41626i, -2147483647i, -40062i, 25127i), -1i, Struct_3(vec4<bool>(false, true, true, true), Struct_1(false, -1i), Struct_2(u_input.a, -903f, 2147483647i, vec3<i32>(-12056i, 0i, -298i), Struct_1(false, 0i)))), vec4<u32>(7571u, var_0, u_input.a.x, 6431u)), Struct_1(true, 1i), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 4294967295u)), ~u_input.a.x, ~u_input.a.x, var_0))))), func_2(~(~4294967295u)).e.b, abs(-(vec3<i32>(-1i) * -vec3<i32>(0i, -1456i, 0i))), Struct_1(select(true, true, false) || false, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(1i, -32057i))));
    var var_2 = func_4(Struct_2(abs(var_1.a), -609f, -(var_1.e.b & 2147483647i), select(vec3<i32>(-var_1.c, var_1.c, var_1.c), var_1.d, select(select(vec3<bool>(false, true, var_1.e.a), vec3<bool>(var_1.e.a, true, false), vec3<bool>(var_1.e.a, true, false)), vec3<bool>(true, false, var_1.e.a), select(vec3<bool>(var_1.e.a, true, var_1.e.a), vec3<bool>(false, false, var_1.e.a), vec3<bool>(true, true, false)))), func_1(vec4<u32>(11515u, 1u, _wgslsmith_mod_u32(var_1.a.x, 7980u), 0u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1522f, var_1.b, var_1.b, -898f))), Struct_4(vec3<f32>(var_1.b, -111f, -662f), func_4(var_1), vec4<i32>(2147483647i, 0i, var_1.c, 29981i), -1i, Struct_3(vec4<bool>(true, false, var_1.e.a, var_1.e.a), var_1.e, Struct_2(var_1.a, var_1.b, 1i, var_1.d, var_1.e))), ~(~vec4<u32>(var_0, var_0, var_1.a.x, 8939u))).e));
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_2.d, ~var_1.d), -vec3<i32>(29606i, 35623i, var_2.e.b)) >= 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(select(vec4<i32>(var_1.c, 19283i, 10028i, var_2.e.b), vec4<i32>(-33134i, var_1.c, -2147483647i, var_1.d.x), var_2.e.a)), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-1403i, var_2.d.x, var_2.e.b, -19578i)), vec4<i32>(-68559i, 27842i, 24102i, var_1.c)), select(select(vec4<bool>(var_1.e.a, var_2.e.a, false, true), vec4<bool>(var_1.e.a, true, var_2.e.a, true), vec4<bool>(false, var_2.e.a, false, false)), select(vec4<bool>(var_2.e.a, false, true, var_2.e.a), vec4<bool>(true, false, false, var_1.e.a), vec4<bool>(false, var_1.e.a, true, false)), vec4<bool>(true, var_2.e.a, false, var_2.e.a))) | -reverseBits(-vec4<i32>(-1i, var_2.d.x, var_2.c, var_2.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1120f, -824f, _wgslsmith_f_op_f32(round(-145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(894f * var_2.b) - var_1.b)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, var_1.b, var_2.b, -1043f)), vec4<f32>(var_1.b, var_2.b, 1348f, -1674f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-968f, -543f, 1000f, 829f)))))), _wgslsmith_mod_vec4_u32(max(_wgslsmith_mod_vec4_u32(~vec4<u32>(82356u, 67845u, 67423u, 1u), select(vec4<u32>(u_input.a.x, var_1.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, var_2.a.x), vec4<bool>(var_2.e.a, false, true, false))), ~vec4<u32>(50868u, 48817u, 0u, u_input.a.x)), ~vec4<u32>(u_input.a.x >> (93198u % 32u), 40943u, var_0, _wgslsmith_mult_u32(var_1.a.x, var_2.a.x))), _wgslsmith_div_f32(-227f, _wgslsmith_f_op_f32(827f + func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0, 54030u, var_2.a.x), vec4<u32>(u_input.a.x, 64829u, var_0, 46201u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2379f, var_2.b, -1264f, -418f)), Struct_4(vec3<f32>(var_1.b, 1022f, var_1.b), Struct_2(vec2<u32>(1u, 4294967295u), 857f, var_1.d.x, var_2.d, var_1.e), vec4<i32>(var_1.e.b, -1i, 29689i, 1i), -52044i, Struct_3(vec4<bool>(false, var_1.e.a, var_1.e.a, false), var_1.e, Struct_2(vec2<u32>(var_1.a.x, 29249u), var_2.b, var_2.e.b, var_1.d, Struct_1(false, 0i)))), vec4<u32>(44710u, var_2.a.x, 32196u, var_1.a.x)).b)), vec3<u32>(func_3(4294967295u, _wgslsmith_f_op_f32(-var_1.b)) & var_1.a.x, 1u << (var_0 % 32u), ~0u));
}

