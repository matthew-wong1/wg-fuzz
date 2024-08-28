struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(1i, vec4<f32>(154f, -1640f, 481f, 893f)), Struct_2(1i, vec4<f32>(-1394f, -854f, 3747f, 845f)), Struct_2(1i, vec4<f32>(1179f, 848f, 343f, -394f)), Struct_2(2147483647i, vec4<f32>(-1283f, -2405f, -1280f, 810f)), Struct_2(300i, vec4<f32>(337f, 148f, -928f, 655f)), Struct_2(-2913i, vec4<f32>(-1000f, 1260f, 1847f, 786f)), Struct_2(20403i, vec4<f32>(-316f, 713f, 811f, -298f)), Struct_2(-13104i, vec4<f32>(-392f, -959f, 269f, -154f)), Struct_2(1i, vec4<f32>(-1084f, -426f, 755f, -237f)), Struct_2(2147483647i, vec4<f32>(1000f, -1642f, -1343f, 381f)), Struct_2(38832i, vec4<f32>(558f, -888f, -1404f, -1327f)), Struct_2(-1i, vec4<f32>(823f, -713f, -136f, -1736f)), Struct_2(1i, vec4<f32>(-1005f, -109f, 813f, -1447f)), Struct_2(2147483647i, vec4<f32>(1000f, -265f, 128f, -486f)), Struct_2(i32(-2147483648), vec4<f32>(-434f, -285f, -514f, -1000f)), Struct_2(i32(-2147483648), vec4<f32>(2215f, -2040f, -446f, -988f)), Struct_2(-14016i, vec4<f32>(-1000f, -266f, 478f, -1000f)), Struct_2(26696i, vec4<f32>(-1000f, 804f, 1569f, -573f)), Struct_2(-16754i, vec4<f32>(-357f, -474f, 279f, 1204f)), Struct_2(25591i, vec4<f32>(1313f, -554f, 1000f, -1287f)), Struct_2(0i, vec4<f32>(452f, 263f, -876f, -1856f)), Struct_2(0i, vec4<f32>(1745f, -857f, 363f, 1000f)), Struct_2(28882i, vec4<f32>(1064f, 482f, -601f, 121f)), Struct_2(58056i, vec4<f32>(2131f, -1000f, 373f, -908f)), Struct_2(7293i, vec4<f32>(-1000f, -2575f, 575f, -735f)), Struct_2(12211i, vec4<f32>(213f, -681f, -1396f, 1360f)), Struct_2(i32(-2147483648), vec4<f32>(100f, -1940f, -898f, -1000f)), Struct_2(-27332i, vec4<f32>(-659f, -1556f, 1000f, -499f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    global0 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_mod_i32(27778i, -1i);
    let var_1 = _wgslsmith_mod_vec3_u32(~max(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.e.x, 5181u, u_input.c)), ~vec3<u32>(0u, 36u, u_input.c)), vec3<u32>(abs(u_input.c), ~11215u, ~u_input.b)), ~firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.b), u_input.c, ~69668u)));
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    return !(!vec2<bool>(any(vec4<bool>(true, false, true, false)), true));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(937f + 1269f) - _wgslsmith_f_op_f32(max(1000f, 1537f))), 267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f + -1000f)), 231f)), true || any(vec2<bool>(true, true)), select(select(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13319u, 4294967295u, 59795u, u_input.e.x), vec4<u32>(arg_0, 4294967295u, 49278u, 0u)), 28u)], 655f), vec2<bool>(true, true), all(vec2<bool>(true, false))), vec2<bool>(true, true), true), ~41928i);
    let var_1 = vec2<bool>(var_0.b, false);
    var var_2 = var_0.b;
    var var_3 = ~0u;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), var_1.x, vec2<bool>(true, true), 0i);
    return Struct_2(u_input.a, var_0.a);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -359f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(u_input.a) == -1668i;
    global0 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1326f, _wgslsmith_f_op_f32(f32(-1f) * -2148f)))), func_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c, 43623u, 4294967295u)), countOneBits(vec3<u32>(14615u, u_input.b, 23420u))), 4294967295u, 99268u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), 24454u, vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-460f)))), 536f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(ceil(-121f))));
}

