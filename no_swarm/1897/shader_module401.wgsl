struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = true;
    var var_1 = Struct_4(283f, -3892i >> ((u_input.a.x ^ ~23049u) % 32u));
    let var_2 = vec2<i32>(var_1.b, ~(var_1.b << ((4835u | _wgslsmith_dot_vec4_u32(vec4<u32>(15221u, 0u, u_input.a.x, 4294967295u), u_input.a)) % 32u)));
    var_0 = false;
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(~(-(~arg_1.b.wx)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f)) - _wgslsmith_div_f32(arg_1.e.x, _wgslsmith_f_op_f32(ceil(-688f))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(arg_1.e.x));
    let var_3 = any(select(vec3<bool>((true & arg_0.c) & arg_1.c, true | arg_0.c, any(vec3<bool>(false, arg_0.c, arg_1.c))), !select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, true, false)), select(vec3<bool>(true, all(vec4<bool>(arg_1.c, arg_1.c, true, arg_0.c)), false), !(!vec3<bool>(true, arg_0.c, arg_1.c)), select(!vec3<bool>(false, true, arg_0.c), select(vec3<bool>(false, true, arg_0.c), vec3<bool>(false, arg_0.c, true), vec3<bool>(arg_1.c, true, false)), vec3<bool>(false, true, arg_0.c)))));
    var var_4 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -34558i, -2147483647i, var_0.a.x), vec4<i32>(arg_0.b.x, -9851i, var_0.a.x, 9668i))), var_0.a.x, _wgslsmith_clamp_i32(arg_0.b.x, -14248i, arg_0.b.x) | var_0.a.x, arg_0.b.x << (1u % 32u)), arg_1.b, arg_1.b), vec2<i32>(-2147483647i, var_0.a.x) | vec2<i32>(reverseBits(0i), 11004i), arg_0, select(arg_1.c, true, false), arg_1.d.yz);
    return firstLeadingBit(39914i);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<u32> {
    var var_0 = (~(-firstTrailingBit(115i)) << (u_input.a.x % 32u)) >> (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u);
    let var_1 = arg_1;
    var var_2 = Struct_4(arg_1.c.e.x, i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_mod_i32(19126i, u_input.b), _wgslsmith_dot_vec3_i32(var_1.c.b.zwz, vec3<i32>(-2826i, var_1.c.b.x, arg_2.b.x))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(var_1.c.e.x - arg_2.e.x), firstTrailingBit(func_3(arg_1.c, arg_2)));
    var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1726f), 501f)), -countOneBits(_wgslsmith_mult_i32(arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(28327i, -62616i, var_1.a.x), vec3<i32>(var_2.b, var_3.b, 0i)))));
    return ~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(var_1.c.d.x, 0u), 26317u), 32462u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(false, true, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, -u_input.b), 44356i) <= u_input.b);
    let var_1 = u_input.b;
    var var_2 = u_input.a.ywz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstLeadingBit((vec3<i32>(u_input.b, var_1, -2147483647i) | vec3<i32>(64166i, var_1, -2147483647i)) << (~u_input.a.yxx % vec3<u32>(32u))))));
    var_2 = vec3<u32>(~22278u, 0u, ~(_wgslsmith_div_u32(countOneBits(4294967295u), countOneBits(31230u)) & var_2.x));
    let var_4 = Struct_3(select(countOneBits(-abs(vec2<i32>(-2147483647i, var_1))), -max(-vec2<i32>(3443i, -2147483647i), abs(vec2<i32>(u_input.b, var_1))), var_3 == _wgslsmith_f_op_f32(floor(1282f))));
    var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 16065u, 58955u), min(vec3<u32>(1u, var_2.x, u_input.a.x), func_2(u_input.a.x, Struct_2(vec4<i32>(var_1, -67402i, var_1, 522i), vec2<i32>(u_input.b, 0i), Struct_1(vec4<u32>(23135u, 0u, u_input.a.x, 1u), vec4<i32>(var_4.a.x, 1i, u_input.b, var_1), var_0, u_input.a.ywx, vec3<f32>(2367f, -1000f, -1000f)), true, vec2<u32>(var_2.x, 104324u)), Struct_1(vec4<u32>(4294967295u, 1u, 19880u, 4294967295u), vec4<i32>(-55804i, var_1, u_input.b, -7121i), true, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<f32>(-848f, var_3, var_3)), vec2<i32>(-1207i, var_1)))), 30099u, abs(~var_2.x));
    var_2 = firstTrailingBit(u_input.a.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(31299u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2022f, var_3, var_3, var_3), vec4<f32>(-2215f, var_3, -773f, -925f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(593f, var_3, 406f, -754f) * vec4<f32>(-837f, var_3, var_3, var_3)), _wgslsmith_div_vec4_f32(vec4<f32>(851f, -1644f, var_3, var_3), vec4<f32>(1438f, -209f, -370f, var_3)), any(vec2<bool>(true, var_0))))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-358f * 204f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) - var_3)), 849f), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-22549i, var_1, _wgslsmith_mult_i32(36348i, u_input.b), u_input.b), ~(-vec4<i32>(u_input.b, var_1, var_1, -2147483647i))), _wgslsmith_div_i32(_wgslsmith_add_i32(var_1 ^ var_1, -var_4.a.x), u_input.b)));
}

