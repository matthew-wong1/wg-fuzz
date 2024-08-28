struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    return true;
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global1 = arg_0;
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global1 = false;
    global1 = select(!(4294967295u <= ~(u_input.b.x | 43141u)), !any(!vec2<bool>(arg_0, arg_0)), true);
    return !(!select(!(!vec3<bool>(arg_0, arg_0, true)), vec3<bool>(func_1(47810i, 654f), true, true), arg_0));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 23>();
    var var_0 = select(select(!select(vec3<bool>(arg_0, arg_0, false), !vec3<bool>(arg_0, arg_0, true), !arg_0), func_3(func_1(max(-34613i, 62694i), _wgslsmith_f_op_f32(round(-157f)))), vec3<bool>(true, all(vec4<bool>(arg_0, arg_0, false, arg_0)), true)), !vec3<bool>(select(true, all(vec4<bool>(arg_0, false, arg_0, true)), true), func_1(17833i, _wgslsmith_f_op_f32(f32(-1f) * -1074f)), !arg_0), arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, -355f, -442f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-526f, 1088f, 1000f, -272f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1251f)), _wgslsmith_f_op_f32(-1528f + -473f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1822f - -485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f + -296f))))));
    var var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(~61274u, 23u)];
    return global0[_wgslsmith_index_u32(~((_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_3.b.x, 1u, var_3.b.x, 1u), vec4<u32>(60349u, u_input.b.x, u_input.a, 99904u)), max(vec4<u32>(var_3.b.x, u_input.a, var_3.b.x, var_3.b.x), vec4<u32>(13692u, 4294967295u, var_3.b.x, 20046u))) | abs(52196u)) ^ var_3.b.x), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 922f;
    let var_1 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(39308u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xy), min(16626u, 0u)), u_input.b.x, 14401u)), (~(~vec4<u32>(u_input.a, u_input.a, 79335u, 0u)) << (vec4<u32>(u_input.a, ~4294967295u, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 70594u), vec3<u32>(19034u, 7799u, u_input.b.x))) % vec4<u32>(32u))) ^ ((firstTrailingBit(vec4<u32>(1u, 0u, u_input.a, u_input.a)) ^ ~vec4<u32>(6926u, u_input.b.x, u_input.b.x, 4294967295u)) ^ (select(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, 1u, 51783u, u_input.a), vec4<bool>(false, false, true, true)) << (vec4<u32>(u_input.b.x, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1060f, -135f)), 2835f, func_1(1i, _wgslsmith_f_op_f32(-2072f * -572f)))) != 1644f);
    var var_3 = select(!select(func_3(true).zz, select(!vec2<bool>(true, var_2.c), select(vec2<bool>(false, var_2.c), vec2<bool>(true, var_2.c), false), vec2<bool>(var_2.c, var_2.c)), any(vec4<bool>(false, true, var_2.c, true))), vec2<bool>(((var_2.b.x & var_2.b.x) > 1u) | var_2.c, (~var_2.b.x ^ 20770u) == 0u), select(vec2<bool>(var_2.c, true), !(!func_3(var_2.c).yz), true));
    let var_4 = Struct_1(-26733i, max(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_1), u_input.b.yy, u_input.b.xz) >> (((vec2<u32>(29437u, var_2.b.x) & u_input.b.yz) ^ vec2<u32>(3074u, var_2.b.x)) % vec2<u32>(32u)), vec2<u32>(var_1, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(45u, var_1, var_2.b.x, 4294967295u), vec4<u32>(43563u, 30012u, var_2.b.x, var_1), vec4<u32>(0u, 4294967295u, var_2.b.x, var_1)), ~vec4<u32>(4294967295u, 1u, 1u, u_input.a)))), var_2.d < _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d * var_2.d), _wgslsmith_f_op_f32(min(var_2.d, var_2.d))), _wgslsmith_f_op_f32(trunc(1075f)), false)))));
    var var_5 = var_4.a;
    global0 = array<Struct_1, 23>();
    var var_6 = var_4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.d, _wgslsmith_f_op_f32(var_4.d + var_4.d), _wgslsmith_f_op_f32(ceil(-527f))))), -3531i, select(var_2.a, var_2.a, (17928i >> (var_1 % 32u)) > countOneBits(select(var_2.a, var_4.a, var_2.c))));
}

