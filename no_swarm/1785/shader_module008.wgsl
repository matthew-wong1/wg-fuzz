struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-146f, 242f, 2047f, 310f), vec4<f32>(1000f, -286f, -790f, 833f), vec4<f32>(1000f, -752f, -1000f, 1105f), vec4<f32>(-467f, -151f, -124f, -330f), vec4<f32>(530f, -1000f, 560f, -1949f), vec4<f32>(-643f, -1614f, 1451f, -722f), vec4<f32>(-807f, 1172f, -868f, 1359f), vec4<f32>(-233f, 128f, 458f, 837f), vec4<f32>(-616f, -1173f, -631f, -548f), vec4<f32>(-178f, 811f, 1182f, 299f), vec4<f32>(-1227f, 1113f, -1550f, -1388f), vec4<f32>(-1052f, -698f, -388f, 1000f), vec4<f32>(1186f, 969f, 243f, -787f), vec4<f32>(214f, 410f, -399f, -917f), vec4<f32>(-812f, -136f, -232f, 584f), vec4<f32>(1490f, 1151f, 1627f, -467f), vec4<f32>(-943f, 189f, -849f, 1000f), vec4<f32>(-832f, -204f, -643f, -1322f), vec4<f32>(288f, 1088f, -573f, -1436f), vec4<f32>(244f, 2069f, -1120f, 1042f), vec4<f32>(-1000f, -289f, 513f, 892f));

