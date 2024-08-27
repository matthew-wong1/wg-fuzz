struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 7294u, 0u, 4294967295u), vec4<u32>(42221u, 0u, 1u, 0u), vec4<u32>(34643u, 29228u, 26338u, 0u), vec4<u32>(44149u, 1u, 29906u, 1u), vec4<u32>(66641u, 87239u, 1u, 13216u), vec4<u32>(1u, 1u, 57261u, 1u), vec4<u32>(1u, 41955u, 0u, 17824u), vec4<u32>(0u, 78272u, 1u, 1u), vec4<u32>(4294967295u, 1225u, 21332u, 4294967295u), vec4<u32>(0u, 63758u, 0u, 1u));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, 687f, 644f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, -1198f, arg_0.x, 1670f) * vec4<f32>(1372f, arg_0.x, arg_0.x, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(481f - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), 1243f, _wgslsmith_f_op_f32(trunc(345f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -315f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 623f) * var_0.yw)));
    global1 = select(vec2<bool>(all(vec2<bool>(false, false)), arg_2), vec2<bool>(select(all(vec3<bool>(true, true, false)) & false, any(!vec4<bool>(global1.x, false, true, true)), true), true), select(select(!select(vec2<bool>(global1.x, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, global1.x)), vec2<bool>(arg_2, !arg_2), !select(vec2<bool>(arg_2, global1.x), vec2<bool>(true, arg_2), vec2<bool>(false, true))), vec2<bool>(all(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, arg_2), false)), global1.x), !(!(!vec2<bool>(global1.x, false)))));
    global1 = vec2<bool>(true, false);
    global0 = array<vec4<u32>, 10>();
    return Struct_1(var_0);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global1 = select(vec2<bool>(global1.x && false, false), vec2<bool>(select(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), 4294967295u != u_input.a, global1.x), global1.x), all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x))), true)));
    let var_0 = arg_1.a.x;
    let var_1 = Struct_1(arg_0.a);
    let var_2 = -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-32625i, i32(-1i) * -1i, -12221i)), ~_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, -21141i)), _wgslsmith_add_vec3_i32(vec3<i32>(-76823i, 0i, -2242i), vec3<i32>(12880i, 2147483647i, -1i))));
    global1 = select(select(vec2<bool>(true, true), select(vec2<bool>(any(vec4<bool>(false, global1.x, true, false)), global1.x), vec2<bool>(true, true), vec2<bool>(global1.x, false)), select(select(vec2<bool>(true, true), vec2<bool>(global1.x, false), global1.x), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), true), select(!vec2<bool>(global1.x, false), select(vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)), vec2<bool>(true, global1.x)))), !vec2<bool>(false, !all(vec2<bool>(false, false))), var_2.x < _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(-548i, var_2.x, var_2.x)), ~select(vec3<i32>(var_2.x, var_2.x, 0i), vec3<i32>(2147483647i, var_2.x, 1i), vec3<bool>(global1.x, true, global1.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.a.x, -628f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1187f, arg_1.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), true)), _wgslsmith_f_op_f32(ceil(arg_0.a.x))), _wgslsmith_f_op_f32(-1f), all(vec3<bool>(global1.x, var_2.x >= var_2.x, !global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)) + arg_0.a.x) - _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_1.a.x + -293f)))));
}

fn func_2() -> f32 {
    global0 = array<vec4<u32>, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), _wgslsmith_f_op_f32(f32(-1f) * -215f), 987f, -319f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, 635f, -144f, 205f) - vec4<f32>(-360f, -343f, -676f, -992f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, 391f, 706f), vec4<f32>(-375f, 933f, 281f, -1834f))), _wgslsmith_f_op_vec4_f32(func_3(func_1(vec3<f32>(-708f, -2225f, 586f), vec4<u32>(u_input.a, 44908u, 6632u, 4294967295u), global1.x), Struct_1(vec4<f32>(1383f, -533f, -1061f, -631f))))))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a.yzx)) + var_0.a.wxw)), vec4<u32>(_wgslsmith_div_u32(20157u, 1u), ~0u, 104849u, 0u), false);
    var var_2 = func_1(var_0.a.wzz, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 36606u, 20491u, 8519u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 70910u, u_input.a, u_input.a), select(vec4<u32>(56534u, 4294967295u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 10u)], global1.x))), any(vec2<bool>(global1.x, !global1.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(105f * 379f), -918f))) + _wgslsmith_f_op_f32(select(var_0.a.x, var_1.a.x, global1.x))), _wgslsmith_f_op_f32(960f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-218f, _wgslsmith_f_op_f32(572f * var_2.a.x)) + var_1.a.x)), _wgslsmith_f_op_f32(-var_0.a.x));
    return _wgslsmith_f_op_f32(max(-1908f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1550f, 1464f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_2.a.x) + 1983f)) - _wgslsmith_f_op_f32(trunc(-296f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2549f * 882f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1213f - -1041f), -1000f))), -128f, 892f), (_wgslsmith_div_vec4_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(29080u, 10u)])) << (~global0[_wgslsmith_index_u32(1u, 10u)] % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 17533u), global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), abs(global0[_wgslsmith_index_u32(1u, 10u)])), global0[_wgslsmith_index_u32(u_input.a, 10u)]) % vec4<u32>(32u)), global1.x);
    global0 = array<vec4<u32>, 10>();
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.a.x)))), 526f, var_0.a.x) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1150f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -330f), _wgslsmith_f_op_f32(func_2()))), abs(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(17740u, 127795u, u_input.a, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(27032u, u_input.a, u_input.a, 5530u), global0[_wgslsmith_index_u32(29991u, 10u)]), global1.x & (var_0.a.x == 2088f))), !global1.x);
    let var_2 = var_1.a.xwy;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(var_0.a.zw));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, var_1.a.x, -992f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, 441f, 194f), var_1.a.wxz), true))) - _wgslsmith_f_op_vec3_f32(max(var_2, var_2))) - _wgslsmith_f_op_vec3_f32(-var_2));
    var var_5 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -754f, -288f)) + var_4), _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<u32>(~1u, 2184u, u_input.a, _wgslsmith_sub_u32(max(1u, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)))), !select(true, true, any(!vec3<bool>(global1.x, true, true))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_4.x, -928f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-40467i, -2147483647i, -13416i, 2883i), vec4<i32>(17848i, -13839i, 17562i, 1i)), ~reverseBits(vec4<i32>(2147483647i, 11039i, -23685i, 13864i)))), 49737i, -763f, u_input.a);
}

