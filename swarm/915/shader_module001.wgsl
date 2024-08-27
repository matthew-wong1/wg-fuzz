struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<i32, 10> = array<i32, 10>(i32(-2147483648), -19146i, i32(-2147483648), -31570i, -25663i, 0i, 2147483647i, 0i, i32(-2147483648), 21028i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    global1 = array<i32, 10>();
    global0 = !vec2<bool>(!global0.x, all(arg_1.b.zz) | true);
    let var_0 = vec4<bool>(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 67060u), vec4<u32>(49455u, 0u, 0u, 32750u)), 1u)) < ~reverseBits(_wgslsmith_clamp_u32(3964u, 3513u, 58659u)), arg_1.b.x, false, !(!all(vec3<bool>(true, global0.x, true)) || (arg_1.a.x < -572f)));
    let var_1 = 59550u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(trunc(290f))), _wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, arg_1.a.x, arg_1.a.x))), global0.x)), arg_1.b, arg_1.c, _wgslsmith_add_i32(max(countOneBits(global1[_wgslsmith_index_u32(var_1, 10u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(9218i, arg_1.e.x), arg_1.e.zz)), abs(-22788i)), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(-70094i, -2147483647i)), _wgslsmith_clamp_i32(arg_1.e.x, arg_1.e.x, arg_1.e.x) >> (var_1 % 32u), abs(13525i))), arg_1);
    return _wgslsmith_f_op_f32(-arg_1.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 340f, 940f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(109f, -271f, arg_2)))))), !(!vec3<bool>(arg_1, true, false)), true, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(27975u, 10u)], -3815i, -20687i), -vec3<i32>(-35583i, 35334i, u_input.a.x)), -1i), min(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(5723i, -11992i, -39432i), arg_1 & false), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), u_input.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2393f, arg_2, 1827f)))))), vec3<bool>(all(select(vec2<bool>(global0.x, false), vec2<bool>(arg_1, arg_1), true)), true, false), (~arg_0.x ^ u_input.a.x) > ~(-2147483647i), ~reverseBits(global1[_wgslsmith_index_u32(4294967295u, 10u)]), arg_0.wzw));
    var var_1 = -vec3<i32>(abs(global1[_wgslsmith_index_u32(max(4294967295u, 17805u), 10u)]) ^ global1[_wgslsmith_index_u32(abs(~15121u), 10u)], _wgslsmith_add_i32(var_0.a.e.x << (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 9058i, var_0.b.d), vec3<i32>(var_0.a.e.x, arg_0.x, global1[_wgslsmith_index_u32(0u, 10u)]))) << (1u % 32u), arg_0.x);
    var var_2 = all(var_0.b.b.yz);
    var var_3 = 384f;
    global0 = vec2<bool>(global0.x, !(var_0.b.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.a.x)) * arg_2)));
    return ~u_input.a.yx;
}

