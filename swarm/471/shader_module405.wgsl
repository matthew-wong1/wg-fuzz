struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 23209u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = ~arg_2.wwz | select(arg_2.zxz, ~(~vec3<u32>(1u, 4294967295u, u_input.a.x)), !any(vec4<bool>(true, arg_3.b.x, true, false)));
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, 0u);
    var var_1 = _wgslsmith_div_vec2_f32(arg_1.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1612f, -163f))));
    global0 = vec3<u32>((4294967295u | arg_3.a) & _wgslsmith_mod_u32(0u, u_input.b), 0u, (~arg_3.a & arg_2.x) | firstTrailingBit(_wgslsmith_sub_u32(arg_0 | 4294967295u, ~arg_2.x)));
    var_0 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_0, 1u) ^ u_input.b, arg_0), 1u);
    return ~select(_wgslsmith_mult_u32(arg_2.x, ~u_input.a.x) << (max(global0.x, arg_3.a) % 32u), 1u, true);
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(~func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, 4294967295u, 31645u), vec4<u32>(global0.x, 0u, 4294967295u, 24652u) | u_input.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1030f, 1812f, 1177f), vec3<f32>(-474f, -263f, -495f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, 919f, -1006f)))), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a.x, 20131u), u_input.a), Struct_1(abs(global0.x), vec2<bool>(false, arg_0), _wgslsmith_f_op_f32(select(2068f, 1413f, arg_0)))), select(select(vec2<bool>(false, true), !vec2<bool>(false, arg_0), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0), vec2<bool>(true, true), true)), vec2<bool>(arg_0, true), vec2<bool>(false, true)), _wgslsmith_div_f32(667f, 1625f));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = select(vec4<bool>(arg_3.b.x, false, arg_2.x == -1403f, true), !select(select(vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), select(vec4<bool>(true, arg_0.b.x, false, false), vec4<bool>(true, arg_0.b.x, arg_3.b.x, arg_3.b.x), vec4<bool>(arg_0.b.x, false, true, arg_3.b.x)), vec4<bool>(true, arg_0.b.x, true, true)), select(vec4<bool>(true, false, arg_0.b.x, arg_3.b.x), !vec4<bool>(true, true, false, arg_0.b.x), vec4<bool>(arg_3.b.x, arg_0.b.x, arg_3.b.x, arg_0.b.x)), any(arg_0.b)), true);
    let var_1 = Struct_1(reverseBits(0u), arg_0.b, _wgslsmith_f_op_f32(-arg_1.x));
    var var_2 = Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(1897u, 1u)), vec2<bool>(_wgslsmith_f_op_f32(arg_3.c - arg_0.c) > _wgslsmith_f_op_f32(trunc(-560f)), !(!(!var_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-231f)), arg_0.c));
    var_2 = func_2(true);
    let var_3 = Struct_1(arg_3.a, var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(885f * _wgslsmith_f_op_f32(593f * var_2.c)) * 794f), func_2(any(select(vec3<bool>(var_1.b.x, false, var_0.x), vec3<bool>(false, true, false), var_0.wzw))).c)));
    return select(~(-vec4<i32>(1i, ~15396i, 0i, firstLeadingBit(-15259i))), select(vec4<i32>(46552i, 1i << (max(arg_3.a, arg_0.a) % 32u), -1693i & firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, -1i, -2147483647i)), max(vec3<i32>(-39457i, 2147483647i, -2147483647i), vec3<i32>(-1i, 13636i, 1i)))), _wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, -71523i, 0i, -17738i), max(vec4<i32>(2147483647i, -65145i, 1i, 0i), vec4<i32>(2147483647i, 24005i, 0i, 39363i))), vec4<i32>(1i, ~(-12944i), i32(-1i) * -22823i, abs(-19084i))), !(firstLeadingBit(var_2.a) < 97537u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, countOneBits(1u)), _wgslsmith_div_u32(~28678u, firstLeadingBit(global0.x)), 19289u, 261u), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.a), abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(638f, -1000f, true)) * -1607f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1495f + _wgslsmith_f_op_f32(1761f * -129f)), _wgslsmith_f_op_f32(f32(-1f) * -244f))), vec4<i32>(-1i) * -max(~vec4<i32>(31402i, 0i, 1i, -1i), func_1(Struct_1(42297u, vec2<bool>(true, true), -608f), vec4<f32>(2080f, -716f, 665f, 662f), vec4<f32>(426f, 418f, 122f, 249f), Struct_1(global0.x, vec2<bool>(true, true), 440f))), 45413u, vec2<u32>(var_0.x & func_2(true).a, (var_0.x >> (1u % 32u)) & 21375u), select(~vec4<u32>(4294967295u, 17067u, 4294967295u, max(u_input.b, 17589u)), abs(vec4<u32>(abs(4294967295u), ~u_input.a.x, ~var_0.x, abs(0u))), !func_2(true).b.x));
}

