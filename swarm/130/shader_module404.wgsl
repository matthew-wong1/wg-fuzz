struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-229f, -148f, 636f, -696f, 1879f, 1346f, -1276f, -1561f, 1812f, 413f, -816f, 812f, -1270f, 469f, -2223f, 731f);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(25865i, false, vec4<f32>(1891f, -1326f, -277f, -1000f)), Struct_1(i32(-2147483648), true, vec4<f32>(493f, 835f, -1000f, 631f)), Struct_1(2147483647i, true, vec4<f32>(810f, -442f, 479f, 262f)), Struct_1(0i, true, vec4<f32>(1350f, -1089f, 563f, 1969f)), Struct_1(i32(-2147483648), true, vec4<f32>(415f, 792f, -1777f, -585f)), Struct_1(15947i, false, vec4<f32>(-583f, 704f, 206f, 205f)), Struct_1(0i, true, vec4<f32>(1374f, 1436f, 342f, 585f)), Struct_1(2147483647i, true, vec4<f32>(1000f, 604f, -398f, -1075f)), Struct_1(-34336i, false, vec4<f32>(-122f, -1640f, 113f, 652f)), Struct_1(-1i, true, vec4<f32>(-2009f, 1118f, -677f, -1610f)), Struct_1(24314i, true, vec4<f32>(-1552f, -757f, 628f, -525f)), Struct_1(-33220i, false, vec4<f32>(338f, -853f, 165f, -957f)), Struct_1(-68109i, false, vec4<f32>(1971f, -795f, 187f, 1504f)), Struct_1(0i, false, vec4<f32>(564f, -928f, -1000f, 1209f)), Struct_1(26973i, false, vec4<f32>(-553f, -1240f, 1000f, -227f)), Struct_1(0i, true, vec4<f32>(730f, 1708f, -1102f, 231f)), Struct_1(1i, false, vec4<f32>(-1349f, 1962f, -1774f, -1000f)), Struct_1(2147483647i, true, vec4<f32>(-167f, 699f, 352f, -208f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> i32 {
    var var_0 = -u_input.a.xyx;
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(147718u, min(~4294967295u, 1u)), 4294967295u), 20u)];
    var_1 = Struct_1(-select(var_0.x, 21281i, select(any(vec3<bool>(false, var_1.b, true)), true, true)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)));
    global0 = array<f32, 16>();
    var var_2 = u_input.a.yw;
    return -10671i;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(26379i, -65039i, countOneBits(~firstTrailingBit(~arg_2.a)));
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    let var_1 = global0[_wgslsmith_index_u32(0u, 16u)];
    let var_2 = vec4<u32>(~0u, 42423u, min(~(~arg_1.x) << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.x, arg_1.x, 1u)), ~vec3<u32>(arg_1.x, 25391u, 0u)) % 32u), 1u), arg_1.x);
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(15532u, 16u)] + _wgslsmith_f_op_f32(abs(arg_2.c.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    global2 = array<Struct_1, 18>();
    global1 = array<Struct_1, 20>();
    let var_0 = Struct_1(-(-2147483647i >> (arg_3 % 32u)), !(_wgslsmith_f_op_f32(func_3(vec3<f32>(global0[_wgslsmith_index_u32(arg_3, 16u)], 1516f, arg_0.x), vec2<u32>(arg_3, 4294967295u), Struct_1(-41143i, arg_1.x, arg_2.c))) <= _wgslsmith_f_op_f32(func_3(vec3<f32>(arg_2.c.x, arg_0.x, -1361f), vec2<u32>(1u, arg_3), arg_2))) & false, arg_2.c);
    global1 = array<Struct_1, 20>();
    let var_1 = arg_1;
    return !select(true, any(!vec3<bool>(var_0.b, arg_1.x, false)), !all(vec4<bool>(arg_2.b, var_0.b, var_0.b, arg_2.b))) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a.x == -1i, any(vec3<bool>(true, false, false)), true), true), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true)), (0i >= func_1()) | all(vec3<bool>(true, false, false))), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(func_2(vec2<f32>(-2056f, -1344f), vec2<bool>(false, false), Struct_1(0i, false, vec4<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(17184u, 16u)], global0[_wgslsmith_index_u32(19588u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), 9474u), true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), true));
    let var_1 = select(any(vec3<bool>(all(vec4<bool>(true, true, var_0.x, var_0.x)) != !var_0.x, true, min(42221i, u_input.a.x) < reverseBits(u_input.a.x))), false, var_0.x);
    let var_2 = ((select(-u_input.a.x, -2147483647i, var_0.x) << (32966u % 32u)) & u_input.a.x) | u_input.a.x;
    let var_3 = -var_2;
    let var_4 = -1000f;
    let var_5 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(69253u, 24043u), vec2<u32>(40182u, 0u)), countOneBits(1u)) ^ abs(56686u)), 18u)];
    var var_6 = _wgslsmith_clamp_vec3_u32(select(vec3<u32>(min(~0u, firstLeadingBit(1u)), 14948u, ~(~4294967295u)), ~vec3<u32>(_wgslsmith_mod_u32(1u, 4294967295u), 1u, _wgslsmith_div_u32(4294967295u, 3690u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 16u)]) != var_5.c.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, ~29591u, countOneBits(0u)), vec3<u32>(max(~16422u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 82927u, 27704u), vec4<u32>(4294967295u, 1u, 27063u, 1u))), ~countOneBits(57569u), select(_wgslsmith_add_u32(7276u, 1u), 1u, !var_0.x))), vec3<u32>(abs(7472u), ~1u, 8469u));
    let var_7 = global2[_wgslsmith_index_u32(var_6.x, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(var_6.x, firstLeadingBit(var_6.x)), var_6.x), var_5.c.wz, _wgslsmith_f_op_vec2_f32(var_7.c.xz + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_4)))))));
}

