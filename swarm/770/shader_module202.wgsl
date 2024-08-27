struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: vec4<f32> = vec4<f32>(506f, 734f, 574f, 703f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    let var_0 = vec4<u32>(reverseBits(_wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), u_input.a.x, _wgslsmith_add_u32(17398u, select(select(~1671u, 44081u ^ u_input.a.x, true), u_input.a.x, select(true, false, true))), _wgslsmith_add_u32(u_input.a.x, ~0u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1748f, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, -280f, global0.x, 709f))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x - -213f), _wgslsmith_f_op_f32(f32(-1f) * -2127f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) - _wgslsmith_f_op_f32(trunc(global0.x))))), _wgslsmith_div_f32(-733f, 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -396f), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1129f))))));
    var var_1 = Struct_1(~(~vec4<u32>(u_input.a.x, 1u, ~var_0.x, _wgslsmith_clamp_u32(u_input.a.x, 48352u, 1u))));
    var var_2 = 8889i;
    return -499f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(2147483647i, ~u_input.b);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_3()), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -1700f, global0.x, global0.x)))))));
    var var_1 = Struct_2(Struct_1(u_input.a), _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, 0i), reverseBits(45518i))), u_input.b));
    var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a.a, vec4<u32>(u_input.a.x, 4294967295u, var_1.a.a.x, 61621u)), max(vec4<u32>(var_1.a.a.x, var_1.a.a.x, 4294967295u, 65122u), ~var_1.a.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.a.a, var_1.a.a), _wgslsmith_mult_vec4_u32(var_1.a.a, u_input.a), firstTrailingBit(var_1.a.a)))), var_1.b);
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32((u_input.a.wy ^ u_input.a.xx) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.a.x, 20206u), vec2<u32>(2596u, 78913u)) % vec2<u32>(32u)), max(vec2<u32>(13065u, var_1.a.a.x), firstTrailingBit(var_1.a.a.xz))), 1u, 13480u, 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global0 = vec4<f32>(-1188f, global0.x, global0.x, global0.x);
    let var_0 = !vec2<bool>(false, all(vec4<bool>(any(vec4<bool>(true, arg_2, arg_2, arg_2)), true, true, any(vec2<bool>(false, false)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(480f - 1548f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1318f)), _wgslsmith_f_op_f32(-847f * global0.x))))), -862f, global0.x);
    var var_1 = min(_wgslsmith_clamp_u32(abs(11745u), _wgslsmith_mult_u32(arg_0.a.x ^ _wgslsmith_mult_u32(u_input.a.x, 0u), 11958u), 1u), ~_wgslsmith_mult_u32(0u, arg_0.a.x >> (1u % 32u)));
    let var_2 = firstLeadingBit(select(firstLeadingBit(u_input.a.yy), ~vec2<u32>(arg_0.a.x, u_input.a.x), vec2<bool>(!var_0.x, arg_2)) << (arg_0.a.zy % vec2<u32>(32u)));
    return arg_0;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_4(func_2(), vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1329f * global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))))), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(439f * global0.x))) >= 1f));
    var var_1 = var_0.a;
    var var_2 = Struct_1(max(u_input.a, countOneBits(vec4<u32>(~var_0.a.x, _wgslsmith_div_u32(var_1.x, var_1.x), _wgslsmith_add_u32(14731u, var_0.a.x), var_1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(vec2<bool>(false, false))))), -542f));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x + -845f), global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(-1735f - -943f))))), global0.x);
    var var_0 = u_input.b;
    let var_1 = 1469f;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(~u_input.c, reverseBits(reverseBits(u_input.c)))), 81023i);
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1246f, -562f, 1000f, global0.x) * vec4<f32>(326f, var_1, var_1, 1598f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1396f, -195f, global0.x, var_1) + vec4<f32>(var_1, var_1, var_1, 1000f))) * vec4<f32>(-518f, 544f, -836f, _wgslsmith_f_op_f32(select(452f, _wgslsmith_f_op_f32(global0.x + global0.x), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global0.x, 375f, global0.x) * vec4<f32>(global0.x, global0.x, -643f, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 861f, -600f, global0.x) * vec4<f32>(-1425f, -820f, var_1, var_1))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(517f, -1716f, -799f, 2595f), vec4<f32>(-1755f, global0.x, var_1, var_1))))))));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(605f, _wgslsmith_f_op_f32(abs(-1599f)), global0.x, var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -2157f, var_1))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1469f, var_1, 365f, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(372f, global0.x, -239f, 632f), vec4<f32>(var_1, var_1, global0.x, -1458f), vec4<bool>(false, true, false, false))))))));
    let var_3 = -_wgslsmith_clamp_vec2_i32(u_input.c, ~u_input.c | abs(u_input.c), u_input.c) | ~_wgslsmith_add_vec2_i32(-(vec2<i32>(u_input.b, u_input.c.x) | vec2<i32>(-2147483647i, 1i)), vec2<i32>(u_input.b, var_2.x) & (u_input.c >> (vec2<u32>(u_input.a.x, 27618u) % vec2<u32>(32u))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, var_1), -761f))), 887f, var_1, _wgslsmith_f_op_f32(floor(1608f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -1200f) + vec4<f32>(global0.x, var_1, var_1, var_1)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -428f, 1000f, var_1) - vec4<f32>(global0.x, -1778f, 1171f, global0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(995f, 852f, -1000f, global0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_1, var_1, -1000f), vec4<f32>(1603f, -1570f, -714f, 542f), true)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, var_1, 199f, global0.x))))), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(any(vec2<bool>(true, false)), true, any(vec3<bool>(false, true, true))), all(vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(~abs(u_input.b), select(_wgslsmith_mod_i32(var_3.x, var_3.x), u_input.c.x, true)), -(firstLeadingBit(var_2.x) >> (func_4(Struct_1(vec4<u32>(46021u, u_input.a.x, 4294967295u, 4294967295u)), vec4<f32>(-1009f, 1914f, var_1, global0.x), true).a.x % 32u)), 2147483647i));
}

