struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13331u;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(i32(-2147483648), -17045i), vec2<i32>(i32(-2147483648), -20131i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 4560i), vec2<i32>(0i, 45157i), vec2<i32>(74485i, 0i), vec2<i32>(i32(-2147483648), -10474i), vec2<i32>(-1i, 17877i), vec2<i32>(-13285i, 35546i), vec2<i32>(36082i, 2147483647i), vec2<i32>(0i, 79920i), vec2<i32>(i32(-2147483648), 43722i), vec2<i32>(2147483647i, 330i), vec2<i32>(0i, 0i), vec2<i32>(-5233i, 2147483647i), vec2<i32>(0i, 41994i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-43351i, 1i), vec2<i32>(-37405i, 31537i), vec2<i32>(5359i, 29951i), vec2<i32>(-23114i, 1i), vec2<i32>(-1i, 7494i), vec2<i32>(0i, -36885i), vec2<i32>(35804i, -1i), vec2<i32>(0i, 1i), vec2<i32>(-39221i, 11730i), vec2<i32>(4486i, 32482i), vec2<i32>(1i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-1i, -48991i), vec2<i32>(25170i, 0i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(arg_1.a.a, vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(290f)), _wgslsmith_f_op_f32(select(192f, arg_0.x, arg_1.a.a.a.d.x))) != _wgslsmith_f_op_f32(round(-156f)), any(!vec2<bool>(true, arg_1.a.a.a.d.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(abs(var_0.a.a.e)));
    let var_2 = arg_1.a.a;
    global0 = 0u;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~(-1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-28345i, -1i), 15i), min(1541i << (var_0.a.b.b.x % 32u), -3787i))), ~1i);
    return !(!any(vec3<bool>(true, all(var_2.a.d), true)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_3(Struct_2(Struct_1(true, vec2<u32>(0u, 8518u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(202f, -172f, -583f))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -810f)), Struct_1(true, vec2<u32>(6525u, 19780u) & vec2<u32>(u_input.a, u_input.a), vec3<f32>(1639f, -390f, -1846f), vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(abs(-998f)))), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(false, func_3(vec4<f32>(1384f, 668f, -1000f, 1293f), Struct_4(Struct_3(Struct_2(Struct_1(true, vec2<u32>(8539u, u_input.a), vec3<f32>(-228f, 239f, 1351f), vec4<bool>(false, false, true, false), -850f), Struct_1(false, vec2<u32>(u_input.a, u_input.a), vec3<f32>(-750f, 499f, -753f), vec4<bool>(true, true, true, true), 1000f)), vec3<bool>(false, true, true)))), false), !all(vec3<bool>(true, false, false)))));
    var var_1 = 1833f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(-1000f - -880f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1068f, _wgslsmith_f_op_f32(-var_0.a.a.a.e))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.a.b.c.x)))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.b.c.x * 106f) - _wgslsmith_f_op_f32(-var_0.a.a.a.e)))), _wgslsmith_f_op_f32(-2162f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.a.a.e)) - 452f)))));
    return Struct_4(var_0.a);
}

