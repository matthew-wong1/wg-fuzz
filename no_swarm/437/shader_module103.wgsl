struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

var<private> global1: vec2<u32>;

var<private> global2: u32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(min(arg_3.zyx >> (vec3<u32>(arg_1.x, 25908u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_3.x), vec3<u32>(arg_1.x, arg_2, 0u), vec3<u32>(global1.x, 65385u, 18649u))), arg_3.zyx)));
    global2 = ~abs(_wgslsmith_sub_u32(select(var_0.a << (arg_2 % 32u), abs(arg_2), false), 0u));
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = !select(!vec2<bool>(func_3(arg_2.x, u_input.a, 0u, vec4<u32>(global1.x, 0u, 4294967295u, 38863u)), true), vec2<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(false, false, true))), vec2<bool>(false, all(vec3<bool>(true, false, true))));
    let var_2 = arg_1;
    var_0 = arg_1;
    let var_3 = var_2;
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(986f, -727f), vec2<f32>(1000f, -501f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -258f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -237f), -1646f))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-417f - -1590f) + _wgslsmith_f_op_f32(sign(-282f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-347f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f * 423f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(322f + -1074f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = all(select(!select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.a, 4294967295u), 30u)], global0[_wgslsmith_index_u32(16594u, 30u)], true), global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(270f, 1000f))), Struct_1(_wgslsmith_mod_u32(u_input.a.x, 39408u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, -1000f, 857f)), vec3<f32>(150f, 742f, 632f))).a, 30u)], select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(53436u, 30u)], vec3<bool>(true, true, false)), true), !select(global0[_wgslsmith_index_u32(arg_0.a, 30u)], vec3<bool>(false, true, false), true), false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(170f * _wgslsmith_f_op_f32(trunc(424f))) + _wgslsmith_f_op_f32(-755f * _wgslsmith_f_op_f32(f32(-1f) * -1345f))) * _wgslsmith_f_op_f32(f32(-1f) * -932f)));
    global1 = arg_2.zx;
    var var_2 = arg_0;
    global0 = array<vec3<bool>, 30>();
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -212f))) - -1903f), _wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(f32(-1f) * -986f))), arg_3, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-150f))), _wgslsmith_f_op_f32(step(-1205f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 995f), _wgslsmith_f_op_f32(148f - 1067f)))))));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = true;
    global1 = vec2<u32>(~4294967295u, 58633u | arg_0.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-764f + 1041f), _wgslsmith_f_op_f32(564f + -351f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f + 151f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-719f + -541f), 1f, u_input.a.x < u_input.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2486f * 601f)))));
    let var_2 = arg_0;
    global2 = reverseBits(u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(150f)), var_1.x)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global1 = _wgslsmith_sub_vec2_u32(vec2<u32>(abs(arg_1.a), global1.x), ~(~(u_input.b.zz << (vec2<u32>(u_input.b.x, arg_2.x) % vec2<u32>(32u)))));
    var var_0 = abs(u_input.b.yz);
    var var_1 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, func_3(arg_0.x, vec2<u32>(u_input.a.x, 66498u), 11562u, vec4<u32>(global1.x, global1.x, var_0.x, 4294967295u))), false));
    var_1 = select(select(vec2<bool>(any(global0[_wgslsmith_index_u32(arg_2.x, 30u)]), all(!global0[_wgslsmith_index_u32(14640u, 30u)])), select(vec2<bool>(var_1.x, !var_1.x), vec2<bool>(!var_1.x, var_1.x), var_1.x), var_1.x), vec2<bool>(!var_1.x & (any(vec2<bool>(true, var_1.x)) && true), var_1.x), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 124f) - _wgslsmith_f_op_f32(-arg_0.x))) >= arg_0.x);
    var_0 = vec2<u32>(~(~arg_1.a), max(~1u, func_1(min(vec3<i32>(21600i, 0i, 53383i), vec3<i32>(-2147483647i, -2147483647i, 11253i)), arg_1).a)) << (abs(~vec2<u32>(1u, ~arg_2.x)) % vec2<u32>(32u));
    return Struct_1(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_1(vec3<i32>(0i, -21802i, 1i), Struct_1(6030u)), func_1(vec3<i32>(1i, 2147483647i, 20269i), Struct_1(u_input.b.x)), ~vec4<u32>(global1.x, u_input.b.x, u_input.a.x, 54106u), func_1(vec3<i32>(-2147483647i, -1379i, 20375i), Struct_1(1u))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, 737f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1040f), -1000f))), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, -1319f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -135f))) + vec2<f32>(-337f, 1625f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_4(Struct_1(0u), Struct_1(_wgslsmith_div_u32(0u, 44497u)), ~vec4<u32>(global1.x, global1.x, 0u, u_input.b.x) << (firstLeadingBit(vec4<u32>(4294967295u, 59212u, 4294967295u, global1.x)) % vec4<u32>(32u)), Struct_1(_wgslsmith_div_u32(45392u, 31071u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, -922f, 573f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1745f, -584f, 1166f))))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, u_input.a.x, global1.x, 3981u) | vec4<u32>(u_input.a.x, 9971u, global1.x, 1u), select(vec4<u32>(25227u, global1.x, 16590u, u_input.b.x), vec4<u32>(u_input.b.x, 17940u, 4294967295u, 1u), vec4<bool>(true, false, false, true)))), vec4<u32>(~(~global1.x), ~(~1u), 14082u, 77082u), ~vec4<u32>(countOneBits(7657u), global1.x & u_input.a.x, u_input.a.x, 0u << (u_input.a.x % 32u))));
    let var_1 = global1.x >= ~_wgslsmith_div_u32(_wgslsmith_add_u32(~40892u, countOneBits(86790u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 0u, var_0.a), vec4<u32>(var_0.a, var_0.a, global1.x, 1u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(global1.x))).x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(523f, -489f)))), -600f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f - -295f)));
    global0 = array<vec3<bool>, 30>();
    var_0 = func_1(~vec3<i32>(-42723i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2851i, -2147483647i, -1i, -1i), vec4<i32>(2147483647i, 40681i, 1i, 1i)), 1i), reverseBits(~0i)), func_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 64546u, global1.x), vec4<u32>(23571u, 1u, var_0.a, var_0.a)), global1.x << (u_input.b.x % 32u))), Struct_1(var_0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~var_0.a, min(14946u, u_input.a.x), _wgslsmith_div_u32(1u, u_input.a.x)), ~max(vec4<u32>(var_0.a, global1.x, 9231u, var_0.a), vec4<u32>(global1.x, u_input.a.x, 4294967295u, 4294967295u)), reverseBits(vec4<u32>(0u, 1u, 1u, 67967u))), Struct_1(~reverseBits(u_input.a.x))));
    let var_3 = _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(var_2 + 767f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mult_u32(9891u, global1.x), global1.x), vec4<u32>(~0u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, var_0.a, 33592u), vec4<u32>(133149u, global1.x, global1.x, 37107u)) | ~var_0.a, min(_wgslsmith_sub_u32(52370u, 13262u), _wgslsmith_sub_u32(0u, global1.x))), u_input.a.x, 51973u));
}

