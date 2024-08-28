struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-909i, i32(-2147483648)), vec2<i32>(27931i, -7589i), vec2<i32>(-54021i, 0i), vec2<i32>(25506i, -1i), vec2<i32>(23186i, 622i), vec2<i32>(2147483647i, 18111i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(37797i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-41740i, -27778i), vec2<i32>(-38684i, -39378i), vec2<i32>(43503i, -58398i), vec2<i32>(13818i, -15973i), vec2<i32>(-11116i, -23299i), vec2<i32>(37083i, -1i), vec2<i32>(1i, 0i), vec2<i32>(80387i, 0i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -21942i), vec2<i32>(16018i, -13856i), vec2<i32>(0i, -20326i), vec2<i32>(-1i, 55622i), vec2<i32>(39594i, 2147483647i), vec2<i32>(-17044i, 2147483647i), vec2<i32>(-25988i, 1i), vec2<i32>(-66237i, 10551i), vec2<i32>(-10240i, -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_5, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2196f, 706f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.b.a.x)), _wgslsmith_f_op_f32(min(arg_1.b.a.x, 1388f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.b.a))))));
    global0 = !select(!vec2<bool>(false, global0.x), !(!vec2<bool>(global0.x, global0.x)), select(any(!vec2<bool>(false, global0.x)), all(vec2<bool>(global0.x, global0.x)), all(vec2<bool>(true, global0.x)) & any(vec4<bool>(global0.x, false, false, global0.x))));
    global1 = array<vec2<i32>, 28>();
    var var_1 = Struct_1(max(vec4<i32>(-_wgslsmith_sub_i32(2147483647i, arg_1.b.b), abs(arg_3 ^ arg_3), select(~arg_3, arg_3, all(vec4<bool>(global0.x, global0.x, global0.x, false))), arg_1.b.b), select(vec4<i32>(abs(1i), 33531i, 0i, -1i), select(vec4<i32>(0i, 0i, 23855i, u_input.d.x) ^ vec4<i32>(0i, 596i, u_input.a, u_input.a), ~vec4<i32>(arg_1.b.b, arg_0.a.b, 20716i, -2147483647i), true), vec4<bool>(true, !global0.x, 4294967295u > u_input.e.x, -8238i > arg_0.a.b))), -_wgslsmith_add_i32(arg_0.a.b, u_input.d.x), !(arg_0.a.a.x == -270f), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.e.xzz, _wgslsmith_sub_vec3_u32(~u_input.c, u_input.e.zxw ^ vec3<u32>(0u, u_input.c.x, u_input.e.x))), u_input.b.x, ~select(u_input.b.x, 4294967295u, arg_0.b.b >= -26056i), _wgslsmith_sub_u32(~1453u, ~(~u_input.c.x))), _wgslsmith_f_op_vec2_f32(step(arg_0.a.a, var_0)));
    global0 = select(vec2<bool>(!var_1.c, !var_1.c), select(vec2<bool>(false, false), vec2<bool>(_wgslsmith_add_u32(1502u, u_input.b.x) != 2178u, !(var_1.d.x >= 0u)), vec2<bool>(true & (-2147483647i == arg_3), !(true && var_1.c))), var_1.c || (!any(vec3<bool>(true, false, var_1.c)) != any(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, arg_1.a.a.x) * vec3<f32>(var_0.x, 1208f, arg_1.a.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(459f, var_1.e.x, -519f))))))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    global0 = vec2<bool>(!arg_2.d.c, all(arg_3));
    global1 = array<vec2<i32>, 28>();
    var var_0 = arg_2.e.ywy;
    global0 = arg_2.c;
    var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, var_0.x), var_0.xy, false)), vec2<f32>(var_0.x, arg_0)), u_input.d.x), Struct_3(arg_2.d.e, arg_2.b)), Struct_5(Struct_3(arg_2.d.e, -6296i), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) + var_0.xx), 0i)), Struct_5(Struct_3(arg_2.e.xy, arg_2.d.b | ~66870i), Struct_3(_wgslsmith_f_op_vec2_f32(arg_2.e.zx * vec2<f32>(478f, arg_2.e.x)), reverseBits(u_input.a))), -arg_1.x));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - -179f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1510f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-847f)))))), arg_1.x, arg_3.zz, arg_2.d, arg_2.e);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_5(Struct_3(vec2<f32>(arg_1.d.e.x, 181f), u_input.d.x), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a)), 226f), vec2<f32>(arg_1.a, -226f)), -35823i));
    let var_1 = Struct_4(all(select(select(select(vec4<bool>(false, global0.x, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(global0.x, arg_1.d.c, global0.x, arg_1.d.c)), !vec4<bool>(global0.x, false, arg_0.x, false), select(!vec4<bool>(false, arg_1.d.c, arg_1.c.x, false), vec4<bool>(arg_1.c.x, true, arg_0.x, arg_0.x), global0.x | true))), arg_1.d);
    let var_2 = Struct_4(u_input.e.x > ~(~var_1.b.d.x), func_2(_wgslsmith_f_op_f32(-1428f * _wgslsmith_f_op_f32(floor(var_0.b.a.x))), vec3<i32>(countOneBits(1i), 0i, _wgslsmith_mult_i32(-1i, 1i)) >> (vec3<u32>(4294967295u, ~u_input.e.x, ~u_input.c.x) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_f32(max(var_1.b.e.x, -266f)), ~(~vec3<i32>(2147483647i, var_0.a.b, -2147483647i)), arg_1, select(vec3<bool>(false, var_1.a, arg_0.x), !vec3<bool>(false, global0.x, false), !arg_0.x)), select(select(select(vec3<bool>(global0.x, false, arg_1.d.c), vec3<bool>(true, var_1.b.c, global0.x), vec3<bool>(arg_1.d.c, arg_0.x, arg_1.c.x)), select(vec3<bool>(global0.x, true, arg_1.c.x), vec3<bool>(false, true, true), vec3<bool>(arg_0.x, var_1.b.c, arg_1.c.x)), vec3<bool>(true, true, true)), vec3<bool>(arg_1.d.c, all(vec4<bool>(false, false, arg_1.c.x, false)), u_input.d.x <= -1i), vec3<bool>(arg_0.x, select(var_1.b.c, arg_0.x, arg_1.c.x), var_1.a & false))).d);
    global0 = arg_0;
    return false;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> Struct_5 {
    var var_0 = !(!vec2<bool>(global0.x, _wgslsmith_f_op_f32(round(-731f)) < _wgslsmith_div_f32(-629f, -1607f)));
    global0 = !vec2<bool>(true, select(func_4(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(global0.x, true), global0.x), func_2(399f, vec3<i32>(arg_0.x, -39805i, 0i), Struct_2(-163f, 2147483647i, vec2<bool>(false, true), Struct_1(vec4<i32>(arg_0.x, -17702i, arg_0.x, arg_0.x), 3414i, global0.x, u_input.e, vec2<f32>(602f, 594f)), vec4<f32>(-1065f, 613f, 171f, 1301f)), vec3<bool>(var_0.x, false, global0.x))), !var_0.x, true));
    var var_1 = ~(~(~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), u_input.c.x >> (68926u % 32u))));
    var var_2 = 7164i;
    return Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_3(vec2<f32>(-632f, -976f), u_input.a), Struct_3(vec2<f32>(-400f, -548f), arg_0.x)), Struct_5(Struct_3(vec2<f32>(-1561f, -1000f), 29025i), Struct_3(vec2<f32>(339f, 871f), -1671i)), Struct_5(Struct_3(vec2<f32>(2132f, 134f), -1i), Struct_3(vec2<f32>(795f, -800f), -2147483647i)), -15145i)).xx, vec2<f32>(_wgslsmith_f_op_f32(-313f - -1090f), _wgslsmith_f_op_f32(max(484f, -569f))))), reverseBits(u_input.a)), Struct_3(vec2<f32>(-1396f, -300f), _wgslsmith_sub_i32(1i, abs(~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-u_input.d.yz, u_input.e.x);
    let var_1 = ~(-21191i) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(0u, 4294967295u), select(1u, u_input.e.x, global0.x), 1u, firstLeadingBit(23285u)), vec4<u32>(u_input.b.x, 1u, u_input.c.x, u_input.b.x)), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, 36283u), vec3<u32>(25203u, 95956u, u_input.b.x)), ~_wgslsmith_sub_u32(u_input.e.x, u_input.c.x)), firstTrailingBit(u_input.e.x) ^ reverseBits(~72558u)) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.a.x, 359f), _wgslsmith_f_op_vec2_f32(var_0.b.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, var_0.a.a.x))))));
    var var_3 = !func_2(-240f, -vec3<i32>(abs(var_1), reverseBits(-1i), 0i), func_2(var_2.x, _wgslsmith_mod_vec3_i32(u_input.d, u_input.d), Struct_2(_wgslsmith_f_op_f32(var_0.a.a.x - -300f), 2147483647i ^ u_input.d.x, vec2<bool>(global0.x, global0.x), Struct_1(vec4<i32>(1i, 0i, var_1, var_1), u_input.d.x, global0.x, u_input.e, vec2<f32>(var_2.x, -1359f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-863f, var_2.x, var_2.x, var_0.a.a.x) * vec4<f32>(-1199f, -1574f, var_2.x, -1071f))), select(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, global0.x), global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(true, true, false), true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x), global0.x))), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(global0.x, true, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x))), select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), false), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, true), false), any(vec3<bool>(global0.x, global0.x, true))), !global0.x | true)).c;
    var_0 = Struct_5(var_0.a, Struct_3(var_2, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, var_0.a.b, 0i), vec3<i32>(1i, var_0.b.b, u_input.d.x)), vec3<i32>(~var_0.a.b, i32(-1i) * -61481i, 1i))));
    var_3 = vec2<bool>(!(!any(vec4<bool>(global0.x, global0.x, false, true))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, var_0.a.a.x)), u_input.d, Struct_2(-1036f, -1i, func_2(-168f, vec3<i32>(u_input.a, var_0.a.b, -1i), Struct_2(var_0.a.a.x, var_1, vec2<bool>(true, global0.x), Struct_1(vec4<i32>(var_1, var_1, -2147483647i, u_input.d.x), var_0.b.b, false, u_input.e, var_0.b.a), vec4<f32>(795f, var_0.a.a.x, -1201f, 1000f)), vec3<bool>(var_3.x, false, global0.x)).c, Struct_1(vec4<i32>(1i, 0i, var_1, var_0.b.b), -1i, global0.x, vec4<u32>(u_input.e.x, 0u, 48445u, 1u), vec2<f32>(1000f, 814f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, -507f, -1947f, var_2.x))), select(!vec3<bool>(var_3.x, true, true), vec3<bool>(var_3.x, global0.x, global0.x), vec3<bool>(false, false, var_3.x))).d.e.x, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.b, _wgslsmith_mult_i32(-36058i, var_0.b.b), 2147483647i | u_input.d.x), _wgslsmith_add_vec3_i32(u_input.d, u_input.d)), Struct_2(_wgslsmith_f_op_f32(-var_2.x), ~u_input.a, vec2<bool>(!var_3.x, !var_3.x), Struct_1(-vec4<i32>(20725i, -77537i, -1i, -2147483647i), countOneBits(-1i), !var_3.x, _wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(22626u, 0u, u_input.e.x, u_input.e.x)), var_0.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, -2789f, -970f, var_0.a.a.x)))), vec3<bool>(true, select(var_3.x, global0.x, global0.x) | true, true)).d.d, vec2<f32>(func_1(-vec2<i32>(-28418i, u_input.a), 0u).a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1040f)) * _wgslsmith_f_op_f32(ceil(var_0.b.a.x))) * -857f)), abs(func_2(-1907f, select(u_input.d, u_input.d, vec3<bool>(var_3.x, false, global0.x)), func_2(-659f, u_input.d, Struct_2(var_0.b.a.x, 5452i, vec2<bool>(global0.x, global0.x), Struct_1(vec4<i32>(31781i, var_0.a.b, 15200i, -1i), 50253i, var_3.x, vec4<u32>(33401u, u_input.e.x, 1u, 134126u), var_2), vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_2.x, var_2.x)), vec3<bool>(global0.x, false, false)), select(vec3<bool>(global0.x, false, false), vec3<bool>(var_3.x, global0.x, true), var_3.x)).d.d.xyz >> (select(_wgslsmith_sub_vec3_u32(u_input.c, u_input.e.wzz), vec3<u32>(4294967295u, u_input.c.x, u_input.e.x), var_0.a.b > -1i) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_div_f32(func_2(_wgslsmith_f_op_f32(var_2.x + var_0.a.a.x), -u_input.d, func_2(var_0.b.a.x, u_input.d, Struct_2(var_2.x, 2147483647i, vec2<bool>(var_3.x, true), Struct_1(vec4<i32>(var_0.b.b, 2147483647i, -1i, 1687i), -13905i, false, vec4<u32>(u_input.e.x, u_input.e.x, 57123u, 1u), vec2<f32>(var_2.x, 378f)), vec4<f32>(var_2.x, 387f, -625f, -180f)), vec3<bool>(global0.x, false, global0.x)), select(vec3<bool>(true, var_3.x, global0.x), vec3<bool>(false, true, true), false)).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -638f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.b.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_0.a.a.x)) * _wgslsmith_div_f32(var_2.x, -2905f)))), _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.c.x, 0u ^ u_input.e.x) << (~(vec2<u32>(47831u, 1u) ^ vec2<u32>(u_input.e.x, u_input.c.x)) % vec2<u32>(32u)), u_input.b));
}

