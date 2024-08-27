struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_2(vec4<u32>(~abs(~u_input.a.x), u_input.a.x, max(4294967295u, u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 41327u), ~vec4<u32>(8705u, u_input.a.x, 47179u, 103318u))), !arg_1.a.yyz, vec2<bool>(all(select(vec2<bool>(arg_1.a.x, true), arg_1.a.ww, arg_1.a.xy)), arg_1.a.x), Struct_1(arg_1.a), arg_1);
    global0 = array<i32, 20>();
    var var_2 = var_1.d;
    var var_3 = var_1.d;
    return max(u_input.a.x, var_1.a.x);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(~vec4<u32>(func_3(vec2<f32>(939f, 703f), arg_0, arg_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 2914u), vec3<u32>(u_input.a.x, 16880u, 101078u)), ~0u, ~65596u) & vec4<u32>(~(u_input.a.x & u_input.a.x), ~u_input.a.x | _wgslsmith_mult_u32(14068u, 73399u), firstTrailingBit(17753u), _wgslsmith_dot_vec3_u32(~vec3<u32>(14691u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 27974u, u_input.a.x))), !(!select(select(arg_0.a.yxw, vec3<bool>(false, arg_0.a.x, false), arg_0.a.x), !vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.ywx, arg_0.a.zxw))), arg_0.a.wy, arg_0, Struct_1(vec4<bool>(arg_0.a.x, all(!vec2<bool>(arg_0.a.x, false)), arg_0.a.x, !arg_0.a.x)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-961f, 1836f, -510f))), var_0.d.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, 1936f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2662f, -1000f, var_0.b.x))))));
    var var_2 = abs(var_0.a.x);
    let var_3 = var_0.d;
    var var_4 = !all(vec2<bool>(false, arg_0.a.x));
    return false;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    global0 = array<i32, 20>();
    var var_0 = abs(countOneBits(u_input.a.x));
    global0 = array<i32, 20>();
    let var_1 = func_2(Struct_1(vec4<bool>(true, any(vec2<bool>(true, true)), true, arg_1.x > -439f)));
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 4294967295u, 38497u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 33809u), vec3<u32>(14651u, arg_0, 1u), vec3<u32>(u_input.a.x, arg_0, 4294967295u))), reverseBits(~14031u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(38531u, 18829u, arg_0)) << (vec3<u32>(74852u, 10752u, arg_0) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, u_input.a.x, u_input.a.x), vec3<u32>(20208u, 1u, arg_0)), ~vec3<u32>(arg_0, arg_0, 1u))), ~min(arg_0, arg_0), ~14275u), select(!(!vec3<bool>(var_1, false, var_1)), !select(select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, false), vec3<bool>(false, true, var_1)), !vec3<bool>(var_1, var_1, false), true), all(!vec4<bool>(var_1, true, true, true))), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_1, false), vec2<bool>(false, var_1)), !var_1)), Struct_1(select(select(vec4<bool>(var_1, true, var_1, false), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, true, true, false), var_1), var_1), select(!vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, false, true, true), true), any(select(vec3<bool>(var_1, var_1, false), vec3<bool>(false, false, true), var_1)))), Struct_1(select(!select(vec4<bool>(true, true, false, var_1), vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, true, false, false)), !select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(true, var_1, false, false), var_1), !var_1)));
    return Struct_2(~(vec4<u32>(_wgslsmith_div_u32(28590u, arg_0), arg_0, 0u, ~u_input.a.x) ^ var_2.a), !(!vec3<bool>(var_1, true, true)), var_2.e.a.wx, var_2.e, var_2.d);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = func_1((arg_2.a.x >> (_wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(6482u, 27408u, 4294967295u, 0u)) % 32u)) & _wgslsmith_dot_vec4_u32(~arg_2.a, ~vec4<u32>(1u, 3518u, 4324u, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-788f, 107f, 1307f, 438f) + vec4<f32>(-1170f, 1130f, 1418f, -768f))))))))).c.x;
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_1 = arg_1.x;
    var var_2 = arg_2;
    return -979f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(1271f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -638f))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec4<i32>(-1i) * -vec4<i32>(-1i, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(154734u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 55081u, 4294967295u), vec3<u32>(49222u, 63178u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(650f, 1445f, 396f, 372f), vec4<f32>(-911f, 644f, 1219f, -519f)))), -10264i >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u) % 32u)))), _wgslsmith_f_op_f32(-1f));
    global0 = array<i32, 20>();
    let var_1 = !func_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, 439f, var_0.x, _wgslsmith_f_op_f32(var_0.x * -2811f)))).e.a.zx;
    let var_2 = max(_wgslsmith_add_u32(u_input.a.x, ~min(1422u, 35938u)) ^ ~u_input.a.x, 4749u);
    var var_3 = firstLeadingBit(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_0.wz)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 870f, -678f, 331f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_clamp_u32(~(~0u) & min(_wgslsmith_clamp_u32(u_input.a.x, 1u, var_2), 102149u >> (u_input.a.x % 32u)), 0u, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(412f, var_0.x))), _wgslsmith_f_op_vec2_f32(var_0.zx - var_0.xz))), (vec2<i32>(_wgslsmith_sub_i32(2147483647i, global0[_wgslsmith_index_u32(0u, 20u)]), -global0[_wgslsmith_index_u32(5648u, 20u)]) << (vec2<u32>(~1u, ~4294967295u) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, ~u_input.a.x), u_input.a) % vec2<u32>(32u)));
}

