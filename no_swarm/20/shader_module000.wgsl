struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec2<f32>(1000f, 244f), vec2<f32>(-341f, -350f), Struct_2(-114f, false, -197f)), Struct_3(vec2<f32>(287f, -1465f), vec2<f32>(812f, 888f), Struct_2(120f, true, -370f)), Struct_3(vec2<f32>(-650f, 931f), vec2<f32>(-458f, -1000f), Struct_2(456f, false, -855f)), Struct_3(vec2<f32>(-486f, -1542f), vec2<f32>(-1000f, 828f), Struct_2(-297f, false, -850f)), Struct_3(vec2<f32>(522f, -617f), vec2<f32>(-1680f, 166f), Struct_2(946f, true, -319f)), Struct_3(vec2<f32>(-560f, -343f), vec2<f32>(-1697f, -489f), Struct_2(703f, true, 846f)), Struct_3(vec2<f32>(-1885f, 202f), vec2<f32>(-724f, -1494f), Struct_2(-2111f, false, -144f)), Struct_3(vec2<f32>(186f, -1243f), vec2<f32>(895f, 1351f), Struct_2(-536f, true, 1051f)), Struct_3(vec2<f32>(1000f, 1000f), vec2<f32>(-1394f, 656f), Struct_2(-1147f, false, 872f)), Struct_3(vec2<f32>(1985f, 157f), vec2<f32>(-276f, -1148f), Struct_2(-559f, true, -912f)), Struct_3(vec2<f32>(1402f, -782f), vec2<f32>(-815f, 760f), Struct_2(-2057f, true, -540f)), Struct_3(vec2<f32>(-442f, 333f), vec2<f32>(-656f, 984f), Struct_2(355f, true, 305f)), Struct_3(vec2<f32>(1579f, -2108f), vec2<f32>(-824f, -494f), Struct_2(420f, false, 777f)), Struct_3(vec2<f32>(-533f, -996f), vec2<f32>(-286f, 276f), Struct_2(-4443f, false, 526f)), Struct_3(vec2<f32>(651f, -2445f), vec2<f32>(180f, 569f), Struct_2(-240f, true, 513f)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    let var_0 = 11198u;
    return ~var_0;
}

fn func_3() -> vec2<f32> {
    global0 = _wgslsmith_clamp_u32(4294967295u, ~countOneBits(u_input.b), u_input.a.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(504f, -1124f), _wgslsmith_f_op_f32(sign(-966f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 351f)))));
    global0 = u_input.b << ((u_input.a.x | 4294967295u) % 32u);
    var var_1 = !vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1185f)) * _wgslsmith_f_op_f32(min(-960f, var_0.a.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-690f)) * var_0.a.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.c.c - arg_0.a.x))), 1038f, -1234f)));
    global1 = array<Struct_3, 15>();
    var var_1 = var_0.xz;
    global1 = array<Struct_3, 15>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3()));
    return -1250f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~u_input.b ^ _wgslsmith_div_u32(4294967295u, u_input.b), 59395u, 30990u, 1u)), ~(~max(vec4<u32>(u_input.b, u_input.a.x, 94373u, 4294967295u) | vec4<u32>(0u, 1u, 50991u, u_input.a.x), min(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 1246u), vec4<u32>(4294967295u, u_input.b, 0u, u_input.a.x)))));
    let var_0 = vec2<f32>(-1034f, -302f);
    let var_1 = -1469f;
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(u_input.a.yz, u_input.a.yx)), ~firstTrailingBit(~vec2<u32>(u_input.b, u_input.a.x))), 15u)];
    global0 = ~1u;
    global1 = array<Struct_3, 15>();
    let var_3 = vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_div_u32(37799u, func_1(vec3<bool>(true, var_2.c.b, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -9244i, 66355i), vec3<i32>(31585i, -2147483647i, -130i)))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(1203f, 181f), vec2<f32>(var_0.x, 769f), var_2.c), u_input.a.x)), _wgslsmith_div_f32(594f, var_0.x))))), var_2.c.b || any(vec3<bool>(false, var_2.c.b || false, true)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.c.a)) - var_2.c.a))));
    global0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(218f, var_0.x) + var_1), -1664f, _wgslsmith_f_op_f32(-var_2.a.x), -684f) + vec4<f32>(_wgslsmith_f_op_f32(644f - 1568f), var_2.b.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_4.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2813f))))));
}

