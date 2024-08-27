struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = select(_wgslsmith_sub_u32(4294967295u, countOneBits(7226u)), ~abs(u_input.c) >> (_wgslsmith_add_u32(u_input.c, reverseBits(u_input.c)) % 32u), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-609f)), -116f);
    global1 = array<vec4<f32>, 19>();
    var var_2 = vec2<bool>(true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 472f)) <= _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(var_1, var_1)))) || !all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_3 = (var_2.x | true) || !(!(var_2.x != false));
    return vec3<bool>(false, true, select(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_2.x, var_3), vec2<bool>(var_2.x, false)), vec2<bool>(false, var_2.x))), false, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> vec2<i32> {
    let var_0 = Struct_1(vec4<u32>(1u, 4294967295u, u_input.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.c, 0u, 4294967295u), vec4<u32>(12559u, 61390u, u_input.c, 1u)))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -210f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), arg_1) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, -966f, -1881f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 302f, arg_1)), select(arg_0, arg_0, arg_0))))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.c, max(u_input.c, 26567u))), select(_wgslsmith_mod_u32(~u_input.c, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 1u, u_input.c), select(vec3<u32>(u_input.c, 89782u, 30433u), vec3<u32>(0u, u_input.c, 4294967295u), true)), arg_0.x)));
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    global0 = -u_input.d.x;
    global1 = array<vec4<f32>, 19>();
    return abs(vec2<i32>(reverseBits(u_input.a), 0i));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(2005f - -1737f);
    let var_1 = Struct_5(func_4(func_3(), _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), ~(~vec3<u32>(4294967295u ^ u_input.c, 4294967295u, u_input.c >> (u_input.c % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 355f, var_0, -879f)))) - _wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(~107980u, 19u)], vec4<bool>(true, true, true, true))))), (vec2<u32>(u_input.c, ~4294967295u) << (vec2<u32>(u_input.c, ~1u) % vec2<u32>(32u))) & ~vec2<u32>(1u, u_input.c));
    return var_1.c.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -659f))) * _wgslsmith_f_op_f32(-1305f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), func_3(), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, ~1u), arg_1), firstLeadingBit(max(_wgslsmith_add_vec2_u32(vec2<u32>(11958u, 1u), vec2<u32>(u_input.c, arg_2)), _wgslsmith_add_vec2_u32(arg_1, vec2<u32>(0u, arg_1.x))))), false, vec3<bool>(all(select(vec2<bool>(false, false), func_3().yz, vec2<bool>(true, true))), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(105f * arg_0.x))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1864f * 394f), arg_0.x)));
    global1 = array<vec4<f32>, 19>();
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(~abs(~vec4<u32>(48085u, 1u, u_input.c, var_0.c.x)), abs(vec4<u32>(u_input.c & arg_2, 1u & arg_2, var_0.c.x, 63023u))), var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1320f)))) * vec3<f32>(_wgslsmith_div_f32(-1030f, arg_0.x), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -596f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), -1019f, _wgslsmith_f_op_f32(-672f + -281f)))), (_wgslsmith_mod_u32(var_0.c.x, var_0.c.x) ^ 4294967295u) | ~arg_2);
    global1 = array<vec4<f32>, 19>();
    return min(u_input.c, 135175u) >> (u_input.c % 32u);
}

