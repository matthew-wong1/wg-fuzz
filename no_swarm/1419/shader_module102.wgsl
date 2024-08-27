struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(false, true, false, true), -1i), Struct_1(vec4<bool>(false, false, false, false), 0i), Struct_1(vec4<bool>(false, true, true, false), -1i), Struct_1(vec4<bool>(false, false, false, false), -1i), Struct_1(vec4<bool>(false, false, true, true), 0i), Struct_1(vec4<bool>(true, true, false, true), -1i), Struct_1(vec4<bool>(true, true, true, false), 1397i), Struct_1(vec4<bool>(false, true, true, true), -24632i), Struct_1(vec4<bool>(false, false, true, false), -1i), Struct_1(vec4<bool>(true, false, true, true), 3352i), Struct_1(vec4<bool>(false, true, false, true), 0i), Struct_1(vec4<bool>(false, true, false, true), 1i), Struct_1(vec4<bool>(true, true, false, false), -15700i), Struct_1(vec4<bool>(true, true, false, true), 0i), Struct_1(vec4<bool>(true, false, false, false), -55787i), Struct_1(vec4<bool>(true, true, false, false), -1i), Struct_1(vec4<bool>(true, false, true, false), 1i), Struct_1(vec4<bool>(true, false, false, true), 5987i), Struct_1(vec4<bool>(false, false, false, true), -14906i), Struct_1(vec4<bool>(false, true, true, true), 7733i), Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), 7591i), Struct_1(vec4<bool>(true, true, true, true), 1i), Struct_1(vec4<bool>(false, false, false, true), 6977i), Struct_1(vec4<bool>(false, false, true, true), -1i), Struct_1(vec4<bool>(false, true, true, false), -20006i), Struct_1(vec4<bool>(true, false, true, true), 5916i), Struct_1(vec4<bool>(true, false, true, false), 49083i), Struct_1(vec4<bool>(true, true, true, false), -1i));

var<private> global1: array<i32, 32> = array<i32, 32>(67560i, i32(-2147483648), -10781i, 1i, -51122i, 0i, 0i, 0i, -1i, -31400i, -51511i, -1i, 0i, -1i, 2147483647i, 47938i, 2147483647i, 42169i, 3267i, 2147483647i, 29015i, -12029i, 0i, -17598i, i32(-2147483648), -77755i, i32(-2147483648), i32(-2147483648), -13365i, -364i, i32(-2147483648), i32(-2147483648));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(true, true, false, true), 1i), Struct_1(vec4<bool>(true, true, true, true), 67221i), Struct_1(vec4<bool>(false, false, true, false), 18770i), Struct_1(vec4<bool>(false, false, true, true), 1i), Struct_1(vec4<bool>(true, true, true, true), 0i), Struct_1(vec4<bool>(true, false, false, false), 60711i), Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, false), 61390i), Struct_1(vec4<bool>(false, false, true, false), -4565i), Struct_1(vec4<bool>(false, true, false, false), -35933i), Struct_1(vec4<bool>(false, false, false, false), 13561i), Struct_1(vec4<bool>(true, true, true, false), 0i), Struct_1(vec4<bool>(true, false, false, true), 5963i), Struct_1(vec4<bool>(false, true, true, false), -1i), Struct_1(vec4<bool>(true, false, false, true), 2147483647i), Struct_1(vec4<bool>(false, true, true, false), -53858i), Struct_1(vec4<bool>(true, false, false, true), 33254i), Struct_1(vec4<bool>(true, false, true, false), 13037i), Struct_1(vec4<bool>(true, false, true, false), 6800i), Struct_1(vec4<bool>(false, true, true, false), -17723i), Struct_1(vec4<bool>(true, true, true, true), 2147483647i), Struct_1(vec4<bool>(false, false, false, true), -24357i), Struct_1(vec4<bool>(false, true, true, false), -78320i), Struct_1(vec4<bool>(true, true, false, true), 32569i), Struct_1(vec4<bool>(true, true, true, true), 0i), Struct_1(vec4<bool>(false, true, true, false), i32(-2147483648)), Struct_1(vec4<bool>(false, false, false, true), 1i), Struct_1(vec4<bool>(false, false, false, true), -1i));

