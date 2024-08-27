struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(ceil(-452f)) <= _wgslsmith_f_op_f32(min(arg_0, arg_0)), true || (select(false, true, any(vec4<bool>(true, true, true, true))) | true));
    var_0 = !select(vec2<bool>(all(vec4<bool>(var_0.x, true, false, true)), var_0.x), vec2<bool>(var_0.x, any(select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), true))), var_0.x);
    var var_1 = vec4<i32>(u_input.b.x, -8350i, u_input.e.x, -33877i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 218f) + arg_0);
    var var_3 = 0i;
    return var_0.x;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_sub_i32(u_input.b.x | max(2147483647i, countOneBits(u_input.e.x)), u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(min(1168f, -1724f))) * 1f), _wgslsmith_f_op_f32(f32(-1f) * -614f), 1433f));
    let var_2 = Struct_1(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), true), ~vec4<u32>(0u, 12384u, u_input.a, u_input.d.x)), reverseBits(~vec4<u32>(112948u, u_input.d.x, u_input.d.x, 29047u))), i32(-1i) * -1i, _wgslsmith_div_i32(select(1i, -1i, true), ~0i));
    let var_3 = true;
    var var_4 = abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.b, var_2.b, 2147483647i) << (var_2.a.x % 32u), ~5325i)) & (var_2.b ^ _wgslsmith_mod_i32(-1i, var_0.a));
    return !(!(!vec2<bool>(all(vec2<bool>(var_3, var_3)), !var_3)));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(_wgslsmith_div_f32(1000f, 1000f), u_input.d.x);
    var var_1 = func_3();
    var_1 = vec2<bool>(any(!select(vec4<bool>(false, var_1.x, var_0, false), select(vec4<bool>(var_0, false, false, false), vec4<bool>(true, true, var_0, true), false), any(vec3<bool>(true, false, var_0)))), any(!(!(!vec3<bool>(false, false, var_0)))));
    var var_2 = Struct_2(~_wgslsmith_mod_i32(1i, ~_wgslsmith_div_i32(u_input.b.x, -2147483647i)));
    let var_3 = ~reverseBits(u_input.a);
    return firstLeadingBit(~(~select(vec4<u32>(1u, u_input.a, 4294967295u, 1u) | vec4<u32>(15683u, 8069u, u_input.a, var_3), firstTrailingBit(vec4<u32>(var_3, var_3, 18033u, 1u)), vec4<bool>(true, true, var_0, false))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = max(-firstLeadingBit(_wgslsmith_clamp_i32(28747i, u_input.b.x, -1i)) << (_wgslsmith_div_u32(0u, 50330u) % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-51754i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), vec3<i32>(2147483647i, 5187i, u_input.e.x))) ^ _wgslsmith_mod_i32(-358i & u_input.e.x, max(1i, u_input.c.x)), abs(~_wgslsmith_mult_i32(u_input.e.x, -2147483647i))));
    let var_1 = u_input.e.zw;
    var var_2 = vec3<i32>(reverseBits(var_0) | -1i, -96285i, firstLeadingBit(var_0) ^ 0i);
    var_2 = u_input.e.xwz;
    let var_3 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-11731i >> (~u_input.d.x % 32u), (-82517i << (arg_1.x % 32u)) << (82958u % 32u)), var_1));
    return StorageBuffer(var_1, u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -982f, -2409f), vec3<f32>(267f, -502f, 1918f)), vec3<f32>(-760f, arg_0, 698f)))), u_input.d.x, vec2<i32>(-3808i, _wgslsmith_dot_vec4_i32(firstLeadingBit(max(u_input.e, u_input.e)), vec4<i32>(1i, ~7821i, -var_1.x, max(0i, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-371f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -395f), -1139f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1046f, -410f, 453f, -480f))) * vec4<f32>(-1392f, 1242f, -758f, 1971f)))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-var_0.x), func_1());
}

