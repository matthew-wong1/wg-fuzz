struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec4<u32> {
    var var_0 = !(true & !any(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false))));
    var var_1 = Struct_2(any(!(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, false, false, false), vec4<bool>(arg_0, arg_0, arg_0, true)))), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 28954u) | ~(~vec4<u32>(4294967295u, 0u, 26169u, u_input.e.x))), Struct_1((-34569i >> (u_input.c.x % 32u)) >> (8544u % 32u), vec3<bool>(arg_0, arg_0, any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, false, arg_0)))), ~u_input.c, ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 40585u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.b.x, 1u, 0u)), vec4<u32>(23805u, 436u, u_input.c.x, 1u), true), abs(-vec2<i32>(arg_1.x, 31687i) | reverseBits(vec2<i32>(arg_1.x, arg_1.x)))), -1165f);
    global0 = false;
    var var_2 = _wgslsmith_sub_i32(arg_1.x, reverseBits(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(-2147483647i, -1i, arg_1.x), -2147483647i)));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.c.x, 0u), 4294967295u & _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.b.x, 11417u), vec2<u32>(var_1.b.x, var_1.c.c.x), vec2<bool>(true, true)), vec2<u32>(u_input.b.x, 0u))) << (_wgslsmith_add_u32(13426u ^ u_input.a.x, var_1.c.c.x) % 32u);
    return select(var_1.c.d, firstTrailingBit(var_1.c.d), !(!select(vec4<bool>(arg_0, true, arg_0, true), select(vec4<bool>(arg_0, arg_0, true, var_1.a), vec4<bool>(true, false, true, false), vec4<bool>(var_1.c.b.x, arg_0, true, false)), false)));
}

