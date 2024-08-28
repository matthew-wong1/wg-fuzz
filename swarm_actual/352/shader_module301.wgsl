struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756f * -1000f)), _wgslsmith_f_op_f32(max(-1475f, _wgslsmith_f_op_f32(trunc(-785f)))), 657f, _wgslsmith_f_op_f32(f32(-1f) * -2617f))), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 2147483647i), select(vec3<i32>(23382i, arg_0, 2147483647i), vec3<i32>(2147483647i, u_input.a, -14800i), true), firstTrailingBit(vec3<i32>(-1i, 0i, u_input.a))) & ~vec3<i32>(2147483647i, arg_0, arg_0)), vec4<bool>(true, true, true, true), u_input.b.x, -vec4<i32>(firstLeadingBit(arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-33596i, u_input.a, u_input.a, 21530i), vec4<i32>(2147483647i, arg_0, -2147483647i, u_input.a)), u_input.a, 42687i) & vec4<i32>(~min(u_input.a, arg_0), u_input.a, arg_0, ~arg_0));
    var var_1 = _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-87040i, -2147483647i)), var_0.e.xz);
    let var_2 = vec4<bool>(!(var_0.d == ~1u), any(!var_0.c), all(!var_0.c.xz), !any(select(select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), var_0.c, false), vec4<bool>(var_0.c.x, true, true, true), !vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x))));
    var_1 = firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -arg_0), ~var_0.e.yy | _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -23706i), var_0.b.zy)), _wgslsmith_sub_vec2_i32(~firstTrailingBit(var_0.e.yz), vec2<i32>(2147483647i, i32(-1i) * -2147483647i))));
    let var_3 = _wgslsmith_f_op_f32(round(-1987f));
    return 8704u << (_wgslsmith_clamp_u32(select(0u, var_0.d, !(var_2.x & var_2.x)), ~1u, 0u & u_input.b.x) % 32u);
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-685f, 424f, _wgslsmith_f_op_f32(abs(1368f)), -205f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2837f, 758f, -2250f, 796f))))))), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a) << (vec3<u32>(1u, 6386u, u_input.b.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-52763i, u_input.a, u_input.a)), -vec3<i32>(-2147483647i, u_input.a, -2147483647i))), !select(vec4<bool>(true, true, true, select(false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), ~112303u, -vec4<i32>(1i, _wgslsmith_sub_i32(countOneBits(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -15742i, u_input.a), vec3<i32>(-1i, -3322i, u_input.a))), reverseBits(-17152i), _wgslsmith_clamp_i32(u_input.a, max(15226i, 0i), 34118i)));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.b.x, ~_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x)), 7u)];
    let var_2 = vec2<f32>(-1170f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, var_0.c.x)), 135f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(422f))))))));
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1315f, var_2.x, var_2.x, 282f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, var_0.a.x, var_1.a.x, 265f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_2.x, var_2.x, var_0.a.x, 858f)) * _wgslsmith_f_op_vec4_f32(-var_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(-1098f, -1622f, 655f, var_2.x))))), min(vec3<i32>(i32(-1i) * -36232i, 2147483647i, max(23294i, -10053i)), var_1.b) ^ var_1.e.xyx, vec4<bool>((_wgslsmith_mod_i32(73373i, -20494i) <= _wgslsmith_sub_i32(var_0.e.x, -1i)) | (4294967295u == var_1.d), !var_0.c.x, var_1.c.x, all(var_0.c.zz)), 69938u, abs(-select(vec4<i32>(var_0.b.x, var_1.e.x, 55008i, -13238i), vec4<i32>(-1i, 46717i, -2147483647i, 49511i), var_0.c) << (vec4<u32>(u_input.b.x >> (var_1.d % 32u), countOneBits(var_0.d), var_0.d | 43201u, max(11987u, 67995u)) % vec4<u32>(32u))));
    return 0u;
}

fn func_2() -> StorageBuffer {
    var var_0 = u_input.b;
    var_0 = vec2<u32>(u_input.b.x, func_3());
    global0 = array<Struct_1, 7>();
    var_0 = vec2<u32>(abs(abs(var_0.x ^ countOneBits(1u))), ~reverseBits(~(u_input.b.x | u_input.b.x)));
    global0 = array<Struct_1, 7>();
    return StorageBuffer(1179f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-806f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(745f, -1440f)), -750f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(678f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(655f, 1423f, true)), _wgslsmith_div_f32(-236f, -826f))))), u_input.a, ~vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(1351i, -45497i, 2147483647i, u_input.a)), select(61700i, _wgslsmith_mod_i32(-2147483647i, u_input.a), u_input.b.x != 35382u), _wgslsmith_sub_i32(firstTrailingBit(u_input.a), abs(u_input.a)), u_input.a ^ (i32(-1i) * -44094i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(1070f)), _wgslsmith_f_op_f32(abs(634f)), -981f, _wgslsmith_f_op_f32(-742f * 1000f))))), vec3<i32>(_wgslsmith_add_i32(u_input.a, -_wgslsmith_add_i32(7937i, u_input.a)), u_input.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(7573i, 1i), ~u_input.a)), vec4<bool>(true, true, true, true), 4294967295u, ~(-abs(vec4<i32>(0i, u_input.a, u_input.a, u_input.a) | vec4<i32>(89587i, -31306i, u_input.a, -2076i))));
    var var_1 = u_input.a;
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 17060u, 6035u, var_0.d), ~vec4<u32>(26193u, 91546u, var_0.d, u_input.b.x))) >> (~(~max(1u, 1u)) % 32u), 7u)];
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(round(var_0.a.x)), -922f, _wgslsmith_f_op_f32(-var_0.a.x)), ~firstTrailingBit(-var_0.e.xyx), !(!(!var_0.c)), abs(func_1(var_0.b.x)), vec4<i32>(_wgslsmith_mod_i32(var_0.b.x, -(~var_0.e.x)), 1i, var_0.b.x, u_input.a));
    let x = u_input.a;
    s_output = func_2();
}

