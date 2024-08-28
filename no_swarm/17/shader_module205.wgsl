struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = vec2<bool>(true, any(!select(select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, arg_0)), !vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, false, arg_0, false))));
    var var_1 = global0[_wgslsmith_index_u32(~65991u, 7u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.c, -293f, 1182f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(trunc(var_1.c)), -1441f, _wgslsmith_f_op_f32(sign(2215f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, var_1.c, 1812f, var_1.c))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1378f, -801f, var_1.c, var_1.c), vec4<f32>(var_1.c, -913f, var_1.c, var_1.c)))))));
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_1(arg_1.b.b, _wgslsmith_mult_u32(arg_0.b << (~13734u % 32u), 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.b.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_div_f32(-399f, 299f))))));
    let var_1 = vec2<i32>(13900i, firstLeadingBit(0i));
    let var_2 = any(!vec2<bool>(false | !arg_1.c.x, all(arg_1.c.wx)));
    let var_3 = arg_1;
    let var_4 = Struct_3(max(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(var_1.x, arg_1.a.a)) & var_1.x, -5467i), Struct_2(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, 129553u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(55437u, 89564u), vec2<u32>(4294967295u, 39783u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-819f + -1801f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f - arg_0.c) + _wgslsmith_f_op_f32(-1000f - arg_1.a.b.d.c))), arg_1.a.b.c, Struct_1(4294967295u, ~(~2219u), var_0.c), max(vec4<i32>(1i, arg_1.a.c.x, countOneBits(-30963i), ~var_3.a.c.x), select(var_3.a.b.e >> (vec4<u32>(var_0.a, var_0.a, arg_0.b, var_3.b.a) % vec4<u32>(32u)), ~u_input.a, false))), ~_wgslsmith_mult_vec3_i32(~arg_1.a.b.e.wzx, reverseBits(-var_3.a.c)));
    return -109f;
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(31988u), 7u)];
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(57934u, 122480u, var_0.c), Struct_4(Struct_3(14108i, Struct_2(0u, -1172f, vec2<bool>(true, false), Struct_1(var_0.b, var_0.a, 736f), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i)), vec3<i32>(u_input.a.x, -10108i, u_input.a.x)), global0[_wgslsmith_index_u32(func_3(arg_0), 7u)], select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, arg_1, arg_0, true), true))))) > 134f;
    global0 = array<Struct_1, 7>();
    var var_3 = true;
    return u_input.a.x;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(950f, 1000f))), -1343f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(211f, -292f), vec2<f32>(242f, 454f)), vec2<f32>(1f, 1f), vec2<bool>(arg_0, arg_0))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(1000f - -672f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2011f, -1965f) * vec2<f32>(-939f, -429f)))))), !(min(func_2(true, true), func_2(arg_0, arg_0)) <= -1i)));
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, 4294967295u, 1u, 4974u), vec4<u32>(50175u, 93067u, 19478u, 4294967295u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), ~(_wgslsmith_clamp_u32(0u, 4294967295u, 12812u) & ~7929u), min(64900u, _wgslsmith_mod_u32(countOneBits(39780u), ~473u))), ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(30029u, 1u, 6713u), vec3<u32>(4294967295u, 14448u, 0u)), vec3<u32>(0u, 4294967295u, 0u)) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(53746u, 4294967295u, 4294967295u, 0u)), countOneBits(min(vec4<u32>(4294967295u, 40131u, 4294967295u, 2607u), vec4<u32>(44026u, 4294967295u, 0u, 29982u)))) % 32u));
    let var_2 = min(~select(reverseBits(_wgslsmith_clamp_vec2_u32(var_1.xx, var_1.yy, vec2<u32>(29666u, 1u))), ~(~var_1.yz), vec2<bool>(true, true)), vec2<u32>(_wgslsmith_mult_u32(var_1.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 92496u, var_1.x), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x)))), var_1.x));
    var var_3 = var_1.x;
    let var_4 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(var_0.x + -912f)) - _wgslsmith_f_op_f32(f32(-1f) * -1517f))));
    return Struct_3(-(i32(-1i) * -u_input.a.x) >> (~25849u % 32u), Struct_2(47020u, _wgslsmith_f_op_f32(f32(-1f) * -202f), select(select(vec2<bool>(arg_0, arg_0), !vec2<bool>(true, arg_0), select(vec2<bool>(false, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))), !(!vec2<bool>(true, arg_0)), arg_0 & arg_0), global0[_wgslsmith_index_u32(var_2.x, 7u)], _wgslsmith_mult_vec4_i32(vec4<i32>(23569i, 1i, _wgslsmith_dot_vec3_i32(u_input.a.yxw, vec3<i32>(-19028i, u_input.a.x, 1i)), _wgslsmith_clamp_i32(4379i, 21619i, 2147483647i)), vec4<i32>(max(-16317i, u_input.a.x), u_input.a.x ^ u_input.a.x, 25853i, u_input.a.x))), abs(min(_wgslsmith_add_vec3_i32(min(u_input.a.wwx, u_input.a.xzx), u_input.a.wwx), ~u_input.a.zzz << (vec3<u32>(1u, 0u, 96596u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(false, all(vec2<bool>(true, false)) & true, false));
    var var_1 = var_0.b.e.x > ~1i;
    global0 = array<Struct_1, 7>();
    var var_2 = max(_wgslsmith_mult_vec2_i32(func_1(true).b.e.xz, -(countOneBits(var_0.c.yx) ^ var_0.c.xy)), firstLeadingBit(~u_input.a.zx));
    var var_3 = Struct_4(func_1(var_0.b.c.x), func_1(_wgslsmith_f_op_f32(-var_0.b.b) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1077f, var_0.b.d.c), -442f))).b.d, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.b.c.x, var_0.b.c.x, var_0.b.c.x), vec4<bool>(var_0.b.c.x, true, false, true), vec4<bool>(true, var_0.b.c.x, var_0.b.c.x, false))), !select(!vec4<bool>(var_0.b.c.x, true, false, var_0.b.c.x), !vec4<bool>(true, false, var_0.b.c.x, true), all(var_0.b.c)), vec4<bool>(var_0.b.c.x, true, var_0.b.b >= var_0.b.b, var_0.b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(534f, 314f, _wgslsmith_sub_vec4_i32(var_3.a.b.e, reverseBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, var_3.a.a, u_input.a.x, -2147483647i), var_3.a.b.e)))), 6721i, _wgslsmith_div_i32(-28834i >> ((var_0.b.d.b ^ (var_3.a.b.a & var_0.b.a)) % 32u), ~min(firstTrailingBit(var_0.c.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
}

