struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1633f, -1406f), vec2<f32>(158f, -537f), vec2<f32>(248f, -1000f), vec2<f32>(-1215f, -736f), vec2<f32>(914f, -639f), vec2<f32>(-166f, 1156f), vec2<f32>(2153f, 1005f));

var<private> global1: array<i32, 29>;

var<private> global2: array<vec4<i32>, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(538f, 1155f, -1032f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-935f, 1320f, -681f) + vec3<f32>(-214f, 512f, 370f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -312f))))));
    global1 = array<i32, 29>();
    var var_1 = 8845u << (select(1u, arg_0, false) % 32u);
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    return 342f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    global1 = array<i32, 29>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.zz)) + vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.d)), -1166f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 705f))));
    var_0 = Struct_4(arg_1.zx);
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = func_3(Struct_1(vec3<bool>(true, true, !(!arg_0.x))), vec4<f32>(521f, _wgslsmith_f_op_f32(func_2(_wgslsmith_add_u32(abs(u_input.a), countOneBits(u_input.a)))), -1016f, -1192f));
    global1 = array<i32, 29>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1873f, arg_2, -1113f), vec3<f32>(arg_1.a.x, -1347f, arg_2)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_1.a.x, -1196f), vec3<f32>(arg_1.a.x, arg_1.a.x, arg_2))))), vec3<f32>(-890f, _wgslsmith_f_op_f32(-arg_1.a.x), 1000f)))), -616f);
    var var_2 = Struct_1(vec3<bool>(true, var_0.a.x, true));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-196f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))), -900f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 819f)), _wgslsmith_f_op_f32(f32(-1f) * -445f), -1858f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1394f, arg_2, arg_2) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_1.a.x, 185f), vec3<f32>(-1363f, arg_1.a.x, -1840f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a - var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, arg_1.a.x, arg_2)))))));
    return Struct_1(vec3<bool>(arg_3, arg_0.x, (arg_0.x & (var_2.a.x || var_0.a.x)) & (u_input.d == 4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    let var_0 = vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((~vec4<u32>(25655u, arg_1, 99429u, 98571u) >> (vec4<u32>(0u, 948u, 23359u, 16865u) % vec4<u32>(32u))) ^ ~(~vec4<u32>(67229u, u_input.d, 26966u, 49678u)), vec4<u32>(_wgslsmith_mult_u32(55653u | u_input.a, ~arg_1), _wgslsmith_mod_u32(u_input.a, arg_1) << (~40988u % 32u), 0u, ~0u)), 29u)], reverseBits(abs(u_input.c)) & 12469i);
    global1 = array<i32, 29>();
    let var_1 = arg_0.a.x;
    let var_2 = any(!select(select(!vec4<bool>(true, false, arg_0.a.x, false), !vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), vec4<bool>(func_3(arg_0, vec4<f32>(-734f, 949f, -1751f, -787f)).a.x, var_1, true, all(vec4<bool>(false, var_1, var_1, var_1))), arg_0.a.x));
    let var_3 = func_1(vec4<bool>(any(func_3(func_1(vec4<bool>(var_2, false, true, arg_0.a.x), Struct_4(vec2<f32>(arg_2.b, 337f)), 134f, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_3, arg_2.a.x, arg_2.a.x) - vec4<f32>(-445f, 695f, -363f, arg_2.a.x))).a.zz), all(select(vec4<bool>(var_1, false, false, false), vec4<bool>(false, true, true, var_1), vec4<bool>(true, true, arg_0.a.x, var_1))) | var_2, -16597i > global1[_wgslsmith_index_u32(4294967295u, 29u)], false), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1850f, -1045f), _wgslsmith_f_op_vec2_f32(abs(arg_2.a.zz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(49130u, 7u)] + global0[_wgslsmith_index_u32(4294967295u, 7u)]) * _wgslsmith_f_op_vec2_f32(arg_2.a.xz * global0[_wgslsmith_index_u32(u_input.a, 7u)])))), _wgslsmith_f_op_f32(f32(-1f) * -134f), arg_0.a.x);
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(arg_2.b * -781f), _wgslsmith_f_op_f32(floor(arg_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(858f, -1585f, arg_3, arg_2.b)))), var_2)), vec4<f32>(_wgslsmith_f_op_f32(874f + _wgslsmith_f_op_f32(arg_3 + arg_3)), arg_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x), _wgslsmith_f_op_f32(step(271f, -1121f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(308f, 205f, -903f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x, arg_3.a.x), func_3(Struct_1(arg_2.a), _wgslsmith_f_op_vec4_f32(exp2(arg_3.a))).a))), func_4(Struct_1(arg_2.a), 1u, Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(arg_1.b, arg_1.b, arg_3.a.x), arg_2.a))), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -333f))))).a.x);
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(0u)) * -172f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.b)), arg_3.a.x, arg_3.a.x))), -1373f);
    let var_1 = -933f;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 29u)];
    var var_3 = true;
    return arg_3.a.xwx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.d, 29u)] | _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(63080u, u_input.d), 25u)], ~firstLeadingBit(abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], u_input.c, u_input.b, 0i))));
    global0 = array<vec2<f32>, 7>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1645f, -1016f, 609f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(987f, 532f, 795f), vec3<f32>(-1215f, 1360f, -121f)))))), _wgslsmith_f_op_vec3_f32(func_5(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1084f, 996f, 590f), vec3<f32>(-435f, 737f, -1000f), vec3<bool>(false, false, true))), _wgslsmith_div_f32(1797f, 432f)), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), func_4(func_1(vec4<bool>(false, false, true, false), Struct_4(vec2<f32>(-283f, 794f)), 1457f, true), firstTrailingBit(u_input.a), Struct_5(vec3<f32>(1000f, 1594f, 116f), -249f), -160f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -309f))));
    global1 = array<i32, 29>();
    let var_2 = ~971u;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(vec4<bool>(true, false, true, false), Struct_5(vec3<f32>(-821f, 149f, var_1.b), -1103f), Struct_1(vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-738f, var_1.b, var_1.a.x, -1087f)))).x * -1556f), var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x + 1893f))), 1769f)));
    var var_4 = vec3<bool>(all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), any(select(vec2<bool>(true, true), func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), Struct_4(vec2<f32>(var_1.a.x, -1391f)), 427f, false).a.zz, vec2<bool>(all(vec4<bool>(true, true, false, false)), false))), true);
    var_4 = vec3<bool>(true, _wgslsmith_f_op_f32(-var_1.a.x) > var_3.a.x, !((~var_2 >= max(var_2, var_2)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2, ~var_2));
}

