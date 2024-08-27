struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    return Struct_1(arg_0.zyw, true, !vec2<bool>(!(u_input.d <= 3103u), true), 6274u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    var var_0 = countOneBits(u_input.c);
    var var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(-arg_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1356f, arg_3.x) + _wgslsmith_f_op_f32(-arg_1.a.c.x)), -244f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x + -1608f)))))).b;
    var var_2 = reverseBits(_wgslsmith_dot_vec4_i32(~select(-vec4<i32>(u_input.b.x, var_0.x, 9776i, -26028i), _wgslsmith_clamp_vec4_i32(vec4<i32>(20337i, 33328i, u_input.c.x, -1i), vec4<i32>(var_0.x, u_input.b.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 36979i, var_0.x, u_input.b.x)), !vec4<bool>(false, true, arg_1.b.x, true)), reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(-2109i, var_0.x, -2147483647i, var_0.x), vec4<i32>(-2147483647i, u_input.c.x, u_input.b.x, u_input.b.x)))));
    global1 = array<vec3<bool>, 17>();
    var var_3 = arg_1.a.a.x;
    return ~1084i >> (arg_0.x % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> bool {
    global0 = array<vec3<bool>, 8>();
    global1 = array<vec3<bool>, 17>();
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1837f), -360f, -1409f, -711f) - vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = vec4<bool>(var_0.c.x, any(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(abs(4294967295u), countOneBits(10161u), false), u_input.a), 17u)]), countOneBits(_wgslsmith_sub_i32(u_input.b.x, 0i)) < ~select(func_3(vec3<u32>(u_input.a, var_0.d, 20249u), Struct_3(Struct_2(vec3<bool>(true, arg_0.x, arg_1), vec3<u32>(var_0.d, u_input.a, 38082u), vec3<f32>(var_0.a.x, -1117f, var_0.a.x), vec3<u32>(16789u, u_input.a, 12742u)), global1[_wgslsmith_index_u32(87977u, 17u)]), var_0.c.x, vec2<f32>(var_0.a.x, var_0.a.x)), u_input.b.x, true), true);
    var_1 = !vec4<bool>(!arg_0.x, all(!arg_0), !(!(var_1.x && var_0.c.x)), var_0.a.x <= _wgslsmith_f_op_f32(-1261f - _wgslsmith_div_f32(-765f, var_0.a.x)));
    return arg_0.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    var var_0 = ~_wgslsmith_sub_vec4_i32(select(vec4<i32>(firstLeadingBit(u_input.c.x), u_input.c.x, countOneBits(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 0i, u_input.c.x), vec4<i32>(u_input.b.x, u_input.c.x, 2147483647i, -2147483647i))), vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), reverseBits(u_input.b.x), -2147483647i), !(!arg_1.c.x)), max(select(vec4<i32>(-11716i, u_input.c.x, -53805i, u_input.c.x), select(vec4<i32>(13815i, u_input.c.x, 50520i, 1i), vec4<i32>(-12187i, -22990i, u_input.b.x, 0i), false), all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), vec4<i32>(1i, i32(-1i) * -26195i, u_input.b.x, 49776i)));
    global1 = array<vec3<bool>, 17>();
    global0 = array<vec3<bool>, 8>();
    let var_1 = Struct_3(Struct_2(vec3<bool>(true, true, !(!arg_1.b)), vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(0u, 1u)), u_input.d, _wgslsmith_div_u32(func_2(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)).d, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(arg_1.a.x, arg_1.a.x, 130f)))), ~vec3<u32>(0u, 4294967295u, 1u) ^ (vec3<u32>(arg_1.d, arg_1.d, 64891u) & vec3<u32>(49109u, 4662u, u_input.a))), select(!select(select(vec3<bool>(arg_1.c.x, arg_1.b, arg_1.c.x), global0[_wgslsmith_index_u32(0u, 8u)], arg_0), vec3<bool>(false, false, false), true), !(!global0[_wgslsmith_index_u32(u_input.a, 8u)]), select(vec3<bool>(arg_1.c.x, true, func_2(vec4<f32>(arg_1.a.x, arg_1.a.x, -291f, arg_1.a.x)).c.x), !(!vec3<bool>(true, arg_0, arg_0)), !(!global1[_wgslsmith_index_u32(u_input.d, 17u)]))));
    var var_2 = var_1.b.yx;
    return Struct_3(Struct_2(vec3<bool>(any(select(vec3<bool>(var_1.b.x, arg_1.c.x, var_1.b.x), vec3<bool>(false, var_1.a.a.x, true), false)), var_1.a.a.x | false, var_1.b.x | !arg_0), ~var_1.a.b << (vec3<u32>(var_1.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(68847u, arg_1.d, 4294967295u, u_input.d), vec4<u32>(var_1.a.d.x, var_1.a.b.x, 4294967295u, 1u)), abs(arg_1.d)) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(min(1880f, arg_1.a.x))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1083f, var_1.a.c.x, -1000f, arg_1.a.x))).a.x, func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, -2127f)))).a.x), var_1.a.b), global0[_wgslsmith_index_u32(~arg_1.d, 8u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    global1 = array<vec3<bool>, 17>();
    global1 = array<vec3<bool>, 17>();
    global0 = array<vec3<bool>, 8>();
    let var_0 = func_4(select(!any(vec4<bool>(false, true, false, false)), true & (func_1(vec4<bool>(false, true, false, true), false) | true), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1392f, 1000f, -1076f, -294f))).b), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1214f, -202f, 2530f, 407f))) - vec4<f32>(773f, 1264f, -881f, 922f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1037f, 438f, 316f, 209f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1143f, -285f, -811f, 1199f)))))));
    var var_1 = !(!any(select(!vec2<bool>(true, var_0.a.a.x), !vec2<bool>(var_0.a.a.x, var_0.b.x), func_2(vec4<f32>(586f, var_0.a.c.x, -303f, 842f)).c)));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.c.x, 2250f, 432f, -1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, -953f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f + var_2.a.x) - _wgslsmith_f_op_f32(floor(657f))), _wgslsmith_f_op_f32(min(var_0.a.c.x, _wgslsmith_f_op_f32(var_2.a.x * -183f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_2.c.x, Struct_1(var_2.a, true, vec2<bool>(true, var_2.c.x), 0u)).a.c.x * _wgslsmith_f_op_f32(select(var_3.x, -320f, var_2.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(var_0.a.c.x, var_0.a.c.x))), 700f));
}

