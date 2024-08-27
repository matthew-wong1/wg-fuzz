struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 31>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = Struct_5(!(~_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-2147483647i, u_input.a.x)) <= _wgslsmith_div_i32(~u_input.a.x, u_input.a.x)), Struct_2(arg_0.b.a, arg_0.d, select(u_input.a.yz, ~(~vec2<i32>(u_input.a.x, -1i)), arg_0.c.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, -548f, arg_0.a.x, 1571f))), false, ~(~vec4<u32>(arg_0.b.a, 4294967295u, arg_0.b.e.d.x, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.b.d.b.x) + arg_0.e.x)), arg_0.b.d), global1[_wgslsmith_index_u32(~u_input.e.x, 31u)]);
    let var_1 = Struct_2(var_0.b.d.d.x, false | (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-912f)))) >= -384f), -(~(~vec2<i32>(arg_0.b.c.x, 2147483647i))), var_0.b.d, var_0.b.e);
    var var_2 = -334f;
    var var_3 = !var_1.e.c;
    var var_4 = 0u;
    return ~_wgslsmith_sub_vec4_u32(var_1.d.d, var_1.d.d);
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_4, 31>();
    var var_0 = 15937u;
    global1 = array<Struct_4, 31>();
    global0 = _wgslsmith_f_op_f32(-1f);
    var_0 = u_input.d;
    return Struct_2(4294967295u, true, ~(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-8857i, u_input.a.x), vec2<i32>(u_input.a.x, -21459i))) >> (u_input.e % vec2<u32>(32u))), Struct_1(464f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 1494f, 687f, 101f))))), !(~u_input.c > _wgslsmith_clamp_u32(55521u, 37114u, u_input.d)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, u_input.d, 26403u, u_input.c)), select(func_3(Struct_3(vec4<f32>(725f, -405f, -1000f, -1560f), Struct_2(u_input.e.x, true, vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(-1000f, vec4<f32>(-442f, 405f, -557f, 2633f), false, vec4<u32>(u_input.e.x, 81661u, u_input.c, u_input.d), 1045f), Struct_1(651f, vec4<f32>(1217f, -530f, 1241f, -132f), false, vec4<u32>(93503u, 7612u, 4294967295u, 31942u), 238f)), vec3<bool>(false, true, true), false, vec4<f32>(782f, -842f, 1179f, -275f))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 50033u, 4294967295u, u_input.c), vec4<u32>(u_input.e.x, 51310u, 4294967295u, u_input.b.x)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) + _wgslsmith_f_op_f32(f32(-1f) * -954f))), Struct_1(_wgslsmith_f_op_f32(-116f * _wgslsmith_f_op_f32(-193f - _wgslsmith_f_op_f32(1266f - -622f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-284f, -125f, 715f, -114f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, 145f, -616f, -954f) * vec4<f32>(-2089f, -668f, -1365f, -1933f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-762f, -1000f, 722f, -1774f), vec4<f32>(-1000f, 1000f, 841f, -1000f), vec4<bool>(false, true, false, true))))), true, firstTrailingBit(~vec4<u32>(u_input.d, 4294967295u, 0u, u_input.c)) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 36931u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.b.x, u_input.c, 38611u, 12401u)), ~vec4<u32>(u_input.c, 18064u, u_input.b.x, 1u), vec4<u32>(u_input.c, 55040u, u_input.e.x, u_input.b.x)), -683f));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, -2910f, _wgslsmith_f_op_f32(min(-722f, 667f)), _wgslsmith_f_op_f32(abs(1000f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(130f)), _wgslsmith_f_op_f32(-1027f * 174f), _wgslsmith_f_op_f32(942f * -508f), 1f)))));
    let var_1 = func_2();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-592f + -1620f), var_1.e.b.x))), -535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.a) - var_0.x)))), 1000f);
    global1 = array<Struct_4, 31>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_2().d.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, -272f) * _wgslsmith_f_op_f32(-var_1.e.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(258f * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(800f)) - _wgslsmith_f_op_f32(step(-107f, var_0.x)))), var_1.d.d.x != (var_1.d.d.x | (79997u << (u_input.c % 32u))))));
    return vec3<u32>(var_1.d.d.x, _wgslsmith_mult_u32(58057u, _wgslsmith_clamp_u32(u_input.d, 4294967295u, u_input.d)) | var_1.a, _wgslsmith_dot_vec4_u32(firstTrailingBit(var_1.e.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.d, u_input.c), var_1.d.d)) | ~0u) | ~var_1.d.d.xzy;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = func_2().d;
    var var_1 = var_0.b.zx;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -133f))), -958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(var_0.b.x + -1000f))) - var_1.x))));
    let var_3 = !(var_0.c & !var_0.c);
    let var_4 = Struct_5(var_3, func_2(), Struct_4(!vec3<bool>(var_0.c, true, arg_2.c)));
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(u_input.d, 40180u, _wgslsmith_sub_u32(75170u, _wgslsmith_mod_u32(0u, 4294967295u)), _wgslsmith_sub_u32(max(u_input.c, 4294967295u), abs(u_input.b.x))) & select(vec4<u32>(4294967295u, firstTrailingBit(u_input.e.x), 59869u & ~u_input.c, u_input.b.x), vec4<u32>(0u, ~countOneBits(u_input.b.x), 5627u, 1u), select(vec4<bool>(false, true, true, all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(491f, 207f, -1655f, 243f) + vec4<f32>(-1972f, -1000f, 1036f, 326f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2038f, 1113f, -242f, 1649f)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))))))), func_1(), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(430f + -1000f) * _wgslsmith_div_f32(278f, 949f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-745f)), _wgslsmith_f_op_f32(ceil(153f)), 1f, 1312f) + vec4<f32>(198f, _wgslsmith_f_op_f32(-437f - -676f), _wgslsmith_f_op_f32(-1000f * -263f), _wgslsmith_f_op_f32(f32(-1f) * -356f))), !(_wgslsmith_f_op_f32(round(-124f)) >= 1883f), countOneBits(~vec4<u32>(6039u, u_input.c, 33359u, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(922f, 2088f, true))))))), -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zz | u_input.a.zx, ~vec2<i32>(u_input.a.x, -2147483647i)), reverseBits(u_input.a.yz)));
    global0 = _wgslsmith_f_op_f32(-var_1.a);
    let var_2 = !select(vec4<bool>(all(!vec4<bool>(true, true, var_1.c, var_1.c)), var_1.c, var_1.c, !any(vec2<bool>(var_1.c, var_1.c))), vec4<bool>(var_1.c, true, true, var_1.c), var_1.c);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_1.b), Struct_2(var_0.x, !(!any(vec3<bool>(var_1.c, var_1.c, true))), vec2<i32>(~(~u_input.a.x), ~1i), var_1, func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-1522f + 128f), var_1.b.x, 203f), var_1.d.xzz, func_2().e, u_input.a.zz)), vec3<bool>(false, (_wgslsmith_add_u32(u_input.d, var_1.d.x) < _wgslsmith_clamp_u32(u_input.e.x, 20211u, 57292u)) == var_1.c, any(select(!var_2, !var_2, select(var_2, var_2, true)))), any(var_2.xwx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-2598f - var_1.b.x), -1164f, _wgslsmith_div_f32(-276f, var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x - 807f)), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.e), -2429f, _wgslsmith_f_op_f32(round(var_1.a)))))));
    var var_4 = ~(~vec4<u32>(~52285u, ~u_input.c, select(~4294967295u, max(9069u, 53203u), var_2.x), 1u));
    let x = u_input.a;
    s_output = StorageBuffer((max(~1i, 1i) >> (1u % 32u)) >> (((247u << (var_0.x % 32u)) & var_4.x) % 32u));
}

