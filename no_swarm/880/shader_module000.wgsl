struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(56703u, 4294967295u, 29415u, 0u, 1u, 15571u, 0u, 4294967295u, 0u, 0u, 3427u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    global0 = array<u32, 11>();
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -351f));
    let var_1 = Struct_2(firstLeadingBit(min(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.zy, vec2<u32>(3109u, 0u)), u_input.c.yw), ~1u)), arg_0.b, _wgslsmith_div_i32(-u_input.b.x, select(_wgslsmith_add_i32(arg_0.c, arg_1.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(1083i, arg_1.x, u_input.b.x), vec3<i32>(arg_1.x, -29049i, arg_1.x)), firstLeadingBit(_wgslsmith_mod_i32(arg_0.c, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(60268i, u_input.b.x), vec2<i32>(-2147483647i, u_input.d.x)) == _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(7643i, arg_0.c)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1666f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-676f, -1190f)))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(~global0[_wgslsmith_index_u32(89725u, 11u)], vec2<bool>(true, true), 15745i), abs(u_input.d) & u_input.d, u_input.c.x | (u_input.c.x ^ 21904u))), _wgslsmith_f_op_f32(-412f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1171f)) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(682f, arg_0)) - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0)))))));
    let var_1 = select(reverseBits(u_input.b), vec3<i32>(13404i, u_input.d.x, select(u_input.b.x, max(u_input.b.x, _wgslsmith_clamp_i32(-24689i, -8298i, u_input.b.x)), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -1000f), var_0.x, -1350f) + vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_0, 1000f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), arg_0, 472f), var_0, select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), arg_0 <= -1000f)))), all(vec4<bool>(false, true, true, true))));
    var var_3 = Struct_2(~_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u | global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], 55756u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64573u, 11u)], 11u)]), 11u)]), _wgslsmith_mult_u32(32414u, _wgslsmith_add_u32(83469u, global0[_wgslsmith_index_u32(4294967295u, 11u)]))), vec2<bool>(true, true), -max(35415i, 2147483647i >> (min(u_input.c.x, global0[_wgslsmith_index_u32(14878u, 11u)]) % 32u)));
    global0 = array<u32, 11>();
    return _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c & u_input.c, vec4<u32>(0u, var_3.a, 1u, var_3.a), abs(vec4<u32>(global0[_wgslsmith_index_u32(12449u, 11u)], u_input.c.x, u_input.c.x, 46918u)))), ~(~var_3.a));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_div_u32(u_input.c.x, ~(~(45971u << (global0[_wgslsmith_index_u32(arg_1, 11u)] % 32u)))) | global0[_wgslsmith_index_u32(u_input.c.x, 11u)];
    var var_1 = u_input.c.x ^ func_2(-1710f);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(115f, 461f)), 2846f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1185f, -450f)))))))));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d ^ vec4<i32>(u_input.d.x, -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.b.x, 22008i, u_input.b.x)), u_input.a), -countOneBits(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(0i, u_input.d.x, -2147483647i, u_input.b.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b.x, u_input.b.x, 1i, -1i), u_input.d) & (46652i >> ((abs(21781u) ^ min(arg_1, 9654u)) % 32u)), u_input.d.x);
    let var_4 = vec2<bool>(true, all(select(vec2<bool>(select(arg_2, arg_2, arg_2), select(arg_2, arg_2, arg_2)), select(select(vec2<bool>(false, false), vec2<bool>(true, arg_2), arg_2), vec2<bool>(arg_2, false), true), true)));
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(!all(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, true, true)), min(31347u, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]) <= func_1(u_input.c.x, 21258u, true)), !vec4<bool>(true, true, any(vec2<bool>(false, false)), all(vec3<bool>(true, true, false))), true);
    let var_1 = 84637u;
    global0 = array<u32, 11>();
    var_0 = select(vec4<bool>(var_0.x, all(!select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, true), true)), true, all(select(!var_0.yw, var_0.xx, !var_0.x))), select(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(47945u, u_input.c.x), u_input.c.xw) <= (var_1 & global0[_wgslsmith_index_u32(var_1, 11u)]), true, any(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, true, false, true))), var_0.x), select(vec4<bool>(true, var_0.x, true, true), select(vec4<bool>(true, true, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(true, false, true, var_0.x)), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), vec4<bool>(~u_input.a >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -25434i, -1i, u_input.b.x), u_input.d), var_0.x, var_0.x, (var_0.x | true) | true)), vec4<bool>(true, any(!var_0.zxx), !any(var_0.wx), var_0.x));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1850f);
    var_0 = vec4<bool>(true, true, true, var_0.x);
    var var_3 = Struct_1(-(~0i) < select(~u_input.a, select(u_input.a, ~1i, false), all(vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
    var var_4 = Struct_2(~u_input.c.x, vec2<bool>(var_3.a, !select(var_0.x, var_0.x, 1000f >= var_2)), -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, abs(_wgslsmith_clamp_vec3_i32(select(_wgslsmith_add_vec3_i32(u_input.b, u_input.d.ywy), u_input.b, select(var_0.wzx, var_0.xxz, var_4.b.x)), _wgslsmith_sub_vec3_i32(u_input.d.zyw >> (vec3<u32>(var_4.a, 19141u, 36200u) % vec3<u32>(32u)), firstTrailingBit(u_input.d.zzy)), u_input.b)), firstTrailingBit(select(vec3<i32>(var_4.c, var_4.c, 25147i) << (_wgslsmith_sub_vec3_u32(u_input.c.zyy, u_input.c.yyx) % vec3<u32>(32u)), reverseBits(abs(u_input.b)), false)));
}

