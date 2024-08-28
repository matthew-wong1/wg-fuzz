struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(20160i, 2147483647i, 24278i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    var var_0 = Struct_3(i32(-1i) * -1i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_0, 707f, 2351f)))))))), arg_2);
    var_0 = Struct_3(-_wgslsmith_sub_i32(-2147483647i, ~u_input.a), var_0.b, _wgslsmith_f_op_f32(-1166f * 1017f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(-1480f + _wgslsmith_f_op_f32(-arg_2)))));
    return ~1u;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), any(vec3<bool>(true, true, true)), !(!select(true, false, false)));
    var var_1 = Struct_1(~vec2<u32>(11406u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * -1482f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(156f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1242f - -413f))))), -(~5771i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -879f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043f + 1081f) + _wgslsmith_f_op_f32(step(-702f, -383f))), -1005f)))));
    var var_2 = global0.x;
    var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(func_3(_wgslsmith_f_op_f32(855f - var_1.d), vec3<i32>(2147483647i, var_1.c, u_input.a), 4806f), 1u << (1u % 32u)), 96517u), var_1.b, var_1.c, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_1.b.x)));
    let var_3 = firstLeadingBit(firstTrailingBit(vec4<i32>(14584i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(0i, var_1.c)), global0.x, (0i ^ global0.x) << ((var_1.a.x & var_1.a.x) % 32u))));
    return Struct_1(vec2<u32>(reverseBits(var_1.a.x >> (var_1.a.x % 32u)), 42206u) >> (vec2<u32>(_wgslsmith_div_u32(92879u, var_1.a.x), 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_1.b.x, var_1.d, var_1.d, -1427f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2095f, 591f, var_1.b.x, -1436f), _wgslsmith_f_op_vec4_f32(-var_1.b), !vec4<bool>(var_0.x, true, var_0.x, false))), vec4<bool>(var_0.x, !var_0.x, true, true))), global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x + 221f), -610f, false))))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1885f) + -377f);
    global0 = ~vec3<i32>(arg_0.a, min(var_0.c, var_0.c), firstTrailingBit(-25917i) >> (1u % 32u)) >> (~_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 22121u, var_0.a.x), vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 86771u, var_0.a.x), vec3<u32>(var_0.a.x, 1u, 59607u))) % vec3<u32>(32u));
    var var_2 = ~global0.xx;
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~2147483647i, 1i, 1i), 2147483647i | u_input.a), var_2.x, -(~abs(u_input.a))), -(firstTrailingBit(~vec3<i32>(39895i, 40595i, 20677i)) << (~select(vec3<u32>(71649u, var_0.a.x, var_0.a.x), vec3<u32>(20002u, 1u, 0u), vec3<bool>(true, true, false)) % vec3<u32>(32u))), vec3<i32>(i32(-1i) * -63606i, var_2.x, -2147483647i));
    return _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(reverseBits(-u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1356f * 537f), _wgslsmith_f_op_f32(abs(-416f)), _wgslsmith_f_op_f32(func_1(Struct_3(20602i, vec3<f32>(-1118f, 1024f, -106f), -338f)))), _wgslsmith_div_vec3_f32(vec3<f32>(func_2().b.x, _wgslsmith_div_f32(1038f, 1000f), -1084f), vec3<f32>(_wgslsmith_div_f32(-980f, 765f), _wgslsmith_f_op_f32(-439f * 1000f), _wgslsmith_f_op_f32(sign(-380f)))), true)), 675f);
    let var_1 = Struct_3(-18135i, vec3<f32>(_wgslsmith_f_op_f32(step(-999f, var_0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1096f, var_0.b.x))))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_div_f32(524f, var_0.c))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x));
    var var_3 = Struct_2(func_2(), any(select(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true), vec3<bool>(false, all(vec3<bool>(true, true, true)), true), !any(vec3<bool>(true, true, true)))));
    let var_4 = ~(~vec3<u32>(1u, countOneBits(4294967295u), _wgslsmith_mult_u32(var_3.a.a.x, 11509u))) & ~select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(var_3.a.a.x, var_3.a.a.x, 4294967295u), vec3<u32>(var_3.a.a.x, 40570u, var_3.a.a.x), vec3<bool>(var_3.b, var_3.b, var_3.b)), ~vec3<u32>(2093u, 11997u, var_3.a.a.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_3.a.a.x, var_3.a.a.x, 27318u), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.a.a.x, var_3.a.a.x, var_3.a.a.x), vec3<u32>(var_3.a.a.x, 27226u, var_3.a.a.x))), var_3.b | (true || var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(countOneBits(-17112i), 1i, -1i), ~var_3.a.a.x, _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(var_3.a.c, global0.x, 1i, var_1.a)), vec4<i32>(var_0.a, -6478i, 2147483647i, 1i) >> (vec4<u32>(var_4.x, 49391u, var_4.x, var_4.x) % vec4<u32>(32u)))), vec4<i32>(1i, 1i, var_3.a.c & var_1.a, (0i & var_1.a) & firstTrailingBit(global0.x))), var_4.x, -897f);
}

