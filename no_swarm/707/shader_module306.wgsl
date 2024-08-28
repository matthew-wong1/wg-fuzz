struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<u32, 6>();
    global1 = vec4<u32>(~arg_0.b, 21907u >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, 39235u, global1.x, global0[_wgslsmith_index_u32(81162u, 6u)])), arg_0.a) % 32u), u_input.b | 133717u, min(_wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec3_u32(arg_0.a.yyx, vec3<u32>(global1.x, 0u, u_input.b)), ~(49030u | arg_0.b)), ~(~_wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a))));
    var var_0 = Struct_4(vec4<bool>(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)) >= 2147483647i, all(vec4<bool>(arg_0.d, false, 622f < arg_0.c.b, arg_0.d)), any(vec3<bool>(true, true, true)), false), _wgslsmith_f_op_f32(f32(-1f) * -796f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1122f))), 871f), u_input.c.x);
    var var_1 = vec2<bool>(var_0.a.x, !var_0.a.x);
    let var_2 = var_0.a;
    return vec4<u32>(81718u, arg_0.a.x, select(26298u, ~countOneBits(global0[_wgslsmith_index_u32(arg_0.b, 6u)]) ^ 22572u, !select(select(arg_0.d, var_2.x, false), false, var_0.a.x)), arg_0.b);
}

fn func_2() -> Struct_4 {
    global1 = firstLeadingBit(~func_3(Struct_3(abs(vec4<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(0u, 6u)], 165595u)), ~0u, Struct_2(887f, -579f), true, Struct_2(1421f, 375f))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), 101f);
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    var var_1 = -max(-max(vec4<i32>(u_input.a.x, 33213i, u_input.a.x, 21440i), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(1i, u_input.c.x, u_input.c.x, -38837i)) | -vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 2147483647i)) ^ (reverseBits(abs(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x)) | ~vec4<i32>(u_input.a.x, 2024i, u_input.c.x, u_input.c.x)) & vec4<i32>(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.c.x), -u_input.c), ~max(u_input.c.x, u_input.c.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -42211i, u_input.c.x), vec4<i32>(2147483647i, u_input.a.x, -15653i, 66208i))));
    return Struct_4(select(vec4<bool>(true, true, true, !any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), true), 229f, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + -209f)))), 223f), ~u_input.a.x);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = !select(vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)), select(true, false, true));
    let var_1 = func_2();
    var var_2 = vec4<i32>(1i, ~1i, countOneBits(_wgslsmith_clamp_i32(18994i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -4303i, 1i, u_input.a.x), vec4<i32>(-2147483647i, 2147483647i, 15068i, -781i) << (vec4<u32>(u_input.d.x, 21040u, arg_0.x, global1.x) % vec4<u32>(32u))), var_1.d)), var_1.d);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.c.a)), -3386f));
    let var_4 = Struct_2(var_3.x, 928f);
    return Struct_1(global0[_wgslsmith_index_u32(func_3(Struct_3(func_3(Struct_3(vec4<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], 12369u), 23329u, Struct_2(var_3.x, var_4.b), var_1.a.x, var_1.c)), _wgslsmith_div_u32(arg_0.x, _wgslsmith_mod_u32(4u, 51932u)), func_2().c, !any(vec3<bool>(var_1.a.x, var_0.x, false)), var_4)).x, 6u)], any(select(vec2<bool>(!var_0.x, all(vec2<bool>(true, false))), vec2<bool>(true, var_0.x), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((0i >> (global1.x % 32u)) < u_input.a.x) != !(32740u >= _wgslsmith_clamp_u32(abs(u_input.d.x), firstLeadingBit(4294967295u), 1u << (global1.x % 32u)));
    let var_1 = func_1(select(global1.yzz, abs(_wgslsmith_div_vec3_u32(global1.zwz ^ global1.xwy, vec3<u32>(0u, global0[_wgslsmith_index_u32(global1.x, 6u)], global1.x))), !vec3<bool>(select(false, false, true), true, all(vec4<bool>(false, false, true, true)))));
    var var_2 = vec4<u32>(select(~_wgslsmith_sub_u32(var_1.a, 14687u), 4294967295u, (i32(-1i) * -2147483647i) != firstLeadingBit(u_input.c.x)) & ~(30736u >> (~var_1.a % 32u)), max(0u, func_1(global1.xxx).a), _wgslsmith_add_u32(~select(global0[_wgslsmith_index_u32(u_input.b, 6u)], 55370u, true), var_1.a), global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.d.x), 6u)] | abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.a, var_1.a, 114365u), vec4<u32>(var_1.a, 12267u, 1u, global1.x)))));
    let var_3 = ~vec4<u32>(1u, ~_wgslsmith_div_u32(78048u, 42116u), ~u_input.d.x, 4294967295u);
    let var_4 = Struct_4(func_2().a, _wgslsmith_f_op_f32(427f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-118f))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(644f * 659f) - _wgslsmith_f_op_f32(max(-486f, -717f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), u_input.c.x >= -u_input.a.x))), 51621i);
    let var_5 = reverseBits(u_input.a.x | 16293i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-767f, 1040f, -1502f), max(vec3<i32>(func_2().d, ~(-var_4.d), u_input.a.x), _wgslsmith_mult_vec3_i32(-min(vec3<i32>(var_5, 57387i, 12150i), vec3<i32>(6911i, u_input.c.x, -4245i)), vec3<i32>(var_5, 1i, var_5))), 22820u, firstLeadingBit(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(1i, -44551i, 98490i, var_5)), vec4<i32>(_wgslsmith_mult_i32(0i, 2147483647i), i32(-1i) * -1i, 44552i, ~var_4.d))), abs(firstTrailingBit(select(~var_4.d, var_4.d ^ u_input.a.x, true))));
}

