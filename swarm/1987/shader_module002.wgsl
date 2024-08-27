struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(1000f, -561f), vec2<f32>(1287f, -637f), vec2<f32>(-1510f, 144f), vec2<f32>(1914f, -332f), vec2<f32>(568f, 876f), vec2<f32>(-252f, -226f), vec2<f32>(-297f, -424f), vec2<f32>(-593f, -332f), vec2<f32>(-130f, 417f), vec2<f32>(-697f, -530f), vec2<f32>(-367f, 702f), vec2<f32>(1272f, -1851f), vec2<f32>(904f, 153f), vec2<f32>(-327f, -1000f), vec2<f32>(-1024f, -1000f), vec2<f32>(-677f, -1067f), vec2<f32>(-402f, 505f), vec2<f32>(-942f, 1184f), vec2<f32>(756f, -1586f), vec2<f32>(1166f, -916f), vec2<f32>(-222f, -794f), vec2<f32>(-1075f, -277f), vec2<f32>(-359f, 857f), vec2<f32>(-1226f, 190f), vec2<f32>(1341f, -1193f), vec2<f32>(-191f, -1008f), vec2<f32>(-518f, -2248f), vec2<f32>(588f, -330f), vec2<f32>(-461f, -1000f), vec2<f32>(1376f, 173f), vec2<f32>(409f, 703f));

var<private> global1: array<f32, 27> = array<f32, 27>(373f, -969f, 640f, 1241f, 1727f, 3405f, 469f, 100f, -956f, 1046f, 1261f, -395f, -101f, 1000f, 1000f, -502f, -584f, -1364f, 458f, 653f, -2615f, 1447f, 2249f, -437f, -265f, 892f, 298f);

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    global2 = arg_0;
    global1 = array<f32, 27>();
    var var_0 = Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), false), !vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true, !(global2.x == 2976i), any(vec4<bool>(false, false, true, true))));
    let var_1 = true;
    var_0 = Struct_1(var_0.b.xy, vec4<bool>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1, 27u)], global1[_wgslsmith_index_u32(arg_1, 27u)]) >= global1[_wgslsmith_index_u32(4294967295u | arg_1, 27u)], false, true, true));
    return -467f;
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    global1 = array<f32, 27>();
    var var_0 = ~vec4<i32>(~global2.x, reverseBits(~_wgslsmith_dot_vec2_i32(global2.xz, vec2<i32>(1i, global2.x))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(firstTrailingBit(0i), -arg_1), 1i), abs(arg_1));
    var var_1 = Struct_1(!vec2<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), vec4<bool>(true, !(any(vec3<bool>(true, false, true)) | false), !any(vec4<bool>(true, true, true, true)), !select(true, true, false) | true));
    global0 = array<vec2<f32>, 31>();
    global2 = vec3<i32>(~firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 1i, -1i), vec3<i32>(-2147483647i, arg_1, -2147483647i))), firstLeadingBit(~global2.x) & -_wgslsmith_dot_vec3_i32(var_0.zzz, max(vec3<i32>(1i, global2.x, 1i), vec3<i32>(30818i, arg_1, global2.x))), u_input.b << (((~arg_0 | (1u << (arg_0 % 32u))) >> (arg_0 % 32u)) % 32u));
    return !all(select(vec3<bool>(var_1.a.x, var_1.b.x, true), var_1.b.zzx, !select(vec3<bool>(true, false, var_1.b.x), var_1.b.yyx, var_1.b.yyy)));
}

fn func_1() -> vec3<u32> {
    global1 = array<f32, 27>();
    var var_0 = vec4<i32>(4980i & global2.x, u_input.b, ~(global2.x & ~(~u_input.a.x)), _wgslsmith_mult_i32(-2147483647i, u_input.a.x));
    let var_1 = vec4<i32>(max(var_0.x, -48271i), ~var_0.x ^ global2.x, 1i, ~(var_0.x ^ ~1i));
    var var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(-vec3<i32>(u_input.b, -1i, u_input.b), _wgslsmith_mod_u32(4294967295u, 10624u))), 540f)) == global1[_wgslsmith_index_u32(1u, 27u)], select(select(true, func_3(_wgslsmith_clamp_u32(40625u, 0u, 1u), -u_input.a.x), all(vec2<bool>(false, false))), false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), _wgslsmith_mod_u32(abs(max(52097u, 3405u)), countOneBits(firstLeadingBit(1u))) <= (countOneBits(~1u) & ~firstTrailingBit(0u)));
    var var_3 = -113f;
    return ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, 0u, 9007u)), ~vec3<u32>(69204u, 0u, 15194u), firstLeadingBit(~vec3<u32>(97052u, 71048u, 8298u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true && (true != all(vec2<bool>(true, true))), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global2.x == global2.x, any(vec3<bool>(true, true, false))), false));
    let var_1 = global2.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1357f);
    let var_3 = _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(89750u, 27u)]));
    let var_4 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, ~0u, 1u)), ~func_1());
    var var_5 = vec4<f32>(global1[_wgslsmith_index_u32(5135u, 27u)], -2027f, 1072f, _wgslsmith_f_op_f32(step(var_3, 118f)));
    global0 = array<vec2<f32>, 31>();
    var var_6 = min(~(~u_input.b), 24087i << (~(~var_4.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(~var_4.x, 40973u | var_4.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-705f, -1476f, var_0.b.x))), _wgslsmith_f_op_f32(round(-663f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, var_5.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(84905u, 27u)], 518f))), var_0.b.x | false))), select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, var_4.x, 101206u), var_4), var_4.x, ~_wgslsmith_mod_u32(var_4.x, var_4.x), var_4.x), ~(~(~vec4<u32>(4294967295u, 51728u, 4294967295u, 4294967295u))), !var_0.b.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(var_4.x | var_4.x) ^ ~4294967295u, 27u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f))));
}