fn func_6(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = !all(vec3<bool>(false, true, true));
    let var_1 = _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.c, arg_0), 16219u, 27773u, _wgslsmith_mod_u32(4294967295u, 1u)) << (vec4<u32>(arg_0, countOneBits(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0, 84333u, arg_0), vec4<u32>(0u, 4294967295u, u_input.c, u_input.c)), _wgslsmith_mod_u32(arg_0, u_input.c)) % vec4<u32>(32u))), firstLeadingBit((select(vec4<u32>(u_input.c, 89198u, arg_0, 1u), vec4<u32>(67154u, arg_0, 1u, u_input.c), vec4<bool>(var_0, var_0, var_0, var_0)) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, u_input.c, arg_0, u_input.c), vec4<u32>(81463u, 4294967295u, 22711u, 9848u)) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.c, 4294967295u, u_input.c), vec4<u32>(43610u, arg_0, 17172u, 0u)), ~vec4<u32>(arg_0, u_input.c, u_input.c, arg_0), vec4<u32>(arg_0, 4294967295u, 11809u, 4294967295u))));
    global0 = u_input.b >> (~u_input.c % 32u);
    let var_2 = Struct_1(firstTrailingBit(var_1), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xxw)), arg_0);
    global1 = array<vec4<f32>, 19>();
    return Struct_2(var_2, var_0, Struct_1(select(~(~vec4<u32>(45021u, 0u, arg_0, var_2.a.x)), (var_1 >> (var_1 % vec4<u32>(32u))) | vec4<u32>(4294967295u, var_1.x, 1u, arg_0), any(!vec3<bool>(var_0, true, false))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec3_f32(abs(arg_1.yyz)), select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.a.x, 4294967295u, var_2.d), ~u_input.c), select(func_2(), countOneBits(var_2.d), any(vec4<bool>(false, var_0, true, false))), var_0)));
}

fn func_1() -> f32 {
    var var_0 = func_6(func_5(vec3<f32>(1f, -681f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-805f - -1352f)))), vec2<u32>(max(u_input.c, 4294967295u), u_input.c) >> (abs(vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), func_2(), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -15864i, 4585i), vec3<i32>(-31296i, u_input.d.x, -10670i)) | ~u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(select(-125f, 244f, false)))))), _wgslsmith_f_op_f32(abs(110f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(284f, _wgslsmith_div_f32(596f, -487f), any(vec3<bool>(true, false, false))))), -947f));
    global1 = array<vec4<f32>, 19>();
    var var_1 = func_6(~var_0.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, -2041f, 504f, var_0.a.b)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(-348f * var_0.a.c.x), -1772f, _wgslsmith_f_op_f32(ceil(var_0.a.b))))));
    var var_2 = abs(firstTrailingBit(~vec3<u32>(_wgslsmith_mult_u32(1u, u_input.c), func_2(), _wgslsmith_clamp_u32(31845u, 1u, var_0.a.d))));
    let var_3 = var_0.a.d << (countOneBits((reverseBits(1u) << (reverseBits(u_input.c) % 32u)) & _wgslsmith_dot_vec4_u32(var_0.a.a, _wgslsmith_sub_vec4_u32(vec4<u32>(34955u, var_0.a.d, var_2.x, var_2.x), vec4<u32>(var_1.c.d, 24051u, var_0.a.a.x, u_input.c)))) % 32u);
    return var_1.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, _wgslsmith_f_op_f32(func_1()), -632f));
    var var_1 = select(vec4<bool>(true, true, true, true), !(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true));
    var_1 = !vec4<bool>(false & var_1.x, true, !var_1.x, !(true & !var_1.x));
    let var_2 = Struct_4(_wgslsmith_sub_i32(~min(_wgslsmith_div_i32(u_input.d.x, -33172i), ~u_input.d.x), ~u_input.a), Struct_3(var_0.x, func_3(), ~select(~vec2<u32>(38231u, 104889u), vec2<u32>(1u, 1u), vec2<bool>(var_1.x, var_1.x)), var_1.x, var_1.wyy), func_6(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -775f, -524f, var_0.x)).c, var_1.zzy, !func_3().x);
    var var_3 = var_0.x;
    global0 = -(u_input.b | ~u_input.a) >> (_wgslsmith_dot_vec4_u32(abs(~var_2.c.a), var_2.c.a) % 32u);
    var var_4 = ~vec2<u32>(reverseBits(~u_input.c), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(ceil(-177f)), global1[_wgslsmith_index_u32(var_2.c.a.x, 19u)], max(u_input.b, var_2.a), u_input.c);
}

