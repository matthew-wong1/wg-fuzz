struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_2,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: array<vec3<u32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = true;
    var var_1 = true;
    var var_2 = Struct_2(u_input.a, Struct_1(~((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) ^ select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 4294967295u), false)), ~u_input.a, false), !(arg_0.x > ~(~(-34365i))), 1i, Struct_1(select(vec2<u32>(66048u, u_input.a), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(40737u, 120616u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), any(vec3<bool>(true, true, true))), 0u, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    global0 = array<vec2<f32>, 3>();
    let var_3 = _wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.d, var_2.d, 0i, var_2.d), vec4<i32>(arg_0.x, -38041i, -2147483647i, -12802i))), vec4<i32>(firstTrailingBit(4102i), abs(-24210i), -2147483647i << (var_2.a % 32u), -4070i | var_2.d)), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_2.d, 1i, var_2.d), vec4<i32>(-2147483647i, -16037i, -48523i, var_2.d)) ^ vec4<i32>(firstTrailingBit(1i), arg_0.x, ~35453i, 123i << (u_input.a % 32u)), var_2.e.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, var_2.d, var_2.d), -max(abs(vec4<i32>(0i, -1i, -1i, var_2.d)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.d, arg_0.x, -2147483647i, arg_0.x), vec4<i32>(arg_0.x, var_2.d, -40746i, 1i))), -countOneBits(vec4<i32>(var_2.d, var_2.d, var_2.d, var_2.d))));
    return var_2.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = array<vec3<u32>, 5>();
    global1 = array<vec3<u32>, 5>();
    global0 = array<vec2<f32>, 3>();
    var var_0 = 305f;
    global0 = array<vec2<f32>, 3>();
    return any(!vec2<bool>(false, func_3(vec3<i32>(24529i, -23511i, 2147483647i)) & !arg_1.c));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    global0 = array<vec2<f32>, 3>();
    var var_0 = func_2(arg_0.e, arg_0.b);
    global0 = array<vec2<f32>, 3>();
    var var_1 = arg_0.b.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.x)))) - _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(-486f))) - 183f)));
    return -min(~_wgslsmith_mod_i32(2147483647i & arg_0.d, 2081i), _wgslsmith_add_i32(~arg_0.d, arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 5>();
    global1 = array<vec3<u32>, 5>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, 910f, 1000f, -646f)) - vec4<f32>(-445f, 647f, -1037f, 2097f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1278f, 769f, -515f, 603f), vec4<f32>(244f, 703f, 1719f, 297f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(801f * 735f), _wgslsmith_f_op_f32(-425f - 418f), _wgslsmith_f_op_f32(1122f + -1000f), _wgslsmith_f_op_f32(323f * -439f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, -1334f, 1450f, 310f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1474f * -1435f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f - 560f) * _wgslsmith_f_op_f32(f32(-1f) * -2307f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2236f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1262f, 698f, -162f, -1212f), vec4<f32>(-530f, 1042f, -1000f, 945f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 490f, 1000f, 657f), vec4<f32>(-765f, 1413f, 1929f, 477f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2568f, -1376f, 590f, 725f) + vec4<f32>(697f, 1000f, -1027f, -302f)), vec4<bool>(false, true, true, false))))));
    global1 = array<vec3<u32>, 5>();
    var var_1 = _wgslsmith_mult_u32(~u_input.a, 70809u) >= u_input.a;
    var var_2 = var_0.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 73198u)), min(vec4<u32>(u_input.a, u_input.a, u_input.a, 121169u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(7373u, u_input.a, 19667u, 1u), vec4<u32>(u_input.a, u_input.a, 81596u, 0u)))), var_0, vec3<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), -_wgslsmith_clamp_i32(-2147483647i, 0i, 1i)), min(abs(i32(-1i) * -39324i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -2147483647i), i32(-1i) * -2147483647i))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, u_input.a, 31700u), false) << (~(~vec4<u32>(60664u, 2997u, 0u, u_input.a)) % vec4<u32>(32u)), vec4<u32>(~u_input.a, u_input.a, u_input.a, max(1u, 4294967295u)) | ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), vec3<i32>(_wgslsmith_sub_i32(4787i, func_1(Struct_2(u_input.a, Struct_1(vec2<u32>(u_input.a, 4294967295u), 8738u, true), false, 491i, Struct_1(vec2<u32>(27980u, 1u), 27364u, false)), var_0)), -6340i, -1i));
}