fn func_1() -> Struct_3 {
    global1 = min(i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 2147483647i), _wgslsmith_clamp_i32(30148i, -517i, -41351i)), -1i);
    let var_0 = func_2();
    global2 = array<vec2<i32>, 31>();
    global0 = var_0.a.a.b.b.x;
    let var_1 = var_0.a.a;
    return Struct_3(var_0.a.a, vec3<bool>(false, func_2().a.b.x, any(func_2().a.a.a.d)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = func_2();
    var var_1 = 300f;
    var var_2 = firstTrailingBit(~arg_2.x);
    global0 = 26679u;
    let var_3 = Struct_4(Struct_3(Struct_2(func_1().a.b, Struct_1(arg_1.b.x | false, ~vec2<u32>(arg_1.a.a.b.x, 30537u), _wgslsmith_f_op_vec3_f32(arg_1.a.a.c + arg_1.a.b.c), select(vec4<bool>(true, true, arg_0, false), arg_1.a.b.d, false), -172f)), !var_0.a.b));
    return vec3<u32>(countOneBits(~_wgslsmith_mod_u32(~29925u, _wgslsmith_mod_u32(var_3.a.a.a.b.x, 4294967295u))), _wgslsmith_mod_u32(102346u, ~_wgslsmith_clamp_u32(~6225u, _wgslsmith_add_u32(10342u, arg_1.a.b.b.x), _wgslsmith_clamp_u32(40738u, 9612u, var_3.a.a.a.b.x))), ~var_0.a.a.a.b.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0.xzz;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, 1288f))));
    var var_2 = _wgslsmith_f_op_f32(abs(1230f));
    var var_3 = abs(select(vec4<i32>(11737i, _wgslsmith_add_i32(~(-2147483647i), ~1i), 1i, _wgslsmith_mod_i32(i32(-1i) * -5952i, -34323i)), vec4<i32>(countOneBits(~(-1i)), i32(-1i) * -29227i, abs(9252i) | abs(arg_2.x), -2147483647i), !(!func_2().a.a.b.d)));
    var_3 = vec4<i32>(-2147483647i, ~(~min(0i, var_3.x) << (u_input.a % 32u)), ~(-var_3.x), -20667i << (firstLeadingBit(~1u) % 32u));
    return Struct_1(!(!arg_1.x), reverseBits(func_4(true, Struct_3(func_1().a, vec3<bool>(arg_1.x, false, arg_1.x)), firstTrailingBit(firstLeadingBit(vec2<i32>(6701i, arg_2.x)))).xx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2204f, _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1101f) - -818f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -373f, var_1.x) + vec3<f32>(980f, -112f, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1248f, var_1.x), vec3<f32>(309f, var_1.x, var_1.x)) * vec3<f32>(-304f, var_1.x, var_1.x)))), !(!(!func_1().a.a.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - 1f), _wgslsmith_f_op_f32(f32(-1f) * -264f), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)) + -476f))));
    var var_1 = reverseBits(-(~2147483647i));
    var var_2 = func_5(vec4<u32>(_wgslsmith_mod_u32(select(23934u, ~14236u, false), firstLeadingBit(~70179u)), ~u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a, 49940u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 5739u, 48208u), vec3<u32>(36802u, 0u, u_input.a), vec3<u32>(73599u, u_input.a, 1u)), vec3<u32>(u_input.a, 4294967295u, 1u)), func_4(true, func_1(), vec2<i32>(-2812i, -1i) ^ global2[_wgslsmith_index_u32(41714u, 31u)]))), vec4<bool>(true, true, all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), true)), !func_3(vec4<f32>(-1221f, 371f, var_0, 1372f), Struct_4(Struct_3(Struct_2(Struct_1(true, vec2<u32>(4294967295u, u_input.a), vec3<f32>(868f, -1907f, 1532f), vec4<bool>(true, true, false, false), var_0), Struct_1(false, vec2<u32>(77657u, 132508u), vec3<f32>(1000f, var_0, -1000f), vec4<bool>(false, true, false, true), var_0)), vec3<bool>(false, true, true)))) || true), -select(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(0i, -1i)), global2[_wgslsmith_index_u32(u_input.a, 31u)]), global2[_wgslsmith_index_u32(u_input.a, 31u)], func_1().b.zy));
    let var_3 = Struct_3(Struct_2(Struct_1(true || func_2().a.a.a.d.x, vec2<u32>(25599u, u_input.a) ^ _wgslsmith_sub_vec2_u32(var_2.b, vec2<u32>(4294967295u, 17226u)), var_2.c, vec4<bool>(false, true, !var_2.a, var_2.a), var_0), func_1().a.a), func_5(~abs(vec4<u32>(75283u, 4294967295u, var_2.b.x, var_2.b.x) ^ vec4<u32>(4294967295u, u_input.a, 25242u, 1u)), var_2.d, vec2<i32>(0i, 1i)).d.yyy);
    let var_4 = abs(firstTrailingBit(~4294967295u << (func_5(vec4<u32>(1u, 4294967295u, 14482u, 1u) & vec4<u32>(var_2.b.x, var_2.b.x, u_input.a, 30375u), var_2.d, vec2<i32>(-2147483647i, 13204i)).b.x % 32u)));
    var_2 = var_3.a.b;
    var_2 = Struct_1(any(func_2().a.a.a.d), ~select(var_3.a.a.b, ~var_3.a.a.b | vec2<u32>(26351u, 27317u), _wgslsmith_f_op_f32(sign(var_0)) == _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-var_2.c), var_2.d, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1205f))))));
    var var_5 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~(~(~vec3<u32>(9675u, var_4, 0u))), select(~_wgslsmith_add_vec3_u32(vec3<u32>(129645u, var_2.b.x, u_input.a), vec3<u32>(var_4, 1u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_4, 0u, 0u), max(vec3<u32>(1u, var_4, 1u), vec3<u32>(u_input.a, 0u, var_4))), !(!var_3.a.b.d.x))), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a.b.b.x, var_3.a.a.b.x, 4294967295u), ~func_4(false, var_3, vec2<i32>(-12824i, 2147483647i)))), vec3<u32>(2163u, 4294967295u, _wgslsmith_mod_u32(1u | var_2.b.x, var_3.a.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.a.a.c.yz, u_input.a, ~_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(var_3.a.a.b.x, 40169u, var_4, 93091u)), ~vec4<u32>(var_2.b.x, var_3.a.b.b.x, u_input.a, var_3.a.b.b.x) >> (vec4<u32>(var_3.a.b.b.x, 64949u, 17011u, 1u) % vec4<u32>(32u))));
}

