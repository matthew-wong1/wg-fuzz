struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1000f, -1000f), vec2<f32>(-409f, -1596f), vec2<f32>(440f, 1000f), vec2<f32>(-454f, -1614f), vec2<f32>(-199f, -1000f), vec2<f32>(1303f, 570f), vec2<f32>(-508f, 321f), vec2<f32>(492f, 500f), vec2<f32>(641f, 1001f), vec2<f32>(581f, -174f), vec2<f32>(1727f, 230f), vec2<f32>(981f, -617f), vec2<f32>(-646f, -306f), vec2<f32>(-543f, -403f), vec2<f32>(1102f, -192f), vec2<f32>(547f, -1210f), vec2<f32>(944f, 692f), vec2<f32>(-531f, 701f), vec2<f32>(589f, -418f), vec2<f32>(229f, 584f), vec2<f32>(1000f, 1454f), vec2<f32>(2381f, 1060f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    global1 = array<vec2<f32>, 22>();
    var var_0 = Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), ~countOneBits(global0.x) >= _wgslsmith_sub_u32(min(21109u, u_input.a), u_input.a)), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_div_i32(reverseBits(firstTrailingBit(u_input.c.x)), firstLeadingBit(46566i))), 0u, -295f, 13542u);
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, !var_0.a.x), vec2<bool>(true, true), select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), true)), 1i, ~countOneBits(global0.x | global0.x), 118f, 22904u), ~(-(select(vec2<i32>(u_input.c.x, var_0.b), vec2<i32>(u_input.c.x, -1i), true) | max(u_input.c.xy, u_input.c.xz))), var_0.a.x, 1u, _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, var_0.b, -2147483647i), select(u_input.c.x, var_0.b, var_0.a.x)), u_input.c.x & reverseBits(var_0.b), var_0.b < u_input.c.x), u_input.c.x));
    global0 = ~vec2<u32>(u_input.a, ~reverseBits(var_0.e)) >> (vec2<u32>(~_wgslsmith_mult_u32(global0.x, 16585u), min(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, var_0.c, 29742u), vec3<u32>(95173u, 4294967295u, 36645u)), ~25372u, all(vec2<bool>(var_1.c, var_1.a.a.x))), 19431u)) % vec2<u32>(32u));
    let var_2 = !select(!(!vec3<bool>(var_1.a.a.x, true, var_1.c)), !select(vec3<bool>(false, false, var_0.a.x), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, var_1.c, true)), select(vec3<bool>(var_1.a.a.x, false, var_1.a.a.x), vec3<bool>(var_1.c, var_0.a.x, false), vec3<bool>(false, true, false))), !all(!vec3<bool>(var_1.a.a.x, var_0.a.x, var_0.a.x)));
    return max(~vec2<u32>(4294967295u, var_0.c), u_input.b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> u32 {
    global0 = ~(func_3() << (u_input.b % vec2<u32>(32u)));
    global0 = abs(abs(u_input.b));
    let var_0 = Struct_2(arg_2.a, max(_wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(arg_2.b, vec2<i32>(1i, arg_2.a.b), vec2<i32>(0i, u_input.c.x)), vec2<i32>(u_input.c.x, -u_input.c.x)), arg_2.b), true, 52426u, -arg_2.e);
    global0 = vec2<u32>(~(~(~_wgslsmith_add_u32(0u, 4294967295u))), 1u);
    let var_1 = Struct_2(arg_2.a, vec2<i32>(~(-22343i), _wgslsmith_add_i32(-(~u_input.c.x), select(~0i, var_0.b.x, any(vec2<bool>(arg_2.c, false))))), _wgslsmith_f_op_f32(sign(2243f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(1238f))) * 1095f), reverseBits(1u), _wgslsmith_sub_i32(~abs(arg_2.b.x), -22047i));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))) * vec2<f32>(arg_1.d, arg_0.d))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), -884f, false)), arg_0.d)));
    let var_1 = arg_0.b;
    let var_2 = Struct_2(arg_0, ~(-vec2<i32>(abs(arg_0.b), -24811i ^ arg_0.b)), false, ~138381u, _wgslsmith_dot_vec2_i32(-(select(u_input.c.zx, u_input.c.xx, vec2<bool>(arg_1.a.x, true)) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), u_input.c.yy));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.d)))));
    global0 = max(vec2<u32>(0u, 11586u), ~vec2<u32>(~u_input.b.x ^ func_2(-408f, var_3, Struct_2(Struct_1(arg_1.a, 16137i, 7476u, arg_1.d, 25989u), vec2<i32>(var_2.b.x, -1i), true, 4294967295u, -35432i)), var_2.a.c));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a, ~(~u_input.b.x), 45241u);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-441f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * -259f) - 251f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, -454f, 1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1171f, -208f, 200f), vec3<f32>(-1092f, 1951f, -747f)) + vec3<f32>(1079f, -866f, -1197f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(168f, -1656f, 1085f), vec3<f32>(1318f, 472f, 2846f)) + vec3<f32>(-1550f, -199f, 825f))))));
    global1 = array<vec2<f32>, 22>();
    var var_2 = firstTrailingBit(_wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -1i)) & ((vec4<i32>(32640i, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(u_input.c.x, u_input.c.x, -28652i, u_input.c.x)) << ((vec4<u32>(10845u, global0.x, global0.x, u_input.a) & vec4<u32>(u_input.a, u_input.b.x, var_0.x, 69654u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 41921i), vec2<i32>(12279i, 2147483647i)), u_input.c.x ^ u_input.c.x), u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(17557i, 2147483647i, 0i), -vec3<i32>(u_input.c.x, u_input.c.x, -1i)), u_input.c.x << (abs(u_input.a) % 32u))));
    var_0 = vec3<u32>(firstLeadingBit(31865u), abs(_wgslsmith_div_u32(abs(var_0.x), ~func_1(Struct_1(vec2<bool>(false, true), var_2.x, global0.x, -809f, u_input.a), Struct_1(vec2<bool>(true, true), var_2.x, u_input.a, var_1.x, var_0.x)))), select(var_0.x, _wgslsmith_mod_u32(52961u, ~46914u), true) >> ((36271u << (func_2(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(942f)), Struct_2(Struct_1(vec2<bool>(true, true), -85968i, 81515u, -360f, u_input.a), vec2<i32>(0i, 35862i), true, global0.x, u_input.c.x)) % 32u)) % 32u));
    var_0 = vec3<u32>(14797u, ~(~20740u), ~abs(86812u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-2535f)), var_1.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.zz)))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + -1816f), -431f));
}

