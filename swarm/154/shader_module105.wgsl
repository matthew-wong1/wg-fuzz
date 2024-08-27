struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-735f)), _wgslsmith_f_op_f32(-1083f - -133f)))) - _wgslsmith_f_op_f32(sign(-717f)))));
    let var_1 = true;
    let var_2 = u_input.a.xy;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f - -1655f) + 561f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-390f * 1235f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(206f, -1000f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1010f + -171f), -704f)))) * _wgslsmith_f_op_f32(select(-103f, -538f, all(!vec4<bool>(true, var_1, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(268f + 903f))), 244f));
    return !vec3<bool>(any(vec4<bool>(var_1, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), var_1)), !var_1, !(var_3 > var_3));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec3<bool>(arg_0.a, true, arg_2.a);
    let var_1 = arg_0;
    global0 = array<vec3<f32>, 19>();
    global2 = arg_2.c;
    var_0 = !(!select(func_3(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), abs(arg_0.b.yz), _wgslsmith_sub_i32(0i, -57053i)), !vec3<bool>(var_0.x, false, var_1.a), select(true, var_1.a, arg_0.a)));
    return select(vec3<u32>(reverseBits(3529u), 1u, ~abs(1u)), reverseBits(vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 19332u, 22261u)), !select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, arg_2.a, var_1.a), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, arg_2.a), vec3<bool>(var_0.x, false, arg_2.a), var_1.a))) << (min(min(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(21827u, 1u, 54889u)), _wgslsmith_mod_vec3_u32(vec3<u32>(55152u, 0u, 4294967295u), vec3<u32>(u_input.a.x, 0u, 1u))), u_input.a), min(vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), reverseBits(u_input.a.x), u_input.a.x), (vec3<u32>(0u, u_input.a.x, u_input.a.x) << (u_input.a % vec3<u32>(32u))) | abs(vec3<u32>(u_input.a.x, 0u, 4294967295u)))) % vec3<u32>(32u));
}

fn func_1() -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_1 = ~abs(func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(28639u, u_input.a.x), reverseBits(4294967295u), select(107233u, u_input.a.x, var_0.a)), 14u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-576f, 1234f, 765f, -1548f), vec4<f32>(822f, 981f, -1893f, 344f))), global3[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_clamp_u32(41561u, u_input.a.x, u_input.a.x) % 32u), 14u)]));
    let var_2 = func_3(vec3<u32>(0u, u_input.a.x, 1u), var_0.b.yx, -firstLeadingBit(countOneBits(82039i ^ var_0.b.x)));
    global1 = array<Struct_1, 27>();
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1131f, 568f, 189f, 1226f) - vec4<f32>(1000f, 1143f, -423f, 458f))))), vec4<f32>(_wgslsmith_f_op_f32(-173f + _wgslsmith_f_op_f32(trunc(-378f))), -1539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1782f - 292f) - 550f), 170f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1583f, -1556f, -1916f, -222f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1067f, -1000f, 153f, 429f), vec4<f32>(-102f, -640f, 519f, 196f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, 930f, 109f, 1276f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, -1000f, 294f, -972f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, 1162f, 1413f, 613f) * vec4<f32>(-196f, -416f, 336f, -567f))), vec4<f32>(_wgslsmith_f_op_f32(-716f - 1207f), _wgslsmith_div_f32(-583f, -993f), _wgslsmith_f_op_f32(-795f + -627f), _wgslsmith_f_op_f32(step(236f, -1299f))), vec4<bool>(var_0.a, any(vec2<bool>(true, var_0.a)), true, false)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(round(var_3.x))) + var_3.wy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(608f, -404f))) + _wgslsmith_f_op_vec2_f32(trunc(var_3.xy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, -1226f)))), vec2<bool>(all(vec2<bool>(var_0.a, var_2.x)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-844f, -138f) - vec2<f32>(1354f, -279f))))))));
    var var_1 = _wgslsmith_dot_vec2_i32(~select(~vec2<i32>(-6956i, 0i) >> (~u_input.a.xx % vec2<u32>(32u)), -abs(vec2<i32>(2147483647i, 0i)), !select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec2<i32>(1i, 1i));
    global1 = array<Struct_1, 27>();
    var_1 = reverseBits(-(i32(-1i) * -1i) >> (_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 4294967295u) % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1()).x - _wgslsmith_f_op_vec2_f32(func_1()).x)))));
    let var_3 = Struct_1(true, -firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(0i, -19747i, 6978i)), ~(-1i));
    var_1 = _wgslsmith_div_i32(~(~(-(~73182i))), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(var_3.b, ~var_3.b), vec3<i32>(~(1i << (1u % 32u)), min(~(-1i), var_3.c), -1i >> (min(1u, 0u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.b.x, 0i));
}