fn func_2() -> Struct_2 {
    let var_0 = ~func_4(vec4<i32>(1i, -2147483647i, min(~u_input.a.x, global1[_wgslsmith_index_u32(1628u, 10u)]), -3206i), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 1576f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 13634i, global1[_wgslsmith_index_u32(65646u, 10u)]), Struct_1(vec3<f32>(-385f, 1701f, -1585f), vec3<bool>(true, false, global0.x), global0.x, -2147483647i, vec3<i32>(-4367i, -1i, 863i)))) + 773f), global0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1212f * 985f), _wgslsmith_f_op_f32(-588f * -816f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1115f, -1239f))), _wgslsmith_f_op_f32(237f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1312f)) - _wgslsmith_f_op_f32(-516f - 1561f)))));
    var var_2 = var_1.x;
    let var_3 = ~0u & (_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 56569u), vec4<u32>(28547u, 37803u, 0u, 1u)) >> (93998u % 32u)) >> (_wgslsmith_mult_u32(firstLeadingBit(~0u), 12696u) % 32u));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-var_1.x), Struct_2(Struct_1(vec3<f32>(-850f, _wgslsmith_f_op_f32(f32(-1f) * -2056f), 1937f), vec3<bool>(global0.x, global0.x, true), all(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, false), vec3<bool>(global0.x, global0.x, true))), ~_wgslsmith_mult_i32(u_input.a.x, var_0.x), vec3<i32>(-2147483647i, firstTrailingBit(u_input.a.x), -28897i)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yww) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(349f, 1000f, -777f))), vec3<bool>(true, true, true), var_1.x <= var_1.x, ~global1[_wgslsmith_index_u32(1u, 10u)], u_input.a)), global1[_wgslsmith_index_u32(~(~(var_3 << (~var_3 % 32u))), 10u)], _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -2147483647i), global1[_wgslsmith_index_u32(countOneBits(var_3), 10u)], -var_0.x, u_input.a.x), -(~(~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -24668i, 0i, u_input.a.x)))), select(!vec2<bool>(!global0.x, true), vec2<bool>(global0.x, global0.x), select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(global0.x, false)), !(!vec2<bool>(global0.x, false)), vec2<bool>(true, global0.x))));
    return var_4.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(381f - arg_1.x)), func_2(), global1[_wgslsmith_index_u32(abs(firstLeadingBit(1u)), 10u)], -_wgslsmith_clamp_vec4_i32(~vec4<i32>(-64000i, 2147483647i, -38197i, u_input.a.x) << (min(vec4<u32>(9527u, 27304u, 1u, 74517u), vec4<u32>(9174u, 35214u, 43261u, 0u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 28550i, 0i) | vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], u_input.a.x, global1[_wgslsmith_index_u32(106090u, 10u)], -2147483647i), countOneBits(vec4<i32>(-9621i, global1[_wgslsmith_index_u32(1u, 10u)], 1i, -40422i))), vec4<i32>(-1i) * -vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x, -49462i, u_input.a.x)), select(vec2<bool>(all(!vec3<bool>(global0.x, arg_0.x, arg_0.x)), !global0.x), arg_0.xw, true));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.c, firstLeadingBit(countOneBits(var_0.c))), 0i, -func_2().a.d);
    var var_2 = -725f;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-arg_1.x), var_0.b, 1i, firstLeadingBit(var_0.d << (vec4<u32>(3103u, 10952u, ~24947u, ~4294967295u) % vec4<u32>(32u))), vec2<bool>(global0.x, global0.x));
    var var_4 = ~_wgslsmith_clamp_u32(~_wgslsmith_div_u32(abs(0u), 113646u), ~(~abs(0u)), select(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 20191u)), firstTrailingBit(select(38737u, 86476u, true)), any(!vec2<bool>(global0.x, var_0.b.a.c))));
    return Struct_3(-1417f, Struct_2(Struct_1(var_3.b.a.a, !var_0.b.b.b, true, 0i, -(vec3<i32>(var_3.c, -50538i, -2147483647i) >> (vec3<u32>(29072u, 43103u, 63513u) % vec3<u32>(32u)))), func_2().a), -1i, firstLeadingBit(-_wgslsmith_mult_vec4_i32(select(var_3.d, vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], -2147483647i, var_3.b.b.e.x, -2147483647i), var_3.b.a.c), -vec4<i32>(8884i, u_input.a.x, 1i, var_3.d.x))), vec2<bool>(arg_0.x, !arg_0.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = u_input.a;
    global0 = arg_0.e;
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.b.b.a);
    var var_2 = reverseBits(~vec3<u32>(_wgslsmith_mod_u32(~38318u, abs(10825u)), firstTrailingBit(16103u), _wgslsmith_mult_u32(1u, 14473u) >> (max(1u, 1u) % 32u)));
    global0 = vec2<bool>(true, arg_0.e.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, arg_0.a)) + _wgslsmith_f_op_f32(arg_0.b.b.a.x * 266f)), -646f), _wgslsmith_f_op_f32(-var_1.x), -2264f, _wgslsmith_f_op_f32(step(-340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.d.xwz, arg_0.b.b)))))) - vec4<f32>(_wgslsmith_div_f32(1692f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f - var_1.x)), -1188f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(397f)), -2291f) - _wgslsmith_div_f32(1094f, _wgslsmith_f_op_f32(arg_0.a - arg_0.a))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(375f, _wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_div_f32(-593f, _wgslsmith_f_op_f32(abs(-1372f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(508f, 215f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_1(vec4<bool>(false, global0.x, global0.x, true), vec3<f32>(505f, -1375f, -419f)), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, false)))))), -_wgslsmith_dot_vec2_i32(abs(abs(u_input.a.xz)), ~(~u_input.a.yz)), -52546i | u_input.a.x);
}

