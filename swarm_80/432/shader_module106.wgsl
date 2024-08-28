struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<f32>(-1000f, -168f, 169f), Struct_1(176f, vec2<u32>(86104u, 4294967295u), 20267i, 1u)), Struct_2(vec3<f32>(1059f, -431f, -394f), Struct_1(829f, vec2<u32>(29499u, 13742u), i32(-2147483648), 66404u)), Struct_2(vec3<f32>(173f, 270f, -455f), Struct_1(-2075f, vec2<u32>(22226u, 31494u), -1i, 90416u)), Struct_2(vec3<f32>(214f, 1222f, 283f), Struct_1(101f, vec2<u32>(4294967295u, 1u), -30558i, 1u)), Struct_2(vec3<f32>(421f, 1357f, -653f), Struct_1(1000f, vec2<u32>(0u, 33302u), -3440i, 1u)), Struct_2(vec3<f32>(-780f, 413f, 466f), Struct_1(-1000f, vec2<u32>(14293u, 37595u), -1i, 41171u)), Struct_2(vec3<f32>(685f, -551f, 198f), Struct_1(-340f, vec2<u32>(1u, 40501u), -1i, 4294967295u)));

var<private> global3: array<vec3<u32>, 32>;

var<private> global4: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> i32 {
    var var_0 = ~1u;
    let var_1 = vec2<f32>(1f, 1f);
    global4 = array<vec4<bool>, 16>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1889f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(1f)), var_1.x));
    global1 = true;
    return abs(countOneBits(14341i) ^ _wgslsmith_div_i32(u_input.b, u_input.b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c)))))));
    var var_1 = !arg_1.d;
    let var_2 = ~u_input.d;
    var var_3 = arg_1;
    global1 = !select(var_3.d, all(vec4<bool>(false, var_3.d, !arg_1.d, var_3.d)), any(vec3<bool>(true, true, true)));
    return select(vec3<bool>(false, arg_1.c < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-292f + _wgslsmith_f_op_f32(trunc(1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-978f - arg_1.c))), select(select(!vec3<bool>(false, var_3.d, arg_1.d), select(select(vec3<bool>(arg_1.d, false, true), vec3<bool>(false, arg_1.d, var_3.d), vec3<bool>(false, var_3.d, true)), vec3<bool>(arg_1.d, true, false), !vec3<bool>(false, arg_1.d, arg_1.d)), !(!arg_1.d)), select(!(!vec3<bool>(var_3.d, false, true)), select(vec3<bool>(arg_1.d, true, arg_1.d), vec3<bool>(false, arg_1.d, var_3.d), all(vec2<bool>(arg_1.d, true))), any(!vec4<bool>(true, var_3.d, true, var_3.d))), !any(select(vec3<bool>(var_3.d, arg_1.d, var_3.d), vec3<bool>(false, true, arg_1.d), vec3<bool>(arg_1.d, arg_1.d, false)))), vec3<bool>(true, arg_1.d, var_3.d));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = firstLeadingBit(~vec3<i32>(u_input.b, -26039i, 56073i) << (vec3<u32>(countOneBits(1u), abs(abs(u_input.d.x)), 2510u) % vec3<u32>(32u)));
    var_0 = reverseBits(max(~(~(vec3<i32>(u_input.b, u_input.a, var_0.x) | vec3<i32>(u_input.b, -7535i, u_input.b))), ~_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.a, var_0.x)), vec3<i32>(18718i, 1911i, var_0.x))));
    let var_1 = arg_0;
    global3 = array<vec3<u32>, 32>();
    global4 = array<vec4<bool>, 16>();
    return arg_2;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    return Struct_3(vec3<i32>(func_1() >> (arg_0.x % 32u), 1i, _wgslsmith_add_i32(~u_input.b, -2740i)), 4294967295u, _wgslsmith_f_op_f32(abs(2690f)), any(func_4(!func_3(vec3<i32>(u_input.a, 0i, u_input.a), Struct_3(vec3<i32>(u_input.b, u_input.b, u_input.b), arg_0.x, -388f, false)), vec3<f32>(-984f, 1f, 805f), func_3(min(vec3<i32>(-1i, -19535i, 0i), vec3<i32>(34140i, 30180i, 30264i)), Struct_3(vec3<i32>(-8661i, 23742i, u_input.b), arg_0.x, -369f, false)).yx)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec3<i32> {
    global3 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(max(vec2<u32>(0u, 34717u), firstLeadingBit(vec2<u32>(26416u, arg_2.b))), ~u_input.d.yy) & (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b, 1u), select(vec2<u32>(27106u, u_input.d.x), u_input.d.zx, vec2<bool>(arg_0, false))) | u_input.c.wy), vec2<u32>(~_wgslsmith_sub_u32(arg_2.b, arg_2.b), ~arg_2.b) >> ((~vec2<u32>(arg_2.b, 0u) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.d.xx);
    let var_1 = arg_2.c;
    return _wgslsmith_mult_vec3_i32(arg_2.a, _wgslsmith_sub_vec3_i32(~(vec3<i32>(-5453i, 60361i, u_input.a) | select(vec3<i32>(40413i, arg_2.a.x, arg_1), vec3<i32>(arg_1, -78592i, arg_2.a.x), vec3<bool>(arg_0, true, false))), vec3<i32>(_wgslsmith_add_i32(arg_2.a.x, -35630i), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1, u_input.b, arg_2.a.x), max(vec4<i32>(u_input.a, -19996i, -23743i, 1i), vec4<i32>(-29161i, u_input.a, arg_1, arg_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.a ^ -3714i, u_input.a, countOneBits(u_input.b))), -vec3<i32>(u_input.b, u_input.a << (0u % 32u), i32(-1i) * -1i)), func_5(var_0, func_1(), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 89039u, u_input.c.x), u_input.c) << (_wgslsmith_div_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)))), vec3<i32>(select(_wgslsmith_mod_i32(u_input.b, countOneBits(u_input.a)), _wgslsmith_sub_i32(-16366i, u_input.a) << (u_input.d.x % 32u), func_4(func_3(vec3<i32>(u_input.b, u_input.a, u_input.b), Struct_3(vec3<i32>(u_input.b, u_input.b, u_input.a), u_input.c.x, -862f, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, -772f, 620f) - vec3<f32>(1677f, 1020f, -930f)), !vec2<bool>(var_0, var_0)).x), ~u_input.a & u_input.a, ~u_input.a));
    var var_2 = ~u_input.d.x;
    let var_3 = vec3<bool>(u_input.a > ~firstTrailingBit(var_1.x), var_0, true);
    let var_4 = firstTrailingBit(u_input.d.x);
    let var_5 = -(~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, u_input.b, u_input.b, 13604i), vec4<i32>(2147483647i, 15310i, 22198i, -40950i) & vec4<i32>(-2147483647i, -2147483647i, 11115i, var_1.x)), -vec4<i32>(-12413i, var_1.x, u_input.a, var_1.x) & vec4<i32>(-2147483647i, -12212i, 16806i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~select(_wgslsmith_div_vec2_i32(var_5.zy, vec2<i32>(u_input.b, 1224i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b), var_5.yz, var_5.xx), false), _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(var_5.x, 23620i), vec2<i32>(var_1.x, 2147483647i)), ~vec2<i32>(u_input.a, 0i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), var_5.xw, var_1.xx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(152f, -747f, -799f)))))));
}

