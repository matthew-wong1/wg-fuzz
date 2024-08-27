struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<u32>(40193u, 9040u, 4294967295u), vec2<i32>(-19961i, 34173i), 1u, 4294967295u, true), Struct_1(vec3<u32>(1u, 2218u, 1u), vec2<i32>(2147483647i, -1i), 15260u, 12583u, true), Struct_1(vec3<u32>(1u, 0u, 1118u), vec2<i32>(i32(-2147483648), -3112i), 2337u, 1u, true), Struct_1(vec3<u32>(32891u, 0u, 1u), vec2<i32>(1i, 1i), 25336u, 20698u, true), Struct_1(vec3<u32>(84195u, 37243u, 66717u), vec2<i32>(2147483647i, 1i), 14862u, 0u, true), Struct_1(vec3<u32>(30599u, 0u, 4294967295u), vec2<i32>(-1i, 0i), 1u, 0u, true), Struct_1(vec3<u32>(4294967295u, 28331u, 64212u), vec2<i32>(15071i, 0i), 69357u, 1u, true), Struct_1(vec3<u32>(4699u, 14491u, 1u), vec2<i32>(-424i, i32(-2147483648)), 45504u, 0u, false), Struct_1(vec3<u32>(4294967295u, 10518u, 0u), vec2<i32>(-15736i, -44925i), 4294967295u, 4294967295u, true), Struct_1(vec3<u32>(19550u, 52646u, 4294967295u), vec2<i32>(-19387i, 0i), 23016u, 0u, false), Struct_1(vec3<u32>(4294967295u, 0u, 10659u), vec2<i32>(i32(-2147483648), 21428i), 1u, 75922u, true), Struct_1(vec3<u32>(19748u, 23722u, 45605u), vec2<i32>(-18594i, -9888i), 0u, 0u, true), Struct_1(vec3<u32>(0u, 1u, 8482u), vec2<i32>(2147483647i, -1i), 45396u, 0u, true), Struct_1(vec3<u32>(47764u, 28445u, 1u), vec2<i32>(1i, -7193i), 55095u, 1u, true), Struct_1(vec3<u32>(4294967295u, 17450u, 0u), vec2<i32>(-1i, 29629i), 4294967295u, 4294967295u, true), Struct_1(vec3<u32>(11571u, 43341u, 4294967295u), vec2<i32>(0i, -1i), 1u, 57691u, true), Struct_1(vec3<u32>(1u, 0u, 79717u), vec2<i32>(1i, 1i), 4940u, 47243u, true));

var<private> global3: vec2<i32> = vec2<i32>(40550i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    var var_0 = true;
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.b.x, -34261i), -arg_0.b.x), 18164i, -46779i);
    var var_2 = Struct_3(!select(!vec4<bool>(true, arg_0.e, arg_0.e, false), !vec4<bool>(arg_0.e, false, arg_0.e, arg_0.e), arg_0.e));
    return _wgslsmith_div_f32(547f, 932f);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec2<f32> {
    global2 = array<Struct_1, 17>();
    let var_0 = select(arg_3.x, any(select(select(arg_3, arg_1.a.xw, !vec2<bool>(arg_3.x, false)), arg_0, arg_3.x)), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(arg_2.x | ~12771u, 17u)], 1i << (u_input.c.x % 32u), -2147483647i)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))));
    let var_1 = select(vec2<i32>(-global3.x, -1i), _wgslsmith_clamp_vec2_i32(~vec2<i32>(global3.x, ~global3.x), vec2<i32>(-1i) * -(u_input.d.xw ^ u_input.d.ww), select(vec2<i32>(max(global3.x, global3.x), global3.x), u_input.d.wy | u_input.d.yy, arg_2.x >= ~u_input.c.x)), select(arg_3, !vec2<bool>(arg_0.x, var_0), !arg_1.a.wz));
    global2 = array<Struct_1, 17>();
    var var_2 = -1000f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-988f, -906f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(349f, 491f), vec2<f32>(782f, 484f), arg_1.a.wy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-102f, -248f) - vec2<f32>(555f, -1311f))))));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~countOneBits(~u_input.c.wwx)), abs(~(~(~vec3<u32>(6175u, u_input.c.x, u_input.c.x)))));
    global0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(select(~1u, 0u, true), ~var_0, _wgslsmith_dot_vec2_u32(abs(u_input.c.yx), u_input.c.yy)) & (4294967295u | var_0), firstLeadingBit(var_0) & firstTrailingBit(_wgslsmith_sub_u32(~94987u, _wgslsmith_add_u32(var_0, 0u))));
    var var_1 = u_input.d;
    var var_2 = Struct_3(vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, true, arg_0.b.a.x));
    var var_3 = Struct_3(select(select(vec4<bool>(arg_0.b.a.x && var_2.a.x, any(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, false)), false, any(vec4<bool>(var_2.a.x, var_2.a.x, arg_0.b.a.x, var_2.a.x))), vec4<bool>(true, any(arg_0.b.a), false && var_2.a.x, arg_0.b.a.x), vec4<bool>(!arg_0.b.a.x, true, arg_0.b.a.x, var_2.a.x || var_2.a.x)), select(!arg_0.b.a, !vec4<bool>(var_2.a.x, true, false, false), any(!vec4<bool>(true, true, true, arg_0.b.a.x))), true));
    return Struct_4(arg_0.a, Struct_3(var_3.a));
}

