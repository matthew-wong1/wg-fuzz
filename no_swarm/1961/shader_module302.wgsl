struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(3995i, -59794i, 1i), vec3<i32>(56017i, 0i, 2147483647i), vec3<i32>(-4681i, i32(-2147483648), 22955i), vec3<i32>(-23234i, -54852i, 1i), vec3<i32>(-17119i, -18601i, 0i), vec3<i32>(-9591i, -20450i, 0i), vec3<i32>(0i, -30281i, i32(-2147483648)), vec3<i32>(-10899i, -24907i, -29857i), vec3<i32>(0i, -8059i, -9564i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(0i, -2647i, -1i), vec3<i32>(-1i, 1i, -3926i), vec3<i32>(-2617i, -42791i, -1i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(0i, -35222i, 3877i), vec3<i32>(-3552i, 2147483647i, i32(-2147483648)), vec3<i32>(51355i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(1i, 19381i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -30095i, 2147483647i), vec3<i32>(-16792i, -1i, 2147483647i), vec3<i32>(43524i, -1i, 0i), vec3<i32>(-4119i, 0i, -8298i), vec3<i32>(-9143i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(1i, 95888i), u_input.b.x), ~firstLeadingBit(1i));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(~1u, ~4294967295u) >> (countOneBits(countOneBits(71271u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~8683u, _wgslsmith_div_u32(18990u, 11552u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)))), -((_wgslsmith_mod_i32(-2147483647i, 34917i) ^ max(u_input.b.x, u_input.b.x)) & _wgslsmith_sub_i32(-1i, i32(-1i) * -1i)), ~firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(48518i, -50693i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(813f + 1f)))));
    let var_2 = vec4<u32>(max(select(~(~30521u), abs(var_1.a.x) & 22030u, !arg_0), _wgslsmith_sub_u32(var_1.a.x, var_1.a.x) >> (~(~1u) % 32u)), var_1.a.x, _wgslsmith_mult_u32(1u, var_1.a.x) << (4294967295u % 32u), 1u);
    global0 = array<vec3<i32>, 25>();
    return var_1.d;
}

