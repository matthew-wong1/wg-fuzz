struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<u32> {
    var var_0 = 0u;
    var_0 = countOneBits(4294967295u);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~(u_input.b.x ^ global0.x)), u_input.b.x, 33866u, u_input.b.x & 46929u), abs(reverseBits(vec4<u32>(45996u, _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x), 0u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)))));
    global0 = ~u_input.b.yy;
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, ~_wgslsmith_mult_u32(u_input.b.x, global0.x), 1u, global0.x), _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(global0.x, global0.x, u_input.b.x, 12221u) & vec4<u32>(1u, global0.x, 14403u, 4294967295u)), min(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b.x, 4341u, global0.x, u_input.b.x), vec4<u32>(2773u, u_input.b.x, 0u, 1u), true), ~vec4<u32>(95595u, global0.x, u_input.b.x, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, global0.x, 0u) >> (vec4<u32>(0u, u_input.b.x, 4036u, global0.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 23763u)))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 96247u, ~(1u | _wgslsmith_mult_u32(global0.x, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 0u, global0.x, 1u), vec4<u32>(0u, 4294967295u, 22657u, 1u)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), ~u_input.b.x)), vec4<u32>(global0.x, ~(44020u & u_input.b.x) | u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0.x, 32369u, u_input.b.x), vec4<u32>(global0.x, global0.x, 27186u, u_input.b.x)), ~global0.x), _wgslsmith_sub_u32(global0.x, 4294967295u)), 493u));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(countOneBits(~select(vec4<u32>(u_input.b.x, global0.x, u_input.b.x, 10612u) | vec4<u32>(global0.x, global0.x, 37083u, 48915u), select(vec4<u32>(58017u, 0u, u_input.b.x, 0u), vec4<u32>(global0.x, 0u, 4294967295u, 64080u), vec4<bool>(false, true, true, true)), true)), _wgslsmith_mult_u32(23178u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), -284f, _wgslsmith_f_op_f32(abs(1828f)), -1000f)), _wgslsmith_div_f32(-1929f, _wgslsmith_f_op_f32(f32(-1f) * -396f)), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), false), true)));
    var var_1 = Struct_1((~_wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(u_input.b.x, u_input.b.x, 49967u, 48418u)) & vec4<u32>(10596u, ~33920u, global0.x, var_0.b)) << (func_3() % vec4<u32>(32u)), global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1377f * -100f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-407f * var_0.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, var_0.d, var_0.d, var_0.d))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_0.d, _wgslsmith_f_op_f32(197f * 649f), var_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d)) - 1607f) + _wgslsmith_f_op_f32(ceil(var_0.c.x)))), var_0.e);
    var_1 = Struct_1(vec4<u32>(0u, 1u, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, global0.x, 28968u), var_1.a.zzz)), 1u), _wgslsmith_mult_u32(var_1.a.x, var_1.a.x | func_3().x)), ~4294967295u, var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, var_1.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d))), var_0.e && !var_0.e)))), all(vec2<bool>(true, var_1.e)));
    global0 = u_input.b.yy;
    var var_2 = var_1.c.wyw;
    return ~u_input.b.xy;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global0 = ~reverseBits(~(func_2() | u_input.b.yy));
    let var_0 = Struct_1(~(~vec4<u32>(~global0.x, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), u_input.b.yx), u_input.b.x)), ~0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-805f, 769f, 1128f, 891f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, 837f, 859f, -999f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(259f, -967f, false)))) - _wgslsmith_f_op_f32(1f - -1516f)), all(vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), !any(vec4<bool>(true, false, true, true)))));
    let var_1 = var_0.c.x;
    var var_2 = Struct_2(u_input.b.x, var_0.c.yx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-674f, 1000f, 725f)) + vec3<f32>(-1521f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1, -165f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1, 241f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1043f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(select(var_0.c.x, 386f, var_0.e))), -1000f, var_2.b.x), _wgslsmith_f_op_vec4_f32(floor(var_0.c)), !select(!vec4<bool>(var_0.e, true, var_0.e, var_0.e), !vec4<bool>(false, var_0.e, var_0.e, false), vec4<bool>(true, var_0.e, true, var_0.e))))));
    return Struct_2(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-910f, var_0.c.x, true)), _wgslsmith_f_op_f32(floor(1347f))))), _wgslsmith_f_op_f32(floor(358f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(var_3.zxw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -2357f, var_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1721f, var_3.x, -347f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_0.d, -348f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(min(1u, u_input.b.x), 1117u, ~global0.x), ~firstTrailingBit(1u)), ~(u_input.b.zx >> (u_input.b.yz % vec2<u32>(32u))));
    var var_1 = func_1(_wgslsmith_add_vec3_i32(-u_input.a, select(u_input.a, vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), ~u_input.a.x, u_input.a.x), !(!vec3<bool>(false, var_0, var_0)))));
    var var_2 = vec4<i32>(u_input.a.x, ~select(u_input.a.x, ~u_input.a.x & (-43921i >> (var_1.a % 32u)), _wgslsmith_f_op_f32(sign(var_1.b.x)) != _wgslsmith_f_op_f32(f32(-1f) * -1169f)), -u_input.a.x, -1i & ~(~(-u_input.a.x)));
    var_1 = func_1(vec3<i32>(-33259i, 34904i, firstTrailingBit(795i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(1u, var_1.a, 0u, 1u))), reverseBits(select(vec4<u32>(global0.x, var_1.a, u_input.b.x, u_input.b.x), vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x), vec4<bool>(true, var_0, false, var_0))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, global0.x, 9996u, 4294967295u), ~vec4<u32>(u_input.b.x, var_1.a, global0.x, global0.x)) % vec4<u32>(32u))), u_input.b.zz, ~var_1.a ^ 1u, _wgslsmith_div_i32(u_input.a.x, ~reverseBits(-3057i)) << (39234u % 32u));
}