var<private> global3: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(vec4<bool>(any(select(arg_2.a.ywx, select(arg_2.a.yyx, arg_1.a.xyz, vec3<bool>(false, false, true)), vec3<bool>(arg_1.a.x, false, true))), any(select(arg_2.a, vec4<bool>(arg_2.a.x, true, arg_2.a.x, false), arg_1.a.x)), any(!arg_2.a.xzw), !(!arg_1.a.x)), ~_wgslsmith_mult_i32(~(-global1[_wgslsmith_index_u32(arg_0.x, 32u)]), global1[_wgslsmith_index_u32(~u_input.d.x, 32u)]));
    var var_1 = arg_1.a.x;
    return arg_1.a.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec3<u32> {
    var var_0 = vec2<u32>(u_input.d.x, 1u);
    let var_1 = select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(true, false, false)), true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), false))), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)))));
    var var_2 = Struct_1(vec4<bool>(any(var_1), var_1.x, var_1.x, (1u ^ ~var_0.x) <= _wgslsmith_dot_vec3_u32(u_input.d.zww, u_input.d.wxz & vec3<u32>(29513u, u_input.a, 1u))), _wgslsmith_add_i32(_wgslsmith_sub_i32(11234i, global1[_wgslsmith_index_u32(var_0.x, 32u)]), _wgslsmith_mod_i32(~1i, i32(-1i) * -2147483647i)));
    global3 = array<vec2<bool>, 29>();
    let var_3 = u_input.b.x;
    return vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.d), u_input.d), abs(u_input.d.x), 1u) ^ vec3<u32>(u_input.a, abs(var_0.x), _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(var_0.x, u_input.a)) << (u_input.d.x % 32u));
}

fn func_2(arg_0: u32, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, false), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), true), _wgslsmith_mod_i32(-_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(29436u, 32u)], 16896i), vec2<i32>(3437i, global1[_wgslsmith_index_u32(4294967295u, 32u)]))), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 1i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(7427u, 32u)], 40547i, -38686i, global1[_wgslsmith_index_u32(u_input.a, 32u)]))));
    global3 = array<vec2<bool>, 29>();
    let var_1 = var_0.a.x;
    let var_2 = select(~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, u_input.d.x), u_input.d.yww), u_input.d.wzx)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 1u, reverseBits(~70569u)), ~max(func_3(vec2<f32>(1755f, 1000f), var_0.b, vec4<f32>(arg_1, -618f, arg_1, arg_1), u_input.e), vec3<u32>(arg_0, u_input.d.x, 27061u) >> (vec3<u32>(20460u, 42714u, 52305u) % vec3<u32>(32u)))), vec3<bool>(!var_1, true, any(vec2<bool>(all(var_0.a.zx), true))));
    global1 = array<i32, 32>();
    return vec3<bool>(false, all(vec2<bool>(false, true)) | any(var_0.a.xz), all(var_0.a) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(func_1(u_input.d.ww, Struct_1(vec4<bool>(true, false, false, true), -global1[_wgslsmith_index_u32(u_input.a, 32u)]), Struct_1(vec4<bool>(true, true, true, false), ~global1[_wgslsmith_index_u32(u_input.d.x, 32u)])), any(!global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(26862u, u_input.d.x), 29u)]), true), func_2(~4294967295u, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(546f * _wgslsmith_f_op_f32(f32(-1f) * -1146f)))), select(vec3<bool>(true, true, true), !vec3<bool>(true, all(vec2<bool>(true, false)), any(global3[_wgslsmith_index_u32(38912u, 29u)])), func_2(u_input.d.x, _wgslsmith_f_op_f32(-2162f + _wgslsmith_f_op_f32(step(687f, -216f))))));
    var_0 = select(!select(select(vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, false), true), vec3<bool>(var_0.x & var_0.x, var_0.x, !var_0.x), true), vec3<bool>(true, var_0.x, all(!vec4<bool>(true, var_0.x, var_0.x, false))), vec3<bool>(var_0.x, (_wgslsmith_dot_vec3_u32(u_input.d.wxw, vec3<u32>(u_input.d.x, 71281u, u_input.a)) ^ 4294967295u) < (8949u << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 87893u, 0u, 0u)) % 32u)), !(global1[_wgslsmith_index_u32(u_input.a, 32u)] != (2147483647i >> (u_input.d.x % 32u)))));
    var var_1 = abs(vec2<u32>(u_input.a, ~_wgslsmith_mult_u32(4294967295u, u_input.a ^ 46126u)));
    global0 = array<Struct_1, 29>();
    var var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720f * 1973f) - _wgslsmith_f_op_f32(791f + 847f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(128f, 135f), vec2<f32>(-1000f, -594f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, -552f) * vec2<f32>(1000f, 1118f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(636f, -1301f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1854f, 2027f), vec2<f32>(-1053f, -411f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f * -511f))), -939f));
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(16717u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-424f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.x, -166f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-914f, var_3.x, -805f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(906f, var_3.x, 253f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 813f, 2588f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 260f, 1042f) - vec3<f32>(var_3.x, -1000f, -522f)))))), vec3<u32>(4294967295u, ~(~(var_1.x << (0u % 32u))), 1u));
}

