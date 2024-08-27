struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-616f, -276f, 134f, 1007f), vec4<f32>(653f, -224f, -463f, 1388f), vec4<f32>(-1576f, -692f, -1512f, 2303f), vec4<f32>(1087f, -917f, 1220f, -1158f), vec4<f32>(-910f, -721f, 733f, -1210f), vec4<f32>(-931f, 721f, 122f, 1315f), vec4<f32>(867f, -133f, -310f, 1000f), vec4<f32>(813f, 702f, 1099f, -495f), vec4<f32>(-1077f, -212f, -252f, -215f), vec4<f32>(2557f, 1042f, 359f, 1249f), vec4<f32>(222f, -137f, 1355f, 272f), vec4<f32>(-503f, -283f, -429f, -1000f));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-1f);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, 1248f)), arg_2.b, arg_2.b.wx, abs(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(arg_2.d), vec4<u32>(0u, arg_2.d.x, arg_2.d.x, arg_2.d.x)), _wgslsmith_dot_vec4_u32(arg_2.d, arg_2.d) << (~4294967295u % 32u), ~arg_2.d.x | (arg_2.d.x >> (arg_2.d.x % 32u)), 0u)));
    return true;
}

fn func_2(arg_0: f32) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -166f))), arg_0, func_4(Struct_3(_wgslsmith_f_op_f32(-arg_0)), global1.x, Struct_1(_wgslsmith_f_op_f32(func_3()), vec4<f32>(-1384f, arg_0, -1099f, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec4<u32>(1u, 1u, 18895u, 0u)), vec3<bool>(!global1.x, global1.x, true)))));
    var var_1 = u_input.a.yyx;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    var var_3 = _wgslsmith_mod_u32(select(_wgslsmith_mult_u32(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(27990u, 0u, 4294967295u, 1u), vec4<u32>(39121u, 57729u, 23576u, 0u)), 16404u), _wgslsmith_mod_u32(23181u, _wgslsmith_mod_u32(40167u, ~34096u)), true), ~max(1u, abs(55723u) >> (0u % 32u)));
    var var_4 = !vec3<bool>(false, any(select(select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), vec2<bool>(true, false)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), false), global1.x)), global1.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_2)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, var_0.a), vec2<f32>(arg_0, -950f), var_4.xz))))))) - vec2<f32>(arg_0, 151f));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(arg_0.a.b.x));
    let var_1 = Struct_3(-1078f);
    let var_2 = abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(19699i, -10556i, 1i, 0i), ~vec4<i32>(560i, u_input.b, 2147483647i, u_input.a.x)) & -47405i, reverseBits(abs(u_input.a.x))));
    global0 = array<vec4<f32>, 12>();
    global1 = arg_0.d;
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    global1 = vec2<bool>(arg_3.x, all(select(!select(vec3<bool>(global1.x, true, arg_2.d.x), vec3<bool>(true, global1.x, arg_2.d.x), vec3<bool>(arg_1.x, arg_2.d.x, true)), !vec3<bool>(arg_2.d.x, global1.x, global1.x), false)));
    var var_0 = (func_1(Struct_2(func_1(arg_2), arg_0.d.x, vec2<i32>(0i, u_input.a.x) | vec2<i32>(u_input.b, 40878i), !arg_3.zw)).d.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.d, arg_0.d), _wgslsmith_mult_vec4_u32(firstLeadingBit(arg_2.a.d), abs(vec4<u32>(9034u, arg_0.d.x, arg_0.d.x, arg_2.a.d.x)))) % 32u)) <= ~_wgslsmith_add_u32(arg_0.d.x, arg_2.b);
    var var_1 = !(_wgslsmith_f_op_f32(-arg_0.a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-505f - -963f) * arg_0.b.x) - 1391f));
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~(~arg_0.d.x), ~_wgslsmith_clamp_u32(arg_2.a.d.x, 1030u, arg_0.d.x)), 4294967295u, arg_2.a.d.x, 1u), vec4<u32>(~_wgslsmith_sub_u32(arg_2.b & 41637u, ~arg_2.a.d.x), reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(15406u, 0u)), arg_0.d.xy ^ vec2<u32>(arg_2.b, arg_2.b))), ~4294967295u, ~(~52097u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(725f, arg_2.a.c.x, arg_0.c.x) - arg_2.a.b.wxw)))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(global1.x, true);
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(Struct_2(Struct_1(-574f, global0[_wgslsmith_index_u32(68707u, 12u)], vec2<f32>(1184f, 596f), vec4<u32>(81191u, 6086u, 1u, 4294967295u)), 72174u, vec2<i32>(u_input.a.x, u_input.b), vec2<bool>(global1.x, true))), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)), Struct_2(Struct_1(150f, vec4<f32>(-1114f, -1070f, -641f, -678f), vec2<f32>(1022f, -357f), vec4<u32>(0u, 19499u, 1u, 4294967295u)), 4294967295u, u_input.a.zw, vec2<bool>(false, global1.x)), select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, false, global1.x, global1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2140f)), 1096f), 1831f)));
    var var_1 = Struct_3(func_1(Struct_2(func_1(Struct_2(Struct_1(var_0.x, global0[_wgslsmith_index_u32(1u, 12u)], vec2<f32>(-776f, 582f), vec4<u32>(1u, 13902u, 4294967295u, 1u)), 0u, u_input.a.wz, vec2<bool>(global1.x, global1.x))), ~(~38655u), vec2<i32>(u_input.b, max(35942i, u_input.a.x)), select(select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), false), !vec2<bool>(true, global1.x), !global1.x))).c.x);
    var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-867f + _wgslsmith_f_op_f32(step(var_0.x, 423f))) - -1333f), _wgslsmith_f_op_f32(1f - 1912f))));
    let var_2 = vec3<bool>(!global1.x, !global1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), false) << (_wgslsmith_div_vec2_u32(vec2<u32>(20063u, 46870u), vec2<u32>(1u, 3649u)) % vec2<u32>(32u)))), var_0.x, min(firstTrailingBit(abs(26042u)), 16190u) ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1u, 4294967295u), firstLeadingBit(~20891u)), _wgslsmith_f_op_f32(exp2(var_1.a)));
}

