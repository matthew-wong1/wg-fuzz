struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> bool {
    return true;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = i32(-1i) * -15819i;
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.c.x << (36132u % 32u), _wgslsmith_div_i32(0i, -8992i)), u_input.c.x), abs(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1494i, u_input.a)), vec2<i32>(u_input.a, u_input.a)))), 19156i);
    let var_1 = vec3<bool>(select(func_3(min(1i, i32(-1i) * -36602i), (vec2<u32>(1u, u_input.d) ^ vec2<u32>(3780u, 0u)) | vec2<u32>(u_input.b, 19343u)), true, !(_wgslsmith_f_op_f32(-arg_0.x) > arg_0.x)), _wgslsmith_f_op_f32(-1431f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) < arg_0.x, any(!vec4<bool>(false, true, true, func_3(-1i, vec2<u32>(u_input.b, 31409u)))));
    var var_2 = Struct_2(1i);
    var_0 = ~(-13554i);
    return abs(~(min(-u_input.a, _wgslsmith_add_i32(var_2.a, var_2.a)) << (~u_input.b % 32u)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), reverseBits(u_input.b)), abs(u_input.b)), ~(~17027u), u_input.d), vec3<u32>(1u, 20532u, max(0u, u_input.b)), ~reverseBits(vec3<u32>(~u_input.b, firstLeadingBit(u_input.d), 8797u | u_input.b)));
    let var_1 = true;
    let var_2 = var_1;
    let var_3 = true;
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1305f)) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(694f, _wgslsmith_f_op_f32(arg_0 - arg_0), any(vec3<bool>(true, var_2, true)))), arg_0)), !((arg_0 >= _wgslsmith_f_op_f32(-arg_0)) && true), true, !var_1);
    return min(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, arg_1) << (var_0.xz % vec2<u32>(32u)), vec2<i32>(-44683i, u_input.a)) << (58586u % 32u), 1i);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = abs(_wgslsmith_div_vec2_i32(u_input.c, firstLeadingBit(u_input.c)));
    var_0 = reverseBits(-vec2<i32>(u_input.c.x, u_input.c.x));
    var var_1 = vec4<i32>(-18506i, -countOneBits(i32(-1i) * -2147483647i), ~min(-2147483647i, u_input.c.x) & func_4(_wgslsmith_f_op_f32(sign(1743f)), func_2(vec4<f32>(336f, 228f, 140f, 952f)), func_2(vec4<f32>(-302f, -1994f, 1505f, -287f))), 1i) ^ ~(~vec4<i32>(_wgslsmith_clamp_i32(29840i, var_0.x, 2147483647i), u_input.a, ~var_0.x, ~var_0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1244f, -1114f, 586f) - vec3<f32>(-488f, 201f, -1235f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1833f, 350f, -2640f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-827f, _wgslsmith_f_op_f32(step(826f, 508f)), _wgslsmith_f_op_f32(floor(518f))))));
    var_1 = ~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, -2147483647i, u_input.a) << (vec4<u32>(4294967295u, u_input.d, 0u, u_input.b) % vec4<u32>(32u)), select(vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), vec4<i32>(var_1.x, u_input.c.x, -1i, -34156i), true), -vec4<i32>(var_1.x, 0i, 59822i, 61791i)));
    return Struct_3(218f);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~(vec4<u32>(1u, u_input.d, 37807u, 1u) << (vec4<u32>(arg_1.x, 12593u, u_input.d, arg_1.x) % vec4<u32>(32u))), min(reverseBits(vec4<u32>(arg_1.x, u_input.d, 4294967295u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, arg_1.x, 5876u, 4294967295u), vec4<u32>(arg_1.x, u_input.b, 4294967295u, arg_1.x), vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)))) | ~vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(u_input.b, u_input.b)), ~(63575u >> (u_input.d % 32u)), ~u_input.d, ~abs(49690u));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(select(u_input.a, -14037i, true), 56134i), _wgslsmith_dot_vec2_i32(-vec2<i32>(32786i, 0i), reverseBits(vec2<i32>(u_input.a, arg_3.x))), _wgslsmith_mod_i32(1i, 1i) & (i32(-1i) * -u_input.c.x), u_input.c.x), vec4<i32>(0i, countOneBits(abs(arg_3.x)), _wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -36888i), vec3<i32>(-1i, arg_3.x, arg_3.x)), vec3<i32>(-17358i, -2147483647i, 44012i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.x, -1i, arg_3.x), -vec3<i32>(u_input.c.x, u_input.a, u_input.a))), arg_3.x));
    let var_2 = Struct_1(874f, 2147483647i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, arg_2.a, arg_2.a))))));
    let var_4 = 132f;
    return StorageBuffer(_wgslsmith_add_i32(var_2.b, -22705i), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), arg_2.a)), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_div_f32(arg_2.a, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(920f, ~(~abs(vec2<u32>(91274u, 4294967295u)) << (~(vec2<u32>(31192u, 4294967295u) ^ vec2<u32>(u_input.b, u_input.d)) % vec2<u32>(32u))), func_1(39190u), ~(-_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c.x, 26315i), vec2<i32>(12258i, -11097i) ^ vec2<i32>(-1i, u_input.c.x))));
}

