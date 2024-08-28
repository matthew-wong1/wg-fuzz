struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(all(global0.zzx), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 6561i, 48254i, 0i), vec4<i32>(1i, -2147483647i, global2.x, u_input.a)), -2147483647i, select(-global2.x, u_input.a, true), -2147483647i) | vec4<i32>(2147483647i, global2.x, select(global2.x, _wgslsmith_clamp_i32(global2.x, 1i, -1i), all(global0.www)), global2.x));
    global2 = _wgslsmith_mult_vec2_i32(min(var_0.b.zz, _wgslsmith_mod_vec2_i32(min(vec2<i32>(18766i, 1i), var_0.b.yx), -var_0.b.wy)), ~(var_0.b.ww ^ vec2<i32>(-1i, reverseBits(global2.x))));
    global1 = array<vec4<f32>, 2>();
    var var_1 = 2160f;
    return false;
}

fn func_2() -> u32 {
    global1 = array<vec4<f32>, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f * -119f) * _wgslsmith_f_op_f32(abs(-115f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-600f - 2220f), _wgslsmith_f_op_f32(162f - 948f), global0.x))))));
    global0 = select(select(select(vec4<bool>(func_3(), !global0.x, true, true), !vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, true & global0.x, global0.x, global0.x)), !vec4<bool>(all(global0.wwz), global0.x, global0.x, true), 908f > _wgslsmith_f_op_f32(round(var_0.x))), vec4<bool>(true, false, false, global0.x), global0.x);
    var var_1 = ~72254u;
    var var_2 = Struct_1(func_3(), ~(~abs(vec4<i32>(0i, u_input.a, -22627i, -51668i))) << (vec4<u32>(max(1u, 66469u), reverseBits(1u), 0u, abs(1u)) % vec4<u32>(32u)));
    return _wgslsmith_mod_u32(~(7801u >> ((_wgslsmith_clamp_u32(72369u, 24241u, 25763u) ^ 62573u) % 32u)), 1u);
}

fn func_1() -> bool {
    var var_0 = vec4<bool>(any(global0.xx), global0.x & !(!(!global0.x)), global0.x, global0.x);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(31021u, 34068u, func_2()), abs(vec3<u32>(0u, firstTrailingBit(abs(68777u)), _wgslsmith_sub_u32(~1u, 1u))));
    global2 = countOneBits(_wgslsmith_add_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global2.x) ^ vec2<i32>(u_input.a, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1807i, -20500i), vec2<i32>(4943i, 23556i)))), reverseBits(select(abs(vec2<i32>(5568i, -30891i)), ~vec2<i32>(u_input.a, global2.x), select(var_0.xw, global0.xw, global0.zz)))));
    var var_2 = var_1.x;
    let var_3 = abs(vec4<i32>(u_input.a, 2147483647i, reverseBits(23377i), global2.x)) << (~vec4<u32>(max(23720u, var_1.x), ~(var_1.x << (var_1.x % 32u)), firstTrailingBit(0u), ~_wgslsmith_mult_u32(18403u, var_1.x)) % vec4<u32>(32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!(!(!vec4<bool>(global0.x, false, false, false)))));
    let var_0 = Struct_1(false, vec4<i32>(global2.x, 2147483647i, -38459i, ~(u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 8546i), vec3<i32>(global2.x, u_input.a, -7532i)))));
    global0 = select(!vec4<bool>(select(global0.x, global0.x, false) || global0.x, func_1(), any(select(vec3<bool>(false, true, false), vec3<bool>(true, global0.x, var_0.a), global0.ywy)), global0.x), !select(vec4<bool>(true, global0.x, any(global0.ww), true), vec4<bool>(true, false, all(vec2<bool>(true, true)), !global0.x), vec4<bool>(var_0.a, var_0.a, !var_0.a, true)), select(!select(select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, var_0.a, var_0.a, false)), !vec4<bool>(true, var_0.a, true, global0.x), vec4<bool>(true, global0.x, false, false)), select(select(select(vec4<bool>(false, var_0.a, global0.x, false), vec4<bool>(false, false, true, global0.x), vec4<bool>(false, false, global0.x, false)), select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(global0.x, false, false, true), true), vec4<bool>(var_0.a, true, global0.x, true)), vec4<bool>(true, var_0.b.x > global2.x, true, true), select(vec4<bool>(var_0.a, true, global0.x, true), !vec4<bool>(var_0.a, false, var_0.a, global0.x), select(vec4<bool>(var_0.a, false, global0.x, false), vec4<bool>(global0.x, global0.x, false, true), global0.x))), !vec4<bool>(var_0.a, all(vec4<bool>(var_0.a, true, true, global0.x)), var_0.b.x > -9264i, global2.x != -2147483647i)));
    global0 = !vec4<bool>(true, var_0.a, true, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.b.yy, var_0.b.zz), ~global2.x, var_0.b.x) > _wgslsmith_dot_vec2_i32(var_0.b.xw ^ vec2<i32>(2147483647i, 0i), var_0.b.ww >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))));
    let var_1 = Struct_1(all(!select(!global0.wxz, !global0.zxx, !global0.zwy)), ~countOneBits(vec4<i32>(-1i, ~global2.x, global2.x, ~(-6764i))));
    global2 = -_wgslsmith_mult_vec2_i32(max(~var_0.b.yz, var_0.b.wy), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(var_1.b.zz), -var_1.b.xx), vec2<i32>(2147483647i, var_0.b.x) | firstLeadingBit(var_1.b.xz), vec2<i32>(min(u_input.a, var_0.b.x), _wgslsmith_mod_i32(global2.x, 10614i))));
    global2 = var_1.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(max(-(_wgslsmith_sub_i32(u_input.a, global2.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6576u, 93337u, 16272u), vec4<u32>(52787u, 5878u, 0u, 34018u)) % 32u)), -1i));
}

