struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(vec4<u32>(~abs(0u & u_input.a.x), u_input.a.x, 1u, u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.zz) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xx), select(vec2<i32>(-1i, 0i), reverseBits(u_input.b.zx), vec2<bool>(true, false))) >> (~_wgslsmith_div_u32(20473u, firstTrailingBit(u_input.a.x)) % 32u), vec3<bool>(!(!any(vec4<bool>(arg_0, false, arg_0, arg_0))), ~firstLeadingBit(u_input.a.x) >= _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(5719u, u_input.a.x)), countOneBits(u_input.a.yx)), arg_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(203f, 2248f, -195f) + vec3<f32>(868f, 518f, -524f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-547f, -232f, -1510f), vec3<f32>(-1000f, 441f, 910f), vec3<bool>(arg_0, false, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1013f, 1147f, -551f) * vec3<f32>(641f, 576f, 1489f))), !(!vec3<bool>(true, arg_0, true)))))), !vec3<bool>(!all(vec2<bool>(true, true)), arg_0, true));
    var var_1 = vec2<i32>(var_0.b | 5627i, -31961i);
    var var_2 = Struct_1(vec4<u32>(var_0.a.x, _wgslsmith_div_u32(var_0.a.x, 0u), ~(~u_input.a.x), _wgslsmith_dot_vec4_u32(var_0.a, _wgslsmith_div_vec4_u32(vec4<u32>(56774u, 29602u, 1u, 1u), vec4<u32>(94102u, 24588u, var_0.a.x, 3999u)))) | vec4<u32>(~u_input.a.x, ~(~1u), ~u_input.a.x, abs(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, 43526u, 0u, u_input.a.x)))), reverseBits(var_0.b), !var_0.e, _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.d)))), vec3<bool>(true, !arg_0, true));
    var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.d));
    return vec3<bool>(var_0.c.x, any(vec4<bool>(!any(var_0.c.zx), var_0.e.x, true, any(!vec3<bool>(var_2.c.x, true, false)))), ~u_input.a.x > _wgslsmith_add_u32(~u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, arg_0.x), vec4<u32>(arg_0.x, 12600u, 30399u, 6284u)), ~vec4<u32>(arg_0.x, u_input.a.x, 30676u, arg_0.x) >> (firstLeadingBit(vec4<u32>(u_input.a.x, arg_0.x, 0u, u_input.a.x)) % vec4<u32>(32u))), ~u_input.b.x, !func_3(4294967295u == arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1404f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -610f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, arg_1.x, -243f)))))), !(!vec3<bool>(func_3(false).x, false, true)));
    let var_1 = var_0.a.wzx;
    var_0 = Struct_1(vec4<u32>(~var_1.x, _wgslsmith_clamp_u32(var_1.x, ~u_input.a.x, select(_wgslsmith_sub_u32(1u, 1u), 31973u, any(vec2<bool>(true, var_0.e.x)))), ~1u, u_input.a.x), firstTrailingBit(u_input.b.x), !(!vec3<bool>(true, !var_0.e.x, var_0.c.x)), var_0.d, !var_0.e);
    let var_2 = u_input.b;
    var var_3 = var_0.d;
    return var_0.c.x;
}

fn func_1() -> bool {
    return !any(vec4<bool>(true, true, true, true)) && func_2(~vec3<u32>(u_input.a.x, 38609u, ~49869u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-249f, 1602f)))), vec2<f32>(1252f, 817f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (!(!(u_input.b.x < 72304i)) && (func_1() || false)) | true;
    var_0 = any(select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), vec4<bool>(1u < u_input.a.x, (u_input.b.x | 16245i) >= firstTrailingBit(0i), false, any(vec3<bool>(false, false, false))), func_3(_wgslsmith_add_i32(u_input.b.x, 0i) != ~u_input.b.x).x));
    var_0 = true;
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_sub_i32(var_1, -19825i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-303f, 1000f))))))) * -1403f);
    var_2 = -_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(-3578i, ~(-15586i)));
    var var_4 = select(vec4<bool>(true, !(!(u_input.a.x > 0u)), func_3(true).x, true), vec4<bool>(func_2(min(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, 5559u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(293f, 802f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(349f, 440f)))))), func_2(vec3<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 0u), ~58389u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1412f, -542f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-653f, -2228f) + vec2<f32>(981f, -1501f)))), true, all(vec2<bool>(false, false))), true);
    var var_5 = Struct_1(select(vec4<u32>(_wgslsmith_div_u32(abs(30260u), min(u_input.a.x, 0u)), u_input.a.x, ~(u_input.a.x >> (0u % 32u)), (0u << (u_input.a.x % 32u)) << (4294967295u % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 39588u, u_input.a.x), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 94204u), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), vec4<u32>(u_input.a.x, 22584u, 4294967295u, 32522u << (u_input.a.x % 32u)), vec4<u32>(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u), select(19734u, 0u, var_4.x), u_input.a.x)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -510f) != _wgslsmith_f_op_f32(trunc(1396f)), true, var_4.x, true)), firstTrailingBit(-1i), vec3<bool>(false, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1448f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-748f)), _wgslsmith_f_op_f32(-205f * -447f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1583f)))) + vec3<f32>(-772f, -504f, 813f)), select(var_4.yyw, !var_4.yxx, true));
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(abs(vec3<u32>(var_5.a.x, 5057u, 4294967295u) << (var_5.a.yyz % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(var_5.a.wyz, abs(vec3<u32>(1u, 4294967295u, 5432u) | u_input.a))), _wgslsmith_clamp_u32(~u_input.a.x, ~_wgslsmith_div_u32(var_5.a.x, u_input.a.x), u_input.a.x));
}

