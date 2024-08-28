struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = -2147483647i;
    var var_1 = arg_1.b;
    var_1 = arg_1.b;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(ceil(arg_1.b.c)))) * _wgslsmith_f_op_f32(min(-319f, _wgslsmith_f_op_f32(floor(1368f))))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), ~var_1.b.a > var_1.a.a)));
    let var_3 = -2186f;
    return var_0;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-332f, 712f, false)), _wgslsmith_f_op_f32(-618f * 429f), _wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(-727f - -178f))))));
    let var_1 = countOneBits(vec3<i32>(select(-1i, ~(i32(-1i) * -2147483647i), all(vec3<bool>(true, false, false))), ~select(_wgslsmith_add_i32(-6356i, 49299i), -1i, true), ~0i));
    let var_2 = vec2<i32>(func_3(543f, Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(u_input.c.x, 1u)), -105f), Struct_2(Struct_1(0u, var_0.x), Struct_1(u_input.c.x, var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 797f, 548f, 1153f) - vec4<f32>(var_0.x, -267f, -532f, var_0.x)))), u_input.b.x), 2147483647i);
    return 918f;
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = select(!(_wgslsmith_f_op_f32(func_2()) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-421f)), -288f, true))), select(false, all(vec2<bool>(true, all(vec2<bool>(true, false)))), ~17765i != min(arg_0.x, max(arg_0.x, arg_0.x))), select(true, !(all(vec4<bool>(true, true, false, false)) & true), (arg_0.x ^ -u_input.b.x) <= reverseBits(u_input.a << (u_input.c.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2221f * 1f)));
    var var_2 = _wgslsmith_add_u32(~((_wgslsmith_div_u32(u_input.c.x, u_input.c.x) >> ((u_input.c.x | u_input.c.x) % 32u)) | 38762u), u_input.c.x & u_input.c.x);
    let var_3 = false;
    var var_4 = -arg_0;
    return select(select(vec4<bool>(true, all(!vec3<bool>(var_3, var_3, true)), true, _wgslsmith_sub_i32(u_input.b.x, var_4.x) >= 50841i), !vec4<bool>(select(var_3, var_3, var_3), 1u == u_input.c.x, true, true), true), vec4<bool>(var_3, !(var_3 | !var_3), !var_3, var_3), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-abs(-vec3<i32>(0i, u_input.a, u_input.b.x)) & -(vec3<i32>(u_input.b.x, 21572i, u_input.b.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.a), vec3<i32>(2147483647i, u_input.b.x, 42004i))));
    var var_1 = ~vec3<i32>(~reverseBits(-2771i) << (0u % 32u), u_input.a, 2147483647i);
    var_1 = -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, u_input.a, var_1.x), vec3<i32>(var_1.x, var_1.x, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, u_input.b.x), vec3<i32>(var_1.x, u_input.a, -30268i))), abs(vec3<i32>(54500i, var_1.x, u_input.a)) | firstTrailingBit(vec3<i32>(var_1.x, u_input.a, var_1.x))), vec3<i32>(u_input.b.x, -var_1.x, _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-15738i, -21920i)))));
    var var_2 = vec2<bool>(any(!vec2<bool>(var_0.x, true)), var_0.x);
    var var_3 = Struct_3(Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f * -445f))), Struct_2(Struct_1(_wgslsmith_clamp_u32(72276u, 1u, ~u_input.c.x), _wgslsmith_f_op_f32(316f - 1345f)), Struct_1(~21885u, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(1138f, 746f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-370f * -259f), _wgslsmith_f_op_f32(round(1000f)))), -1587f, _wgslsmith_f_op_f32(ceil(371f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(977f + -139f)))));
    var_1 = abs(vec3<i32>(-1i) * -(vec3<i32>(u_input.a, -3531i, 2147483647i) >> (u_input.c % vec3<u32>(32u)))) << (~vec3<u32>(max(43331u, _wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(var_3.a.a, 1u))), var_3.b.b.a, ~_wgslsmith_clamp_u32(4294967295u, 77365u, 0u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec2_i32(-var_1.xy, -u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a.b - _wgslsmith_div_f32(var_3.c.x, var_3.c.x)))) * 951f), firstTrailingBit(_wgslsmith_mod_u32(var_3.b.a.a & var_3.b.a.a, ~(~u_input.c.x))), ~_wgslsmith_mod_u32(var_3.b.a.a, _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(var_3.a.a, 0u, u_input.c.x))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(47641u, u_input.c.x), vec2<u32>(1u, 1u)), countOneBits(23358u), abs(var_3.a.a)), vec3<u32>(_wgslsmith_add_u32(7326u, var_3.a.a), _wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.yx), u_input.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 1u), var_3.b.a.a, countOneBits(var_3.a.a)), u_input.c)));
}

