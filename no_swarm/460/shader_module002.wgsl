struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: i32 = 1i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> Struct_5 {
    var var_0 = Struct_2(Struct_1(~(~1u) >> (min(1u, 9401u & u_input.c.x) % 32u), -(~vec4<i32>(13582i, u_input.a.x, -864i, 20505i)), _wgslsmith_f_op_f32(max(659f, arg_2.x)), !any(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(arg_3, true)))));
    global0 = array<vec3<bool>, 9>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, var_0.a.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1639f, -110f, 1280f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -142f), arg_2.x, _wgslsmith_f_op_f32(-1000f - arg_1)))), var_0.a, Struct_3(-154f, 29062i, Struct_2(Struct_1(~var_0.a.a, ~var_0.a.b, _wgslsmith_f_op_f32(-arg_1), false))), _wgslsmith_sub_vec3_u32(countOneBits(~u_input.c), ~(~max(vec3<u32>(0u, u_input.c.x, 35650u), vec3<u32>(0u, u_input.c.x, 64152u)))), _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(_wgslsmith_mod_i32(-u_input.a.x, countOneBits(18610i))), abs(~u_input.a.x) & u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1480f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2091f * -1000f) * _wgslsmith_f_op_f32(trunc(732f))))));
    var_1 = Struct_4(var_1.a, Struct_1(firstTrailingBit(31641u), var_0.a.b, _wgslsmith_f_op_f32(-846f * 299f), true), var_1.c, ~(~(~(~vec3<u32>(var_1.b.a, u_input.c.x, 1u)))), 27560i);
    return Struct_5(~min(~_wgslsmith_clamp_u32(u_input.c.x, 9578u, 0u), var_0.a.a), arg_3, ~countOneBits(abs(var_0.a.a)), ~min(var_0.a.a, 0u));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(1u, ~u_input.b.x), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(24092i, -2945i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(floor(1f)), true));
    var var_1 = func_3(!(!(!arg_0.x)), var_0.a.c, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(485f, -431f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.c, var_0.a.c)) * _wgslsmith_f_op_f32(var_0.a.c - var_0.a.c))))), _wgslsmith_f_op_f32(round(1706f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a.x, u_input.a.x, -13959i, var_0.a.b.x))) - _wgslsmith_f_op_f32(var_0.a.c - -1000f))));
    var var_2 = vec4<i32>(3674i, countOneBits(~4889i), ~0i, select(-u_input.a.x, u_input.a.x << (~var_1.a % 32u), (_wgslsmith_f_op_f32(-var_0.a.c) != _wgslsmith_f_op_f32(abs(var_0.a.c))) | !arg_0.x));
    var_2 = abs(_wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_2.x, u_input.a.x, 2147483647i, var_0.a.b.x)), vec4<i32>(-30551i, _wgslsmith_sub_i32(var_2.x, var_0.a.b.x), -61827i >> (u_input.c.x % 32u), 1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u ^ var_0.a.a, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), 1u, ~var_0.a.a), vec4<u32>(~var_1.d, _wgslsmith_clamp_u32(4294967295u, var_1.d, var_0.a.a), u_input.b.x | 0u, u_input.c.x ^ 131705u)) % vec4<u32>(32u)));
    let var_3 = arg_0.zx;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(firstTrailingBit(u_input.b.x), ~u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.c.xy >> (u_input.c.xx % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, 1u)) ^ u_input.c.x);
    let var_1 = vec4<i32>(-2147483647i, u_input.a.x, func_1(global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(2125u, 4294967295u), u_input.b.x, false), 9u)]), 0i);
    var var_2 = vec3<bool>(!all(vec2<bool>(true, 4294967295u != u_input.c.x)), false, true);
    var var_3 = firstLeadingBit(select(max(reverseBits(var_1.xx), vec2<i32>(var_1.x, -33435i)) | u_input.a.zz, -vec2<i32>(firstLeadingBit(var_1.x), u_input.a.x), vec2<bool>(all(var_2.xx), true)));
    global0 = array<vec3<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-340f, 1568f) * vec2<f32>(169f, 264f)))))), min(vec4<i32>(1i, min(~(-4372i), 1i), 0i, u_input.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_1, u_input.a), ~vec4<i32>(u_input.a.x, 1i, -390i, u_input.a.x)) << (min(vec4<u32>(0u, var_0.x, u_input.c.x, var_0.x), vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, var_0.x)) % vec4<u32>(32u))));
}