fn func_1() -> Struct_4 {
    let var_0 = any(vec2<bool>(false, all(vec2<bool>(true, true))));
    return func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, true), Struct_3(vec4<bool>(true, false, false, false)), vec2<u32>(u_input.c.x, 33778u), vec2<bool>(false, var_0))))), Struct_3(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, var_0), all(vec3<bool>(true, true, var_0))))));
}

fn func_5(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~(~u_input.d.yz), _wgslsmith_add_vec2_i32(vec2<i32>(55768i, u_input.b) ^ vec2<i32>(14905i, global3.x), vec2<i32>(1i, 2147483647i)), select(vec2<i32>(global3.x, 2147483647i), -vec2<i32>(1i, global3.x), select(arg_0.b.a.zy, arg_0.b.a.yw, vec2<bool>(arg_0.b.a.x, arg_0.b.a.x)))) >> (~u_input.c.xz % vec2<u32>(32u)), reverseBits(select(u_input.d.yw, -reverseBits(vec2<i32>(0i, u_input.d.x)), vec2<bool>(!arg_0.b.a.x, arg_0.a.x < -1435f))));
    global3 = _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(global3.x), _wgslsmith_mod_i32(7267i, select(global3.x, ~(-30039i), all(arg_0.b.a)))), ~_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.a, -29821i), u_input.d.xx), u_input.d.wy));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(39494u, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, u_input.c.x), countOneBits(u_input.c.x)), u_input.c.x), ~1u), min(1u, u_input.c.x), 0u);
    global1 = array<Struct_1, 4>();
    var var_2 = arg_0.b;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = _wgslsmith_mult_i32(1i, global3.x);
    global3 = abs(vec2<i32>(0i, _wgslsmith_clamp_i32(reverseBits(-4705i), global3.x, 1i)) & u_input.d.yx);
    let var_2 = -_wgslsmith_mod_i32(-10444i, u_input.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2143f, _wgslsmith_f_op_f32(func_5(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -1205f), _wgslsmith_f_op_f32(step(-259f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(6705u, 84744u, u_input.c.x), u_input.d.ww, u_input.c.x, u_input.c.x, true), -4033i, -7149i))))))));
    let var_4 = 1000f;
    var var_5 = _wgslsmith_f_op_vec4_f32(var_3 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 * var_3)), vec4<f32>(_wgslsmith_f_op_f32(var_4 - -855f), _wgslsmith_div_f32(var_3.x, 912f), -586f, var_4), vec4<bool>(true, true, true, true)))));
    let var_6 = Struct_1(u_input.c.wyy, _wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, -25293i), -abs(min(vec2<i32>(global3.x, global3.x), vec2<i32>(var_2, u_input.a)))), ~4294967295u, u_input.c.x, any(vec2<bool>(1u == ~u_input.c.x, any(vec2<bool>(false, true)) | func_1().b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_5.x, 1090f, true)), var_4, var_5.x, -1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, _wgslsmith_f_op_f32(-var_4), 1000f, var_4) * var_3)), vec4<f32>(_wgslsmith_f_op_f32(func_1().a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_3.x))))), func_1().a.x, 2160f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f * var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) - -1564f) + var_3.x)));
}

