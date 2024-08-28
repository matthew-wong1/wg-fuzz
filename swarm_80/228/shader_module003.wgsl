struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -745f;

var<private> global1: array<bool, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<f32> {
    global0 = -476f;
    var var_0 = (abs(_wgslsmith_mult_vec2_u32(~arg_0.a, vec2<u32>(11906u, 57097u))) << (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(40862u, arg_1.a.x), vec2<u32>(31202u, 29867u)), select(vec2<u32>(1u, 6202u), arg_1.a, arg_2)), abs(arg_1.a)) % vec2<u32>(32u))) & vec2<u32>(select(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, 42600u), vec3<u32>(u_input.b, 9653u, arg_0.a.x), vec3<u32>(arg_1.a.x, u_input.b, 50620u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 53519u, arg_0.a.x), vec3<u32>(5272u, 4294967295u, 58367u), vec3<u32>(3684u, arg_0.a.x, 1u))), ~(~4294967295u), any(!arg_2)), u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1012f, _wgslsmith_div_f32(-1321f, 2217f)))))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1063f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2076f, _wgslsmith_div_f32(-1738f, _wgslsmith_f_op_f32(step(var_1.x, -1223f)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), var_1.x)));
    global0 = _wgslsmith_f_op_f32(-var_1.x);
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(408f, var_1.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-786f, var_1.x, global1[_wgslsmith_index_u32(17042u, 26u)]))) - -241f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1029f + -1976f)))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, -365f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, -238f))) + _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1.wx), Struct_1(arg_1.zw), !vec2<bool>(true, global1[_wgslsmith_index_u32(17852u, 26u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-748f, -310f))), vec2<f32>(-107f, -939f)))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-508f + var_0.x) * var_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -329f)))))));
    let var_1 = Struct_2(select(select(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 26u)])), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 26u)], true), vec3<bool>(false, true, arg_0), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 26u)], true)), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(7585u, 26u)])), !(!arg_0)), select(vec3<bool>(true, true, any(vec2<bool>(arg_0, global1[_wgslsmith_index_u32(arg_1.x, 26u)]))), vec3<bool>(true, arg_0, true), _wgslsmith_sub_i32(-30457i, 0i) < u_input.a.x), reverseBits(~u_input.a.x) < arg_2.x), all(!select(select(vec2<bool>(false, arg_0), vec2<bool>(true, false), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(global1[_wgslsmith_index_u32(8734u, 26u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]), false))), ~max(~vec4<u32>(4294967295u, u_input.b, u_input.b, 0u), max(vec4<u32>(u_input.b, u_input.b, 1u, 15272u), vec4<u32>(0u, 21858u, 0u, u_input.b))) << (firstLeadingBit(vec4<u32>(~arg_1.x, 4294967295u, _wgslsmith_mod_u32(u_input.b, u_input.b), min(arg_1.x, 19999u))) % vec4<u32>(32u)), Struct_1(~(~vec2<u32>(60128u, arg_1.x))));
    var var_2 = vec2<i32>(arg_2.x, reverseBits(u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_0 * var_0);
    return _wgslsmith_f_op_f32(736f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(421f, -515f))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(any(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(arg_2, 26u)])), ~vec4<u32>(23822u, arg_2, 4294967295u, u_input.b), u_input.a.yx & vec2<i32>(arg_1, 1i))), -2046f, -144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0, arg_0, vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 26u)], true))).x)) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(939f, -135f, -1254f, -2185f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1205f, -568f, 1062f, 415f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 1480f, -2143f, -1860f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-544f, 1311f, -1000f, 663f), vec4<f32>(-333f, 1591f, 676f, -316f)), vec4<f32>(-282f, -246f, 437f, -1296f), vec4<bool>(false, false, true, false)))))));
    global1 = array<bool, 26>();
    global0 = var_0.x;
    var var_1 = arg_0;
    let var_2 = Struct_2(vec3<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(3574u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 26u)], false), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(arg_2, 26u)]))) & global1[_wgslsmith_index_u32(arg_2, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], true), global1[_wgslsmith_index_u32(var_1.a.x, 26u)] || (countOneBits(~arg_0.a.x) > ~1u), _wgslsmith_div_vec4_u32((vec4<u32>(arg_0.a.x, 0u, 4294967295u, u_input.b) & vec4<u32>(4294967295u, 1u, var_1.a.x, 0u)) << (~vec4<u32>(0u, var_1.a.x, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, var_1.a.x, 0u), 23728u, var_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 1u, 135462u), vec3<u32>(arg_2, var_1.a.x, u_input.b)))) >> ((vec4<u32>(93395u, u_input.b, _wgslsmith_div_u32(u_input.b, var_1.a.x), firstLeadingBit(1u)) ^ ~vec4<u32>(var_1.a.x, 32385u, var_1.a.x, 20414u)) % vec4<u32>(32u)), Struct_1(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, u_input.b), var_1.a), ~arg_2), _wgslsmith_clamp_vec2_u32(abs(var_1.a), vec2<u32>(29347u, var_1.a.x), ~arg_0.a), select(select(vec2<bool>(global1[_wgslsmith_index_u32(69073u, 26u)], false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 26u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 26u)], true)), !vec2<bool>(global1[_wgslsmith_index_u32(124348u, 26u)], true), true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.a.x, ~(~(-1i)), ~2433i), abs(vec4<i32>(19510i, 1i, _wgslsmith_sub_i32(u_input.a.x, -22439i), u_input.a.x)));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1012u, 16578u), vec2<u32>(u_input.b, u_input.b))), u_input.a.x, ~(~u_input.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(53986u, 26u)], vec4<u32>(34034u, u_input.b, u_input.b, u_input.b), vec2<i32>(u_input.a.x, var_0.x))))))), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(5992u, 38025u), 26u)]));
    let var_1 = u_input.a;
    let var_2 = Struct_1(vec2<u32>(15029u, ~(~1u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-632f + 1463f), _wgslsmith_f_op_f32(trunc(-722f)))))), -346f) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f - 105f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1534f, -1000f)), _wgslsmith_div_f32(-334f, _wgslsmith_f_op_f32(-1000f - -311f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f + -1568f))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~min((var_1.x | -2756i) >> (var_2.a.x % 32u), -(~0i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(636f + _wgslsmith_f_op_f32(select(-1428f, _wgslsmith_f_op_f32(step(1167f, 1000f)), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(412f)), -531f) - -1927f))), _wgslsmith_div_i32(_wgslsmith_div_i32(-14004i, var_1.x), _wgslsmith_mod_i32(u_input.a.x, -2147483647i & var_1.x)) << (1u % 32u));
}

