struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-466f * 783f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(378f))), _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(480f + -1035f)), _wgslsmith_f_op_f32(ceil(234f))));
    let var_1 = !(1u != _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4163u, 27263u), ~0u, 1u, 1u), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(22928u, 54268u, 11300u, 24381u), vec4<u32>(40607u, 1u, 2709u, 26626u)), abs(vec4<u32>(1u, 4294967295u, 1u, 63396u)))));
    let var_2 = vec2<bool>(any(select(select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), var_1), !vec2<bool>(var_1, var_1), all(vec4<bool>(false, var_1, true, var_1))), vec2<bool>(true, var_0.a.x <= var_0.a.x), true)), all(vec2<bool>(true, true)));
    let var_3 = any(select(select(vec4<bool>(all(vec4<bool>(var_1, var_1, var_1, true)), true, true, var_1), select(vec4<bool>(var_1, var_2.x, var_2.x, false), select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_1, var_1, var_1, var_1), var_2.x), vec4<bool>(true, false, var_1, false)), var_2.x), vec4<bool>(var_2.x, true, all(select(var_2, vec2<bool>(var_1, true), vec2<bool>(var_2.x, false))), !(!var_1)), var_2.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, 1311f, var_0.a.x, var_0.a.x)))));
    return 28515i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    var var_0 = select(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(u_input.a >> (vec4<u32>(arg_3, arg_1, 50050u, arg_3) % vec4<u32>(32u)), u_input.a), vec4<i32>(27471i, u_input.a.x, -1i, func_3()), select(!select(select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(true, true, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), !vec4<bool>(true, arg_2.x, arg_2.x, true), select(vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), true)), !vec4<bool>(true, true, false, !arg_2.x), !(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f * 2015f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1191f, _wgslsmith_f_op_f32(1000f - -349f)))), 465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-610f, _wgslsmith_f_op_f32(174f - 690f), true)) + -1000f)));
    var_1 = Struct_1(var_1.a);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(1047f, var_1.a.x, var_1.a.x, 551f)))))));
    var var_2 = arg_2.x;
    return ~(~4294967295u);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = abs(~func_2(20325i, 4294967295u, !select(vec2<bool>(arg_2.d, arg_2.d), vec2<bool>(false, arg_2.d), vec2<bool>(arg_2.d, true)), 32428u));
    var_0 = reverseBits(0u);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.c.e.a.x, _wgslsmith_f_op_f32(arg_2.b.d.a.x + 1148f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(arg_2.a.yz))))), !(!arg_2.d))) * _wgslsmith_f_op_vec2_f32(arg_2.c.d.a.xw - arg_2.b.e.a.zy));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1957f, arg_2.b.d.a.x, 392f)) - arg_2.c.e.a.zzw), arg_2.b.d.a.www, vec3<bool>(all(vec3<bool>(arg_2.d, false, arg_2.d)), true & !arg_2.d, arg_2.d))), arg_2.c, arg_2.b, !(!any(!vec4<bool>(arg_2.d, true, arg_2.d, true))), 0u);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(var_2.c.d.a.x, var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1975f, -1000f) * _wgslsmith_f_op_f32(610f - 1000f))))), var_2.b.e.a.x, true));
    return (var_2.b.c | select(arg_2.c.c, abs(var_2.b.c), true)) & (var_2.c.c >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, arg_1, arg_0), arg_2.b.c), arg_2.b.c), arg_2.c.c, vec4<u32>(var_2.b.a.x, arg_0, firstTrailingBit(18656u), var_2.b.a.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(29854i, 1i);
    var_0 = ~u_input.a.x;
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(min(vec4<u32>(4294967295u, 0u, 0u, 27357u), func_1(4294967295u, 40122u, Struct_3(vec3<f32>(-2107f, -781f, 827f), Struct_2(vec3<u32>(4294967295u, 15118u, 0u), -17183i, vec4<u32>(4294967295u, 106656u, 4294967295u, 15092u), Struct_1(vec4<f32>(624f, 951f, 215f, 451f)), Struct_1(vec4<f32>(114f, -589f, -145f, -419f))), Struct_2(vec3<u32>(0u, 6964u, 66098u), u_input.a.x, vec4<u32>(0u, 0u, 10096u, 61051u), Struct_1(vec4<f32>(970f, 343f, -293f, 1609f)), Struct_1(vec4<f32>(1479f, 286f, -1968f, -855f))), true, 0u))), func_1(4294967295u >> (0u % 32u), firstTrailingBit(5529u), Struct_3(vec3<f32>(-958f, 534f, 2452f), Struct_2(vec3<u32>(4294967295u, 2079u, 0u), 29742i, vec4<u32>(4294967295u, 11796u, 0u, 66447u), Struct_1(vec4<f32>(-1000f, 1252f, -1765f, -1126f)), Struct_1(vec4<f32>(-512f, 599f, -262f, -178f))), Struct_2(vec3<u32>(51110u, 4294967295u, 34822u), 2147483647i, vec4<u32>(53591u, 4209u, 4294967295u, 8365u), Struct_1(vec4<f32>(-2019f, 1166f, 439f, -580f)), Struct_1(vec4<f32>(-990f, 250f, -2450f, -993f))), false, 4294967295u)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), select(false, false, true))), ~(~firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 1u)))), vec4<u32>(0u, 1u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 29178u)), select(1u, 1u, true), 15450u), 4294967295u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) + _wgslsmith_f_op_f32(f32(-1f) * -1255f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) - _wgslsmith_f_op_f32(ceil(260f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1723f, 276f, 1000f, 468f), vec4<f32>(-1262f, -1558f, -511f, 825f))), vec4<f32>(-1301f, _wgslsmith_f_op_f32(f32(-1f) * -699f), 358f, -767f)))));
    let var_3 = Struct_2(vec3<u32>(10854u, abs(countOneBits(var_1.x)), 83009u), u_input.a.x, vec4<u32>(func_1(var_1.x, var_1.x, Struct_3(vec3<f32>(250f, var_2.a.x, 1000f), Struct_2(var_1.zxz, -19733i, vec4<u32>(var_1.x, 56095u, 1u, var_1.x), var_2, var_2), Struct_2(vec3<u32>(37819u, 0u, var_1.x), u_input.a.x, vec4<u32>(4294967295u, 33754u, 0u, var_1.x), var_2, Struct_1(var_2.a)), true, _wgslsmith_add_u32(4294967295u, 0u))).x, max(var_1.x, var_1.x), _wgslsmith_clamp_u32(abs(var_1.x), _wgslsmith_mult_u32(35673u, ~4294967295u), ~1u), 1u & ~_wgslsmith_sub_u32(var_1.x, var_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_2.a))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2.a))))), var_2);
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x ^ var_3.a.x, 0u, 0u, 0u), vec4<u32>(var_3.a.x, min(var_1.x, select(1u, 4294967295u, false)), ~1u | var_1.x, 0u)), min(~(~1i), 43934i), 53236i);
}

