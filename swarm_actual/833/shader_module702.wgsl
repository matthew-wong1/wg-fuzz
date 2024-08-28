struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -531f), 762f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1784f + 1933f)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = vec4<i32>(~2147483647i, ~select(arg_2, arg_2, all(vec4<bool>(true, true, true, true))), 34243i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, arg_2, 21536i), vec3<i32>(-18518i, arg_2, arg_2) | vec3<i32>(arg_2, arg_2, 11251i), -vec3<i32>(30925i, 38508i, 1i))), vec3<i32>(-1i) * -(~vec3<i32>(-1708i, 35516i, arg_2))));
    var var_1 = Struct_4(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(var_0.xw), _wgslsmith_div_vec2_i32(var_0.xy, vec2<i32>(var_0.x, var_0.x))), firstLeadingBit(vec2<i32>(2147483647i, arg_2)) >> (vec2<u32>(_wgslsmith_add_u32(arg_1.x, arg_1.x), 63017u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(arg_0.x + 262f)))), 0u, u_input.b.zz), _wgslsmith_sub_u32(_wgslsmith_add_u32(92u, u_input.c), u_input.b.x), max(-max(~25108i, ~arg_2), abs(-39494i)));
    let var_2 = Struct_4(vec2<i32>(abs(1i ^ ~var_1.a.x), abs(_wgslsmith_mult_i32(var_0.x, 0i | var_0.x))), var_1.b, ~firstTrailingBit(0u), 0i);
    var_0 = vec4<i32>(arg_2, -36750i, 1i << (_wgslsmith_div_u32(var_2.c | var_1.b.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 86186u, u_input.c), vec3<u32>(arg_1.x, var_1.c, u_input.b.x))) % 32u), -2147483647i);
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, max(-62715i, -(var_0.x & var_2.d)), arg_2 & abs(arg_2 << (var_1.c % 32u)), arg_2), -(~firstTrailingBit(vec4<i32>(-1i, var_1.a.x, var_2.d, 2147483647i))));
    return arg_0.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = u_input.b.zy;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + arg_1.a) * _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, false))), true)))), _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.a) + _wgslsmith_f_op_f32(1143f * 505f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-243f, -1135f) * vec2<f32>(arg_1.a, 1000f)), vec3<u32>(0u, u_input.a, var_0.x), ~42615i))), !select(true, true, true))));
    var_0 = ~arg_1.c;
    let var_2 = u_input.b;
    var_0 = select(u_input.b.wy, ~(~vec2<u32>(arg_1.c.x, _wgslsmith_add_u32(1u, 23694u))), vec2<bool>(!(_wgslsmith_f_op_f32(select(1538f, -211f, true)) > _wgslsmith_f_op_f32(f32(-1f) * -1253f)), false));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(select(~24952i, abs(-func_1(2147483647i, Struct_1(645f, 0u, vec2<u32>(u_input.b.x, 0u)))), true), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-select(7267i, -10680i, false), 7358i), abs(-31707i)));
    var_0 = _wgslsmith_clamp_i32(-(~1i), _wgslsmith_mult_i32(1i, ~(~47876i)), -1i >> (~(_wgslsmith_div_u32(54720u, u_input.c) & ~62022u) % 32u));
    var_0 = _wgslsmith_mod_i32(1i, countOneBits(_wgslsmith_sub_i32(1i, reverseBits(-1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1273f - -470f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f + 749f)), _wgslsmith_f_op_f32(f32(-1f) * -277f)) * vec4<f32>(-1117f, _wgslsmith_div_f32(-1656f, _wgslsmith_div_f32(-105f, -607f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-154f * 610f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1264f + 289f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, 1000f, 945f, -1088f))))))));
    var_0 = abs(i32(-1i) * -31869i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~_wgslsmith_clamp_u32(u_input.c ^ 56930u, u_input.b.x >> (1u % 32u), _wgslsmith_add_u32(u_input.b.x, u_input.c))));
}

