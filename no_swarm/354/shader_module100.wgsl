struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, false, false, false, true, true);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = array<bool, 7>();
    var var_0 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, 22450i)), vec3<i32>(u_input.a.x, u_input.a.x, 27146i)), -1i, u_input.a.x) << (vec3<u32>(1u, ~_wgslsmith_div_u32(~0u, ~0u), _wgslsmith_add_u32(max(~41537u, select(0u, 0u, global0[_wgslsmith_index_u32(0u, 7u)])), ~(~0u))) % vec3<u32>(32u));
    var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(41248i, 2147483647i, 2147483647i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-5407i, u_input.a.x, 2147483647i), vec3<i32>(0i, u_input.a.x, 2147483647i)), vec3<i32>(45709i, ~0i, i32(-1i) * -34457i)), vec3<i32>(669i, firstTrailingBit(-1i), -56576i)) | -vec3<i32>(var_0.x, ~_wgslsmith_clamp_i32(var_0.x, var_0.x, 48086i), ~(i32(-1i) * -183i));
    let var_1 = Struct_1(vec4<bool>(all(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(55136u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(24205u, 7u)], true), global0[_wgslsmith_index_u32(19394u, 7u)])), any(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)])), global0[_wgslsmith_index_u32(1u, 7u)], true));
    var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.x, 2147483647i, 10316i), vec3<i32>(6514i, 1i, 2147483647i), false), vec3<i32>(2147483647i, var_0.x, u_input.a.x)), vec3<i32>(select(-1i, var_0.x, global0[_wgslsmith_index_u32(77725u, 7u)]), _wgslsmith_sub_i32(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 2147483647i, -1i), vec3<i32>(2354i, var_0.x, 27953i)))), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, u_input.a.x), vec3<i32>(-25624i, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -vec3<i32>(var_0.x, -1i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, -1i) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -vec3<i32>(-1i, var_0.x, u_input.a.x), vec3<i32>(-2309i, var_0.x, var_0.x)), (var_0.x != var_0.x) & true), vec3<i32>(-1i, 2147483647i, _wgslsmith_clamp_i32(~(-17010i), abs(var_0.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)))) | select(vec3<i32>(var_0.x, -2147483647i, u_input.a.x), abs(vec3<i32>(select(u_input.a.x, var_0.x, var_1.a.x), u_input.a.x, var_0.x)), vec3<bool>(false, true, true));
    return any(select(vec2<bool>(!all(vec2<bool>(false, global0[_wgslsmith_index_u32(42020u, 7u)])), true), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)])), vec2<bool>(!any(vec2<bool>(true, var_1.a.x)), global0[_wgslsmith_index_u32(44073u, 7u)])));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = true;
    let var_1 = vec3<bool>(false, false, func_3() || any(select(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_0, false, global0[_wgslsmith_index_u32(1641u, 7u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(64880u, 7u)], true, global0[_wgslsmith_index_u32(1u, 7u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], arg_0, true, global0[_wgslsmith_index_u32(7895u, 7u)]), vec4<bool>(arg_0, arg_0, true, global0[_wgslsmith_index_u32(0u, 7u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(12104u, 7u)], false, global0[_wgslsmith_index_u32(35020u, 7u)], true)))));
    var var_2 = Struct_1(select(select(vec4<bool>(true, var_1.x, true, !arg_0), select(!vec4<bool>(true, false, arg_0, false), select(vec4<bool>(global0[_wgslsmith_index_u32(14929u, 7u)], false, arg_0, var_1.x), vec4<bool>(var_1.x, var_1.x, false, arg_0), vec4<bool>(arg_0, false, var_1.x, arg_0)), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, global0[_wgslsmith_index_u32(0u, 7u)], var_1.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(19128u, 7u)], false), vec4<bool>(false, true, true, true))), var_1.x), !vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(34753u, 7u)], arg_0, false)), true, global0[_wgslsmith_index_u32(~19082u, 7u)], true), vec4<bool>(all(vec3<bool>(true, true, true)), select(false, select(var_1.x, true, true), true), true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1030f + -339f), _wgslsmith_f_op_f32(1557f + -874f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(717f)), 1490f, select(false, true, false))) - -263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-175f)) * _wgslsmith_f_op_f32(-898f - 284f)))));
    var_0 = u_input.a.x <= u_input.a.x;
    return Struct_1(!select(select(var_2.a, vec4<bool>(var_1.x, var_2.a.x, true, var_1.x), !var_1.x), select(var_2.a, var_2.a, !vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(63062u, 7u)], true, true)), var_1.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<u32>) -> vec4<f32> {
    global0 = array<bool, 7>();
    let var_0 = arg_0.x;
    var var_1 = func_2(true);
    var var_2 = 4294967295u;
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-996f, -149f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-519f * 1792f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f + -1662f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1226f, 445f), -340f)) * -2038f), 666f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-722f * 2586f), _wgslsmith_f_op_f32(-346f + 584f), _wgslsmith_f_op_f32(min(287f, 2025f)), -643f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, 538f, -596f, 174f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(u_input.a.x, -75649i, u_input.a.x, 32060i), vec4<i32>(-1i, u_input.a.x, 12378i, 0i), global0[_wgslsmith_index_u32(1520u, 7u)], vec4<u32>(4294967295u, 0u, 0u, 4294967295u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1016f, 1383f, 1000f) + vec4<f32>(1108f, -1909f, -698f, -2774f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(313f, -1412f, 1219f, -873f) * vec4<f32>(885f, -1953f, 831f, 1037f))))))));
    let var_1 = func_2(-u_input.a.x > ~_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))).a.xxz;
    global0 = array<bool, 7>();
    var var_2 = Struct_1(!(!(!(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], false, var_1.x)))));
    var var_3 = vec3<i32>(u_input.a.x, -_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(u_input.a.x, ~0i)), abs(reverseBits((i32(-1i) * -2147483647i) | select(-15973i, 26274i, var_2.a.x))));
    var var_4 = Struct_1(func_2(!var_1.x).a);
    var_4 = func_2(global0[_wgslsmith_index_u32(9214u, 7u)]);
    var var_5 = Struct_1(var_4.a);
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(countOneBits(0u), 1u, 0u), ~(~vec3<u32>(1u, 47963u, 4294967295u))), -vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(853i, -1i)), var_3.x, var_3.x, -(0i & var_3.x)));
}

