struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
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

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 20> = array<f32, 20>(438f, -1000f, 1022f, 611f, 524f, 728f, -1723f, 1000f, -669f, 707f, 107f, -311f, -545f, 391f, 1803f, -400f, 1396f, 590f, -838f, -1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = 0u;
    let var_1 = firstLeadingBit(min(max(u_input.a, arg_1.x), ~u_input.b));
    var var_2 = arg_1;
    var_2 = vec3<i32>(-1i, 1482i, -(~(0i)));
    global1 = array<f32, 20>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~min(~vec2<u32>(u_input.d, u_input.c), firstTrailingBit(arg_0)), _wgslsmith_mod_vec2_u32(~arg_0 | vec2<u32>(0u, arg_0.x), ~arg_0)), arg_0);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 20u)], 347f))))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(abs(u_input.d), 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(780f * global1[_wgslsmith_index_u32(4294967295u, 20u)]) * 534f)))));
    var var_1 = !(true != all(vec4<bool>(true, true, true, true)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(293f, global1[_wgslsmith_index_u32(u_input.c, 20u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 881f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-988f, -567f), vec2<f32>(304f, 357f)))))))));
    var var_2 = vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, ~_wgslsmith_add_i32(1i, u_input.b & 0i)), u_input.b, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -1i))), vec2<i32>(firstLeadingBit(u_input.b), -u_input.b)));
    let var_3 = vec2<bool>(all(vec2<bool>(true, true)) || any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(4294967295u, 20u)]))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> f32 {
    global0 = func_2(~(~countOneBits(vec2<u32>(4294967295u, arg_0.c))), _wgslsmith_div_vec3_i32(min(~vec3<i32>(u_input.b, u_input.a, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-12456i, u_input.a, 1i), vec3<i32>(u_input.a, 0i, u_input.b), vec3<i32>(u_input.a, -1i, u_input.b))), -min(vec3<i32>(34279i, 21319i, u_input.b), vec3<i32>(1i, u_input.b, -2147483647i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1174f)), global1[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(func_3())))) << (1u % 32u);
    let var_0 = arg_0.a.x;
    var var_1 = Struct_1(arg_0.a, !arg_0.b, ~31501u);
    global0 = _wgslsmith_sub_u32(arg_0.c, reverseBits(u_input.c));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(51844u, 20u)])), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(-2057f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f) + _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + _wgslsmith_f_op_f32(240f + _wgslsmith_f_op_f32(func_3())))), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(965f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-310f - -1000f))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec2<f32>) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(-10496i, -9625i) >> (vec2<u32>(1u, arg_0.c) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.b, 1i)), !arg_1)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -9670i), firstTrailingBit(vec2<i32>(arg_2, u_input.b))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -4153i), vec2<i32>(arg_2, -2147483647i)) & vec2<i32>(2147483647i, u_input.a))), -(~max(u_input.a, -64178i) >> ((min(arg_0.c, arg_0.c) & 1u) % 32u)));
    var var_1 = arg_0.c;
    let var_2 = Struct_1(!arg_0.a, arg_0.a.yy, ~arg_0.c);
    let var_3 = true;
    global0 = max(var_2.c, firstTrailingBit(func_2(vec2<u32>(u_input.d, var_2.c), vec3<i32>(-12605i, arg_2, 1i) ^ vec3<i32>(u_input.b, 22231i, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1402f, global1[_wgslsmith_index_u32(0u, 20u)], -975f, 1000f) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], -867f, arg_3.x, 1072f))) & ~4104u));
    return (_wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(true, false, arg_0.a.x), var_2.b, arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-860f + global1[_wgslsmith_index_u32(u_input.d, 20u)]) + _wgslsmith_div_f32(arg_3.x, arg_3.x)), arg_3.x))) != !(0u != arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<u32>(u_input.d, ~select(u_input.d, u_input.c >> (u_input.c % 32u), func_1(Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), u_input.d), false, u_input.b, vec2<f32>(-113f, global1[_wgslsmith_index_u32(u_input.d, 20u)]))), u_input.d << (~69972u % 32u), reverseBits(u_input.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1391f, global1[_wgslsmith_index_u32(var_0.x, 20u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 20u)] - global1[_wgslsmith_index_u32(var_0.x, 20u)])) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(77008u, 20u)]), vec2<f32>(-270f, global1[_wgslsmith_index_u32(6805u, 20u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(48599u, 20u)], 167f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-943f, global1[_wgslsmith_index_u32(var_0.x, 20u)]) * vec2<f32>(-215f, global1[_wgslsmith_index_u32(1u, 20u)]))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 20u)], 473f) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 20u)], global1[_wgslsmith_index_u32(0u, 20u)])))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 20u)], global1[_wgslsmith_index_u32(2985u, 20u)]))), vec2<f32>(2157f, global1[_wgslsmith_index_u32(var_0.x, 20u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, global1[_wgslsmith_index_u32(13788u, 20u)]))) + vec2<f32>(global1[_wgslsmith_index_u32(67544u, 20u)], 1270f)));
    var var_2 = ~1u;
    global1 = array<f32, 20>();
    var var_3 = Struct_1(vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), any(vec3<bool>(true, true, true)) != any(vec2<bool>(true, true)), u_input.c < ~var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, func_1(Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), 71632u), true, u_input.b, vec2<f32>(735f, global1[_wgslsmith_index_u32(48652u, 20u)])), all(vec2<bool>(false, false))))), firstLeadingBit(min(_wgslsmith_dot_vec2_u32(var_0.wx, vec2<u32>(u_input.c, 229u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), abs(vec2<u32>(var_0.x, var_0.x))))));
    let var_4 = Struct_1(select(select(var_3.a, var_3.a, !var_3.b.x), !vec3<bool>(var_3.b.x, true, false), select(select(select(var_3.a, var_3.a, var_3.a), vec3<bool>(true, var_3.b.x, var_3.b.x), var_3.c >= 55777u), select(!vec3<bool>(var_3.a.x, var_3.b.x, false), vec3<bool>(var_3.a.x, var_3.a.x, true), true), !vec3<bool>(var_3.a.x, true, true))), !vec2<bool>(u_input.b > u_input.b, true), _wgslsmith_dot_vec2_u32(~(~max(vec2<u32>(u_input.c, u_input.d), vec2<u32>(var_3.c, 2867u))), vec2<u32>(~min(var_3.c, 20261u), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.b), -vec3<i32>(u_input.b, -1i, 31903i)), u_input.a << (~40034u % 32u)));
}