fn func_2() -> vec3<u32> {
    var var_0 = vec4<u32>(~1983u, ~select(~0u, 1u, all(vec2<bool>(true, true))), ~(~1u), 51544u);
    let var_1 = var_0.x;
    var var_2 = Struct_3(Struct_2(Struct_1(max(max(var_0.wx, vec2<u32>(var_0.x, var_0.x)), vec2<u32>(1u, var_0.x)), u_input.a.x, vec2<i32>(0i, _wgslsmith_add_i32(u_input.b.x, 1i)), _wgslsmith_f_op_f32(func_3(u_input.a.x > u_input.b.x))), 5508u));
    let var_3 = vec4<bool>(29300u >= ~_wgslsmith_sub_u32(5088u, var_0.x), false, select(!any(vec3<bool>(true, true, true)), var_2.a.a.d > _wgslsmith_f_op_f32(-var_2.a.a.d), any(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)) | any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_4 = ~(~54385u);
    return vec3<u32>(1u, 1u, 0u);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 3371u), vec2<bool>(false, false))), -1i, select(u_input.b, u_input.b, false), -1000f), abs(_wgslsmith_div_u32(firstLeadingBit(25464u), ~select(1u, 38025u, false))));
    var var_1 = func_2();
    global0 = array<vec3<i32>, 25>();
    let var_2 = ~select(~max(~vec3<u32>(54410u, var_1.x, var_0.a.a.x), vec3<u32>(var_0.b, 1u, 4294967295u)), vec3<u32>(var_1.x, max(var_1.x, 64256u) ^ (var_1.x | var_0.a.a.x), 0u), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true));
    global0 = array<vec3<i32>, 25>();
    return Struct_4(var_0.a, 38251u, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d * var_0.a.d)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = func_1().a;
    let var_1 = Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0.x, arg_1.b), ~1u), abs(firstTrailingBit(vec2<u32>(33186u, 0u)))), 27922i, vec2<i32>(max(reverseBits(2147483647i), arg_1.a.c.x), 42665i), _wgslsmith_f_op_f32(func_3(!(arg_0.x > arg_0.x)))), var_0.a.x, Struct_1(~var_0.a, var_0.b, vec2<i32>(-1i, var_0.c.x), -879f), func_1().a.d);
    let var_2 = ~(-vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(arg_2.yy, firstTrailingBit(arg_1.a.c)), min(2147483647i, ~19119i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d, -1112f, -143f, var_0.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, 527f, 1275f, 1253f)), _wgslsmith_div_f32(467f, arg_1.a.d) < var_0.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.d, _wgslsmith_div_f32(var_1.c.d, 1297f), _wgslsmith_f_op_f32(trunc(153f)), var_0.d))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1704f), _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-126f * _wgslsmith_f_op_f32(1194f + 239f)))), 1020f);
    return Struct_2(arg_1.a, var_0.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = -u_input.a.x;
    var var_1 = ~(~vec4<u32>(_wgslsmith_div_u32(arg_0.b, arg_3.a.a.x) | arg_1.a.a.x, min(arg_1.a.a.x & arg_1.b, 16895u), 1u, arg_3.a.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1038f, arg_0.a.d)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-367f, -1000f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-330f, _wgslsmith_f_op_f32(arg_3.a.d - 1000f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(564f, arg_3.a.d)))))));
    let var_3 = func_4(var_1.wx, Struct_4(func_4(vec2<u32>(abs(46977u), _wgslsmith_div_u32(24273u, 1u)), func_1(), abs(firstLeadingBit(u_input.a.xyw))).a, ~1u, Struct_1(arg_1.a.a, 2147483647i, arg_3.a.c, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(162f)) + var_2.x))), _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(arg_3.a.a.x, 25u)], ~vec3<i32>(_wgslsmith_clamp_i32(arg_3.a.c.x, u_input.b.x, 1801i), min(16176i, 0i), -1i)));
    var var_4 = Struct_3(Struct_2(func_4(~(~vec2<u32>(1u, 1u)), func_1(), vec3<i32>(var_3.a.b, arg_0.a.b, arg_0.a.b)).a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(101322u, 1u, arg_3.b, 53637u), vec4<u32>(14853u, arg_1.a.a.x, 27735u, var_3.b) >> (vec4<u32>(38669u, 4294967295u, 0u, arg_1.b) % vec4<u32>(32u))), select(vec4<u32>(1u, arg_3.a.a.x, 4294967295u, 4294967295u), vec4<u32>(18629u, 4294967295u, 8045u, var_3.b), arg_3.a.a.x > 12575u))));
    return var_3.a;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_3) -> StorageBuffer {
    global0 = array<vec3<i32>, 25>();
    let var_0 = ~(~vec2<u32>(arg_3.a.a.a.x, arg_0.b));
    global0 = array<vec3<i32>, 25>();
    let var_1 = Struct_4(func_4(firstLeadingBit(vec2<u32>(var_0.x, 37292u)), func_1(), ~(-arg_1.wxz)).a, _wgslsmith_dot_vec2_u32(vec2<u32>(~81703u, 18655u), arg_3.a.a.a), Struct_1(vec2<u32>(~_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_mult_u32(func_4(arg_0.a.a, Struct_4(Struct_1(vec2<u32>(4294967295u, 18084u), -73866i, vec2<i32>(arg_3.a.a.c.x, 44962i), 568f), var_0.x, arg_0.a, -1280f), u_input.a.xxy).a.a.x, var_0.x & arg_3.a.b)), -1i, -select(vec2<i32>(0i, arg_2), _wgslsmith_add_vec2_i32(arg_0.a.c, arg_3.a.a.c), true), arg_0.a.d), arg_3.a.a.d);
    var var_2 = _wgslsmith_f_op_f32(trunc(-295f));
    return StorageBuffer(vec2<i32>(-1i) * -(~select(vec2<i32>(arg_1.x, arg_0.a.b), vec2<i32>(arg_3.a.a.b, 2147483647i), true)), vec4<u32>(var_0.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.a.a.x << (arg_0.b % 32u), arg_3.a.b & arg_3.a.b), 27278u), 69697u, _wgslsmith_mod_u32(arg_0.b, ~(~var_1.c.a.x))), vec4<i32>(2147483647i, func_5(arg_3.a, func_4(vec2<u32>(var_0.x, 0u), Struct_4(Struct_1(vec2<u32>(var_1.b, arg_0.b), arg_1.x, u_input.b, var_1.d), 1u, arg_3.a.a, -1912f), arg_1.zxy), arg_2, Struct_2(Struct_1(arg_0.a.a, -3839i, vec2<i32>(2147483647i, 0i), -422f), 0u)).b & func_4(~vec2<u32>(1u, var_0.x), var_1, firstTrailingBit(vec3<i32>(0i, -2147483647i, arg_0.a.b))).a.b, 45504i, -_wgslsmith_mod_i32(select(1i, var_1.c.c.x, false), arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2268f, -543f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.d, -1716f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(527f, -660f) + vec2<f32>(-416f, arg_3.a.a.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_2(func_5(Struct_2(Struct_1(vec2<u32>(1u, 58666u), -2147483647i, vec2<i32>(u_input.b.x, u_input.a.x), -1000f), 4294967295u), func_4(vec2<u32>(1u, 1u), func_1(), vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x)), countOneBits(firstLeadingBit(u_input.b.x)), Struct_2(Struct_1(vec2<u32>(127838u, 1u), u_input.b.x, u_input.b, 795f), 1u)), ~600u), _wgslsmith_clamp_vec4_i32(select(u_input.a << (vec4<u32>(16338u, 38225u, 35206u, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.b.x, -82324i, -571i), vec4<bool>(true, true, true, true)), -vec4<i32>(u_input.a.x, -28403i, 8612i, u_input.b.x) & vec4<i32>(-33708i, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(18188i, u_input.a.x, _wgslsmith_mod_i32(278i, u_input.b.x), ~u_input.a.x)) << ((~vec4<u32>(1u, 1u, 1u, 1u) << (select(vec4<u32>(109835u, 0u, 31609u, 37768u), _wgslsmith_div_vec4_u32(vec4<u32>(86605u, 24445u, 37772u, 12799u), vec4<u32>(18115u, 30181u, 1u, 4294967295u)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))) % vec4<u32>(32u)), -(-u_input.b.x >> (26437u % 32u)), Struct_3(Struct_2(func_4(~vec2<u32>(20123u, 89287u), Struct_4(Struct_1(vec2<u32>(4294967295u, 47229u), -58081i, u_input.a.zy, -175f), 34657u, Struct_1(vec2<u32>(78686u, 38407u), u_input.b.x, u_input.b, -839f), 242f), ~u_input.a.wzw).a, 1u)));
}

