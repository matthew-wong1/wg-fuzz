struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = false;
    var var_1 = arg_0.c.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(342f, -693f) - vec2<f32>(659f, global0.x));
    var var_3 = vec3<bool>(true, true, !((true & select(true, true, false)) || !all(vec4<bool>(false, false, false, false))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f) - _wgslsmith_f_op_f32(round(arg_0.c.a))))) + global0.x), ~(~_wgslsmith_div_i32(arg_0.c.b, 1i)), _wgslsmith_f_op_vec4_f32(max(arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -1572f, _wgslsmith_f_op_f32(-var_2.x), var_2.x) + vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-1333f, 914f), _wgslsmith_f_op_f32(1000f * 1971f), _wgslsmith_div_f32(-2464f, global0.x))))), 0u);
    return vec4<u32>(u_input.a, 50278u, arg_0.c.d, var_4.d);
}

fn func_2() -> vec2<f32> {
    var var_0 = vec4<u32>(~select(1u, u_input.a, true), select(~u_input.a >> ((u_input.a ^ 25369u) % 32u), ~(~u_input.a), all(vec2<bool>(true, true))), reverseBits(0u), abs(66913u) | ~(~u_input.a)) & abs(vec4<u32>(firstLeadingBit(~u_input.a), select(firstLeadingBit(31054u), ~30505u, true), u_input.a, min(u_input.a ^ u_input.a, u_input.a)));
    let var_1 = vec4<i32>(~(~(i32(-1i) * -1i)), ~(-_wgslsmith_div_i32(~(-2147483647i), 1i >> (var_0.x % 32u))), ~(-(~select(5970i, 1i, false))), (select(~2147483647i, ~4718i, false) << (var_0.x % 32u)) | -21577i);
    var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, ~83367u << (_wgslsmith_div_u32(1u, var_0.x) % 32u), ~_wgslsmith_clamp_u32(4294967295u, 11507u, 28938u), 1u), ~func_3(Struct_2(_wgslsmith_f_op_f32(917f + -683f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -436f)), Struct_1(1947f, -10498i, vec4<f32>(947f, 335f, global0.x, -320f), 1u))));
    var var_2 = firstLeadingBit(vec4<u32>(~53272u, 15918u, func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1862f, global0.x)), Struct_1(1552f, 5563i, vec4<f32>(300f, global0.x, -1000f, -387f), 0u))).x, max(15153u, 4294967295u & max(1u, u_input.a))));
    var_2 = select(vec4<u32>(_wgslsmith_mult_u32(var_0.x << (61229u % 32u), ~1u | u_input.a), 44497u, u_input.a, var_2.x), ~min(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_0.x, 16253u, 0u, var_0.x)), firstLeadingBit(vec4<u32>(u_input.a, var_0.x, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 19880u, 28934u, 1u), vec4<u32>(var_2.x, 1u, 0u, 17635u))), ~(~vec4<u32>(u_input.a, 54148u, var_2.x, u_input.a))), all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, global0.x)))));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_mult_vec2_u32(~firstTrailingBit(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(38502u, 767u) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), any(vec2<bool>(false, arg_0)))), ~vec2<u32>(0u, u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2())));
    var_0 = vec2<u32>(18166u | ~var_0.x, var_0.x);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 634f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1935f, -247f)))))) + vec2<f32>(var_1.x, var_1.x));
    var var_2 = Struct_2(global0.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1257f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1085f + var_1.x)), global0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 215f, var_1.x, -124f))), vec4<f32>(_wgslsmith_f_op_f32(861f * -951f), _wgslsmith_f_op_f32(1276f + global0.x), 1054f, _wgslsmith_f_op_f32(global0.x - -1127f))))), Struct_1(var_1.x, _wgslsmith_clamp_i32(-1i, ~(i32(-1i) * -2147483647i), 1i), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1137f, global0.x)))), var_1.x, global0.x, 390f), var_0.x >> (_wgslsmith_add_u32(abs(1u), u_input.a) % 32u)));
    return StorageBuffer(_wgslsmith_sub_i32(var_2.c.b, ~_wgslsmith_mod_i32(var_2.c.b, var_2.c.b) ^ (abs(-67848i) & var_2.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(49514u, 1u, 1541u, abs(var_2.c.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 48504u, var_0.x), ~vec4<u32>(16397u, var_0.x, 1u, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(any(vec4<bool>(true, true, true, true)));
}

