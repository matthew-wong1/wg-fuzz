struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    var var_0 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-989f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(640f)), _wgslsmith_f_op_f32(f32(-1f) * -718f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(157f, 1000f) + -1971f) * _wgslsmith_f_op_f32(f32(-1f) * -539f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) * _wgslsmith_f_op_f32(-2507f - _wgslsmith_f_op_f32(ceil(700f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1795f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -771f), 442f)))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, 1000f) - _wgslsmith_f_op_f32(-238f + 561f)) - _wgslsmith_f_op_f32(f32(-1f) * -1037f)), 262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-797f - -615f)))), -1327f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-716f, 285f, 115f, 607f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1494f, -1232f, 1182f, -1536f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(913f, -517f, -580f, 817f) - vec4<f32>(-950f, -488f, 705f, 674f)))))), true));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.c.x))));
    var var_1 = -(~_wgslsmith_mult_vec4_i32(-(~vec4<i32>(20575i, u_input.a, -58400i, u_input.a)), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, -13712i, u_input.a), vec4<i32>(35516i, 1i, 0i, u_input.a)), vec4<i32>(u_input.a, 2147483647i, -28956i, -10135i) & vec4<i32>(u_input.a, u_input.a, 7070i, u_input.a), arg_0.d)));
    let var_2 = Struct_3(vec2<bool>(arg_0.d, arg_0.d), reverseBits(~_wgslsmith_add_vec3_u32(u_input.c.zzz, _wgslsmith_mult_vec3_u32(u_input.c.zwz, vec3<u32>(u_input.b, arg_0.b.x, u_input.d)))), ~(~(-var_1.wy)), -5723i, ~(0u & _wgslsmith_clamp_u32(~u_input.c.x, countOneBits(5530u), reverseBits(1u))));
    var var_3 = Struct_4(var_2);
    return !select(var_3.a.a, vec2<bool>(!arg_0.d, arg_0.d), !var_2.a.x);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_4(Struct_3(func_4(Struct_1(u_input.c.xzx, firstLeadingBit(vec3<u32>(u_input.c.x, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(func_3()), true, 1000f), _wgslsmith_f_op_f32(step(-362f, -162f)), abs(~vec2<u32>(u_input.c.x, 6096u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f) + _wgslsmith_div_f32(1000f, -540f))), vec3<u32>(u_input.d, 1u, u_input.b), max(-(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, -47235i)), vec2<i32>(-u_input.a, -u_input.a)), select(19508i, -13336i << (u_input.c.x % 32u), !any(vec2<bool>(true, false))), 1923u));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    global0 = array<Struct_2, 28>();
    let var_1 = 717f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2176f - 1109f), -1447f))));
    return vec3<i32>(-14463i, -24247i, _wgslsmith_mod_i32(u_input.a, u_input.a));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = ~select(func_2(), -_wgslsmith_div_vec3_i32(-vec3<i32>(arg_0, arg_0, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b.x, arg_0, arg_1.b.x), vec3<i32>(arg_1.b.x, 49711i, arg_0))), !(!vec3<bool>(arg_1.a.x, arg_1.a.x, true)));
    let var_1 = Struct_4(Struct_3(vec2<bool>(any(arg_1.a.xw), !any(arg_1.a.yxx)), vec3<u32>(37742u, u_input.c.x, 1u), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(u_input.a, var_0.x)) << (u_input.c.yy % vec2<u32>(32u)), arg_1.b.x, arg_1.c.b.x << (4294967295u % 32u)));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1.c.e, _wgslsmith_f_op_f32(f32(-1f) * -763f)))));
    global0 = array<Struct_2, 28>();
    var var_2 = Struct_2(vec4<bool>(false, any(!arg_1.a.www) && var_1.a.a.x, false, func_4(Struct_1(vec3<u32>(u_input.c.x, 31998u, 4294967295u), ~vec3<u32>(arg_1.c.a.x, 1u, 4294967295u), arg_1.c.c, select(false, var_1.a.a.x, var_1.a.a.x), -611f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.e)) * _wgslsmith_f_op_f32(352f + arg_1.c.e)), ~(~var_1.a.b.xz), 2165f).x), abs(max(vec2<i32>(-arg_1.b.x, ~u_input.a), vec2<i32>(var_0.x & 27149i, i32(-1i) * -17993i))), Struct_1(vec3<u32>(9086u, _wgslsmith_mult_u32(arg_1.c.a.x, arg_1.c.b.x) | _wgslsmith_sub_u32(arg_1.c.b.x, 0u), arg_1.c.a.x & ~u_input.d), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.zxz, vec3<u32>(2607u, arg_1.c.b.x, var_1.a.e)), vec3<u32>(u_input.d, 14233u, 1u)) & ~var_1.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -808f), -2119f, -469f, arg_1.c.e)), !all(var_1.a.a), arg_1.c.c.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2020f, _wgslsmith_f_op_f32(round(-1555f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2419f), -132f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1627f * _wgslsmith_f_op_f32(abs(-1549f))))));
    let var_0 = Struct_2(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), (func_1(u_input.a, global0[_wgslsmith_index_u32(1u, 28u)]) | true) || true, !(u_input.b != ~51915u), false), vec2<i32>(u_input.a, -2147483647i), Struct_1(_wgslsmith_add_vec3_u32(~u_input.c.zxz, max(vec3<u32>(u_input.c.x, 9303u, 0u), ~vec3<u32>(u_input.c.x, u_input.b, u_input.d))), min(vec3<u32>(1u, abs(u_input.d), _wgslsmith_mod_u32(42168u, 34394u)), firstLeadingBit(~vec3<u32>(298u, 9186u, 100389u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-890f, -1662f, -1810f, 2704f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1744f, 903f, -448f, -447f) * vec4<f32>(-1008f, 1027f, -971f, 732f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-487f, -1273f, -1000f, 2113f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, -970f, 2170f, 232f) + vec4<f32>(-1015f, 222f, -462f, 1100f)))), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))), 2289f));
    global0 = array<Struct_2, 28>();
    var var_1 = firstLeadingBit(select(_wgslsmith_clamp_vec4_i32((vec4<i32>(1i, u_input.a, 50731i, u_input.a) >> (u_input.c % vec4<u32>(32u))) & vec4<i32>(-19617i, u_input.a, -21559i, var_0.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, -44832i, -2147483647i, var_0.b.x), vec4<i32>(-1i, 1i, var_0.b.x, var_0.b.x) | vec4<i32>(-10841i, -52282i, 2147483647i, u_input.a)), vec4<i32>(~0i, -30291i, -u_input.a, -u_input.a)), max(vec4<i32>(var_0.b.x, u_input.a >> (var_0.c.a.x % 32u), ~14102i, _wgslsmith_mult_i32(2147483647i, var_0.b.x)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-77584i, -1i, u_input.a, -2147483647i), vec4<i32>(-2147483647i, u_input.a, 33742i, 20499i)))), select(!select(var_0.a, var_0.a, true), vec4<bool>(!var_0.c.d, true, true, var_0.a.x), var_0.a.x || var_0.c.d)));
    var var_2 = select(select(var_0.a.yzy, vec3<bool>(select(!var_0.a.x, !var_0.c.d, false), true, all(var_0.a.xy)), true), vec3<bool>(var_0.a.x, true, false), !vec3<bool>(var_0.a.x, var_0.a.x, !(var_0.a.x & true)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 59711u), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(select(var_1.zwz, vec3<i32>(var_3.b.x, u_input.a, 1i), var_0.c.d), var_1.xwy), var_1.xxz));
}

