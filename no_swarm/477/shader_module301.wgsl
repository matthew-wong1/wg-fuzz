struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -1583f;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(Struct_1(-14549i, vec2<bool>(false, false), vec4<f32>(1429f, -288f, -385f, 765f), -589f, 1u), 4294967295u)), Struct_3(Struct_2(Struct_1(1i, vec2<bool>(false, true), vec4<f32>(-798f, -963f, -1375f, -225f), 2282f, 0u), 13705u)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(false, false), vec4<f32>(-1073f, -146f, -2002f, -1013f), 248f, 7809u), 0u)), Struct_3(Struct_2(Struct_1(60845i, vec2<bool>(false, false), vec4<f32>(2130f, -1141f, -2891f, -1000f), 1000f, 1u), 4294967295u)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(false, false), vec4<f32>(1000f, 1381f, 1025f, 1964f), 315f, 11359u), 0u)), Struct_3(Struct_2(Struct_1(1i, vec2<bool>(false, true), vec4<f32>(-1000f, -438f, 1000f, 1410f), -1706f, 98550u), 1u)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(true, false), vec4<f32>(-2006f, 123f, 745f, -782f), 2352f, 1u), 19196u)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(true, false), vec4<f32>(798f, -1286f, 1706f, -734f), 712f, 1u), 4294967295u)), Struct_3(Struct_2(Struct_1(16092i, vec2<bool>(true, true), vec4<f32>(1599f, 127f, 948f, 1040f), -1856f, 1u), 4294967295u)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(true, false), vec4<f32>(-1455f, 938f, 1247f, 886f), -2235f, 1u), 0u)), Struct_3(Struct_2(Struct_1(-50130i, vec2<bool>(true, true), vec4<f32>(1000f, -610f, 904f, 239f), 792f, 38182u), 1u)), Struct_3(Struct_2(Struct_1(-20091i, vec2<bool>(false, false), vec4<f32>(-1331f, -102f, -578f, 516f), 1000f, 1u), 4294967295u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    var var_0 = Struct_1(u_input.a, select(select(vec2<bool>(true, true), vec2<bool>(select(true, false, false), false), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(false, any(vec4<bool>(false, true, true, true))), select(false, true, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1159f - -675f), _wgslsmith_f_op_f32(min(555f, -178f))), 992f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) + _wgslsmith_f_op_f32(947f + 1152f)), 1249f), vec4<f32>(1f, 928f, 428f, -2217f), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(157f)) * _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_mult_u32(1u, abs(1u))));
    var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-14050i, ~(-1i), countOneBits(var_0.a)), -(_wgslsmith_add_i32(var_0.a, u_input.a) ^ firstLeadingBit(u_input.a))), select(vec2<bool>(true && (var_0.b.x & var_0.b.x), !var_0.b.x), select(vec2<bool>(false, false), !vec2<bool>(false, var_0.b.x), select(select(var_0.b, vec2<bool>(false, var_0.b.x), vec2<bool>(var_0.b.x, var_0.b.x)), vec2<bool>(true, false), var_0.b.x | true)), var_0.b), vec4<f32>(-484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * var_0.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-176f, var_0.d)) - var_0.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d - -504f)))), _wgslsmith_f_op_f32(-1212f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2432f, var_0.c.x)) - _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d * 640f), var_0.d)))), var_0.e);
    var var_1 = true;
    let var_2 = countOneBits(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(61311u, var_0.e, var_0.e), countOneBits(vec3<u32>(4294967295u, var_0.e, 4294967295u)))) | firstTrailingBit(abs(vec3<u32>(135217u, var_0.e, var_0.e))));
    let var_3 = var_0.e;
    return 1i;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_3, 12>();
    let var_0 = Struct_1(u_input.a, select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-266f + 148f), 761f, _wgslsmith_f_op_f32(1000f * -245f), -1141f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(557f))), ~(~4294967295u));
    var var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(~(~(~_wgslsmith_clamp_u32(271u, 1u, ~82609u))), 12u)];
    global2 = array<Struct_3, 12>();
    return Struct_1(-41515i, vec2<bool>(true, ~(-1i) < func_3()), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f)), var_0.c.x, 1727f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a.a.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, var_0.c.x, -771f) * vec4<f32>(844f, var_2.a.a.d, 1214f, var_2.a.a.d))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1377f, 350f, 1000f), vec4<f32>(var_0.c.x, var_2.a.a.c.x, 198f, var_2.a.a.d))))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-108f)) - var_2.a.a.c.x), -514f), _wgslsmith_f_op_f32(var_2.a.a.c.x + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -407f))), var_2.a.a.b.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.e, var_0.e, 4294967295u), vec4<u32>(4381u, 1u, 6037u, var_0.e)), abs(vec4<u32>(1u, var_0.e, var_2.a.b, var_2.a.b))), vec4<u32>(var_2.a.b, 1u, ~max(1u, var_0.e), var_0.e)));
}

fn func_1() -> bool {
    let var_0 = global2[_wgslsmith_index_u32(44196u, 12u)];
    global0 = u_input.a;
    let var_1 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(3536u, 7891u), _wgslsmith_mod_u32(var_0.a.b, var_0.a.a.e)), countOneBits(1325u)), var_0.a.b, 0u);
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_0.a.a.d, var_0.a.a.d, -909f)), var_0.a.a.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -2183f, 1464f, var_0.a.a.c.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c) - _wgslsmith_f_op_vec4_f32(var_0.a.a.c + vec4<f32>(-703f, -423f, -500f, 912f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1847f * -2604f), _wgslsmith_f_op_f32(step(var_0.a.a.c.x, var_0.a.a.d)), _wgslsmith_f_op_f32(trunc(1267f)), -653f), _wgslsmith_f_op_vec4_f32(floor(var_2.c)), false))));
    return all(!(!(!select(vec4<bool>(var_2.b.x, var_2.b.x, true, false), vec4<bool>(var_2.b.x, true, var_2.b.x, false), vec4<bool>(false, var_2.b.x, var_2.b.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(reverseBits(_wgslsmith_mod_u32(~38465u, reverseBits(26543u)))), _wgslsmith_sub_u32(1u, ~(~min(0u, 0u)))), 12u)];
    global0 = select(u_input.a, select(u_input.a, _wgslsmith_clamp_i32(var_0.a.a.a >> (var_0.a.b % 32u), ~2147483647i, _wgslsmith_mod_i32(-28458i, u_input.a)), func_1()), var_0.a.a.b.x);
    let var_1 = var_0.a.a.c.zyw;
    global2 = array<Struct_3, 12>();
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(var_0.a.a.a, i32(-1i) * -u_input.a), 11313i, -reverseBits(func_2().a), 462i), vec3<i32>(var_0.a.a.a, _wgslsmith_mult_i32(var_0.a.a.a, var_0.a.a.a), u_input.a), ~(~(~vec3<u32>(0u, var_0.a.b, var_0.a.a.e))), ~vec4<i32>(-abs(u_input.a), 1i, countOneBits(15620i), select(firstTrailingBit(-2147483647i), 22148i & var_0.a.a.a, var_0.a.a.b.x)), -1413f);
}

