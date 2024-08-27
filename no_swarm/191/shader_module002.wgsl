struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-831f, 2303f, -934f, -1440f), vec4<f32>(137f, -951f, -175f, -1474f), vec4<f32>(-243f, -940f, -1330f, -827f), vec4<f32>(-849f, 941f, 140f, 119f), vec4<f32>(530f, -553f, -1032f, -514f), vec4<f32>(1009f, 1708f, 702f, 237f), vec4<f32>(-2022f, 1121f, 317f, -728f), vec4<f32>(-297f, 277f, 321f, -1173f), vec4<f32>(-100f, 997f, -426f, -2041f), vec4<f32>(-1210f, -553f, 1188f, 421f), vec4<f32>(827f, 133f, -523f, 130f), vec4<f32>(529f, -2185f, -968f, 483f), vec4<f32>(482f, -916f, -163f, -710f), vec4<f32>(1709f, -1035f, 116f, -1086f), vec4<f32>(353f, -141f, -1239f, -686f), vec4<f32>(1782f, -2397f, -937f, -1405f), vec4<f32>(-224f, -1661f, 238f, -333f), vec4<f32>(408f, -1505f, -157f, -1000f), vec4<f32>(588f, 1218f, 319f, 408f), vec4<f32>(539f, 1000f, -1474f, 673f), vec4<f32>(-733f, 610f, 1007f, -472f), vec4<f32>(-171f, -214f, 679f, 169f), vec4<f32>(410f, -746f, 794f, -1122f), vec4<f32>(1000f, -823f, 1691f, 1339f), vec4<f32>(-1171f, 650f, -238f, 611f), vec4<f32>(-1000f, -1019f, 343f, 1014f), vec4<f32>(1151f, 2155f, -1664f, -132f), vec4<f32>(161f, 462f, -1568f, -1186f), vec4<f32>(622f, -1080f, 851f, 352f));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<bool> {
    global1 = ~reverseBits(vec3<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0, arg_0), u_input.d)), _wgslsmith_dot_vec2_u32(~u_input.d.xx, vec2<u32>(arg_0, 0u)), ~_wgslsmith_sub_u32(u_input.c.x, 1u)));
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    global2 = array<Struct_1, 3>();
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 15579i), -(~1i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(9818i, u_input.a.x, u_input.b.x, 12083i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x)) << (global1.x % 32u)), select(select(1i, firstLeadingBit(u_input.a.x), u_input.a.x > -1i), _wgslsmith_mult_i32(~u_input.b.x, u_input.a.x), true == all(vec3<bool>(arg_1, arg_1, arg_1)))));
    return vec2<bool>(false, all(!(!(!vec2<bool>(false, arg_1)))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = abs(vec4<i32>(1i, arg_0.c, _wgslsmith_div_i32(arg_0.c, _wgslsmith_mult_i32(6803i, 1i)), 6471i));
    var var_1 = Struct_1(~arg_0.a, any(!(!vec3<bool>(false, arg_0.b, true))) || ((select(false, true, arg_0.b) && arg_0.b) && (arg_0.c > reverseBits(1i))), ~(i32(-1i) * -34366i));
    global1 = ~vec3<u32>(0u, ~4294967295u, 4294967295u | u_input.d.x) | select(_wgslsmith_mult_vec3_u32(~vec3<u32>(25119u, arg_0.a.x, 0u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 0u), u_input.d), ~abs(u_input.d)), ~(~vec3<u32>(global1.x, u_input.d.x, var_1.a.x)), select(vec3<bool>(!var_1.b, var_0.x == arg_0.c, any(vec2<bool>(var_1.b, false))), select(vec3<bool>(true, true, var_1.b), !vec3<bool>(true, var_1.b, var_1.b), true), !select(vec3<bool>(var_1.b, arg_0.b, false), vec3<bool>(true, true, arg_0.b), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_clamp_vec2_i32(var_0.xw, -(var_0.yw >> (arg_0.a.xy % vec2<u32>(32u))), abs(var_0.yx));
    var var_3 = !(!(!func_3(arg_0.a.x, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(625f + _wgslsmith_f_op_f32(-1127f - 578f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(343f)), -245f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1821f - 113f) * -1924f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1050f))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_mod_vec3_u32(u_input.d, u_input.d >> (u_input.d % vec3<u32>(32u))), !any(vec4<bool>(false, true, false, true)), -9972i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1020f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-916f * -913f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f - 2167f))))));
    return global2[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(46950u << (u_input.c.x % 32u))), 3u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global1 = select(vec3<u32>(u_input.c.x >> (~(~u_input.c.x) % 32u), ~global1.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a.x), arg_1.a.xz), arg_1.a.x)), abs(min(arg_0.a, vec3<u32>(max(arg_0.a.x, arg_0.a.x), 48772u, _wgslsmith_div_u32(4294967295u, 1u)))), vec3<bool>((~arg_0.a.x & select(arg_0.a.x, 35790u, arg_1.b)) > arg_0.a.x, true, any(vec4<bool>(true, false, true, arg_1.b)) == true));
    global2 = array<Struct_1, 3>();
    let var_0 = -arg_0.c;
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    return ~arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-6480i, 17229i, u_input.a.x);
    global1 = func_4(func_1(), global2[_wgslsmith_index_u32(~1u, 3u)]);
    var var_1 = ~vec3<u32>(_wgslsmith_mod_u32(91284u, u_input.c.x), u_input.c.x, 0u);
    var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 4294967295u, 0u << (0u % 32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.x, u_input.c.x, var_1.x >> (4294967295u % 32u)), min(~vec3<u32>(var_1.x, u_input.c.x, var_1.x), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d)))), ~0u, u_input.d.x);
    var var_2 = vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)) == !(!any(vec2<bool>(false, true))), any(vec2<bool>(true, false)), !all(select(vec2<bool>(true, false), func_3(var_1.x, true), all(vec3<bool>(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_mod_u32(var_1.x, 4294967295u)), u_input.c.x), firstTrailingBit(0u)), vec2<i32>(2147483647i, u_input.a.x));
}

