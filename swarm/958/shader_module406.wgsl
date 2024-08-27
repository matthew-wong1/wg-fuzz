struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(72320u, 28895u, 4294967295u, 11391u), vec4<u32>(14712u, 4294967295u, 4294967295u, 1u), vec4<u32>(154487u, 0u, 1u, 4294967295u), vec4<u32>(97278u, 50198u, 26365u, 4294967295u), vec4<u32>(46076u, 32152u, 47186u, 185u), vec4<u32>(67186u, 8705u, 114469u, 1u), vec4<u32>(0u, 95403u, 5865u, 4294967295u), vec4<u32>(15407u, 22656u, 30892u, 4294967295u), vec4<u32>(59092u, 3825u, 34614u, 54910u), vec4<u32>(0u, 32969u, 1u, 1u), vec4<u32>(0u, 4294967295u, 82219u, 1u), vec4<u32>(1u, 4294967295u, 71005u, 45233u), vec4<u32>(0u, 0u, 15853u, 14921u), vec4<u32>(72055u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 11382u, 52917u), vec4<u32>(0u, 41251u, 1u, 0u), vec4<u32>(97648u, 50764u, 4294967295u, 4294967295u), vec4<u32>(24309u, 1u, 0u, 57451u), vec4<u32>(17824u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 27154u, 59602u), vec4<u32>(1u, 4294967295u, 0u, 1u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<f32> {
    var var_0 = Struct_2(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + -1000f), _wgslsmith_f_op_f32(step(108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(562f, -818f)) * _wgslsmith_f_op_f32(max(-310f, 885f))))), _wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(f32(-1f) * -383f)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(926f, -2276f, arg_0)), -1514f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(593f, 1240f), vec2<f32>(249f, -460f)) * vec2<f32>(439f, -530f)), true)), !arg_0, all(!select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0))), -u_input.b), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f) * 1417f), -1000f), true, arg_0, ~reverseBits(u_input.b << (arg_1 % 32u))));
    let var_1 = _wgslsmith_f_op_f32(min(var_0.b.x, 1666f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-634f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(floor(var_0.d.a.x)))) * -1295f));
    var_0 = Struct_2(true, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(var_0.c.a)))))), var_0.c.b, arg_0, var_0.d.d), Struct_1(vec2<f32>(659f, _wgslsmith_f_op_f32(round(-411f))), !any(!vec2<bool>(true, arg_0)), arg_0, -31119i));
    var_0 = Struct_2((var_0.c.d <= _wgslsmith_div_i32(1i, u_input.b)) && (arg_1 >= ~reverseBits(u_input.d.x)), var_0.b, var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.d.a))), 584f <= var_0.b.x, select(true, all(vec4<bool>(var_0.d.b, var_0.a, false, true)), any(!vec3<bool>(true, var_0.a, var_0.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, 0i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.d, var_0.c.d, var_0.c.d), vec3<i32>(var_0.d.d, var_0.c.d, u_input.a.x))), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_0.d.d, u_input.b, 8296i)), min(vec3<i32>(-17184i, -15607i, var_0.c.d), vec3<i32>(var_0.c.d, var_0.d.d, var_0.d.d))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.b)));
}

fn func_2() -> vec4<f32> {
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    var var_0 = Struct_3(vec2<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), true), vec2<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(258f, 1657f, 439f, 122f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2296f, 1000f, 713f, -275f) - vec4<f32>(1000f, 1359f, 579f, -649f))) * _wgslsmith_f_op_vec4_f32(func_3(true, 9805u))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-634f, -338f), vec2<f32>(-143f, -587f))), vec2<f32>(-401f, 1695f)), true, true, _wgslsmith_mult_i32(u_input.b, u_input.b)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1773f, 870f), vec2<f32>(1000f, 1002f), vec2<bool>(true, true))), true, (u_input.a.x == 55978i) & true, reverseBits(u_input.b | u_input.b))));
    var var_1 = -min(reverseBits(u_input.a), abs(u_input.a));
    let var_2 = 1i;
    return vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f - -1577f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.e.x != u_input.c, abs(0u))).x * -449f)), var_0.c.d.a.x, _wgslsmith_f_op_f32(-var_0.c.b.x));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> bool {
    global0 = array<vec4<bool>, 27>();
    global1 = array<vec4<u32>, 22>();
    let var_0 = -u_input.b;
    let var_1 = -1298f;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, 2293f, 1000f, var_1))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1445f, var_1, 496f, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1231f, var_1, -130f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 709f, var_1, var_1) - vec4<f32>(1146f, -1000f, var_1, var_1)), vec4<f32>(_wgslsmith_f_op_f32(-var_1), -471f, _wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(var_1 + var_1)))), _wgslsmith_f_op_vec4_f32(func_2()), false));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-449f, _wgslsmith_f_op_f32(f32(-1f) * -1848f));
    global0 = array<vec4<bool>, 27>();
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_sub_i32(0i, u_input.a.x), -u_input.a.x << (_wgslsmith_sub_u32(124491u, max(72056u, 98895u)) % 32u)), 1i, firstLeadingBit(countOneBits(17227i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(421f, 371f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1183f * 240f)), -381f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1349f * -256f), var_0.x, _wgslsmith_f_op_f32(var_0.x + -381f), var_0.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(175f, var_0.x), _wgslsmith_f_op_f32(var_0.x - 2008f), -632f, _wgslsmith_div_f32(-166f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1963f, -170f, var_0.x, var_0.x) * vec4<f32>(1560f, var_0.x, 1149f, var_0.x))), vec4<bool>(true, true, true, true)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.x, var_0.x)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 634f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(659f, -279f) + vec2<f32>(-708f, var_0.x)), vec2<f32>(1000f, var_2.x), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(var_2.zx, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-804f, 929f), var_0))), func_1(true, abs(vec4<i32>(28172i, u_input.b, u_input.b, -16795i)), u_input.c))), vec2<bool>(true, true))), !(!all(vec4<bool>(false, true, true, false))), true, i32(-1i) * -2147483647i);
    let var_4 = ~(firstLeadingBit(~global1[_wgslsmith_index_u32(14216u, 22u)]) ^ _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~u_input.c), 22u)], vec4<u32>(countOneBits(u_input.d.x), u_input.d.x, u_input.d.x, u_input.c >> (0u % 32u))));
    let var_5 = _wgslsmith_div_vec2_u32(var_4.ww, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(u_input.a.x & u_input.b, select(u_input.a.x, 2147483647i, var_3.b), 1i, ~var_3.d), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-30968i, -2147483647i, -30863i, var_3.d), vec4<i32>(u_input.a.x, 2732i, var_1.x, 24359i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.d, u_input.b, var_3.d, u_input.b), vec4<i32>(var_1.x, var_3.d, -38868i, 1i))), vec4<bool>(true, u_input.d.x >= var_5.x, var_3.b, false)) >> (global1[_wgslsmith_index_u32(var_4.x, 22u)] % vec4<u32>(32u)));
}

