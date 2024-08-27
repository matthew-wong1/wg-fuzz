struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(34505i, 0i, -16639i, 28510i), vec4<i32>(0i, 22051i, -1i, 0i), vec4<i32>(23925i, 37327i, 40969i, i32(-2147483648)), vec4<i32>(-1i, -1i, 0i, i32(-2147483648)), vec4<i32>(1i, 47310i, 14345i, -19259i), vec4<i32>(-7499i, -36270i, -51816i, 0i), vec4<i32>(1i, 1i, 1i, -19390i), vec4<i32>(0i, 23758i, 3757i, 1i), vec4<i32>(1i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(0i, -30012i, -17432i, 1i), vec4<i32>(-27431i, 0i, 39697i, 2426i), vec4<i32>(-13094i, -28573i, 2147483647i, -15006i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(70489i, 0i, 0i, -34563i), vec4<i32>(29462i, 17597i, -1i, -1i), vec4<i32>(-55281i, 1i, -16810i, -19992i), vec4<i32>(23788i, -27595i, 44413i, 1i), vec4<i32>(2147483647i, -33407i, -8418i, -2570i), vec4<i32>(2441i, 31609i, 0i, 0i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1777f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(920f, -1000f)))), 196f), _wgslsmith_f_op_f32(select(1317f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1111f)))), true)))));
    var var_1 = Struct_1(false, 1u);
    let var_2 = Struct_1(false, countOneBits(1u) | _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(14666u, var_1.b), vec2<u32>(arg_0, var_1.b)), vec2<u32>(var_1.b, var_1.b), abs(vec2<u32>(1u, arg_0))), ~reverseBits(vec2<u32>(15630u, var_1.b))));
    let var_3 = vec4<bool>(any(!vec3<bool>(true, var_1.a, true)), false, select(all(!vec4<bool>(true, global0.x, var_2.a, true)), true, false), !var_2.a);
    let var_4 = Struct_1(var_3.x, var_2.b);
    return !(!var_1.a);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = vec3<bool>(!global0.x, global0.x, func_3(6233u, -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(9267i, 2147483647i, arg_0.x, u_input.a))));
    let var_0 = vec2<bool>(!global0.x, !global0.x);
    let var_1 = ~vec2<u32>(~min(firstLeadingBit(58706u), ~0u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 32862u)), ~vec3<u32>(27511u, 55133u, 10486u) | select(vec3<u32>(64981u, 0u, 21465u), vec3<u32>(0u, 1u, 73424u), vec3<bool>(true, false, true))));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, arg_0.x), arg_0.x);
    global1 = array<vec4<i32>, 19>();
    return var_1.x;
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_i32(~1i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~(~4294967295u), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 1u)), 19u)]), 0i) << (~(~_wgslsmith_mod_u32(abs(94052u), min(4294967295u, 4294967295u))) % 32u);
    var var_1 = ~(1u >> ((~abs(21443u) & func_2(-vec3<i32>(-12735i, var_0, var_0))) % 32u));
    let var_2 = select(!(!(!select(vec3<bool>(global0.x, arg_0.x, global0.x), vec3<bool>(false, arg_0.x, global0.x), arg_0.x))), vec3<bool>(true, arg_0.x, false), global0.x);
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(~vec2<u32>(1u, 1u), max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)))) << (~(~4294967295u) % 32u);
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~firstTrailingBit(vec3<u32>(var_3, 29710u, var_3)))), ~vec3<u32>(~60094u, 5334u, var_3)), 19u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-154f, _wgslsmith_f_op_f32(f32(-1f) * -1146f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1065f, 116f)) * vec2<f32>(-1123f, 1203f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-379f, -729f), vec2<f32>(1435f, 1346f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-1358f - -464f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-766f, 557f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1570f, 640f) + vec2<f32>(-351f, 1065f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(global0.x, false))))))));
    let var_1 = ~vec3<u32>(~(~1u), ~1u, ~1u << (abs(firstTrailingBit(44721u)) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)));
    let var_3 = Struct_1(global0.x, var_1.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(1283f, var_2.x), -1000f, -295f)))));
    var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + var_4.x), _wgslsmith_f_op_f32(276f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-466f, -143f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-654f)))));
    global0 = vec3<bool>(all(select(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, true, true), vec3<bool>(false, global0.x, var_3.a)), select(select(vec3<bool>(false, var_3.a, false), vec3<bool>(global0.x, var_3.a, var_3.a), var_3.a), vec3<bool>(true, var_3.a, false), select(vec3<bool>(false, false, true), vec3<bool>(var_3.a, var_3.a, global0.x), true)), any(!vec3<bool>(false, var_3.a, false)))), var_3.a, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 353f, -111f) - vec3<f32>(var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1198f, -1103f, var_2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, -282f, -478f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1653f, -1387f, var_2.x) + vec3<f32>(var_4.x, var_2.x, 312f))))), var_1 ^ vec3<u32>(20343u, var_3.b | ~21635u, var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(var_3.a & false, any(vec2<bool>(true, false))))).x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(-1154f * var_2.x)), _wgslsmith_f_op_f32(-1290f - 1060f)));
}

