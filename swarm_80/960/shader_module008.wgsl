struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = vec2<bool>(true, true);
    global0 = var_1.x;
    global0 = !select(!all(vec3<bool>(true, arg_0.a, var_1.x)), true, arg_0.a);
    var var_2 = max(vec3<i32>(~(~var_0), -1i, 0i), vec3<i32>(u_input.a.x, -34924i, firstLeadingBit(u_input.a.x))) >> (max(firstTrailingBit(u_input.c.ywx), select(vec3<u32>(u_input.c.x, ~1u, u_input.b.x), ~reverseBits(u_input.c.yzy), false)) % vec3<u32>(32u));
    return -max(_wgslsmith_add_i32(1i, var_0), 14190i);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(491f, _wgslsmith_f_op_f32(floor(-1477f)), _wgslsmith_f_op_f32(1765f - -274f)), vec3<f32>(_wgslsmith_f_op_f32(1060f + -1082f), 1f, _wgslsmith_f_op_f32(-594f * -137f)))));
    let var_1 = var_0.zx;
    var var_2 = Struct_3(56075u, Struct_2(vec4<i32>(-(arg_1.x >> (u_input.b.x % 32u)), func_3(Struct_1(arg_0)), u_input.a.x, arg_1.x)), ~u_input.a, vec2<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(var_1.x, 1402f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1912f + _wgslsmith_f_op_f32(max(-957f, var_0.x))) - var_1.x)));
    var var_3 = ~((u_input.b.x >> (1685u % 32u)) | ~1u);
    var var_4 = Struct_3(~u_input.c.x, var_2.b, countOneBits(var_2.b.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-439f, var_2.d.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -391f), vec2<f32>(var_2.d.x, var_1.x)))) + _wgslsmith_f_op_vec2_f32(round(var_0.xz))));
    return Struct_2(u_input.a);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = !var_0;
    let var_2 = u_input.a.wy;
    var var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.b, vec2<u32>(1u >> (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u), ~1u)), ~(~(~(u_input.b << (u_input.c.yz % vec2<u32>(32u))))));
    let var_4 = Struct_3(4294967295u, func_2(var_0, -max(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, arg_0), vec3<i32>(-2147483647i, -1i, -2147483647i)), ~u_input.a.ywx)), u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.zx)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, -757f), vec2<f32>(-176f, 1041f))) * _wgslsmith_div_vec2_f32(arg_2.zy, _wgslsmith_f_op_vec2_f32(-arg_2.yy))), arg_2.xy));
    return Struct_1(var_0);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(arg_3.a, arg_3.a);
    var var_1 = ~(~(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 55546u, 51094u), u_input.c.xxx)) & ~arg_2));
    global0 = !arg_3.a;
    var_1 = abs(u_input.b.x);
    var var_2 = func_2(!(!arg_3.a), ~select(vec3<i32>(-arg_0, arg_0, arg_0), u_input.a.wzw, select(false, all(vec2<bool>(false, true)), arg_1.x != arg_1.x)));
    return Struct_2(~_wgslsmith_mult_vec4_i32(var_2.a, var_2.a));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x))), -1208f, (~arg_1.a >> (~u_input.b.x % 32u)) <= 1u)), arg_1.d.x, 1735f, 633f);
    var var_1 = u_input.b.x;
    var_1 = ~u_input.b.x;
    var var_2 = func_4(_wgslsmith_clamp_i32(arg_3.x, arg_3.x, _wgslsmith_div_i32(firstTrailingBit(47953i), min(0i, arg_3.x)) ^ select(-1i, _wgslsmith_mult_i32(2147483647i, arg_1.b.a.x), func_1(-1i, arg_1.a, var_0.zyz, Struct_1(arg_2.a)).a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, var_0.x, 2381f, 698f) + vec4<f32>(822f, 175f, var_0.x, arg_1.d.x))))), arg_1.a | u_input.c.x, func_1(0i, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.a, u_input.b.x), u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -340f), -261f), func_1(1i >> (_wgslsmith_sub_u32(arg_1.a, arg_1.a) % 32u), ~_wgslsmith_add_u32(u_input.b.x, 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -142f), arg_1.d.x, var_0.x), func_1(_wgslsmith_sub_i32(arg_1.b.a.x, 7042i), 27590u, vec3<f32>(arg_1.d.x, 268f, var_0.x), func_1(39091i, 1u, var_0.yzz, Struct_1(arg_2.a))))));
    var_2 = arg_1.b;
    return Struct_2(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~max(u_input.b.x, u_input.c.x)) | _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x), u_input.b.x), func_5(true, Struct_3(~u_input.b.x, func_4(u_input.a.x, vec4<f32>(253f, 761f, -564f, -1132f), 66279u, func_1(u_input.a.x, u_input.c.x, vec3<f32>(-336f, 697f, 1630f), Struct_1(false))), vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x, max(0i, 22503i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1200f), -324f)), Struct_1(select(true, any(vec2<bool>(true, false)), select(true, true, true))), vec4<i32>(-(~u_input.a.x), 1i, func_4(u_input.a.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-898f, -794f, 653f, 967f), vec4<f32>(718f, 1541f, 1604f, -307f))), _wgslsmith_add_u32(0u, u_input.b.x), func_1(u_input.a.x, 0u, vec3<f32>(322f, -415f, 1293f), Struct_1(false))).a.x, -(-1i << (1u % 32u)))), select(~select(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -1i), u_input.a, false), vec4<i32>(u_input.a.x, reverseBits(15109i), abs(2147483647i), 1i), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), false)) << (firstTrailingBit(max(vec4<u32>(0u, u_input.c.x, 3624u, 1u), u_input.c << (vec4<u32>(4294967295u, 1u, 4294967295u, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(874f, -289f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(799f, -487f) * vec2<f32>(352f, 852f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-604f, 1010f)))))));
    global1 = true | !(~(1i >> (var_0.a % 32u)) == ~(var_0.c.x >> (u_input.c.x % 32u)));
    let var_1 = Struct_1(all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true))) || (!any(vec3<bool>(true, true, true)) && func_1(var_0.c.x, ~1u, vec3<f32>(-659f, -2468f, var_0.d.x), Struct_1(true)).a));
    global0 = !(var_0.a == var_0.a);
    let var_2 = !select(vec4<bool>((0i >> (var_0.a % 32u)) >= -25889i, true, true, var_1.a), !(!vec4<bool>(false, true, var_1.a, true)), !(!(2147483647i <= u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a.wyz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(-1066f + -362f)))))), _wgslsmith_mod_vec2_u32(max(_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.b), ~vec2<u32>(6466u, var_0.a)), ~u_input.b), vec2<u32>(1u, _wgslsmith_add_u32(0u, ~var_0.a))));
}