fn func_2() -> bool {
    let var_0 = Struct_4(_wgslsmith_add_i32(u_input.d.x, abs(24310i)), Struct_2(!(all(vec3<bool>(false, false, false)) && true), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 29320u, 8712u, 0u) & vec4<u32>(1u, 71445u, u_input.a.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(26462u, u_input.b.x, 36068u, u_input.a.x), vec4<u32>(u_input.b.x, 40177u, 21510u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.e.x), vec4<u32>(38162u, 44673u, u_input.c.x, 1u))) & (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(18118u, u_input.e.x, 51353u, u_input.c.x)), Struct_1(~u_input.d.x, vec3<bool>(false, true, true), _wgslsmith_mod_vec2_u32(u_input.e, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.c)), func_3(true, abs(vec4<i32>(u_input.d.x, 5091i, 2147483647i, -12470i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, -842f, -405f, -1014f))), firstLeadingBit(u_input.d.xx)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(126f, 492f))), ~max(vec3<u32>(0u, u_input.b.x, u_input.e.x) ^ u_input.b, u_input.b), Struct_2(false, ~select(vec4<u32>(0u, 1u, u_input.a.x, 16211u) ^ vec4<u32>(u_input.e.x, 4294967295u, 1u, 17986u), ~vec4<u32>(u_input.a.x, 15325u, u_input.a.x, 7941u), vec4<bool>(true, true, true, true)), Struct_1(min(-24286i, 1i), vec3<bool>(all(vec2<bool>(true, false)), false, all(vec4<bool>(true, true, false, false))), vec2<u32>(~4294967295u, ~u_input.e.x), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e.x, 106685u, u_input.a.x, 1u), vec4<u32>(4294967295u, 47721u, 0u, u_input.e.x)), u_input.d.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(385f, -716f) + -1318f) - 1307f)), 74786u);
    global0 = true & var_0.d.c.b.x;
    let var_1 = Struct_5(u_input.d.x);
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(4472u, ~u_input.a.x, (u_input.e.x << ((u_input.c.x ^ 1u) % 32u)) ^ ~(~90456u)), var_0.c.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-450f, var_0.d.d, _wgslsmith_f_op_f32(var_0.d.d - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(165f, -1000f)))))));
    return var_0.d.a;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = all(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, false, false)) == true, !func_2()));
    global0 = false;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(336f)), -1390f))))));
    var var_1 = Struct_3(arg_0.zz | vec2<i32>(abs(_wgslsmith_mod_i32(u_input.d.x, 2074i)), arg_0.x), ~arg_0, Struct_1(67228i, vec3<bool>(true, true, any(vec3<bool>(true, true, true))), u_input.a, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 26493u, 68909u, 29274u), vec4<u32>(u_input.e.x, u_input.a.x, 1u, 4294967295u)), arg_0.yz));
    var_1 = Struct_3(vec2<i32>(-1i) * -select(vec2<i32>(19256i, u_input.d.x) & vec2<i32>(var_1.a.x, var_1.a.x), arg_0.wx, any(vec4<bool>(true, var_1.c.b.x, var_1.c.b.x, false))), ~var_1.b, Struct_1((-1i >> (~u_input.b.x % 32u)) << (6060u % 32u), vec3<bool>(var_1.c.b.x, (var_0 <= -598f) && any(var_1.c.b.xz), select(var_1.c.b.x, true, true) || true), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b.x, reverseBits(u_input.c.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.e.x), select(var_1.c.c, vec2<u32>(u_input.b.x, 0u), false))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(22304u, 57954u, 1u, u_input.b.x), firstLeadingBit(var_1.c.d), _wgslsmith_add_vec4_u32(var_1.c.d, vec4<u32>(var_1.c.c.x, 0u, 20219u, u_input.c.x))) & select(var_1.c.d, vec4<u32>(0u, 72372u, 4294967295u, 36874u) << (var_1.c.d % vec4<u32>(32u)), var_1.c.b.x), min(vec2<i32>(1i, var_1.c.a), var_1.a)));
    return ~(~1u);
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    var var_0 = vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, 2930i, -1i, -15648i)), vec4<i32>(-8707i, _wgslsmith_div_i32(1i, u_input.d.x), 1i, 15938i)), countOneBits(2147483647i)), -8954i);
    global0 = false;
    var var_1 = !select(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), any(vec3<bool>(true, true, true)), ~9045u > func_3(true, vec4<i32>(1i, var_0.x, u_input.d.x, u_input.d.x), vec4<f32>(518f, -452f, 1325f, -429f)).x), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    let var_2 = var_1.x;
    var var_3 = select(select(vec4<bool>(var_1.x, all(select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)), any(vec3<bool>(var_1.x, true, false))), vec4<bool>(1i == (-1i ^ u_input.d.x), true, true, select(false, false, var_1.x) || any(var_1.xx)), select(select(vec4<bool>(var_1.x, false, false, false), !vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, true, false)), vec4<bool>(true, true, any(vec3<bool>(true, false, var_1.x)), select(false, false, var_1.x)), vec4<bool>(var_1.x, var_1.x, func_2(), false))), !select(!select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x)), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, false, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false)), var_1.x), true);
    return ~_wgslsmith_mult_i32(abs(60200i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_4(vec2<u32>(func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-9379i, u_input.d.x, u_input.d.x, 9912i), vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x))), _wgslsmith_div_u32(32527u, u_input.b.x >> (u_input.a.x % 32u)))));
    let var_1 = true;
    let var_2 = ~(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(10921u, 35036u, u_input.c.x, u_input.a.x), vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 32180u)) | abs(vec4<u32>(0u, u_input.e.x, 1u, u_input.b.x))));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, var_0.a, -19910i, u_input.d.x), vec4<i32>(24704i, 0i, 5905i, u_input.d.x)), firstTrailingBit(vec4<i32>(var_0.a, 1i, u_input.d.x, 18026i)), all(vec2<bool>(var_1, var_1))), ~(-(~vec4<i32>(18306i, -53515i, var_0.a, u_input.d.x)))), vec3<bool>(!all(!vec2<bool>(var_1, var_1)), var_1 != true, !(_wgslsmith_f_op_f32(sign(-438f)) > _wgslsmith_f_op_f32(min(-1044f, 1476f)))), var_2.xz & u_input.e, var_2, countOneBits(~(vec2<i32>(-16401i, var_0.a) & -u_input.d.yz)));
    var_0 = Struct_5(6997i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(229f)), _wgslsmith_div_f32(-109f, 862f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(311f, -1117f, -198f), vec3<f32>(2178f, -1168f, 671f)))))), _wgslsmith_f_op_f32(abs(-530f)));
}

