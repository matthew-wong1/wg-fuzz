struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_2(false, vec4<bool>(false, true, false, false), -378f, Struct_1(true)), Struct_2(false, vec4<bool>(false, true, false, false), -704f, Struct_1(true)), vec4<bool>(true, false, true, true)), Struct_3(Struct_2(true, vec4<bool>(false, false, true, true), -1392f, Struct_1(true)), Struct_2(false, vec4<bool>(false, false, false, false), 1000f, Struct_1(true)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(true, vec4<bool>(true, false, true, true), 411f, Struct_1(true)), Struct_2(false, vec4<bool>(false, true, false, true), -1126f, Struct_1(false)), vec4<bool>(false, false, true, true)), Struct_3(Struct_2(false, vec4<bool>(true, false, false, false), -941f, Struct_1(false)), Struct_2(true, vec4<bool>(false, false, false, false), -964f, Struct_1(false)), vec4<bool>(true, true, false, true)), Struct_3(Struct_2(true, vec4<bool>(true, false, true, true), -1165f, Struct_1(false)), Struct_2(false, vec4<bool>(false, true, false, true), 709f, Struct_1(true)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(false, vec4<bool>(true, true, true, false), 564f, Struct_1(true)), Struct_2(true, vec4<bool>(false, true, true, false), 347f, Struct_1(true)), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(false, vec4<bool>(false, false, false, true), -143f, Struct_1(false)), Struct_2(false, vec4<bool>(true, true, true, true), -252f, Struct_1(true)), vec4<bool>(true, true, false, false)));

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1065f, -644f)) + -520f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-890f, -953f)), _wgslsmith_f_op_f32(floor(-503f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -580f)))))));
    global1 = array<Struct_1, 5>();
    var var_1 = Struct_4(~(~firstLeadingBit(80540u)));
    var var_2 = global1[_wgslsmith_index_u32(~var_1.a, 5u)];
    let var_3 = _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.yz), firstTrailingBit(vec2<i32>(-7732i, -countOneBits(-2147483647i))));
    return _wgslsmith_sub_u32(909u, var_1.a);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> bool {
    global0 = array<Struct_3, 7>();
    let var_0 = ~func_3();
    var var_1 = Struct_4(reverseBits(13646u));
    let var_2 = all(vec4<bool>(any(vec2<bool>(true, true)), false, select(true, any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, false, true))), false)) | all(vec3<bool>(true, true, true));
    global0 = array<Struct_3, 7>();
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 53572u))), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(103503u, 2364u)), _wgslsmith_dot_vec3_u32(vec3<u32>(39671u, 4294967295u, 32017u), vec3<u32>(70150u, 0u, 1u)) << ((1u << (1u % 32u)) % 32u)))), 5u)];
    global1 = array<Struct_1, 5>();
    let var_1 = 4693i;
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(625f, arg_0.c)))), arg_0.c, !(!arg_2))) < arg_0.c, !arg_1.a, !(all(arg_0.b) && arg_2));
    var var_3 = _wgslsmith_f_op_f32(-arg_0.c);
    return arg_0.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = func_4(Struct_2(u_input.c == _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, 1i)), u_input.a.yy << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), select(!select(vec4<bool>(true, true, arg_1.a, arg_0.x), vec4<bool>(arg_0.x, false, true, false), arg_1.a), vec4<bool>(func_2(vec3<f32>(1677f, 196f, -196f), vec3<f32>(-1534f, 903f, 744f)), arg_1.a, arg_0.x, !arg_1.a), !(!vec4<bool>(false, false, arg_1.a, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1344f + 450f), _wgslsmith_div_f32(-580f, 2538f))) - _wgslsmith_f_op_f32(1107f * _wgslsmith_f_op_f32(abs(274f)))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(2527u, 1u), 1u), 5u)]), global1[_wgslsmith_index_u32(abs(1u), 5u)], func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-610f, -641f, -976f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-380f, -258f, 1266f) - vec3<f32>(-1209f, 2108f, -544f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-184f, 881f, 106f) + vec3<f32>(-1889f, -1877f, -1039f)))))));
    var var_1 = Struct_4(1u);
    global0 = array<Struct_3, 7>();
    var var_2 = arg_1.a;
    var_2 = false;
    return !(!select(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !vec4<bool>(arg_1.a, arg_0.x, arg_1.a, true), select(true, func_4(Struct_2(true, vec4<bool>(arg_0.x, true, true, true), -1400f, Struct_1(false)), Struct_1(true), false).a, all(vec2<bool>(var_0.a, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -21793i;
    var var_1 = true;
    let var_2 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), true)), vec2<bool>(select(false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), true), false == any(func_1(vec2<bool>(false, false), global1[_wgslsmith_index_u32(0u, 5u)]))), func_4(Struct_2(true, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-877f, -855f, true))), func_4(Struct_2(true, vec4<bool>(false, false, false, false), 1000f, Struct_1(true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(77250u, 10678u, 84499u, 0u), vec4<u32>(4294967295u, 0u, 73310u, 75299u)), 5u)], true)), func_4(Struct_2(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1262f), func_4(Struct_2(false, vec4<bool>(false, true, true, false), -843f, Struct_1(false)), Struct_1(true), false)), Struct_1(all(vec4<bool>(true, true, false, true))), all(vec4<bool>(false, true, false, true)) | select(true, true, false)), true).a);
    let var_3 = 11603u;
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(529f, 851f)), -444f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -525f))), 1505f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(853f, 201f, -1847f, 711f) + vec4<f32>(361f, 583f, 1054f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, -997f, -246f, 890f))) + vec4<f32>(_wgslsmith_f_op_f32(min(-680f, 519f)), 949f, _wgslsmith_f_op_f32(f32(-1f) * -1162f), -956f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(646f, 820f, 261f, 1110f), vec4<f32>(1222f, -938f, -664f, -948f)))))), !any(var_2)));
    let var_5 = -873f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

