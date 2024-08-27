struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 28>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = true;
    let var_1 = true;
    global1 = array<u32, 28>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-364f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.e.c.x, _wgslsmith_div_f32(-1118f, global0.x))) * -315f)), -697f, _wgslsmith_f_op_f32(1151f + -1459f), _wgslsmith_f_op_f32(exp2(global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-116f, 521f, arg_0.d.b.x, 1160f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1130f, arg_0.d.c.x, arg_2.b.x, 784f), vec4<f32>(-648f, arg_2.b.x, -709f, 877f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(global0.x + arg_0.d.b.x)), global0.x))) + _wgslsmith_f_op_f32(1000f * arg_0.a.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_2.a, vec2<f32>(1193f, global0.x), arg_2.c, 9428i, arg_2.a.x), arg_0.a, arg_0.a ^ arg_2.a, Struct_1(vec4<i32>(0i, u_input.d, arg_2.d, u_input.c), global0.yx, vec2<f32>(780f, arg_0.c.x), u_input.d, arg_0.e), Struct_1(arg_2.a, arg_2.c, arg_0.c, arg_0.a.x, 42521i)), -arg_0.a.zwx, Struct_1(firstTrailingBit(arg_0.a), _wgslsmith_f_op_vec2_f32(max(arg_0.c, vec2<f32>(arg_0.c.x, 112f))), vec2<f32>(arg_2.b.x, global0.x), arg_0.d, arg_0.d), -1i)))));
    global1 = array<u32, 28>();
    let var_1 = global0.x;
    let var_2 = vec2<i32>(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, arg_2.d) & vec2<i32>(u_input.b, countOneBits(-12430i)), arg_0.a.xx));
    var var_3 = arg_1.x;
    return !arg_1.zw;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global1 = array<u32, 28>();
    let var_0 = !(!vec2<bool>(any(func_2(Struct_1(vec4<i32>(1i, arg_0.x, arg_0.x, 2147483647i), vec2<f32>(global0.x, 1519f), vec2<f32>(global0.x, global0.x), arg_0.x, 88501i), vec4<bool>(false, true, false, true), Struct_1(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, -1i), global0.wy, vec2<f32>(967f, 1161f), -1i, u_input.d), global1[_wgslsmith_index_u32(39899u, 28u)])), true));
    let var_1 = vec3<i32>(abs(-48979i), -abs(~arg_0.x), u_input.d);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-751f + -2864f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 855f), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-390f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-4602i, ~u_input.d, -16764i, u_input.d & u_input.b) | -(vec4<i32>(-2147483647i, u_input.b, 0i, 2147483647i) | vec4<i32>(var_1.x, 2147483647i, arg_0.x, u_input.b))), select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0.x, min(7329i, -65596i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(var_1.x, 1i))), ~(vec4<i32>(u_input.c, 14989i, -18267i, -83914i) & vec4<i32>(-22174i, -40760i, var_1.x, -43029i))), -max(-vec4<i32>(u_input.d, 19632i, var_1.x, var_1.x), ~vec4<i32>(2147483647i, var_1.x, -2434i, u_input.c)), !select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    return Struct_2(Struct_1(var_2, _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)), vec2<f32>(_wgslsmith_f_op_f32(min(global0.x, global0.x)), global0.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-792f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2192f - 509f)))), ~(-var_1.x), min(~abs(var_1.x), var_1.x)), -firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(-1083i, 12337i), min(var_1.x, 1i), 0i, ~29456i)), vec4<i32>(arg_0.x, -_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x, -14492i), -2147483647i), var_1.x, _wgslsmith_add_i32(~1i, -(~u_input.d))), Struct_1(var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy + vec2<f32>(global0.x, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.zy, global0.wx, false)), _wgslsmith_f_op_vec2_f32(select(global0.zy, vec2<f32>(global0.x, global0.x), false)))), -firstTrailingBit(arg_0.x), -7725i), Struct_1(select(vec4<i32>(-1i ^ var_1.x, 8383i, -69566i, countOneBits(1i)), min(-vec4<i32>(17137i, var_1.x, 1i, -2147483647i), -vec4<i32>(9995i, u_input.d, var_2.x, 2147483647i)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), 45536i, -var_2.x));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_3.e.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.d.c.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1010f, -1000f, any(vec2<bool>(true, true)))), 941f, true)), 178f, func_1(vec2<i32>(_wgslsmith_clamp_i32(arg_2.x, 2147483647i, -1884i), -arg_2.x)).d.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3.e.c.x, global0.x, 575f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-969f, -2562f, arg_0, -575f), vec4<f32>(global0.x, -1432f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, arg_0, 738f) + vec4<f32>(arg_0, 3393f, -1244f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(746f, -1000f, -299f, arg_3.a.b.x) * vec4<f32>(arg_3.e.c.x, -1043f, arg_0, 139f)), false)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-arg_3.d.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x)));
    var var_0 = Struct_3(func_1(arg_3.a.a.yw), _wgslsmith_sub_vec4_i32(arg_2, ~(vec4<i32>(0i, arg_2.x, arg_3.d.e, arg_2.x) & reverseBits(vec4<i32>(arg_2.x, -3947i, arg_3.a.a.x, arg_2.x)))), 1u, func_2(arg_3.e, select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, false, false, true)), false, true, true), _wgslsmith_add_u32(1u, 65998u) < (arg_1 & 4294967295u)), arg_3.d, reverseBits(~(~u_input.a))), Struct_2(Struct_1(vec4<i32>(arg_2.x, abs(arg_3.d.a.x), u_input.b, 19850i), global0.yy, global0.yz, 1i, arg_3.d.a.x), vec4<i32>(-(~u_input.d), arg_3.a.d, -reverseBits(-38170i), arg_2.x), arg_3.a.a, arg_3.d, arg_3.e));
    var var_1 = select(_wgslsmith_div_vec3_i32(var_0.b.yzx, _wgslsmith_sub_vec3_i32(select(vec3<i32>(81710i, arg_3.d.a.x, 1083i), vec3<i32>(arg_2.x, var_0.a.a.d, 1i), !var_0.d.x), arg_3.a.a.zwx)), -vec3<i32>(-2147483647i, u_input.d, max(-19549i, ~2147483647i)), var_0.d.x);
    var var_2 = !var_0.d;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_1(vec2<i32>(var_1.x, -28549i)), vec3<i32>(-2316i, -3798i, -2147483647i) & vec3<i32>(2147483647i, 1i, arg_3.e.e), func_1(vec2<i32>(arg_2.x, u_input.c)).d, _wgslsmith_clamp_i32(var_0.e.b.x, arg_3.c.x, -1i))))), global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-880f)))))), 634f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 28>();
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(125f, 1396f, -180f, global0.x))))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 1098f, global0.x, -943f), vec4<bool>(false, true, false, false))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(680f, global0.x, 681f, global0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(abs(-741f)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 0u)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 28u)]), max(vec4<i32>(-2147483647i, 39624i, u_input.b, -2147483647i), vec4<i32>(-9580i, u_input.b, -7295i, u_input.d)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -14902i, u_input.c, u_input.b), vec4<i32>(0i, u_input.d, u_input.d, -1030i), vec4<i32>(u_input.c, u_input.b, -39679i, 2147483647i)), func_1(-vec2<i32>(u_input.d, 1i))))), vec4<bool>(_wgslsmith_f_op_f32(1f + global0.x) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(1218f, 1366f)))), _wgslsmith_div_u32(60860u, ~global1[_wgslsmith_index_u32(1u, 28u)]) != global1[_wgslsmith_index_u32(3557u, 28u)], !select(u_input.a <= u_input.a, true, any(vec4<bool>(true, false, false, false))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(39700i, u_input.c << (u_input.a % 32u), abs(max(vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a), vec3<u32>(4294967295u, 30637u, global1[_wgslsmith_index_u32(50600u, 28u)]) << (vec3<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 0u) % vec3<u32>(32u))) & firstLeadingBit(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13203u, 28u)], 28u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 28u)]))));
}

