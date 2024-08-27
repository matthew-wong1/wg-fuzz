struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(8217u, 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(52848u, 4294967295u), vec2<u32>(1u, 1u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(min(12960u, 1u), ~78877u, abs(1u), abs(25637u)) & select(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(0u, 11432u, 23554u, 166u)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)))), 21047u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(5282u, 34637u, 31343u, 4294967295u), vec4<u32>(58053u, 20999u, 62047u, 4294967295u))), 1u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-930f, 908f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1426f) * vec2<f32>(arg_0, arg_0)), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(116f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1084f, arg_0, 601f, -876f), vec4<f32>(arg_0, -1000f, 923f, -1000f), false)) + vec4<f32>(arg_0, arg_0, arg_0, -1819f)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 682f), _wgslsmith_div_f32(arg_0, 996f), _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0)), vec3<bool>(false, select(false, false, true), false), var_0.x == (reverseBits(var_0.x) << ((var_0.x & var_0.x) % 32u))));
    let var_2 = max(u_input.b, ~vec3<i32>(firstLeadingBit(u_input.b.x), -1i, -1i) | (vec3<i32>(1i, ~u_input.b.x, _wgslsmith_clamp_i32(u_input.a, -1461i, u_input.a)) >> ((vec3<u32>(22076u, 1352u, var_0.x) | vec3<u32>(4294967295u, 2580u, var_0.x)) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1482f);
    global0 = true;
    return var_1.a.e;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = 1000f;
    var var_2 = Struct_2(var_0.a.b);
    let var_3 = vec3<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1004f)) - _wgslsmith_f_op_f32(-var_1))), select(arg_1.a.d.d.x, true, _wgslsmith_mult_u32(92318u, abs(arg_1.a.e)) > abs(var_0.a.e >> (arg_1.a.c % 32u))), false);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -422f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-975f)), -333f)), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, var_1, -1391f, arg_3.x))) * _wgslsmith_f_op_vec4_f32(var_0.a.b.c - vec4<f32>(arg_1.a.d.c.x, var_2.a.b, -659f, 1490f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(963f, var_2.a.a.x, arg_1.a.b.c.x, 1000f), vec4<f32>(var_2.a.c.x, 1826f, 1588f, -223f)), arg_1.a.a.c)))), !var_3, false);
    return var_0.a.e;
}

fn func_1() -> u32 {
    global0 = false;
    global0 = false;
    let var_0 = -1072f;
    global0 = false;
    let var_1 = var_0;
    return func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1918f, -675f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1436f, var_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -990f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-570f, var_0))))), Struct_4(Struct_3(Struct_1(vec2<f32>(468f, 336f), var_1, vec4<f32>(1667f, -831f, -1953f, 3386f), vec3<bool>(false, false, true), false), Struct_1(vec2<f32>(-518f, var_0), -206f, vec4<f32>(811f, 1493f, 592f, -1000f), vec3<bool>(false, false, false), true), ~4294967295u, Struct_1(vec2<f32>(var_1, var_1), 1097f, vec4<f32>(-686f, var_1, 867f, 1403f), vec3<bool>(true, true, true), true), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36575u, 1u), vec3<u32>(84710u, 1u, 88191u)))), _wgslsmith_f_op_f32(-852f + _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_0, var_0, var_1), vec4<f32>(-381f, -667f, 1102f, var_0), vec4<bool>(true, false, false, true)))))) & abs(_wgslsmith_sub_u32(abs(~1u), ~(~85676u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(1u, ~min(19589u, var_0.x)), func_1(), 4294967295u, select(var_0.x, select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.wxw), 4294967295u, true), true)));
    global0 = !((all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)) & false) | true);
    var var_1 = select(!vec3<bool>(any(vec4<bool>(false, false, true, false)), false, (var_0.x & 92242u) < 0u), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true));
    var var_2 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1319f, 928f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, 235f))), -1406f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1334f, 383f, 572f, -848f))), select(vec3<bool>(var_1.x, false, false), select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x)), vec3<bool>(var_1.x, var_1.x, false)), true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-447f, 1370f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1365f, 203f) + vec2<f32>(438f, -1000f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -820f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-296f, -947f, -1000f, -1829f) - vec4<f32>(-1000f, 508f, -1943f, -448f))), !vec3<bool>(true, var_1.x, var_1.x), all(vec3<bool>(true, true, true))), func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(721f, -1255f), vec2<f32>(1035f, 1000f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(536f, 946f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(564f)) + _wgslsmith_f_op_f32(508f - 418f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 204f, 949f, -1000f) * _wgslsmith_div_vec4_f32(vec4<f32>(2333f, 1425f, -857f, 1000f), vec4<f32>(102f, -280f, -1569f, -1000f))), select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x)), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, true, var_1.x), var_1.x), any(vec2<bool>(var_1.x, var_1.x))), var_1.x), var_0.x));
    let var_3 = _wgslsmith_mod_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(~59869u, _wgslsmith_div_u32(var_2.a.e, 8265u), var_2.a.c, firstLeadingBit(0u)))), vec4<u32>(~(~var_0.x | ~4294967295u), _wgslsmith_mult_u32(~1u, ~(~var_0.x)), func_1(), 40862u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(var_2.a.d.c.wwz)), _wgslsmith_f_op_vec3_f32(trunc(var_2.a.a.c.xzx)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec4_i32(-vec4<i32>(10694i, u_input.b.x, u_input.a, u_input.b.x), abs(firstLeadingBit(vec4<i32>(-2127i, -1i, -4622i, 1i)))), vec4<i32>(firstTrailingBit(-2147483647i), u_input.a, u_input.b.x, ~(i32(-1i) * -10541i))), vec4<f32>(808f, 1420f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(floor(271f))) - 1612f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f))), _wgslsmith_f_op_f32(-var_2.a.b.a.x));
}

