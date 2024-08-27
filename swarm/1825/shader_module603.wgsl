struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

var<private> global1: vec2<i32>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(i32(-2147483648), Struct_1(509f, 442f, vec2<i32>(2147483647i, -1i), vec4<bool>(true, false, true, true)), 87483u, vec3<bool>(true, false, false)), Struct_2(-48161i, Struct_1(162f, -369f, vec2<i32>(0i, 11386i), vec4<bool>(false, false, true, true)), 1u, vec3<bool>(true, true, true)), Struct_2(-79295i, Struct_1(-336f, 1283f, vec2<i32>(2147483647i, 37490i), vec4<bool>(true, true, false, true)), 4294967295u, vec3<bool>(false, false, true)), Struct_2(-1i, Struct_1(817f, -2420f, vec2<i32>(9915i, 76934i), vec4<bool>(true, false, true, false)), 26556u, vec3<bool>(false, true, true)), Struct_2(i32(-2147483648), Struct_1(250f, -147f, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, true, true, false)), 1u, vec3<bool>(true, false, true)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = ~(~vec3<u32>(4294967295u | firstTrailingBit(1u), ~reverseBits(arg_1.a), 0u));
    global3 = array<Struct_2, 5>();
    global1 = reverseBits(max(countOneBits(_wgslsmith_sub_vec2_i32(~arg_1.d.b.c, ~arg_1.d.b.c)), countOneBits(vec2<i32>(-28411i, arg_0.x) >> (vec2<u32>(arg_1.e.x, 47513u) % vec2<u32>(32u)))));
    var var_1 = arg_1.b.d.wyx;
    var var_2 = 0u;
    return ~var_0.xy;
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(max(692f, -683f)), _wgslsmith_mult_vec2_i32(vec2<i32>(max(-1i, -3459i), min(global1.x, 2147483647i) & global1.x), (-vec2<i32>(28694i, global1.x) >> (select(u_input.b, vec2<u32>(u_input.e, u_input.c.x), false) % vec2<u32>(32u))) << (~func_3(vec3<i32>(-1i, u_input.a, u_input.a), Struct_3(16836u, Struct_1(-1000f, -453f, vec2<i32>(-1303i, -1i), vec4<bool>(false, true, true, true)), 4294967295u, global3[_wgslsmith_index_u32(u_input.e, 5u)], vec4<u32>(u_input.c.x, u_input.e, 1u, u_input.c.x))) % vec2<u32>(32u))), !vec4<bool>(true, true, (u_input.e ^ u_input.e) > 10162u, true));
    var var_1 = ~(~15556u);
    let var_2 = u_input.e & (u_input.c.x | u_input.c.x);
    global3 = array<Struct_2, 5>();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(round(arg_0)))), vec3<f32>(-878f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)), 180f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 1705f))), arg_0.x));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(20642u, u_input.e), ~39137u, select(32157u, 31754u, var_0.d.x)) | abs(vec3<u32>(u_input.c.x, 65042u, var_2)), vec3<u32>(~1u, u_input.e, _wgslsmith_sub_u32(1u, 0u)) >> (vec3<u32>(106906u, ~1u, u_input.b.x) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(13986u, u_input.c.x, 11712u)), ~firstTrailingBit(vec3<u32>(59079u, 1u, 96535u))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(vec3<i32>(10061i | u_input.d, u_input.d, -13032i), ~(vec3<i32>(_wgslsmith_div_i32(global1.x, u_input.d), -2147483647i, ~(-2147483647i)) << (~func_2(vec3<f32>(arg_2.x, arg_2.x, arg_0)) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    let var_0 = arg_1;
    global1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(min(_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(0i, global1.x, -2147483647i)), _wgslsmith_clamp_vec3_i32(arg_0, arg_0, vec3<i32>(-1i, -1i, arg_0.x))), -max(vec3<i32>(u_input.a, 0i, global1.x), vec3<i32>(global1.x, arg_0.x, global1.x))), u_input.a);
    var var_1 = Struct_4(select(vec4<bool>(any(vec4<bool>(false, false, false, true)) & true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1 < arg_1, true, true), true), vec4<bool>(false, true, u_input.d > u_input.a, !all(vec3<bool>(true, false, false)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_mult_i32(-34321i, max(-1i, global1.x)));
    let var_2 = vec2<bool>(var_1.a.x, var_1.a.x);
    global0 = array<vec2<f32>, 24>();
    return 65012i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(4294967295u);
    var var_1 = func_4(_wgslsmith_sub_vec3_i32(~func_1(-850f, vec2<u32>(u_input.c.x, u_input.e), vec3<f32>(1044f, 561f, -1000f)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.d), vec3<i32>(u_input.d, -1i, 34666i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1087f, 401f), _wgslsmith_f_op_f32(trunc(-2195f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2601f - -1000f)))), _wgslsmith_add_u32(u_input.c.x, ~(~var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-916f, 341f)), vec2<f32>(580f, -771f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(657f, 732f), vec2<f32>(148f, -1857f))))) | func_4(max(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-15572i, -12596i, 0i), vec3<i32>(1007i, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, global1.x, 1i), vec3<i32>(-20817i, global1.x, -43381i))), select(-vec3<i32>(u_input.a, u_input.a, 0i), select(vec3<i32>(-26958i, 1i, 38285i), vec3<i32>(u_input.a, global1.x, -1i), true), any(vec4<bool>(true, true, false, false)))), -1445f, u_input.c.x | (min(53409u, u_input.e) | 1u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(~var_0, 24u)]))));
    global0 = array<vec2<f32>, 24>();
    global2 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(func_2(vec3<f32>(524f, -561f, -776f)).x, var_0 & var_0), _wgslsmith_clamp_u32(countOneBits(var_0), ~0u, _wgslsmith_mod_u32(u_input.b.x, u_input.e)), u_input.c.x, func_2(vec3<f32>(941f, -1359f, 1236f)).x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, reverseBits(var_0), ~var_0, 120u), ~(~vec4<u32>(var_0, 6286u, 36122u, var_0)))));
    global0 = array<vec2<f32>, 24>();
    let var_2 = _wgslsmith_div_f32(-1000f, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(global1.x >> (~u_input.e % 32u))));
}

