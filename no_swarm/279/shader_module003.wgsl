struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_sub_i32(select(-_wgslsmith_clamp_i32(5317i, 1i, -22854i) & -select(-53946i, -2147483647i, arg_1.b.b.x), _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(-2147483647i, 2147483647i, -68702i, -29704i)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-123i, -36387i, 1i, -27207i), vec4<i32>(0i, 0i, 1i, 0i)), 2147483647i, -2147483647i)), !all(select(arg_1.b.b.xx, vec2<bool>(arg_1.a.x, arg_0), arg_1.b.b.xw))), _wgslsmith_sub_i32(50097i, min(1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-22780i, -1i, 11947i)), min(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(2147483647i, -2147483647i, -2147483647i))))));
    let var_1 = _wgslsmith_f_op_f32(select(-265f, _wgslsmith_f_op_f32(floor(-982f)), arg_0));
    var_0 = -(i32(-1i) * -6366i);
    global0 = array<vec4<bool>, 22>();
    global0 = array<vec4<bool>, 22>();
    return _wgslsmith_mod_u32(countOneBits(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.c.x, u_input.b))), 4294967295u);
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = ~abs(func_3(arg_0.b.a, Struct_3(vec3<bool>(arg_0.a.x, arg_0.b.b.x, arg_0.b.a), Struct_2(arg_0.a.x, global0[_wgslsmith_index_u32(1u, 22u)]))));
    global0 = array<vec4<bool>, 22>();
    let var_1 = u_input.c.xz;
    global0 = array<vec4<bool>, 22>();
    var var_2 = !arg_0.b.b.x;
    return ~(~_wgslsmith_mult_vec4_u32(u_input.c, ~u_input.c) | u_input.c);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec4_u32(u_input.c, ~u_input.c << (_wgslsmith_sub_vec4_u32(u_input.c << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, u_input.b), vec4<u32>(u_input.c.x, u_input.c.x, 34647u, u_input.c.x)) % vec4<u32>(32u)), func_2(Struct_3(vec3<bool>(true, true, true), Struct_2(true, global0[_wgslsmith_index_u32(4294967295u, 22u)])))) % vec4<u32>(32u)));
    global0 = array<vec4<bool>, 22>();
    var var_1 = !vec3<bool>(any(vec4<bool>(false, false, false, false)) | true, true, true);
    global0 = array<vec4<bool>, 22>();
    var_1 = !select(select(!(!vec3<bool>(true, var_1.x, var_1.x)), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, true, var_1.x)), var_1.x), select(vec3<bool>(true || var_1.x, false & var_1.x, all(vec3<bool>(var_1.x, true, false))), !(!vec3<bool>(var_1.x, var_1.x, false)), true), !var_1.x);
    return vec4<f32>(-138f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1342f) * -413f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -801f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1939f - -2050f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-229f, _wgslsmith_f_op_f32(abs(441f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1297f, -896f))))))), -956f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, 446f, -243f, -870f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2090f, 492f, -1119f, 543f) + vec4<f32>(-945f, -441f, -2137f, -1372f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(404f, 120f, 185f, -113f) + vec4<f32>(539f, -1196f, -103f, 107f)))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(183f, var_0.x, -157f, var_0.x), vec4<f32>(-1041f, var_0.x, 861f, -219f), global0[_wgslsmith_index_u32(u_input.b, 22u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, 1000f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -284f, -1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-288f, 731f, 1999f, var_0.x), vec4<f32>(-617f, -1048f, -1411f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1332f, var_0.x))), all(global0[_wgslsmith_index_u32(u_input.b, 22u)]))), select(global0[_wgslsmith_index_u32(~(u_input.b >> (u_input.a % 32u)), 22u)], select(!global0[_wgslsmith_index_u32(u_input.a, 22u)], vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, false))))));
    let var_2 = select(~vec4<i32>(-30235i << (min(u_input.a, u_input.b) % 32u), max(-1i, 1i), 9216i, -1i), ~(~countOneBits(vec4<i32>(1i, 1i, 1i, 1i))), any(vec2<bool>(true, true)));
    var var_3 = Struct_1(firstTrailingBit(u_input.c.zzx), vec2<i32>(var_2.x, _wgslsmith_mod_i32(-2147483647i, var_2.x)), 2147483647i);
    var var_4 = Struct_3(select(vec3<bool>(select(true, true, true), true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)), Struct_2(all(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true)), vec4<bool>(true, true, !any(vec3<bool>(true, false, true)), all(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(34970u, 4294967295u), 22u)]))));
    var_3 = Struct_1(u_input.c.xxy ^ u_input.c.xxz, var_3.b, -select(7365i, var_2.x, false));
    var_3 = Struct_1(~_wgslsmith_sub_vec3_u32(u_input.c.wyz, ~(~var_3.a)), var_2.zx, firstTrailingBit(i32(-1i) * -var_2.x) >> (15786u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_u32(var_3.a.x, 1u)) & u_input.a, vec3<u32>(~(var_3.a.x << (4294967295u % 32u)), _wgslsmith_add_u32(abs(22821u), 1u), var_3.a.x) ^ ~(~(~vec3<u32>(41677u, var_3.a.x, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), var_1.wxx), var_1.xyy)), _wgslsmith_f_op_vec4_f32(func_1()).x);
}

