struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec2<u32> {
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_sub_vec2_u32(countOneBits(~(~(~vec2<u32>(58834u, u_input.b)))), vec2<u32>(min(u_input.a, u_input.b), _wgslsmith_div_u32(u_input.a, u_input.a)));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return var_0;
}

fn func_2() -> u32 {
    var var_0 = u_input.a;
    var var_1 = firstTrailingBit(max(-1i, 0i));
    var_0 = 44799u;
    let var_2 = Struct_1(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1434f, 1000f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1344f, 130f), vec2<f32>(851f, -428f), vec2<bool>(true, false))))), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(22562i, 3437i), -vec2<i32>(-3854i, -18662i))), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-27938i, -1i, -7438i, -25400i), ~vec4<i32>(0i, 0i, 79433i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, 23674i, 2147483647i), vec4<i32>(-45291i, 34201i, 1i, 1i)))), vec3<i32>(2147483647i, -1660i, -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-396f * -135f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-327f * _wgslsmith_f_op_f32(-1500f + 777f)) + -1102f)));
    var_0 = var_2.a.x;
    return _wgslsmith_mult_u32(~4294967295u, max(27834u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2.a.x, var_2.a.x), reverseBits(var_2.a.x), u_input.b)) ^ u_input.b);
}

fn func_1(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 22>();
    let var_0 = 503f;
    let var_1 = true;
    let var_2 = select(~(vec3<u32>(_wgslsmith_div_u32(41999u, u_input.a), ~u_input.b, ~27893u) << (countOneBits(~vec3<u32>(58903u, u_input.b, u_input.a)) % vec3<u32>(32u))), vec3<u32>(u_input.b, ~max(~0u, func_2()), u_input.b), all(vec2<bool>(false, false)));
    var var_3 = max(select(-2147483647i << (0u % 32u), -15575i, !all(vec4<bool>(var_1, true, true, true))), max(~arg_0, arg_0));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = vec3<u32>(u_input.a, ~(_wgslsmith_mod_u32(u_input.b, 18742u) << (0u % 32u)) & 4294967295u, _wgslsmith_add_u32(func_1(-1i), ~u_input.b));
    var var_1 = -(i32(-1i) * -1i);
    let var_2 = vec2<i32>(min(_wgslsmith_add_i32(i32(-1i) * -2147483647i, abs(-36293i << (u_input.b % 32u))), -52761i), _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(-111510i, 2813i, 2147483647i), -vec3<i32>(8376i, -26632i, -26473i))), ~1i >> (u_input.b % 32u)));
    var var_3 = Struct_2(~firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(-1i, var_2.x, 1i, 47122i)));
    var_3 = Struct_2(select(firstLeadingBit(vec4<i32>(var_3.a.x ^ var_3.a.x, ~var_2.x, ~var_3.a.x, max(-2147483647i, 1967i))), var_3.a, any(vec4<bool>(true, true, true, true))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-523f, 1258f), _wgslsmith_f_op_f32(f32(-1f) * -1936f), _wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-733f, -772f, 742f) * vec3<f32>(1000f, -714f, 556f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(292f, -1234f, -624f) - vec3<f32>(-827f, -1225f, 920f)))), vec3<bool>(true, any(vec3<bool>(false, true, false)), true))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1398f, 1971f, 1000f)), vec3<f32>(_wgslsmith_div_f32(249f, -1290f), -2289f, 1000f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-434f, -1438f, -196f), vec3<f32>(-710f, -1056f, 1000f), false)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2022f, -1000f, -363f))))))));
    let var_5 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.a.xx, ~vec2<i32>(var_3.a.x, var_2.x)), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(var_3.a.x, 0i))), firstLeadingBit(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_4.x)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(-601f, -339f))), -1601f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x * var_4.x), _wgslsmith_f_op_f32(var_4.x - var_4.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, _wgslsmith_f_op_f32(f32(-1f) * -173f), var_4.x, _wgslsmith_f_op_f32(-var_4.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x) - vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x))))), _wgslsmith_f_op_f32(var_4.x * var_4.x), vec4<i32>(~(29288i >> (var_0.x % 32u)), 6314i, var_3.a.x, abs(2147483647i)) & vec4<i32>(-1182i, ~(~(-1i)), var_5, ~23112i >> (~var_0.x % 32u)));
}

