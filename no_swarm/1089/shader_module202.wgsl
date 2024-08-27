struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(5318u, 28988u, 80895u);

var<private> global1: vec4<f32>;

var<private> global2: array<u32, 7>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, 730f, global1.x, -299f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -773f, -1415f, 242f), vec4<f32>(global1.x, -1922f, 474f, global1.x))))) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(666f, _wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-963f, global1.x, -676f), _wgslsmith_f_op_vec3_f32(ceil(global1.yxy)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -821f, global1.x), global1.zyw), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.x, var_0.x) * vec3<f32>(928f, global1.x, 1000f)), true))))));
    var var_2 = any(vec4<bool>(true, true, !any(vec3<bool>(true, true, true)), true));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2186f), global1.x, _wgslsmith_f_op_f32(-var_0.x), -2238f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, 1000f, global1.x) - var_0) * vec4<f32>(-2905f, 734f, -484f, var_1.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1179f, global1.x, var_1.x, var_1.x))))));
    var var_3 = vec4<bool>(!(!any(vec3<bool>(true, true, false))), true, true, !(_wgslsmith_f_op_f32(step(global1.x, -325f)) > _wgslsmith_f_op_f32(-833f * _wgslsmith_f_op_f32(var_1.x - -1121f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1088f - -1019f)) * -812f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(global0.x), vec3<i32>(2147483647i, 16427i, 0i), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(570f, global1.x, true))), _wgslsmith_f_op_f32(-645f - 1560f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1.x)))), -1025f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(715f, global1.x, -256f, 899f) - vec4<f32>(2703f, 396f, -373f, -671f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)), global1.x, global1.x))));
    global0 = vec3<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(18449u, global2[_wgslsmith_index_u32(13332u, 7u)]), 7u)], _wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(global0.x), 1u), _wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(33401u, global2[_wgslsmith_index_u32(global0.x, 7u)]))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.a.x), reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), vec3<u32>(arg_0.a, 1u, ~global0.x)) % 32u), min(0u, 72988u >> (1u % 32u)));
    let var_0 = any(select(vec4<bool>(select(true, true, true), false, any(vec2<bool>(true, true)), true), !vec4<bool>(true, true, false, all(vec3<bool>(false, false, true))), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), true)));
    global2 = array<u32, 7>();
    global2 = array<u32, 7>();
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, arg_0, -409f, -536f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1588f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(-1094f * _wgslsmith_f_op_f32(floor(-446f))), arg_0, 1491f, _wgslsmith_f_op_f32(arg_0 - arg_0)))));
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~abs(~global2[_wgslsmith_index_u32(68970u, 7u)])), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(select(~global0.xz, min(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 78471u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], u_input.a.x)), any(vec3<bool>(true, arg_1.x, arg_1.x))), abs(vec2<u32>(0u, global0.x))), global0.zz));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-772f)), arg_0, _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global1.x - global1.x))));
    global2 = array<u32, 7>();
    return func_2(Struct_1(~1u));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    global0 = ~(~_wgslsmith_add_vec3_u32(u_input.a.yyz, ~(~u_input.a.wxy)));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-851f)))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), func_2(Struct_1(u_input.a.x >> (u_input.a.x % 32u)))), global0.x, arg_1);
    let var_1 = _wgslsmith_f_op_f32(floor(578f));
    global0 = u_input.a.ywz;
    var var_2 = -vec2<i32>(1i, 1i);
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, var_1, 580f, -2021f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(549f, var_1, global1.x, -692f) * vec4<f32>(var_1, 361f, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 572f, -2689f) * vec4<f32>(global1.x, 1021f, -1359f, 1000f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, -287f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, global1.x, 151f, -862f)))))))));
    return ~var_0.a;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_1.x;
    let var_1 = vec4<i32>(-1i, countOneBits(~(-1299i)) << (~func_2(arg_2).a % 32u), -10393i, ~abs(-1i) | (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 28924i), vec2<i32>(34099i, 0i)) << (1u % 32u))) << (~(~_wgslsmith_mult_vec4_u32(u_input.a | vec4<u32>(46284u, u_input.a.x, 67403u, u_input.a.x), ~vec4<u32>(93142u, 17934u, 0u, 0u))) % vec4<u32>(32u));
    global2 = array<u32, 7>();
    var var_2 = vec3<i32>(var_1.x, firstLeadingBit(reverseBits(_wgslsmith_clamp_i32(1i, select(-2147483647i, -2147483647i, arg_0.x), _wgslsmith_sub_i32(var_1.x, var_1.x)))), var_1.x);
    let var_3 = Struct_1(~90775u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_6(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -1000f, false)) - global1.x) >= 661f, !(!(u_input.a.x == global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 7u)], 7u)]))), _wgslsmith_f_op_vec3_f32(global1.zyz + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-301f))), _wgslsmith_f_op_f32(ceil(-630f)), _wgslsmith_div_f32(450f, -743f))), Struct_1(~func_1(0u, ~global0.x, abs(u_input.a.x), global0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -332f)))), global1.x)));
    global2 = array<u32, 7>();
    var var_3 = func_4(var_2.x, !vec3<bool>(_wgslsmith_f_op_f32(var_2.x - -890f) < _wgslsmith_f_op_f32(sign(-616f)), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x) > 4294967295u, true), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(global0.x, 7u)]), u_input.a.xzz), _wgslsmith_div_u32(u_input.a.x, global0.x)) | ~(~1u)));
    var var_4 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, abs(firstTrailingBit(global2[_wgslsmith_index_u32(var_3.a, 7u)])), 1u, _wgslsmith_add_u32(min(global2[_wgslsmith_index_u32(70234u, 7u)], u_input.a.x), var_3.a | 4294967295u)), u_input.a));
    var var_5 = !select(false, 1i == _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(15819i, -13340i, -2147483647i)), !func_6(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec3<f32>(var_2.x, 1138f, -1077f), Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -2130f)), _wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-351f, global1.x)))))));
}

