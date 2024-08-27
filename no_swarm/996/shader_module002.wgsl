struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-25541i, -1i, 2147483647i, -1i, -1376i, 62899i, -55045i, 2631i, -1248i, 33169i, 1i, 33940i, 0i, -1i, -1i, 74268i, 29474i);

var<private> global1: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 11491u, 49728u) ^ ~38298u, 1u), abs(0u)), 17u)];
    global1 = 0u;
    global0 = array<i32, 17>();
    var_0 = u_input.a.x;
    var var_1 = all(vec2<bool>(true, any(vec2<bool>(false, true)) || (arg_0.x >= u_input.a.x))) | !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec3<bool>(true, true, false))));
    return firstLeadingBit(0u << (0u % 32u));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_0 = 35956i;
    return min(abs(~vec3<u32>(abs(arg_0), 40843u, ~996u)), vec3<u32>(~(firstLeadingBit(4294967295u) >> (firstTrailingBit(14461u) % 32u)), ~arg_0, func_2(u_input.a, firstLeadingBit(_wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(arg_0, 17u)])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-617f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(f32(-1f) * -989f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1019f, -161f, -237f, -1000f)) * vec4<f32>(-1180f, 677f, 434f, 1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-331f * 208f), _wgslsmith_f_op_f32(abs(-823f)), _wgslsmith_f_op_f32(-1000f * 548f), -107f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1122f, 1245f, 432f, -182f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, 399f, 936f, -350f) + vec4<f32>(-389f, 1154f, 1000f, -306f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(-1174f, -1000f)), _wgslsmith_f_op_f32(select(-698f, -1000f, false)), 1353f, _wgslsmith_f_op_f32(f32(-1f) * -2458f)))), arg_0.a.x > countOneBits(1i))), any(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), false))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~7426u, _wgslsmith_add_u32(0u, 50222u), ~66784u) & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23821u, 67171u, 10302u), vec3<u32>(33074u, 0u, 0u)), 1u)) ^ reverseBits(max(abs(~4294967295u), 1u));
    return select(max(max(var_1.a, var_1.a) >> (abs(vec4<u32>(21029u, 0u, 1u, 0u)) % vec4<u32>(32u)), firstLeadingBit(arg_0.a) & arg_1.a), _wgslsmith_div_vec4_i32(vec4<i32>(abs(-16752i), 1i, u_input.a.x, -2147483647i), -(~arg_1.a)), true) ^ var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_0 = _wgslsmith_add_vec3_u32(abs(func_1(1153u) ^ ~vec3<u32>(25527u, 4294967295u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(27933u, 14164u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 0u), _wgslsmith_clamp_u32(31390u, 27112u, 1u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(18271u, 0u), _wgslsmith_div_u32(1u, 45328u))), vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(0u, 46335u), 7888u), 1u, 20501u)));
    var_0 = min(~(~vec3<u32>(var_0.x, 39492u, var_0.x)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, var_0.x), ~vec3<u32>(1u, 7519u, var_0.x)) % vec3<u32>(32u)), ~max(vec3<u32>(var_0.x, 113788u, 0u), vec3<u32>(1u, 4294967295u, 56740u))) << (vec3<u32>(~var_0.x, select(var_0.x, _wgslsmith_add_u32(~var_0.x, var_0.x), true), 0u) % vec3<u32>(32u));
    global0 = array<i32, 17>();
    let var_1 = Struct_1(~_wgslsmith_add_vec4_i32(-func_3(Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 17u)], 43934i, global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(6854u, 17u)])), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 17u)], -2147483647i, -2798i, 0i))), ~vec4<i32>(u_input.a.x, 2147483647i, -12876i, -1i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1760f - -707f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-508f * 1f)))) - -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-752f + _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * -627f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 - 1878f), _wgslsmith_f_op_f32(-var_2))))));
}

