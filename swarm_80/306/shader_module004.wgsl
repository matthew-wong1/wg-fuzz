struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_4(Struct_1(min(min(vec4<i32>(u_input.c, u_input.b, -29548i, -2147483647i), arg_0.a), _wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(11875i, u_input.c, -39108i, 1i))) & _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, arg_0.d, 1i), vec4<i32>(arg_0.d, -1i, -1i, 2147483647i)), vec4<i32>(-16057i, arg_0.c, u_input.a.x, arg_0.a.x)), ~(~(arg_0.b << (4294967295u % 32u))), countOneBits(1i) & (0i << ((41698u << (u_input.d.x % 32u)) % 32u)), -44660i, arg_0.e), vec3<f32>(733f, _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(trunc(-115f))), !vec3<bool>(true, select(true, false, true) | true, any(vec4<bool>(true, true, true, true))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), false)), firstLeadingBit(~(~vec3<u32>(0u, arg_0.b, 28914u) ^ abs(vec3<u32>(42821u, 941u, arg_0.b)))));
    var var_1 = vec4<i32>(var_0.a.c, firstLeadingBit(-22834i), _wgslsmith_dot_vec4_i32(~max(abs(vec4<i32>(2147483647i, 1i, 0i, arg_0.d)), countOneBits(arg_0.a)), vec4<i32>(-firstLeadingBit(0i), var_0.a.a.x, -11267i, u_input.a.x)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a.x, u_input.c), -u_input.a.yy) << (_wgslsmith_div_u32(var_0.e.x, _wgslsmith_add_u32(var_0.a.b, 0u)) % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_0.b.yz * var_0.b.xy);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -125f);
    var var_4 = _wgslsmith_f_op_f32(-1f);
    return select(select(vec2<bool>(true, true && !var_0.d.x), var_0.c.zy, vec2<bool>(true, (true & var_0.c.x) | false)), select(vec2<bool>(true & any(vec4<bool>(true, false, false, true)), !all(var_0.c.zy)), !vec2<bool>(all(vec4<bool>(var_0.d.x, var_0.c.x, var_0.d.x, false)), var_0.c.x), false), 14326i < (_wgslsmith_clamp_i32(arg_0.d, -var_0.a.d, -1i) ^ u_input.b));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(1822f - -2271f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -982f), -665f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f - 844f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-545f, 526f)), _wgslsmith_f_op_f32(-579f - 1617f), all(vec2<bool>(false, false)))) + -635f)) + 1619f);
    var_0 = _wgslsmith_f_op_f32(sign(-689f));
    var var_1 = ~u_input.d.x;
    let var_2 = 754f;
    return Struct_5(select(func_3(Struct_1(vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.c), ~15014u, ~(-40786i), 1i, -727f)), !func_3(Struct_1(vec4<i32>(1i, u_input.b, u_input.a.x, u_input.a.x), u_input.d.x, -34634i, u_input.c, 551f)), !any(vec4<bool>(true, true, true, true))), countOneBits(~((vec4<i32>(u_input.a.x, u_input.c, 0i, 630i) >> (vec4<u32>(u_input.d.x, u_input.d.x, 55342u, u_input.d.x) % vec4<u32>(32u))) | abs(vec4<i32>(u_input.a.x, u_input.c, 2147483647i, -2147483647i)))), vec4<bool>(false, true, true, true), abs(max(-select(vec4<i32>(u_input.a.x, u_input.c, -1i, u_input.c), vec4<i32>(42260i, u_input.a.x, u_input.b, -1i), vec4<bool>(false, false, true, false)), firstLeadingBit(vec4<i32>(10107i, 18897i, u_input.a.x, 2147483647i)))), _wgslsmith_f_op_f32(f32(-1f) * -787f));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = array<Struct_2, 3>();
    let var_0 = func_2();
    global0 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~select(~vec4<u32>(arg_0, 16228u, 0u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 1u, arg_0, 20882u), vec4<u32>(4294967295u, arg_0, u_input.d.x, arg_0)), var_0.c), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d.x, 3168u, arg_0, 49692u), vec4<u32>(40521u, arg_0, u_input.d.x, 4294967295u), vec4<u32>(1u, arg_0, u_input.d.x, u_input.d.x) >> (vec4<u32>(4294967295u, arg_0, 0u, 23544u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0, arg_0, 107563u), ~vec4<u32>(arg_0, 1u, 14719u, arg_0)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d.x, 0u, 14356u, u_input.d.x)) & (~vec4<u32>(1u, 58624u, 4294967295u, arg_0) ^ ~vec4<u32>(arg_0, u_input.d.x, arg_0, u_input.d.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(28327u, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(arg_0, 1u, 21337u, 0u) << (vec4<u32>(9983u, 4292u, 7230u, u_input.d.x) % vec4<u32>(32u))), vec4<u32>(39332u, ~arg_0, _wgslsmith_clamp_u32(1u, 19288u, 1u), u_input.d.x), ~vec4<u32>(arg_0, arg_0, 56355u, arg_0))), 1u);
    var_1 = max(min(_wgslsmith_add_u32(arg_0, u_input.d.x), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(17652u, arg_0, u_input.d.x), vec3<u32>(u_input.d.x, 4294967295u, arg_0)), firstLeadingBit(~vec3<u32>(arg_0, 1u, 0u)))), ~firstLeadingBit(min(~arg_0, ~55361u)));
    return Struct_3((1240f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e))) || true, -790f, var_0.b.x);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_4 {
    return Struct_4(Struct_1(vec4<i32>(arg_2.c, func_2().d.x, arg_3.b.x, -2147483647i), arg_0 | _wgslsmith_mod_u32(29754u, arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-1i), 0i), vec2<i32>(-1i) * -vec2<i32>(2147483647i, -34984i)), -arg_3.b.x, -1504f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.e, 1000f, -1536f), vec3<f32>(-418f, -1994f, 193f), arg_3.c.wxw)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1446f, 1016f, 831f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, arg_3.e, arg_2.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.e, 1441f, 170f)))))))), arg_3.c.wxw, arg_3.c.xww, abs(~(~vec3<u32>(0u, 66218u, 27837u))) << (~(vec3<u32>(u_input.d.x, arg_0, u_input.d.x) ^ ~vec3<u32>(arg_0, u_input.d.x, arg_0)) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_sub_u32(1u, firstTrailingBit(~5570u)));
    var_0 = func_1(u_input.d.x);
    var var_1 = arg_0.c.x;
    var var_2 = func_2().e;
    var var_3 = global0[_wgslsmith_index_u32(min(~_wgslsmith_mult_u32(u_input.d.x, arg_1.x), arg_0.a.b >> (arg_1.x % 32u)), 3u)];
    return Struct_1(-(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5325i, var_0.c, -2147483647i), vec3<i32>(var_0.c, 0i, 0i)), ~(-66201i), ~arg_0.a.c, -u_input.b)), ~u_input.d.x, 51495i, arg_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_0 = func_5(func_4(_wgslsmith_sub_u32(62747u, ~u_input.d.x), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_1(4294967295u), Struct_5(func_3(Struct_1(vec4<i32>(u_input.c, u_input.b, -9297i, u_input.c), u_input.d.x, 0i, 67540i, -299f)), vec4<i32>(u_input.c & -37587i, 1i, 32679i, -1i), vec4<bool>(true, true, true, true), ~vec4<i32>(u_input.c, 1i, -2147483647i, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1045f))))), vec2<u32>(u_input.d.x, min(0u, ~(8945u & u_input.d.x))), vec4<bool>(false, true, true, !(true && all(vec4<bool>(true, false, false, false)))));
    let var_1 = func_2().a.x;
    global0 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(949f, var_0.e))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-116f, 633f), vec2<f32>(402f, -940f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(540f, var_0.e), vec2<f32>(200f, var_0.e))) + vec2<f32>(var_0.e, _wgslsmith_f_op_f32(-var_0.e))))));
    global0 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<i32>(var_0.a.x & 2147483647i, -2147483647i, ~u_input.c), u_input.a, true), ~u_input.a.yx);
}

