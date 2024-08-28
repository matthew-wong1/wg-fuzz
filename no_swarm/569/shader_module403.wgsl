struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_0 = all(vec4<bool>(arg_1, _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-arg_0.c.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f)), false, !(!(!global0[_wgslsmith_index_u32(46250u, 3u)]))));
    let var_1 = _wgslsmith_clamp_u32(u_input.a ^ arg_0.b.x, _wgslsmith_mod_u32(min(arg_0.b.x, arg_0.b.x ^ _wgslsmith_mod_u32(33800u, arg_0.b.x)), 4294967295u), 4294967295u);
    return arg_0.e;
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = array<bool, 3>();
    var var_0 = !global0[_wgslsmith_index_u32(57050u, 3u)];
    let var_1 = arg_0.b.b;
    let var_2 = vec4<f32>(-1601f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-arg_0.b.a.x));
    global0 = array<bool, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-910f, _wgslsmith_f_op_f32(min(-169f, _wgslsmith_f_op_f32(trunc(197f)))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-821f, -822f) * arg_0.a), -1521f))) + var_1.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, vec2<u32>(25121u, arg_0.b.x), arg_0.c, -1i, -1626f), true))), Struct_2(vec3<f32>(arg_0.e, -143f, arg_1.a.x), Struct_1(vec3<i32>(-11142i, 1i, -23411i), vec2<u32>(0u, 1u), arg_1.b.c, -2147483647i, arg_0.c.x))))), arg_1.b.c.x);
    var var_1 = min(~countOneBits(1u << (_wgslsmith_clamp_u32(arg_1.b.b.x, 14456u, u_input.b.x) % 32u)), 4294967295u);
    return arg_1.b.b.x;
}

fn func_1() -> vec4<f32> {
    global0 = array<bool, 3>();
    var var_0 = vec4<bool>((_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xz), firstTrailingBit(u_input.b.yz)) >> (u_input.a % 32u)) == _wgslsmith_div_u32(9644u, ~(~u_input.b.x)), global0[_wgslsmith_index_u32(8108u, 3u)], false, false);
    var var_1 = 1416f;
    var var_2 = ~(~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 1u) & 0u, ~func_2(Struct_1(vec3<i32>(u_input.d, -88305i, u_input.d), vec2<u32>(u_input.b.x, 0u), vec4<f32>(2201f, 336f, 474f, -1048f), u_input.c.x, -537f), Struct_2(vec3<f32>(412f, -937f, 1160f), Struct_1(u_input.c.zzx, vec2<u32>(u_input.b.x, u_input.a), vec4<f32>(126f, 636f, -544f, 316f), -51872i, 241f)))));
    var var_3 = ~abs(~(-(vec3<i32>(u_input.d, 8109i, u_input.c.x) >> (vec3<u32>(u_input.b.x, u_input.a, u_input.b.x) % vec3<u32>(32u)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_3(-379f, Struct_2(vec3<f32>(-342f, 318f, 223f), Struct_1(u_input.c.yyx, vec2<u32>(1u, 61774u), vec4<f32>(-509f, -1000f, 479f, 1495f), -1i, 592f))))))) * -593f)), -1578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1578f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-142f, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.c.wzz, vec2<u32>(0u, 43104u), vec4<f32>(-768f, -1000f, -663f, 895f), 9368i, 207f), true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c.wyx, firstTrailingBit(u_input.b.xy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-192f, _wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_f_op_f32(ceil(749f)), -238f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, -1299f, 1273f, 837f)) - vec4<f32>(-816f, -447f, -1000f, -701f)))), -u_input.c.x, -443f);
    var var_1 = u_input.b.x | u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.c)), _wgslsmith_f_op_vec4_f32(func_1())));
    global0 = array<bool, 3>();
    var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1680f) + _wgslsmith_f_op_f32(-var_0.c.x))), -1163f, -604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f + -592f)))));
    var_1 = 0u;
    var var_3 = Struct_3(1241f, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_2.x, 2582f) - var_0.c.wyw) - _wgslsmith_f_op_vec4_f32(func_1()).www), var_0));
    let var_4 = u_input.b << (vec3<u32>(~(1u << (_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a) % 32u)), 4294967295u, var_0.b.x) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b.b.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, 730f, var_3.b.a.x)), vec3<f32>(_wgslsmith_f_op_f32(var_3.b.b.e * var_3.a), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(select(1726f, var_3.a, global0[_wgslsmith_index_u32(u_input.b.x, 3u)])))))), ~vec2<u32>(var_0.b.x, ~abs(var_3.b.b.b.x)));
}

