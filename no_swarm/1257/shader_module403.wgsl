struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, false), Struct_1(false, true), Struct_1(true, true), Struct_1(true, false), Struct_1(false, false), Struct_1(true, true), Struct_1(false, false), Struct_1(true, false), Struct_1(true, false), Struct_1(true, false), Struct_1(false, true), Struct_1(true, true), Struct_1(false, true));

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> i32 {
    global0 = array<vec4<bool>, 24>();
    let var_0 = Struct_1(!(!(!(!global3.b))), false);
    global1 = ~(~reverseBits(~reverseBits(vec2<u32>(57485u, global1.x))));
    global0 = array<vec4<bool>, 24>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f));
    return min(_wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(~(-1i), -countOneBits(u_input.a), _wgslsmith_add_i32(1i, ~u_input.a))), min(0i, max(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28432i, -10742i), vec2<i32>(1i, 1i)), _wgslsmith_mod_i32(u_input.b, u_input.b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = select(vec3<bool>(true, true, !any(!vec3<bool>(global3.a, arg_0.b, false))), !vec3<bool>(any(!vec2<bool>(arg_0.a, arg_0.a)), global3.b, all(!vec2<bool>(global3.a, arg_0.b))), select(!vec3<bool>(global3.b, all(vec2<bool>(arg_0.b, false)), any(vec4<bool>(global3.b, arg_0.a, arg_0.a, false))), !(!select(vec3<bool>(arg_0.b, global3.b, true), vec3<bool>(true, global3.a, false), vec3<bool>(true, global3.a, global3.a))), vec3<bool>(!global3.b, (1215u << (global1.x % 32u)) == _wgslsmith_sub_u32(1u, global1.x), false)));
    global3 = Struct_1(global3.a, any(!(!select(vec2<bool>(global3.a, true), var_0.zx, vec2<bool>(global3.b, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1379f - 586f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-461f)) + _wgslsmith_f_op_f32(795f - -936f)))));
    var var_2 = 1u;
    global0 = array<vec4<bool>, 24>();
    return -2922f;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<vec4<bool>, 24>();
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(-59682i, -20017i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 60972u), vec2<u32>(global1.x, 0u)) % vec2<u32>(32u))) | firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-40472i, u_input.b), vec2<i32>(33026i, u_input.b))), vec2<i32>(u_input.a, func_2()) >> (~(~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), u_input.a, -37918i, u_input.a);
    var var_1 = Struct_1(!any(vec3<bool>(false, true, !arg_1.a)), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-1484f, _wgslsmith_f_op_f32(select(1013f, arg_0.x, false)), 9758i > var_0.x)), arg_0.x, 625f, _wgslsmith_f_op_f32(ceil(arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f + arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), !global0[_wgslsmith_index_u32(1u, 24u)])) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1771f, arg_0.x, arg_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(663f, arg_0.x, 531f, -2247f), vec4<f32>(arg_0.x, arg_0.x, -881f, 1201f)), vec4<f32>(-337f, -1000f, -298f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-989f, arg_0.x, arg_0.x, -133f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -650f)))))));
    global2 = array<Struct_1, 16>();
    return _wgslsmith_mult_vec3_i32(abs(reverseBits(-vec3<i32>(u_input.b, u_input.b, 2147483647i) ^ (var_0.xzx & vec3<i32>(-35434i, u_input.b, u_input.a)))), -(var_0.zwz | var_0.wxx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(1376f, 1409f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-1165f + -1000f), global3.a)))));
    let var_1 = global2[_wgslsmith_index_u32(~global1.x << ((23194u << (global1.x % 32u)) % 32u), 16u)];
    var var_2 = -1i;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -7763i, ~u_input.b), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, -2147483647i), u_input.a));
    var var_4 = select(-select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, var_3, var_3) << (vec3<u32>(52371u, 0u, 17389u) % vec3<u32>(32u)), func_1(vec2<f32>(2026f, 762f), global2[_wgslsmith_index_u32(global1.x, 16u)]), firstTrailingBit(vec3<i32>(var_3, 2147483647i, var_3))), func_1(vec2<f32>(var_0.x, var_0.x), Struct_1(global3.a, false)), var_1.b), vec3<i32>(-1i) * -vec3<i32>(~10595i, 0i, var_3), select(!all(vec2<bool>(false, global3.b)), false, all(vec2<bool>(true, true))) & (_wgslsmith_f_op_f32(step(1188f, var_0.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))));
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -2444f), -343f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(abs(global1.x), 16u)])))))), _wgslsmith_f_op_f32(select(-1114f, var_0.x, true))));
    let var_6 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, global1.x), global1.x);
    let var_7 = select(!(!select(vec2<bool>(true, true), vec2<bool>(var_1.b, global3.a), vec2<bool>(true, true))), select(!vec2<bool>(global3.a, any(vec3<bool>(false, global3.b, global3.b))), select(vec2<bool>(var_1.b, !global3.b), select(select(vec2<bool>(global3.b, global3.a), vec2<bool>(var_1.b, false), vec2<bool>(true, global3.a)), vec2<bool>(var_1.a, true), true == global3.b), !(!global3.b)), select(!select(vec2<bool>(false, var_1.b), vec2<bool>(global3.b, global3.a), vec2<bool>(var_1.b, true)), vec2<bool>(!global3.b, select(global3.b, true, false)), false)), select(!vec2<bool>(false, any(vec3<bool>(global3.b, false, false))), vec2<bool>(any(vec4<bool>(var_1.a, true, global3.b, global3.b)), all(vec2<bool>(false, global3.a)) && var_1.a), all(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u)), 24u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, max(_wgslsmith_div_vec2_u32(~vec2<u32>(var_6, global1.x), vec2<u32>(_wgslsmith_clamp_u32(global1.x, var_6, 0u), 0u >> (global1.x % 32u))), vec2<u32>(_wgslsmith_sub_u32(9460u, firstLeadingBit(var_6)), var_6 & 4294967295u)), ~vec3<u32>(_wgslsmith_mult_u32(~1u, global1.x ^ 52063u), 59383u, _wgslsmith_sub_u32(var_6, var_6) << (15298u % 32u)), _wgslsmith_mod_i32(var_4.x ^ ((1i >> (var_6 % 32u)) | 0i), u_input.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.x, global1.x, 0u, 4294967295u) >> (vec4<u32>(var_6, global1.x, 31263u, var_6) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(4294967295u, var_6, 20089u, var_6))), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, 1u, 22195u), vec4<u32>(1u, global1.x, 1u, global1.x)))));
}