var<private> global1: Struct_2 = Struct_2(Struct_1(12088i, true), Struct_1(-1i, false), true, Struct_1(-39311i, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(1233f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(round(-372f))))))));
    let var_1 = u_input.b.zx;
    var var_2 = Struct_2(Struct_1(-1328i, true), Struct_1(~(-u_input.a), false), global1.a.b, global1.a);
    var var_3 = Struct_2(Struct_1(global1.d.a, any(select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.d.b, global1.d.b), all(vec3<bool>(false, true, false))))), Struct_1(_wgslsmith_mod_i32(u_input.a | -1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.a, 488i), vec2<i32>(1i, u_input.a)), min(1i, -1147i))), true), true | (_wgslsmith_dot_vec2_u32(~u_input.b.yx, u_input.b.yx) <= ~_wgslsmith_div_u32(4294967295u, 70149u)), Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -u_input.a, -1i << ((var_1.x << (var_1.x % 32u)) % 32u), var_2.b.a), global1.a.b));
    var var_4 = firstLeadingBit(_wgslsmith_mult_i32(1i | _wgslsmith_mult_i32(~(-86823i), -13601i >> (u_input.b.x % 32u)), select(1i, max(u_input.a, -25474i), any(vec3<bool>(global1.d.b, false, true)))));
    return vec4<u32>(abs(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(34365u, 0u)), u_input.b.x)), _wgslsmith_sub_u32(var_1.x, u_input.b.x), ~(~u_input.b.x), countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) | vec3<u32>(var_1.x, 0u, 26590u), vec3<u32>(u_input.b.x, u_input.b.x, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), u_input.b)), u_input.b)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = -73441i;
    var var_1 = ~(vec4<u32>(_wgslsmith_add_u32(0u, u_input.b.x), abs(u_input.b.x), ~u_input.b.x, ~64105u) ^ (~vec4<u32>(1u, u_input.b.x, 62151u, u_input.b.x) | (vec4<u32>(u_input.b.x, u_input.b.x, 25221u, 1148u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 9331u) % vec4<u32>(32u))))) >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x & u_input.b.x, ~u_input.b.x, 0u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), func_3(), vec4<u32>(3662u, ~35819u, _wgslsmith_mult_u32(u_input.b.x, 65142u), 0u))) % vec4<u32>(32u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-7482i, u_input.a), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 86980i), vec2<i32>(-22560i, u_input.a)))), arg_0.x), global1.a, all(select(vec4<bool>(arg_0.x, global1.a.b, true, arg_0.x), select(!vec4<bool>(global1.d.b, global1.b.b, false, global1.c), vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0.x), 26217u != var_1.x)), Struct_1(-1i, false));
    var_0 = -2147483647i;
    global0 = array<vec4<f32>, 21>();
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<u32> {
    global1 = Struct_2(global1.d, arg_0.d, global1.a.b, global1.a);
    let var_0 = vec2<i32>(25008i, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-11316i, abs(arg_1.x)), -(~2147483647i)), _wgslsmith_mult_i32(31275i, -23052i)));
    var var_1 = ~vec2<i32>(-2147483647i << ((func_3().x >> (~u_input.b.x % 32u)) % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 17560i & global1.d.a), ~arg_0.b.a << (~55889u % 32u)));
    var var_2 = 16982i;
    global0 = array<vec4<f32>, 21>();
    return ~vec4<u32>(~_wgslsmith_div_u32(0u, u_input.b.x << (u_input.b.x % 32u)), reverseBits(_wgslsmith_sub_u32(4294967295u, ~u_input.b.x)), u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x >> (73709u % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), abs(68542u)), u_input.b.x));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = max(max(func_4(Struct_2(func_2(vec2<bool>(false, global1.d.b)), Struct_1(-2147483647i, false), !global1.a.b, global1.b), abs(arg_0.yww)), ~(~(vec4<u32>(6058u, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, 16957u, u_input.b.x, 1u) % vec4<u32>(32u))))), vec4<u32>(~(~firstTrailingBit(46906u)), ~_wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b), 4294967295u, u_input.b.x));
    var var_1 = func_2(!select(select(select(vec2<bool>(false, global1.a.b), vec2<bool>(global1.a.b, global1.d.b), vec2<bool>(false, true)), select(vec2<bool>(false, global1.c), vec2<bool>(global1.a.b, false), true), select(vec2<bool>(global1.b.b, global1.b.b), vec2<bool>(global1.d.b, false), global1.d.b)), vec2<bool>(true, u_input.b.x >= 1u), !(!vec2<bool>(global1.a.b, false))));
    global0 = array<vec4<f32>, 21>();
    var var_2 = func_2(select(select(select(select(vec2<bool>(var_1.b, true), vec2<bool>(false, false), vec2<bool>(true, global1.b.b)), vec2<bool>(true, true), true), vec2<bool>(!global1.a.b, true), any(select(vec2<bool>(true, var_1.b), vec2<bool>(true, false), vec2<bool>(global1.b.b, false)))), !select(vec2<bool>(true, false), select(vec2<bool>(var_1.b, false), vec2<bool>(false, var_1.b), true), true), select(vec2<bool>(true, global1.b.b), vec2<bool>(false, all(vec2<bool>(var_1.b, true))), !select(vec2<bool>(global1.d.b, true), vec2<bool>(true, var_1.b), vec2<bool>(true, true)))));
    var var_3 = vec4<bool>(var_1.b, any(!select(vec2<bool>(var_1.b, var_2.b), vec2<bool>(false, true), vec2<bool>(global1.c, false))) || true, all(vec2<bool>(global1.c, all(!vec4<bool>(global1.d.b, var_2.b, global1.b.b, var_1.b)))), !var_1.b || true);
    return _wgslsmith_sub_i32(abs(var_1.a), firstLeadingBit(-32864i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(-2837i, ~(global1.d.a | (u_input.a | u_input.a)), -firstTrailingBit(-u_input.a));
    let var_1 = global1.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(max(abs(abs(4294967295u)), u_input.b.x >> (0u % 32u)), (u_input.b.x ^ u_input.b.x) | abs(u_input.b.x)), func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, u_input.a << (u_input.b.x % 32u), u_input.a, _wgslsmith_mult_i32(-57318i, 1i)), vec4<i32>(i32(-1i) * -1i, global1.b.a, 5856i, _wgslsmith_mod_i32(global1.a.a, global1.d.a)))), ~vec4<u32>(~firstTrailingBit(4294967295u), u_input.b.x, ~func_3().x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x) << (~u_input.b.x % 32u)), ~min(0u, u_input.b.x), -119f);
}

