struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1172f;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global2: array<vec4<i32>, 6>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    return global3[_wgslsmith_index_u32(~abs(~(~u_input.a.x)), 31u)];
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    global3 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, 375f)) * _wgslsmith_f_op_f32(-arg_0)) + -1819f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1640f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, -1238f))))));
    global0 = _wgslsmith_f_op_f32(round(var_0.x));
    let var_1 = -u_input.b;
    let var_2 = vec3<i32>(u_input.c.x, var_1, 1i);
    return vec4<f32>(616f, 949f, 1869f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, 173f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + var_0.x) * _wgslsmith_f_op_f32(var_0.x * 1666f)))) - arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(653f, 860f, 1000f, 747f), vec4<f32>(-745f, -994f, 411f, -3044f), vec4<bool>(true, arg_0.a, arg_0.a, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(730f, Struct_1(false))) * _wgslsmith_f_op_vec4_f32(func_3(-767f, arg_0))))), 675f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-296f, 1893f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, -719f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1004f, 2078f), vec2<f32>(-757f, -2072f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2061f), _wgslsmith_f_op_f32(f32(-1f) * -993f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-334f, -946f)))), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(789f))))))));
    var var_1 = global3[_wgslsmith_index_u32(59851u, 31u)];
    var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2080f, -1000f, -948f, 588f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-809f, -208f, -1493f, 250f), vec4<f32>(-118f, -1660f, -282f, -1421f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-878f, -251f, -1000f, 823f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -665f, 871f, -1265f) * vec4<f32>(-489f, 580f, 709f, 697f))))), 1759f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1303f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1960f, 1000f) - vec2<f32>(144f, -428f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 255f), vec2<f32>(-1263f, -1198f)))), vec2<f32>(_wgslsmith_f_op_f32(max(-346f, _wgslsmith_f_op_f32(min(320f, -1858f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-920f, -596f))), vec2<bool>(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(659f, -1000f, -1194f, 1007f), vec4<f32>(304f, -939f, 1153f, 718f)), 727f, vec2<f32>(-827f, 829f), _wgslsmith_div_vec3_f32(vec3<f32>(-1367f, 1093f, 1632f), vec3<f32>(-274f, 1882f, 795f))).a, false))), vec3<f32>(_wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(-2531f + _wgslsmith_f_op_f32(f32(-1f) * -235f))), 492f, _wgslsmith_f_op_f32(-1000f + 853f)));
    let var_2 = -u_input.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1860f, 1000f)), _wgslsmith_f_op_f32(-1793f - 656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(2205f - 657f)))), (1u > u_input.a.x) && arg_1.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) + -1000f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1471f));
    var var_0 = Struct_1(false);
    let var_1 = func_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1077f, -1171f, _wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(f32(-1f) * -209f))), 1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, -288f) - vec2<f32>(1115f, 142f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(566f, -736f) + vec2<f32>(-1198f, -934f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(807f, -475f, 178f) * vec3<f32>(892f, -1899f, -585f)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1950f, 524f, -1070f, -924f))), 934f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 378f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(860f, -1357f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-438f, 300f), vec2<f32>(987f, -659f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(739f, -565f, -731f), vec3<f32>(-266f, -1291f, -548f))))))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1412f, 1634f)))))));
    var var_3 = ~min(_wgslsmith_dot_vec2_i32(~abs(u_input.c), countOneBits(u_input.c) << (~vec2<u32>(u_input.a.x, 3872u) % vec2<u32>(32u))), _wgslsmith_sub_i32(1i, ~0i) ^ _wgslsmith_sub_i32(firstLeadingBit(u_input.b), max(5259i, u_input.c.x)));
    var var_4 = var_1;
    let var_5 = select(vec2<bool>(!(var_4.a != var_1.a) & (u_input.a.x <= (4294967295u ^ u_input.a.x)), any(vec2<bool>(true, true))), select(vec2<bool>(all(select(vec4<bool>(var_1.a, var_1.a, false, false), vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(true, var_4.a, var_1.a, false))), true), select(!select(vec2<bool>(true, true), vec2<bool>(var_4.a, true), true), select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true), !vec2<bool>(true, var_4.a)), var_4.a), any(global1[_wgslsmith_index_u32(~(~u_input.a.x), 5u)])), var_0.a);
    let var_6 = abs(~(~((u_input.a.x ^ u_input.a.x) >> (~4294967295u % 32u))));
    var var_7 = ~firstTrailingBit(vec4<u32>(~(~4294967295u), 0u, 0u, _wgslsmith_clamp_u32(var_6 >> (42114u % 32u), ~0u, _wgslsmith_mult_u32(11394u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_dot_vec2_u32(var_7.yz, u_input.a.xy) & min(u_input.a.x, (61397u >> (u_input.a.x % 32u)) << ((var_7.x >> (1u % 32u)) % 32u)));
}

