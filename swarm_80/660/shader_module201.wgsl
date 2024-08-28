struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(min(1i, firstLeadingBit(1i)) | (~(~45963i) | (_wgslsmith_dot_vec2_i32(vec2<i32>(45394i, 52956i), vec2<i32>(11242i, 1i)) & -59360i)), 1i);
    global0 = any(vec4<bool>(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, all(vec3<bool>(true, false, false)), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(-211f - -1352f), true)) >= _wgslsmith_f_op_f32(-1022f - _wgslsmith_f_op_f32(-220f * -1000f))));
    global0 = true;
    var var_1 = Struct_4(Struct_3(Struct_1(false), vec3<bool>(any(vec3<bool>(true, true, false)), ~u_input.a < 25384u, true)), -_wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(var_0.x, var_0.x, var_0.x)), countOneBits(~vec3<i32>(1i, 24692i, var_0.x)), ~select(vec3<i32>(-1i, 2147483647i, var_0.x), vec3<i32>(-20038i, var_0.x, var_0.x), vec3<bool>(true, false, false))), 31433u);
    let var_2 = Struct_3(var_1.a.a, select(select(vec3<bool>(var_1.a.b.x, all(vec4<bool>(var_1.a.b.x, var_1.a.b.x, true, false)), false), !(!vec3<bool>(true, var_1.a.b.x, var_1.a.a.a)), vec3<bool>(true != var_1.a.a.a, !var_1.a.a.a, var_1.a.a.a)), var_1.a.b, any(select(var_1.a.b.xy, select(var_1.a.b.xy, var_1.a.b.yx, true), !var_1.a.b.yx))));
    return -468f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec3<bool> {
    global0 = false != any(select(select(arg_2.zy, vec2<bool>(false, false), select(vec2<bool>(false, arg_0.x), arg_2.zy, arg_2.yz)), arg_2.zy, !arg_0.ww));
    let var_0 = arg_0;
    let var_1 = countOneBits(vec4<u32>(~0u ^ u_input.b.x, ~(u_input.a >> (u_input.b.x % 32u)), ~u_input.b.x, _wgslsmith_sub_u32(29100u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(1u, 23676u, 4294967295u, 1226u)), u_input.a)));
    global0 = select(true, all(vec2<bool>(!all(vec4<bool>(arg_2.x, arg_0.x, var_0.x, true)), any(vec4<bool>(arg_0.x, false, var_0.x, arg_0.x)))), false);
    var var_2 = Struct_3(Struct_1(select(!all(var_0), any(arg_0), true)), !vec3<bool>(true, select(true, all(var_0.zy), !arg_0.x), false));
    return arg_0.zyy;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<u32> {
    global0 = arg_1;
    let var_0 = Struct_3(Struct_1(arg_1), !select(vec3<bool>(all(vec2<bool>(arg_1, false)), true, any(vec4<bool>(arg_1, arg_1, false, false))), !vec3<bool>(arg_1, true, false), func_4(vec4<bool>(false, arg_1, arg_1, arg_1), _wgslsmith_f_op_f32(func_3()), !vec3<bool>(arg_1, arg_1, arg_1), reverseBits(vec2<i32>(-13664i, 2147483647i)))));
    let var_1 = var_0.a;
    var var_2 = ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(93070u, u_input.a))) <= _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(~19669u, u_input.b.x ^ u_input.a));
    var var_3 = !(!(!((arg_1 | arg_1) | true)));
    return ~vec4<u32>(57131u, 65478u, 0u, firstLeadingBit(4294967295u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = u_input.b.x != _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, u_input.a, ~firstLeadingBit(u_input.b.x)), u_input.b);
    global0 = arg_0;
    var var_0 = ~select(~(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), vec4<u32>(~4294967295u, ~1u, abs(0u), ~u_input.b.x), arg_0) << (_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(func_2(_wgslsmith_f_op_f32(trunc(-391f)), arg_0), ~vec4<u32>(u_input.b.x, u_input.b.x, 37704u, 4294967295u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(32220u, 23600u, u_input.b.x, 25585u), vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.a)) | ~vec4<u32>(4294967295u, u_input.b.x, 8864u, u_input.a))) % vec4<u32>(32u));
    let var_1 = ~reverseBits(firstTrailingBit(abs(~vec3<i32>(-2147483647i, 0i, -17675i))));
    let var_2 = ~(~u_input.a | _wgslsmith_clamp_u32(~_wgslsmith_add_u32(var_0.x, var_0.x), u_input.b.x, 1u));
    return Struct_1(!any(select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, true, arg_0, false), true), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, true, arg_0, arg_0)), arg_0)));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = arg_3.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1141f, 1234f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(2009f)), _wgslsmith_div_f32(-459f, 360f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(1219f, -535f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(585f, -2155f))), !arg_2.a)), arg_3.a.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -421f, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-724f)) * 150f), 138f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, _wgslsmith_f_op_f32(select(-1122f, var_1.x, true))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-988f, var_1.x, -754f), vec3<f32>(var_1.x, -841f, var_1.x))))), func_4(!(!vec4<bool>(true, arg_2.a, arg_3.b.x, true)), 221f, select(select(vec3<bool>(arg_3.b.x, false, arg_2.a), vec3<bool>(arg_2.a, true, true), arg_3.b), !vec3<bool>(false, false, arg_3.b.x), arg_3.b), reverseBits(~arg_1.xy | ~vec2<i32>(2147483647i, arg_1.x)))));
    var var_3 = _wgslsmith_f_op_f32(ceil(var_2.x));
    global0 = arg_2.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(1i > _wgslsmith_div_i32(1i >> (u_input.b.x % 32u), ~(-63423i)), true, func_5(u_input.b.x, vec4<i32>(~0i, _wgslsmith_add_i32(9992i, 37357i), -30160i, -2147483647i), func_1(true), Struct_3(func_1(true), vec3<bool>(false, false, false))));
    var var_1 = false;
    var var_2 = Struct_3(Struct_1(true), var_0);
    let var_3 = Struct_4(Struct_3(func_1(!var_2.a.a), var_0), _wgslsmith_sub_vec3_i32(firstTrailingBit(-min(vec3<i32>(1i, 0i, -2437i), vec3<i32>(1i, -1i, 2147483647i))), vec3<i32>(0i, firstTrailingBit(1i), -8152i)), u_input.b.x);
    var_1 = func_1(true).a;
    let x = u_input.a;
    s_output = StorageBuffer(~8902u);
}

