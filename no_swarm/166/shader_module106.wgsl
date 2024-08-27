struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> u32 {
    global1 = Struct_1(vec2<i32>(-(~1i), ~((-77523i >> (arg_1.c.b.x % 32u)) << (~0u % 32u))), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.b.x, arg_1.b.x, 44095u, arg_1.b.x), global1.b), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(global1.b, vec4<u32>(global1.b.x, arg_1.b.x, global1.b.x, global1.b.x)), vec4<u32>(firstTrailingBit(global1.b.x), arg_1.b.x, ~global1.b.x, ~global1.b.x), _wgslsmith_sub_vec4_u32(arg_1.c.b, arg_1.c.b))));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-341f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 26u)] + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstLeadingBit(arg_1.b.x), 26u)], _wgslsmith_f_op_f32(ceil(-1021f)))), -1166f)));
    var var_1 = 79153u;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1403f, global0[_wgslsmith_index_u32(15641u, 26u)])))))), global0[_wgslsmith_index_u32(arg_1.b.x, 26u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1000f, arg_1.d, arg_1.d))))));
    let var_2 = _wgslsmith_f_op_f32(-2043f + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d))))));
    return 30770u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: bool) -> vec2<i32> {
    global0 = array<f32, 26>();
    let var_0 = abs(abs(vec4<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, 11027u, 1u), vec3<u32>(arg_2.x, 4294967295u, 76567u)), ~vec3<u32>(58070u, global1.b.x, arg_2.x)), ~_wgslsmith_div_u32(17049u, 34590u), max(18045u, func_3(2147483647i, Struct_3(u_input.a, arg_2, Struct_1(vec2<i32>(u_input.a, 1i), vec4<u32>(75417u, global1.b.x, 9369u, global1.b.x)), arg_0.x))))));
    var var_1 = Struct_3(countOneBits(~(~global1.a.x ^ global1.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(max(arg_2.ywz, arg_2.zxx), _wgslsmith_div_vec3_u32(global1.b.ywx, global1.b.wyw)) ^ ~17937u, global1.b.x, _wgslsmith_add_u32(~(~arg_2.x), _wgslsmith_div_u32(arg_2.x, 7686u) >> (123189u % 32u)), select(var_0.x, arg_2.x, true)), Struct_1(-countOneBits(global1.a), vec4<u32>(~(global1.b.x | 1u), 135440u, 49711u, 24255u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))));
    global2 = array<vec3<u32>, 2>();
    return select(firstLeadingBit(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, global1.a.x), global1.a))), _wgslsmith_div_vec2_i32(global1.a, ~(~global1.a)), true);
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = ~1i;
    var var_1 = Struct_3(arg_1.x << (func_3(2147483647i, Struct_3(-36770i, vec4<u32>(4294967295u, global1.b.x, global1.b.x, 66130u), Struct_1(global1.a, vec4<u32>(global1.b.x, global1.b.x, 38761u, 45264u)), _wgslsmith_f_op_f32(trunc(arg_0)))) % 32u), _wgslsmith_div_vec4_u32(vec4<u32>(abs(3879u), _wgslsmith_sub_u32(0u, global1.b.x), 1u, global1.b.x) ^ firstTrailingBit(~global1.b), ~(abs(vec4<u32>(4294967295u, 0u, 1u, 1u)) & (global1.b & global1.b))), Struct_1(vec2<i32>(~16498i, arg_1.x), select(firstTrailingBit(vec4<u32>(global1.b.x, 3511u, global1.b.x, global1.b.x)), reverseBits(vec4<u32>(1u, global1.b.x, 7274u, 24472u)), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, true))), -401f);
    var var_2 = var_1.c;
    var var_3 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, reverseBits(u_input.a)), _wgslsmith_clamp_i32(20187i, func_2(vec2<f32>(-1000f, arg_0), vec3<bool>(true, false, true), vec4<u32>(1u, var_2.b.x, 0u, var_1.c.b.x), true).x ^ global1.a.x, var_1.c.a.x)), ~vec4<u32>(4617u, _wgslsmith_div_u32(0u, reverseBits(var_1.c.b.x)), ~9678u, _wgslsmith_dot_vec3_u32(var_1.b.zww, var_2.b.wxy)), var_1.c, var_1.d);
    let var_4 = Struct_3(-42797i, vec4<u32>(~(~_wgslsmith_clamp_u32(var_2.b.x, global1.b.x, global1.b.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.c.b.x, 44615u, 1352u), 51894u), countOneBits(~global1.b.x)), 0u, 1u), Struct_1(vec2<i32>(1i, u_input.a), vec4<u32>(countOneBits(~var_2.b.x), var_2.b.x, countOneBits(77149u), var_2.b.x)), var_1.d);
    return Struct_2(countOneBits(vec4<u32>(_wgslsmith_mult_u32(52497u, ~var_2.b.x), _wgslsmith_sub_u32(~var_3.b.x, var_1.c.b.x), 86641u, ~(~var_1.c.b.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-219f, _wgslsmith_f_op_f32(915f + 1246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d) - var_4.d)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(var_1.c.b.x, 26u)], var_3.d, var_4.d))), vec3<f32>(arg_0, var_1.d, 1676f), vec3<bool>(true, true, true))))))), select(28258u, ~var_1.c.b.x, true), var_4.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(vec2<i32>(global1.a.x, ~arg_0.d.a.x), ~select(arg_0.d.b, _wgslsmith_sub_vec4_u32(~vec4<u32>(62882u, arg_3.d.b.x, arg_0.c, global1.b.x), global1.b), true));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~(~67011u), 26u)])) + -1478f)));
    let var_1 = ~(global1.b.ww << (global1.b.zz % vec2<u32>(32u)));
    global1 = func_5(func_4(647f, func_2(vec2<f32>(1126f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(false, false, true), global1.b, true) & _wgslsmith_clamp_vec2_i32(reverseBits(global1.a), ~global1.a, global1.a | global1.a)), vec2<i32>(~arg_0, func_4(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.b.x, 26u)]))), ~global1.a).d.a.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 26u)] * global0[_wgslsmith_index_u32(global1.b.x, 26u)]))), reverseBits(select(vec2<i32>(global1.a.x, global1.a.x), vec2<i32>(u_input.a, 39395i), true))).b.xy, func_4(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global1.b.xz, var_1), 26u)])), vec2<i32>(u_input.a, 2147483647i)));
    let var_2 = select(false, false, any(select(vec2<bool>(true, all(vec2<bool>(true, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    let var_3 = vec4<i32>(37352i, 61094i, 0i, _wgslsmith_div_i32(24218i, _wgslsmith_add_i32(func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-512f, 787f))), vec3<bool>(var_2, false, var_2), ~vec4<u32>(52908u, 0u, global1.b.x, 11563u), global1.a.x < global1.a.x).x, _wgslsmith_div_i32(arg_0, global1.a.x & -18391i))));
    return Struct_3(-1i, ~(_wgslsmith_mult_vec4_u32(global1.b | global1.b, max(vec4<u32>(13113u, 1u, var_1.x, 48519u), vec4<u32>(0u, 30063u, var_1.x, global1.b.x))) | vec4<u32>(abs(global1.b.x), ~global1.b.x, max(global1.b.x, 35815u), 47379u << (0u % 32u))), Struct_1(~var_3.zx, vec4<u32>(var_1.x, _wgslsmith_add_u32(global1.b.x, ~var_1.x), ~(~12270u), ~36545u >> (global1.b.x % 32u))), -286f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = array<f32, 26>();
    let var_1 = global1.b.x;
    var var_2 = func_1(25881i);
    global0 = array<f32, 26>();
    global1 = var_2.c;
    let var_3 = Struct_2(var_2.c.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1673f, -196f, var_2.d))), vec3<f32>(var_2.d, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(3417u, 26u)] - _wgslsmith_f_op_f32(f32(-1f) * -896f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * -760f)))), _wgslsmith_add_u32(~var_2.b.x, global1.b.x), var_2.c);
    let var_4 = (1097f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + var_3.b.x) * _wgslsmith_f_op_f32(-864f * var_3.b.x)))) & true;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_i32(u_input.a, 1i));
}

