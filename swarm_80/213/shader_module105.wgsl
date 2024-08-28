struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 76915u;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = global1.c;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(var_0.a)))))) + arg_0.a), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.c.yww, ~vec3<u32>(u_input.a, global1.c.c.x, 4294967295u)), var_0.c.x), firstTrailingBit(global1.c.c));
    let var_1 = Struct_1(var_0.a, 0u, firstLeadingBit(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.c.x, u_input.a, 4294967295u), vec4<u32>(44700u, 48475u, var_0.b, 0u)), _wgslsmith_clamp_u32(22619u, u_input.a, arg_0.c.x), firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a))));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(2147483647i << (var_1.c.x % 32u), i32(-1i) * -1i), 0i), vec3<i32>(countOneBits(1i), 45098i, -45727i)), ~firstLeadingBit(2147483647i));
    let var_3 = all(select(select(!(!vec4<bool>(true, global1.b.x, false, false)), !(!vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x)), vec4<bool>(true, true, global1.b.x, 0u != var_1.b)), select(!select(vec4<bool>(false, global1.a, true, true), vec4<bool>(true, global1.b.x, global1.a, false), vec4<bool>(global1.b.x, global1.a, global1.b.x, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(global1.a, global1.a, false, global1.a), vec4<bool>(global1.a, true, global1.a, global1.b.x), vec4<bool>(false, global1.b.x, global1.b.x, global1.a)), vec4<bool>(global1.b.x, global1.b.x, global1.a, global1.a), vec4<bool>(true, true, true, true))), global1.b.x));
    return !vec2<bool>(true, global1.a | true);
}

fn func_2() -> u32 {
    let var_0 = select(vec4<bool>(((u_input.a & u_input.a) << (~global1.c.b % 32u)) < _wgslsmith_add_u32(~global1.c.b, u_input.a), true, !all(vec2<bool>(true, global1.a)), global1.b.x), vec4<bool>(all(select(func_3(global1.c), func_3(Struct_1(vec4<f32>(-728f, global1.c.a.x, 1045f, global1.c.a.x), u_input.a, global1.c.c)), select(false, global1.b.x, global1.a))), true, all(vec2<bool>(global1.a, func_3(global1.c).x)), global1.a), any(vec4<bool>(_wgslsmith_f_op_f32(-1672f - 613f) != _wgslsmith_f_op_f32(min(933f, global1.c.a.x)), global1.b.x, global1.b.x, (global1.a && global1.b.x) || false)));
    var var_1 = global1.c;
    return u_input.a;
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = -1827i;
    let var_1 = _wgslsmith_f_op_f32(-global1.c.a.x);
    var var_2 = Struct_2(53448u >= _wgslsmith_dot_vec2_u32(~global1.c.c.yy, global1.c.c.wx & ~vec2<u32>(arg_0, 22951u)), select(vec2<bool>(true, true), global1.b, vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), arg_0, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~global1.c.c, ~global1.c.c), vec4<u32>(func_2(), arg_0, _wgslsmith_clamp_u32(0u, arg_0, 1u), u_input.a))));
    var var_3 = _wgslsmith_add_vec4_u32(var_2.c.c, vec4<u32>(55288u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.c.x, 4294967295u), vec2<u32>(3635u, 4294967295u)) << (arg_0 % 32u)), 1u, 22579u));
    let var_4 = reverseBits(-abs(vec3<i32>(_wgslsmith_add_i32(var_0, var_0), _wgslsmith_dot_vec2_i32(vec2<i32>(15151i, 1i), vec2<i32>(var_0, 10842i)), var_0 | var_0)));
    return !(!var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstLeadingBit(~reverseBits(4294967295u));
    var var_0 = Struct_2(firstTrailingBit(u_input.a) <= (global1.c.c.x ^ global1.c.b), !select(vec2<bool>(true, true), func_1(~global1.c.c.x), select(false, !global1.b.x, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), global1.c.c.zy), select(min(vec4<u32>(u_input.a, 22842u, 4294967295u, 22909u), global1.c.c) >> (~global1.c.c % vec4<u32>(32u)), select(global1.c.c << (global1.c.c % vec4<u32>(32u)), global1.c.c >> (vec4<u32>(0u, global1.c.b, 0u, global1.c.c.x) % vec4<u32>(32u)), vec4<bool>(false, false, global1.b.x, true)), select(!vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), !vec4<bool>(true, global1.b.x, false, false), true))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a.x))), _wgslsmith_f_op_f32(-var_0.c.a.x))), global1.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1589f));
    var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(-global1.c.a.zw)));
    let var_2 = any(select(vec3<bool>(global1.a, all(select(vec3<bool>(true, true, global1.b.x), vec3<bool>(global1.a, false, global1.b.x), vec3<bool>(false, var_0.b.x, false))), true), select(!(!vec3<bool>(global1.b.x, true, true)), select(!vec3<bool>(false, true, var_0.b.x), !vec3<bool>(var_0.a, true, var_0.a), any(global1.b)), global1.b.x), true));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(global1.c.a.wy));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.x, _wgslsmith_div_f32(global1.c.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.a.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -127f)))) + var_3);
    let var_4 = -(~_wgslsmith_add_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(-7938i, -1i, 13457i))), vec3<i32>(firstLeadingBit(-54486i), 1i, 2147483647i)));
    let var_5 = global1.c.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(1u)), u_input.a, var_5.x), global1.c.c.zwz, vec3<u32>(1u, 0u, ~(~4294967295u))), vec4<f32>(_wgslsmith_div_f32(1748f, var_0.c.a.x), -140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) * -1000f)), 1545f), var_4.x | ~(~var_4.x), firstLeadingBit(var_4), var_3.x);
}

