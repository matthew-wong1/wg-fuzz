struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
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

var<private> global0: array<bool, 1>;

var<private> global1: bool;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    global0 = array<bool, 1>();
    let var_0 = Struct_1(~(~reverseBits(~arg_0)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1379f, -1000f, -120f, -1286f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1651f, 740f, -1992f, 1915f), vec4<f32>(-870f, 338f, 586f, 1264f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1125f, -820f, -1903f, -2183f))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f + var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -132f), var_1.x);
    global0 = array<bool, 1>();
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global1 = all(select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(4740u, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)]))), !vec3<bool>(arg_1, true, select(global2.x, global2.x, true)), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, arg_1, true)), !(!vec3<bool>(global2.x, global2.x, arg_1)), select(!vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(13017u, 1u)]), vec3<bool>(global2.x, arg_1, false), select(vec3<bool>(arg_1, global2.x, true), vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(36757u, 1u)]), vec3<bool>(global2.x, global2.x, false))))));
    var var_0 = 325f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(669f, -911f, -567f), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1510f, 1987f, -490f), vec3<f32>(417f, -2168f, -399f), global0[_wgslsmith_index_u32(4294967295u, 1u)]))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1255f, -621f), 1000f, 953f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1873f, 321f, 114f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f + -897f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-224f, -102f)))))));
    var var_2 = -countOneBits(select(~vec2<i32>(29160i, 15035i), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), u_input.a.zz), vec2<i32>(arg_0.a.x, u_input.c)), arg_1));
    global0 = array<bool, 1>();
    return ~select(abs(vec2<i32>(-arg_0.a.x, 0i)), vec2<i32>(0i, -2147483647i), global2.xy);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -117f, 1343f, 1000f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1220f, 206f, -1311f, 946f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-843f, -607f, 236f, -188f) + vec4<f32>(-736f, 1360f, -661f, -905f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(637f, 1008f, 881f, -527f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1934f, -1000f, -882f, 819f) * vec4<f32>(-775f, 127f, 1658f, -110f)), arg_0 == true))), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(15587u, 1u)], true, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 1u)]))), true, !select(false, global0[_wgslsmith_index_u32(0u, 1u)], true), !(!arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, 396f, 152f, 190f)))));
    global2 = !vec3<bool>(true, global0[_wgslsmith_index_u32(func_2(u_input.a.yw, u_input.a.x) >> (25061u % 32u), 1u)], arg_0);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), func_3(Struct_1(u_input.a.yx), true)));
    global1 = 1u < min(~(~1u), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(1u, 1u, 0u)));
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(73342u, 37987u), vec2<u32>(4294967295u, 40392u)) << (~23515u % 32u), _wgslsmith_clamp_u32(1u, ~6084u, 1u), ~(~55594u)) | ~(~(~(~vec3<u32>(51715u, 75035u, 4294967295u))));
    return firstLeadingBit(vec2<i32>(i32(-1i) * -1i, firstLeadingBit(-_wgslsmith_sub_i32(var_1.a.x, var_1.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 26404u, firstTrailingBit(~80916u)), vec3<u32>(~arg_1.x, 8152u, arg_1.x)), global0[_wgslsmith_index_u32(reverseBits(arg_1.x), 1u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1000f) + vec2<f32>(-773f, arg_2)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, 1000f), vec2<f32>(-640f, arg_2)))))) * vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -396f))))));
    let var_2 = Struct_1(vec2<i32>(38768i, 0i));
    var_0 = ~abs(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_1.x, arg_1.x, 29938u, 66442u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 22562u, 11796u, arg_1.x), vec4<u32>(0u, 13772u, 4294967295u, 1u))));
    var var_3 = global2.x;
    return Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, _wgslsmith_clamp_i32(arg_3.a.x, select(arg_3.a.x, -39361i, true), _wgslsmith_mod_i32(-5140i, -2147483647i))), ~func_3(Struct_1(u_input.a.zy), any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], false, global2.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    global2 = !select(!(!select(vec3<bool>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global2.x, global2.x), false)), vec3<bool>(false, true, true), select(select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(69132u, 1u)]), vec3<bool>(false, global2.x, false), global0[_wgslsmith_index_u32(4294967295u, 1u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(22080u, 1u)], true), vec3<bool>(global2.x, global2.x, global2.x), false), global2.x & false), select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, true), true), global0[_wgslsmith_index_u32(~1u, 1u)]));
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1001i, 1i, arg_0.x, 1i) ^ u_input.a, ~vec4<i32>(arg_1.a.x, arg_0.x, u_input.d, -2147483647i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-14525i, u_input.c, -43310i, -2495i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, -2570i, arg_0.x), u_input.a), -u_input.a));
    let var_1 = abs(vec2<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u)) ^ 13461u), select(4294967295u, ~abs(18190u), true)));
    global2 = vec3<bool>(false & global2.x, all(!(!select(vec4<bool>(global2.x, false, false, true), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(var_1.x, 1u)], global0[_wgslsmith_index_u32(var_1.x, 1u)], global2.x), false))), global2.x);
    var var_2 = ~1u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.xz;
    global1 = func_5(~(-(u_input.a.xz | vec2<i32>(3093i, 2147483647i))) ^ -vec2<i32>(u_input.a.x, ~(-16343i)), func_4(Struct_1(func_1(var_0.x) | select(vec2<i32>(u_input.d, u_input.d), u_input.a.zx, global2.xz)), max(countOneBits(select(vec3<u32>(49909u, 0u, 4294967295u), vec3<u32>(27180u, 17496u, 1u), vec3<bool>(true, var_0.x, true))), vec3<u32>(1u, _wgslsmith_sub_u32(70650u, 14118u), 61663u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1600f)))), Struct_1(~vec2<i32>(1i, 1i))));
    var var_1 = func_4(func_4(func_4(Struct_1(~vec2<i32>(u_input.b, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(-1f), Struct_1(u_input.a.yx)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1650f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2811f + -860f))), any(select(vec3<bool>(false, false, global2.x), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], true))))), Struct_1(_wgslsmith_mod_vec2_i32(u_input.a.zw, u_input.a.yy | u_input.a.xx))), _wgslsmith_mult_vec3_u32(~vec3<u32>(~15657u, _wgslsmith_clamp_u32(0u, 31204u, 1u), 4294967295u), vec3<u32>(~15684u, 33223u, 0u)), -423f, func_4(Struct_1(-vec2<i32>(1i, 1i)), ~vec3<u32>(1u, firstTrailingBit(27235u), 1u), _wgslsmith_div_f32(-289f, -403f), Struct_1(vec2<i32>(~(-2147483647i), u_input.d))));
    var var_2 = min(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wzz, u_input.a.xyz, ~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, u_input.c), u_input.a.xzx)), vec3<i32>(-var_1.a.x, _wgslsmith_div_i32(28754i, 2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(2455i, u_input.c), vec2<i32>(u_input.c, var_1.a.x))))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.a.x << (53953u % 32u), _wgslsmith_div_i32(var_1.a.x, 0i)), var_1.a.x, var_1.a.x >> (_wgslsmith_mult_u32(13166u, 43013u) % 32u)), abs(2147483647i), ~abs(-22422i)));
    global0 = array<bool, 1>();
    var_1 = func_4(func_4(Struct_1(var_2.xz << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), vec3<u32>(~(~15150u), ~_wgslsmith_add_u32(0u, 1u), 1u), -2276f, func_4(func_4(Struct_1(vec2<i32>(var_2.x, -50798i)), vec3<u32>(24618u, 1u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -569f), Struct_1(var_1.a)), select(~vec3<u32>(0u, 4294967295u, 4294967295u), select(vec3<u32>(14851u, 0u, 57357u), vec3<u32>(0u, 20585u, 67707u), vec3<bool>(var_0.x, global2.x, true)), true), -1471f, Struct_1(var_2.yx))), vec3<u32>(72550u, 50259u, _wgslsmith_sub_u32(func_2(var_1.a, select(u_input.b, 55626i, var_0.x)), func_2(u_input.a.zz, -42i) ^ 51944u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-640f, 589f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(183f, -2821f)), _wgslsmith_f_op_f32(min(1956f, -1292f))))))), Struct_1(((var_1.a ^ vec2<i32>(0i, u_input.b)) & func_4(Struct_1(var_2.yz), vec3<u32>(0u, 10226u, 47243u), 615f, Struct_1(u_input.a.xz)).a) >> (_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(36896u, 1u), vec2<bool>(global2.x, var_0.x)), vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    let var_3 = countOneBits(min(vec2<u32>(_wgslsmith_clamp_u32(21134u, 1u, 1u), _wgslsmith_mod_u32(41638u, _wgslsmith_dot_vec3_u32(vec3<u32>(47355u, 24731u, 41104u), vec3<u32>(103705u, 81252u, 1u)))), vec2<u32>(1u, 1u)));
    var_2 = ~u_input.a.yxz;
    var_1 = Struct_1(-var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(u_input.a.xz)));
}

