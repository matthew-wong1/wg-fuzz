struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = -344f;
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, countOneBits(27600u), ~u_input.b), ~vec3<u32>(1u, 23061u, 114001u)), countOneBits(abs(~vec3<u32>(u_input.b, 57952u, u_input.b)))) ^ select(vec3<u32>(0u, u_input.b | u_input.b, u_input.b), ~min(vec3<u32>(4294967295u, 7098u, u_input.b), min(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, 0u))), false);
    var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.zy, var_1.xx), _wgslsmith_div_u32(var_1.x, u_input.b)), ~min(_wgslsmith_add_u32(u_input.b, u_input.b) | select(var_1.x, u_input.b, false), _wgslsmith_clamp_u32(1115u, reverseBits(11405u), min(0u, u_input.b))), _wgslsmith_clamp_u32(var_1.x, _wgslsmith_mod_u32(firstLeadingBit(1u), u_input.b), max(u_input.b & ~4294967295u, select(~12639u, 91736u, !arg_1.b))));
    var_1 = _wgslsmith_clamp_vec3_u32(abs(abs(~vec3<u32>(u_input.b, u_input.b, 17647u) & ~vec3<u32>(0u, var_1.x, u_input.b))), firstTrailingBit(vec3<u32>(75971u, ~u_input.b, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(61646u, 20176u, u_input.b, 18216u)), vec4<u32>(182u, 46706u, u_input.b, 12338u)))), ~(~(~select(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1u, 1u, var_1.x), vec3<bool>(arg_1.a.x, true, arg_1.b)))));
    var var_2 = ~select(max(_wgslsmith_add_u32(var_1.x, var_1.x), countOneBits(min(35270u, var_1.x))), ~var_1.x | _wgslsmith_add_u32(~51509u, var_1.x), all(!arg_1.a));
    return !vec2<bool>(-u_input.c.x > -(3909i << (0u % 32u)), false);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1418f, 599f, 1433f) - vec3<f32>(-440f, -600f, -200f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1093f, 2439f, 1372f), vec3<f32>(-1772f, 1835f, 1278f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1501f, 490f, -185f) * vec3<f32>(-957f, 1153f, 1000f))))), Struct_1(vec2<bool>(!arg_0, true), arg_0));
    var var_1 = _wgslsmith_add_i32(-27518i, -u_input.c.x);
    var_1 = u_input.c.x;
    var_1 = 18436i;
    var_1 = u_input.a;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(807f, 467f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-895f - _wgslsmith_f_op_f32(abs(-1391f)))))), var_0.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = vec3<f32>(519f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -979f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2200f + _wgslsmith_div_f32(516f, 165f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true)), -1045f), _wgslsmith_f_op_f32(abs(-555f)), any(!vec3<bool>(true, arg_0.x, arg_0.x)))), false)));
    return ~vec3<u32>(1u, 1u, 13426u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(select(vec2<bool>(true, true), vec2<bool>(true, u_input.b >= u_input.b), false), _wgslsmith_sub_vec4_i32(vec4<i32>(-3861i, _wgslsmith_mult_i32(2432i, u_input.c.x), u_input.a, min(u_input.c.x, 1i)), firstLeadingBit(-vec4<i32>(14075i, -15969i, 0i, -4793i))));
    let var_1 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(579f, 316f, -1710f), vec3<f32>(-1000f, -275f, -1000f)))))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), true)), !(!all(vec4<bool>(true, true, false, true)) || all(vec3<bool>(true, false, false))));
    let var_2 = min(58626u, u_input.b);
    let var_3 = ~196i;
    var var_4 = var_1;
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, var_0.x ^ max(var_2, u_input.b)), select(var_0.x, _wgslsmith_mult_u32(~var_0.x, 4294967295u), !var_1.a.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 26308u, 0u, u_input.b), ~vec4<u32>(u_input.b, 0u, var_2, 75622u)), ~vec4<u32>(var_2, u_input.b, 1u, 74490u))), var_2, _wgslsmith_mult_u32(82087u, ~(~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-reverseBits(var_3)), -1725f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(551f, _wgslsmith_f_op_f32(abs(-922f)))));
}

