struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(1822f, 239f, -614f), vec3<f32>(496f, 130f, 540f), vec3<f32>(-482f, -723f, -1401f), vec3<f32>(-1619f, -1145f, 632f), vec3<f32>(871f, 183f, 652f), vec3<f32>(271f, 1069f, -249f));

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-27412i, 3107i), vec2<i32>(-47167i, -59826i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-10961i, 2147483647i), vec2<i32>(80826i, -1i), vec2<i32>(15460i, -8599i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 24533i), vec2<i32>(i32(-2147483648), 30184i), vec2<i32>(-13136i, -11599i), vec2<i32>(638i, -25308i), vec2<i32>(-2196i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-44335i, 1516i), vec2<i32>(26527i, -12801i));

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(0u, 14015u, 4294967295u), vec3<u32>(503u, 3559u, 44885u), vec3<u32>(50575u, 4294967295u, 1u));

var<private> global3: i32 = 0i;

var<private> global4: Struct_4 = Struct_4(vec4<f32>(1000f, -1000f, -1000f, -156f), -910f, vec2<u32>(0u, 50473u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    let var_0 = select(!vec4<bool>(select(true, true, true), any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, false, true)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), all(vec3<bool>(false, true, true))), global4.b < _wgslsmith_div_f32(_wgslsmith_div_f32(global4.a.x, -723f), _wgslsmith_f_op_f32(select(global4.a.x, 311f, true)))), select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true));
    var var_1 = select(var_0.xx, var_0.yx, !var_0.x);
    global4 = Struct_4(global4.a, -808f, _wgslsmith_mod_vec2_u32(~global4.c, vec2<u32>(10088u, 0u)) << (vec2<u32>(global4.c.x, ~countOneBits(global4.c.x)) % vec2<u32>(32u)));
    let var_2 = global4.a.wyx;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a + global4.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, var_2.x, var_2.x, 1928f) - vec4<f32>(-382f, global4.a.x, global4.a.x, var_2.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, global4.b, global4.a.x, var_2.x)))), _wgslsmith_f_op_f32(max(global4.a.x, _wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(step(912f, -898f))))), ~_wgslsmith_add_vec2_u32(~abs(vec2<u32>(global4.c.x, 4294967295u)), ~global4.c));
    return ~vec3<i32>(u_input.a, ~(~(-7612i)), 1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    global3 = -firstTrailingBit(max(~arg_0.c.x, u_input.a));
    var var_0 = Struct_4(vec4<f32>(arg_0.a, global4.b, -209f, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.a.x))))), _wgslsmith_f_op_f32(arg_2.a + -374f), vec2<u32>(countOneBits(~(~16830u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.c.x, 1u, 1u), vec3<u32>(global4.c.x, global4.c.x, global4.c.x)), _wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(global4.c.x, 3u)], vec3<u32>(global4.c.x, 10454u, 35763u)))));
    global0 = array<vec3<f32>, 6>();
    var var_1 = _wgslsmith_add_i32(-(_wgslsmith_div_i32(-9015i, arg_0.c.x) << (var_0.c.x % 32u)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(28829i, arg_2.c.x), _wgslsmith_mult_i32(-5475i, ~(-37988i))));
    let var_2 = arg_2.d.x;
    return countOneBits(1366i);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = vec2<bool>((u_input.a ^ u_input.a) <= func_4(Struct_1(_wgslsmith_f_op_f32(-global4.a.x), true, -vec3<i32>(u_input.a, -2147483647i, u_input.a), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), func_3(), Struct_1(_wgslsmith_f_op_f32(floor(829f)), true, min(vec3<i32>(u_input.a, u_input.a, -78366i), vec3<i32>(-8090i, 71108i, 69294i)), vec2<bool>(false, true)), 0i), true);
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(abs(-89631i), -2147483647i, u_input.a)) | ~(~(~12720i)), firstTrailingBit(min(~u_input.a ^ -2147483647i, _wgslsmith_mod_i32(1i, u_input.a))));
    let var_2 = any(!select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, true, false)), !vec4<bool>(false, true, var_0.x, false), var_0.x), select(!vec4<bool>(false, var_0.x, false, true), !vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, false, false), var_0.x)), false || !var_0.x));
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1668f * -1000f) + -304f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x + global4.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2025f * 651f), _wgslsmith_f_op_f32(global4.a.x - -494f))))), _wgslsmith_div_f32(-277f, 1534f)), 2753f, _wgslsmith_clamp_vec2_u32(~reverseBits(global4.c), ~(~arg_0.yx), global4.c));
    global0 = array<vec3<f32>, 6>();
    return Struct_2(1f);
}

fn func_1() -> Struct_4 {
    var var_0 = !vec3<bool>(!(global4.a.x >= global4.a.x), 46087u <= global4.c.x, all(vec4<bool>(false, global4.c.x == global4.c.x, false, global4.b != global4.b)));
    global0 = array<vec3<f32>, 6>();
    var var_1 = func_2(vec3<u32>(22422u, global4.c.x, ~(~global4.c.x)), ~1u);
    global1 = array<vec2<i32>, 16>();
    var var_2 = vec3<bool>(true, true, any(var_0.yx));
    return Struct_4(global4.a, 102f, ~countOneBits(~firstLeadingBit(vec2<u32>(95103u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a.x;
    var var_1 = !(!(all(vec4<bool>(true, true, true, true)) & true));
    global4 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global4.a), vec4<f32>(_wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b))), -2148f), true));
    let var_3 = abs(firstTrailingBit(_wgslsmith_add_vec2_i32(-(global1[_wgslsmith_index_u32(global4.c.x, 16u)] >> (vec2<u32>(3990u, global4.c.x) % vec2<u32>(32u))), vec2<i32>(u_input.a, ~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-2147483647i, max(abs(var_3.x), ~u_input.a) | select(var_3.x, 19547i, true)), ~56025u);
}

