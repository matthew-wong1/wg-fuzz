struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: u32) -> vec2<u32> {
    var var_0 = arg_1;
    var_0 = Struct_3(var_0.a);
    var var_1 = -918f;
    let var_2 = ~1i;
    var var_3 = -7722i;
    return _wgslsmith_mult_vec2_u32(~countOneBits(~u_input.a.xz), ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yz), u_input.e)) | u_input.a.zx;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = max(_wgslsmith_div_i32(1i, max(~(-u_input.c.x), _wgslsmith_clamp_i32(-2147483647i, arg_0, ~u_input.c.x))), -1i);
    let var_1 = Struct_5(Struct_4(Struct_3(min(select(vec4<i32>(u_input.d, 1i, 2147483647i, u_input.d), vec4<i32>(u_input.c.x, u_input.c.x, arg_0, u_input.d), true), reverseBits(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.c.x)))), true, vec2<bool>(true, any(vec3<bool>(true, true, true))), func_2(~(~32127u), Struct_3(-vec4<i32>(arg_0, u_input.d, arg_0, u_input.d)), vec4<i32>(-44550i, reverseBits(arg_0), u_input.d, min(u_input.d, 51117i)), 1u).x, u_input.c.x), Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1681u, u_input.b, arg_1.x), ~vec4<u32>(10407u, 1u, u_input.e, u_input.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 1u, 4294967295u), vec4<u32>(28782u, 0u, u_input.e, 0u), vec4<u32>(48177u, u_input.b, 0u, 0u))), Struct_1(_wgslsmith_div_f32(-293f, -104f), u_input.a)), true);
    let var_2 = select(select(!select(vec3<bool>(false, false, var_1.c), !vec3<bool>(false, true, var_1.c), !vec3<bool>(false, var_1.a.c.x, true)), vec3<bool>(true, false, true), !vec3<bool>(arg_1.x != u_input.e, true, true)), vec3<bool>(all(vec3<bool>(false, var_1.c && false, any(var_1.a.c))), !any(vec3<bool>(true, true, true)), false), true);
    var var_3 = !(!vec4<bool>(var_1.a.b, var_1.c, !(!var_2.x), all(!vec4<bool>(true, true, var_2.x, true))));
    var_3 = select(vec4<bool>(!var_1.c, _wgslsmith_f_op_f32(-var_1.b.b.a) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f * -240f)), all(vec2<bool>(var_1.a.b, any(var_1.a.c))), true), select(vec4<bool>(var_2.x, !var_2.x, !var_1.a.b, true), select(vec4<bool>(false, var_3.x, any(var_3.yyx), any(var_1.a.c)), vec4<bool>(false, arg_1.x < 4294967295u, true, true), vec4<bool>(false, arg_1.x < 0u, var_1.a.b, var_1.c)), false), !select(!(!vec4<bool>(false, var_1.c, var_3.x, var_2.x)), !select(vec4<bool>(true, var_1.a.c.x, var_3.x, false), vec4<bool>(false, true, var_3.x, true), vec4<bool>(var_2.x, true, true, var_2.x)), !(var_2.x | var_2.x)));
    return var_1.a.a;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x, ~u_input.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2212i, -31998i, u_input.c.x), -vec3<i32>(-36101i, u_input.c.x, -2059i) & countOneBits(vec3<i32>(-10567i, 41759i, u_input.c.x)))));
    let var_1 = func_3(u_input.d, ~func_2(u_input.a.x, Struct_3(abs(vec4<i32>(-13698i, u_input.c.x, u_input.c.x, u_input.c.x))), reverseBits(abs(vec4<i32>(2147483647i, u_input.d, 1i, 1i))), _wgslsmith_sub_u32(min(4294967295u, u_input.e), u_input.e)));
    var var_2 = arg_0.x;
    var_0 = countOneBits(-34529i);
    var var_3 = abs(~(-2147483647i));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(360f, -257f))), -678f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(892f - -401f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(~(u_input.d ^ -u_input.d), 0i);
    var_0 = 0i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-467f * 744f), -530f);
    var var_2 = vec4<f32>(-1363f, _wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(-var_1));
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = func_1(vec3<bool>(true, true, true));
}

