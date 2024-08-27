struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-921f, 1327f, -1011f, 2391f), vec4<f32>(1556f, 587f, -2027f, -1449f), vec4<f32>(-126f, -377f, -652f, -596f), vec4<f32>(-651f, -665f, -499f, -215f), vec4<f32>(-439f, 709f, 426f, -263f), vec4<f32>(-1882f, 1000f, 588f, 889f), vec4<f32>(1595f, 1525f, -181f, 1000f), vec4<f32>(-1233f, -365f, -242f, -664f), vec4<f32>(1000f, 447f, 1221f, 696f), vec4<f32>(-194f, -782f, -228f, -1162f), vec4<f32>(-1126f, 255f, 1255f, 1687f), vec4<f32>(-1251f, 1315f, 823f, 1234f), vec4<f32>(-1919f, 336f, -719f, 181f), vec4<f32>(819f, 434f, 194f, -2295f), vec4<f32>(1111f, -1000f, -1522f, -835f), vec4<f32>(-559f, -1166f, 421f, 663f), vec4<f32>(1000f, 384f, 1706f, 1532f), vec4<f32>(204f, -1730f, 2056f, 933f), vec4<f32>(761f, 252f, 1437f, 326f), vec4<f32>(-1046f, -1073f, 807f, 1000f), vec4<f32>(1038f, -489f, -155f, -143f), vec4<f32>(546f, 1434f, 1455f, -430f), vec4<f32>(1157f, -353f, 604f, 1032f), vec4<f32>(-691f, 1377f, 597f, 2032f), vec4<f32>(214f, -144f, -2178f, 1093f), vec4<f32>(1484f, -728f, 905f, 112f), vec4<f32>(1115f, 280f, -1356f, -1432f), vec4<f32>(209f, -175f, -2597f, 109f), vec4<f32>(-601f, -1084f, -388f, 1166f), vec4<f32>(-1033f, -782f, -894f, -228f), vec4<f32>(-1841f, 848f, 1203f, 406f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    let var_0 = Struct_1(all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(u_input.e < u_input.e, u_input.e >= u_input.d.x, all(vec3<bool>(true, true, true))), true)));
    let var_1 = -337f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1929f, -2535f, var_0.a))), 1674f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, var_1), var_1)), all(!vec2<bool>(true, var_0.a)))), !var_0.a)), -511f));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(!any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1071f)))), _wgslsmith_f_op_f32(func_3(~u_input.a.xxw, ~u_input.b)))))));
    var var_2 = abs(u_input.e << (~u_input.b % 32u));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, reverseBits(vec3<i32>(arg_0, arg_0, arg_0))), 0i, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 1i) >> (0u % 32u)), abs(select(-1i, arg_0, all(vec3<bool>(true, var_0.a, var_0.a))))) | vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.xx, -vec2<i32>(0i, u_input.d.x)), -58028i, u_input.c.x, arg_0);
    var var_4 = vec4<bool>(all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), any(!vec2<bool>(false && var_0.a, all(vec4<bool>(true, var_0.a, true, true)))), false, any(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), var_0.a)), var_0.a, !var_0.a, !any(vec2<bool>(var_0.a, var_0.a)))));
    return Struct_1(true);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(false);
    global0 = array<vec4<f32>, 2>();
    let var_1 = func_2(arg_2);
    var var_2 = func_2(arg_2);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -900f, -408f, arg_1.x), _wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(0u, 31u)]))) + global0[_wgslsmith_index_u32(max(u_input.a.x, ~u_input.a.x), 2u)])) - vec4<f32>(-1686f, -1544f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-479f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + -1112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(abs(~4294967295u), 1u, 1u), vec3<u32>(_wgslsmith_add_u32(u_input.b, firstLeadingBit(u_input.b)), 55121u, ~8508u));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = min(select(abs(arg_1.wx), abs(func_1(Struct_1(false), vec3<f32>(1569f, -1262f, 307f), ~u_input.e, Struct_1(true)).yz), select(vec2<bool>(all(vec3<bool>(true, true, false)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), 23104u < arg_1.x))), vec2<u32>(abs((arg_0 >> (0u % 32u)) & func_1(Struct_1(false), vec3<f32>(-1403f, -1430f, -1325f), u_input.c.x, Struct_1(true)).x), u_input.a.x));
    var var_1 = 1i;
    var var_2 = func_2(firstTrailingBit(~u_input.c.x));
    var var_3 = true;
    global2 = array<vec4<f32>, 31>();
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(~abs(firstLeadingBit(u_input.a.x))), vec4<u32>(~abs(4294967295u) & u_input.b, 4573u, _wgslsmith_dot_vec3_u32(func_1(Struct_1(true), vec3<f32>(-931f, -361f, 257f), -11091i, Struct_1(false)), vec3<u32>(2257u, 1u, 1u)) << (4294967295u % 32u), u_input.a.x), u_input.b);
    let var_1 = var_0;
    var var_2 = min(~u_input.a.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(29298u, 1u), u_input.b), reverseBits(u_input.a.wz), ~min(u_input.a.xw, _wgslsmith_sub_vec2_u32(vec2<u32>(61948u, u_input.a.x), vec2<u32>(1u, 36057u)))));
    let var_3 = u_input.d.x;
    global1 = ~reverseBits(1u);
    global0 = array<vec4<f32>, 2>();
    global1 = ~u_input.b;
    global2 = array<vec4<f32>, 31>();
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1325f, 1814f) + vec2<f32>(238f, -1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1109f, 677f, -708f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, 393f, 615f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-965f, 264f, 244f) * vec3<f32>(802f, 517f, -589f))))));
}

