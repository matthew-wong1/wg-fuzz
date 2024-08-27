struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<i32>(arg_0.x, -(arg_0.x ^ -_wgslsmith_add_i32(-62679i, u_input.b.x)));
    var_0 = vec2<i32>(1i, ~select(2147483647i, max(-arg_0.x, 1i << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(round(163f)) <= _wgslsmith_f_op_f32(-790f * 993f)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(exp2(arg_2)))) + _wgslsmith_f_op_f32(-1796f * _wgslsmith_f_op_f32(round(arg_3.a)))), _wgslsmith_div_f32(arg_2, arg_1));
    let var_2 = -4290i;
    var var_3 = Struct_1(-636f, 313f);
    return arg_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = max(u_input.b.x, abs(-reverseBits(u_input.b.x)));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1412f * -995f) + _wgslsmith_f_op_f32(sign(arg_1)))))), _wgslsmith_f_op_f32(func_3(max(vec2<i32>(0i << (u_input.c % 32u), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(-80926i, 2147483647i))), vec2<i32>(~2147483647i, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1547f), 652f), arg_1, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) - 2003f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(1000f + arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1062f, arg_1.b, false)), arg_1.b)) - _wgslsmith_f_op_f32(trunc(arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.a, 774f, true)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a, arg_1.a))))), -1847f);
    var var_1 = vec4<bool>(all(select(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(true, true, arg_0), arg_0), !vec3<bool>(true, arg_0, false), arg_0), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0 | arg_0, true))), false, ~(200u ^ _wgslsmith_clamp_u32(74278u, 0u, u_input.c)) != _wgslsmith_mod_u32(u_input.c, u_input.c), arg_0);
    let var_2 = vec3<f32>(-1513f, _wgslsmith_f_op_f32(-1000f + arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b)))))));
    var var_3 = _wgslsmith_add_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-19242i, 0i, u_input.b.x)), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.b.x, u_input.b.x, -1i)), u_input.b), u_input.b));
    let var_4 = vec4<u32>(1u, select(u_input.a.x, 0u, true), 40675u, u_input.a.x);
    return func_2(var_2, 1065f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, -2147483647i)), _wgslsmith_div_i32(u_input.b.x, u_input.b.x))) | -max(0i, _wgslsmith_div_i32(-2147483647i, u_input.b.x) | -27971i);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(291f, var_1.b, arg_1.b, arg_0.a))) * vec4<f32>(arg_1.a, -601f, -897f, -1268f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a, arg_1.b, var_1.a, arg_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, var_1.a, arg_0.b, -1000f), vec4<f32>(1161f, -880f, arg_0.b, 586f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -817f), 129f, _wgslsmith_f_op_f32(arg_0.b - -1102f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, arg_1.b, var_1.a, arg_0.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1000f, arg_0.b, -700f) + vec4<f32>(-197f, arg_0.b, 244f, -400f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), var_1.b, var_1.b, arg_1.a), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_div_f32(-331f, 2177f), 224f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -1329f, -713f, -1000f) + vec4<f32>(-1305f, -287f, 168f, arg_0.a)))));
    let var_3 = _wgslsmith_add_u32(~u_input.c << (u_input.c % 32u), u_input.a.x);
    let var_4 = select(!vec3<bool>(_wgslsmith_f_op_f32(arg_0.b - -1741f) >= var_1.a, false, true), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(u_input.b.x > -1i, !(u_input.b.x < u_input.b.x), true), vec3<bool>(!all(vec4<bool>(true, false, false, false)), true, false & (-3050f <= var_2.x))), true);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b, var_1.b)) + _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(func_4(false, Struct_1(arg_1.a, 805f)).a)), var_2.x)), var_1.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.b)))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.a, arg_1.b), _wgslsmith_f_op_f32(sign(arg_1.a))))))));
    let var_1 = func_5(func_4(!arg_0.x, func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(347f, arg_1.b, arg_1.a))), _wgslsmith_div_f32(-1386f, arg_1.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-469f)), _wgslsmith_f_op_f32(-arg_1.b))), 855f));
    global0 = array<vec4<i32>, 8>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(854f, _wgslsmith_f_op_f32(-var_1.b)), 386f)) * _wgslsmith_f_op_f32(abs(arg_1.b))));
    var var_2 = Struct_1(-1197f, _wgslsmith_f_op_f32(func_3(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -2147483647i) | reverseBits(~vec2<i32>(u_input.b.x, 0i)), -787f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1.a, arg_1.b)))), Struct_1(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-200f, var_1.b, -506f) * vec3<f32>(var_1.b, var_1.b, var_1.a)), _wgslsmith_div_f32(-119f, var_1.a)).b, -975f))));
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    var var_0 = vec4<i32>(select(1960i, -_wgslsmith_sub_i32(28675i, 1i), any(vec4<bool>(false, true, true, false)) || true), _wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(arg_0, 9333i, 39497i, -2147483647i)), -global0[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(true, true, true, true)), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(abs(arg_2), 8u)]), -2147483647i, -28427i);
    var var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !any(vec3<bool>(false, true, false))));
    let var_2 = 12327i;
    return arg_1;
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true || (_wgslsmith_sub_i32(abs(u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b, -vec3<i32>(-11896i, 17085i, u_input.b.x))) == ~abs(1612i));
    let var_1 = u_input.c;
    var var_2 = func_4(!var_0, arg_1);
    global0 = array<vec4<i32>, 8>();
    var_2 = arg_1;
    return func_1(select(!select(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, false, true, true), false), select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, var_0, var_0, true), false), var_0), !(!(!vec4<bool>(var_0, var_0, false, var_0))), any(vec3<bool>(true, true, true)) & all(vec2<bool>(true, true))), Struct_1(-1246f, _wgslsmith_f_op_f32(step(-543f, -491f))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = reverseBits(_wgslsmith_mult_vec3_i32(select(abs(vec3<i32>(2147483647i, 0i, -1i)), -_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -26845i, u_input.b.x)), true), vec3<i32>(firstTrailingBit(max(u_input.b.x, u_input.b.x)), i32(-1i) * -u_input.b.x, abs(u_input.b.x))));
    let var_1 = u_input.c;
    var var_2 = vec4<bool>(false, false, true, !all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, true), any(vec3<bool>(true, false, false)))));
    global0 = array<vec4<i32>, 8>();
    let var_3 = 32799i;
    return StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, _wgslsmith_add_i32(21641i, -1i)) ^ var_0, var_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 129f, -1281f, arg_0.a) * vec4<f32>(114f, -433f, arg_0.a, arg_0.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.b, arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1.a * -827f), _wgslsmith_div_f32(597f, -1342f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-arg_1.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), func_7(-274f, Struct_1(238f, arg_1.a)).a)), arg_0.b, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(249f)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = 1u;
    var var_1 = vec3<bool>(-202f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-568f, 207f)) * _wgslsmith_f_op_f32(-1248f - 1873f)))), all(vec2<bool>(true, true)), -77142i >= (abs(2147483647i) & u_input.b.x));
    var var_2 = var_1.x;
    var_0 = 30048u;
    global0 = array<vec4<i32>, 8>();
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = func_8(func_7(-193f, func_6(u_input.b.x, func_1(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), Struct_1(-376f, -1090f)), ~u_input.c & 1u)), func_7(-368f, func_5(func_5(func_5(Struct_1(2680f, -663f), Struct_1(316f, -1114f)), Struct_1(-1296f, -233f)), func_5(Struct_1(1721f, 1694f), Struct_1(-1125f, 1570f)))));
}

