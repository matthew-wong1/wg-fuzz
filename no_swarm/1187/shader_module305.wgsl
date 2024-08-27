struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
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

var<private> global0: array<f32, 26> = array<f32, 26>(-739f, 1000f, -1382f, -1008f, -370f, -454f, 1906f, -1000f, 1464f, 1000f, -665f, -1073f, -552f, 903f, 145f, 1554f, -1354f, -342f, 1329f, 930f, 1659f, 666f, -371f, 1260f, -904f, 345f);

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.a, vec4<f32>(1555f, arg_0, _wgslsmith_f_op_f32(sign(-1043f)), _wgslsmith_f_op_f32(2571f - -143f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.e, 26u)], -703f, arg_0, global0[_wgslsmith_index_u32(20310u, 26u)]) - vec4<f32>(arg_1.a.x, 1237f, arg_1.a.x, global0[_wgslsmith_index_u32(arg_1.e, 26u)]))))), arg_1);
    var var_1 = Struct_3(-502f, vec4<bool>(arg_1.e > arg_1.e, false, all(vec2<bool>(true, true)), !(!(var_0.b.c && arg_1.c))));
    global0 = array<f32, 26>();
    let var_2 = true;
    let var_3 = var_1.b;
    return var_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(428f, 2070f, global0[_wgslsmith_index_u32(arg_3.b.e, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), vec4<f32>(global0[_wgslsmith_index_u32(27329u, 26u)], 1579f, 254f, arg_0.a.x)) - arg_0.b.a) - arg_3.b.a)), Struct_1(arg_3.b.a, arg_0.b.d.x, true, ~select(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, arg_0.b.d), vec2<i32>(-2147483647i, arg_1), select(vec2<bool>(false, arg_0.b.c), vec2<bool>(false, true), false)), firstLeadingBit(arg_3.b.e)));
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(~arg_0.b.e), 26u)] + _wgslsmith_f_op_f32(603f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f * 628f))))));
    let var_2 = var_0.b.d;
    let var_3 = 1000f;
    let var_4 = reverseBits(vec2<i32>(arg_0.b.b, 1i));
    return ~_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(17598u), 186u, 21268u)), ~4294967295u);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(715f, 157f), _wgslsmith_f_op_f32(func_2(-1271f, Struct_1(vec4<f32>(1226f, 619f, -1000f, 219f), u_input.b.x, false, vec2<i32>(-1i, u_input.b.x), 0u))))), _wgslsmith_f_op_f32(409f + _wgslsmith_f_op_f32(step(-826f, 121f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(616u, 26u)]), _wgslsmith_f_op_f32(595f * 991f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f), 2563f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, -1015f, 756f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(3210u, 26u)], -969f, global0[_wgslsmith_index_u32(1u, 26u)]))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1152f, 1000f, -323f, -246f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, global0[_wgslsmith_index_u32(57319u, 26u)], 830f, global0[_wgslsmith_index_u32(1u, 26u)])), vec4<f32>(global0[_wgslsmith_index_u32(84990u, 26u)], 325f, global0[_wgslsmith_index_u32(41810u, 26u)], 1386f)))), u_input.c, true, vec2<i32>(~u_input.a.x, reverseBits(_wgslsmith_add_i32(-u_input.b.x, firstTrailingBit(2147483647i)))), reverseBits(143223u));
    global0 = array<f32, 26>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<f32>(global0[_wgslsmith_index_u32(var_0.e, 26u)], var_0.a.x, global0[_wgslsmith_index_u32(0u, 26u)], -303f)))), u_input.c, ~4294967295u <= _wgslsmith_div_u32(func_3(Struct_2(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(var_0.e, 26u)], var_0.a.x), var_0), -1351i, var_0.c, Struct_2(var_0.a, Struct_1(var_0.a, var_0.d.x, false, u_input.b.yz, var_0.e))), _wgslsmith_sub_u32(29605u, 16137u)), vec2<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.d.x, 1i, u_input.c), vec4<i32>(var_0.d.x, 18506i, -1i, 0i)), 0i), u_input.b.x), ~var_0.e));
    var var_2 = select(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, var_1.b.b), countOneBits(0i)), ~var_1.b.d.x, u_input.c), vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.c) & -1i, select(43268i, var_0.d.x, true) ^ -17278i, ~(-9267i)), !(all(vec4<bool>(true, false, var_0.c, true)) | (var_1.b.c || var_1.b.c))) | ~vec3<i32>(-var_1.b.d.x, ~(u_input.a.x | u_input.b.x), 10245i);
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.a.x - 1432f)))))), min(reverseBits(reverseBits(~var_2.x)), i32(-1i) * -24380i), true, vec2<i32>(-9292i, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -1i), u_input.b.xy)), 65849u);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_div_i32(arg_0.d.x, _wgslsmith_mod_i32(arg_0.b, ~arg_0.d.x));
    global0 = array<f32, 26>();
    let var_0 = Struct_2(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)), 1018f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2213f * 1000f) * _wgslsmith_f_op_f32(trunc(639f))), 430f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1339f * 272f) + arg_0.a.x))), arg_0);
    let var_1 = Struct_3(140f, select(vec4<bool>(arg_0.b > arg_0.d.x, arg_0.c, any(vec3<bool>(arg_0.c, var_0.b.c, var_0.b.c)), arg_0.c), vec4<bool>(any(select(vec3<bool>(var_0.b.c, false, false), vec3<bool>(false, true, true), var_0.b.c)), any(vec3<bool>(arg_0.c, false, var_0.b.c)), !all(vec4<bool>(false, true, var_0.b.c, true)), any(!vec2<bool>(true, var_0.b.c))), !func_1().c));
    var var_2 = ~(1u >> (firstTrailingBit(countOneBits(~57151u)) % 32u));
    return Struct_2(arg_0.a, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    let var_1 = Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(~(~(~var_0.b.e)), 26u)], _wgslsmith_f_op_f32(-var_0.a.x), var_0.b.a.x, 914f), func_1());
    var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], -885f, var_0.a.x) - vec4<f32>(-152f, 1108f, var_0.b.a.x, var_0.a.x))), 7962i, (-var_1.b.d.x >> (_wgslsmith_add_u32(var_0.b.e, var_1.b.e) % 32u)) > u_input.b.x, firstTrailingBit(vec2<i32>(-u_input.a.x, 40381i)), ~var_0.b.e));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b.a.x, 1611f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1251f - 627f))), global0[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(ceil(var_0.a.x)))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-821f, var_0.a.x, 546f, var_0.b.a.x) * var_1.b.a), u_input.c, var_0.b.c & any(vec4<bool>(var_0.b.c, var_1.b.c, true, var_1.b.c)), min(var_0.b.d, vec2<i32>(var_0.b.b, 1i)), _wgslsmith_add_u32(reverseBits(var_0.b.e), select(1u, var_1.b.e, true)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy);
}

