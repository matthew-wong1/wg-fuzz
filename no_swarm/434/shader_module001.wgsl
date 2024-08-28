struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1412f;

var<private> global1: i32 = 38435i;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    global1 = ~(-u_input.c);
    let var_0 = _wgslsmith_f_op_vec3_f32(global2.wzz + vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -156f) + -457f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 878f) + _wgslsmith_f_op_f32(exp2(global2.x)))), global2.x));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-194f - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(-647f + -1329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1031f, -829f)), _wgslsmith_f_op_f32(-global2.x))) - -1138f)));
    let var_1 = -1i;
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(min(~1u, select(48665u, 43180u, true)) >> (firstTrailingBit(44189u) % 32u), ~u_input.d.x, firstLeadingBit(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_clamp_u32(arg_0.x, 1u, 0u), u_input.b.x << (u_input.b.x % 32u)))), vec3<u32>(~(~(1u >> (1u % 32u))), 4103u ^ u_input.d.x, u_input.d.x));
    return 0i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(17449i, -1i, -25606i), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(15270i, -18447i), u_input.a), func_3(u_input.b, Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false), true)), u_input.a));
    let var_1 = vec3<i32>(~u_input.c, _wgslsmith_sub_i32(u_input.c << (_wgslsmith_sub_u32(63745u, 3058u) % 32u), abs(1i)) << (22917u % 32u), _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(-2147483647i, -2147483647i)) << (4294967295u % 32u));
    let var_2 = u_input.b.x;
    var var_3 = ~(~(19430u >> (u_input.b.x % 32u))) <= _wgslsmith_sub_u32(64881u, _wgslsmith_mult_u32(max(countOneBits(4294967295u), 14950u), 1u));
    var_0 = max(-40693i, ~(-45568i << (firstTrailingBit(u_input.d.x) % 32u)) ^ (_wgslsmith_mult_i32(var_1.x | u_input.c, _wgslsmith_div_i32(8482i, var_1.x)) ^ (-var_1.x >> (u_input.d.x % 32u))));
    return Struct_1(!vec2<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, true, true))), !(!vec3<bool>(true, any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, false)))), all(vec4<bool>(true, false, true, true)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global0 = global2.x;
    global0 = _wgslsmith_f_op_f32(round(-2326f));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(308f, global2.x, arg_1, global2.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x)))), _wgslsmith_f_op_f32(trunc(538f)))));
    let var_1 = func_2();
    return vec3<bool>(false, func_2().b.x, arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(select(true, false, true), u_input.c >= 31196i, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(all(vec3<bool>(false, false, true)), 10715u <= u_input.d.x, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), func_1(u_input.b.x, global2.x, Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec3<bool>(false, false, false), true)));
    var_0 = select(vec3<bool>(global2.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x)), var_0.x, ((var_0.x || true) | var_0.x) || !(!var_0.x)), func_1(u_input.b.x & min(~28466u, _wgslsmith_add_u32(u_input.d.x, u_input.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 347f)), func_2()), var_0.x);
    var_0 = vec3<bool>(false, true, ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, u_input.a), vec3<i32>(0i, u_input.a, u_input.c))) == (i32(-1i) * -1891i));
    var var_1 = var_0.x;
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.x - -751f), -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yy))))), 114218u, select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 1u, 45954u, 12627u), select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.d.x), vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.d.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), ~(~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 49681u)), any(!var_0.yx)) & ((reverseBits(vec4<u32>(u_input.b.x, u_input.d.x, 64424u, u_input.b.x)) | (vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, 1u) ^ vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u))) | (abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u)) << ((vec4<u32>(u_input.d.x, 1u, 1u, 1u) | vec4<u32>(u_input.b.x, u_input.d.x, 1u, u_input.b.x)) % vec4<u32>(32u)))));
}

