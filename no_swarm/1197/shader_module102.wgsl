struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(i32(-2147483648), 23968i), vec2<i32>(-54094i, -38588i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 4183i), vec2<i32>(8966i, 10174i), vec2<i32>(-13635i, 1i), vec2<i32>(-38578i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 46031i), vec2<i32>(95052i, 0i), vec2<i32>(8795i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-79i, 0i), vec2<i32>(34170i, 0i), vec2<i32>(1i, 1i), vec2<i32>(1i, 55297i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -40214i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-5623i, -1i), vec2<i32>(0i, -14953i), vec2<i32>(26665i, -33196i), vec2<i32>(5419i, -5914i), vec2<i32>(-1i, -1i), vec2<i32>(8083i, i32(-2147483648)));

var<private> global1: array<u32, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global1 = array<u32, 22>();
    return -20562i;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = ~(~func_3());
    var var_1 = ~4294967295u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1296f, _wgslsmith_f_op_f32(f32(-1f) * -574f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f - -187f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(370f * 1762f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1120f, -764f) + _wgslsmith_div_f32(-154f, -1305f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(429f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1112f - -1228f)))))));
    var var_3 = any(!select(vec3<bool>(any(vec2<bool>(arg_1, false)), all(vec3<bool>(true, arg_1, true)), true), !(!vec3<bool>(true, arg_1, false)), false));
    let var_4 = vec3<bool>(true, arg_1, arg_1);
    return var_4.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(-select(vec3<i32>(u_input.c, -38574i, 2147483647i), vec3<i32>(-1i, u_input.c, 4887i), vec3<bool>(true, arg_0, arg_3)) ^ firstLeadingBit(vec3<i32>(0i, 2147483647i, 10930i)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_2, arg_1) + vec3<f32>(arg_1, arg_1, arg_2))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(564f, 788f, arg_1)))))), Struct_1(countOneBits(~vec3<i32>(2147483647i, -2147483647i, 32797i)), true, vec3<f32>(-1455f, 440f, arg_2)));
    global0 = array<vec2<i32>, 26>();
    var var_1 = ~vec4<i32>(var_0.b.a.x, ~(2147483647i & -var_0.a.a.x), 0i, u_input.a);
    var var_2 = ~(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)])), firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(24084u, 22u)], global1[_wgslsmith_index_u32(45180u, 22u)]))), max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 22u)]), u_input.b.xx), u_input.b.zz)), 22u)]);
    global0 = array<vec2<i32>, 26>();
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_1.x, u_input.c, 0i)) | firstLeadingBit(var_0.a.a), select(vec3<i32>(var_1.x, var_1.x, var_0.b.a.x), var_0.b.a, vec3<bool>(true, var_0.a.b, false))), (abs(23687u) & global1[_wgslsmith_index_u32(0u, 22u)]) <= (~47872u >> (u_input.b.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(min(-1169f, _wgslsmith_div_f32(var_0.b.c.x, arg_2))), 701f, _wgslsmith_f_op_f32(trunc(-524f)))), _wgslsmith_sub_i32(-abs(var_1.x), var_1.x), Struct_1(_wgslsmith_clamp_vec3_i32(min(_wgslsmith_mod_vec3_i32(var_0.a.a, vec3<i32>(var_1.x, 1i, u_input.c)), _wgslsmith_mod_vec3_i32(var_1.xzz, var_0.a.a)), select(var_1.xzy << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 3963u, global1[_wgslsmith_index_u32(39679u, 22u)]) % vec3<u32>(32u)), vec3<i32>(1i, u_input.a, u_input.a) | var_0.b.a, !arg_0), select(vec3<i32>(u_input.c, var_0.a.a.x, 2147483647i), var_1.yyz, true)), all(select(vec4<bool>(arg_0, arg_3, var_0.b.b, false), vec4<bool>(true, var_0.b.b, false, arg_0), vec4<bool>(arg_3, var_0.a.b, false, true))) || any(vec3<bool>(var_0.a.b, var_0.a.b, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b.c, var_0.b.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.b.c)) * vec3<f32>(-405f, 2128f, var_0.a.c.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2) -> i32 {
    global1 = array<u32, 22>();
    let var_0 = ~(~(~(-max(arg_1, -31064i))));
    let var_1 = Struct_1(arg_2.c.a, arg_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-530f)) - arg_2.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.c.c.x + arg_2.c.c.x)))), arg_2.c.c.x));
    let var_2 = 34247u;
    var var_3 = Struct_3(func_4(arg_2.c.b, _wgslsmith_f_op_f32(round(664f)), _wgslsmith_f_op_f32(var_1.c.x - arg_2.c.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b, 0i), var_1.a.xx ^ global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 22u)], 26u)]) <= var_1.a.x).c, func_4(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1686f, 1000f, false)) - var_1.c.x)), 204f, select(true, arg_0.a.x, !select(arg_0.a.x, false, false))).a);
    return _wgslsmith_mod_i32((-2147483647i << (~(u_input.b.x ^ 0u) % 32u)) >> (~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], var_2, ~37220u) % 32u), 1i);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_sub_i32(22258i, u_input.c & -u_input.c) ^ ~func_5(Struct_4(vec4<bool>(false, arg_0.x, arg_0.x, true)), _wgslsmith_mult_i32(abs(26560i), select(u_input.c, -24118i, arg_0.x)), func_4(func_2(6116u, arg_0.x), _wgslsmith_f_op_f32(1351f - -367f), _wgslsmith_f_op_f32(f32(-1f) * -1319f), !arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(2250f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f)))));
    let var_2 = !(arg_0.x != all(!arg_0));
    let var_3 = ~firstTrailingBit(vec4<u32>(firstTrailingBit(19768u), global1[_wgslsmith_index_u32(firstLeadingBit(1u) & _wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(29416u, 22u)]), 22u)], 72202u, _wgslsmith_sub_u32(u_input.b.x << (global1[_wgslsmith_index_u32(4294967295u, 22u)] % 32u), 1u)));
    let var_4 = Struct_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1639f * 195f), _wgslsmith_f_op_f32(var_1 * var_1)))))));
    return 1954f;
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<i32>(9137i, -countOneBits(_wgslsmith_mult_i32(-1i, u_input.a)) << (~min(~u_input.b.x, ~0u) % 32u));
    global0 = array<vec2<i32>, 26>();
    var var_1 = vec4<u32>(~u_input.b.x, 4294967295u, 0u, u_input.b.x);
    global1 = array<u32, 22>();
    var_1 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 22u)] ^ var_1.x, ~global1[_wgslsmith_index_u32(45411u, 22u)], global1[_wgslsmith_index_u32(~22873u, 22u)]), vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), firstLeadingBit(0u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(6251u, 22u)], global1[_wgslsmith_index_u32(28920u, 22u)], u_input.b.x), countOneBits(22160u))));
    return Struct_2(Struct_1(max(vec3<i32>(max(-2087i, var_0.x), -1i, func_5(Struct_4(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), 35917i, Struct_2(Struct_1(vec3<i32>(u_input.a, 20779i, u_input.c), arg_2.a.x, vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), var_0.x, Struct_1(vec3<i32>(-1010i, var_0.x, 2147483647i), true, arg_1)))), vec3<i32>(var_0.x, abs(27337i), 20337i)), arg_2.a.x, arg_1), 2147483647i, Struct_1(vec3<i32>(abs(_wgslsmith_div_i32(-15436i, 8405i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-46848i, arg_0), arg_0), -37781i), arg_2.a.x, func_4(false, 788f, _wgslsmith_f_op_f32(-arg_1.x), true).a.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 22>();
    var var_0 = func_6(-8206i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, false)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(122f)), _wgslsmith_f_op_f32(ceil(1058f))))), 165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1160f)))), Struct_4(vec4<bool>(true, true, true, true)), -2147483647i >> (min(select(_wgslsmith_add_u32(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)]), 43714u, all(vec2<bool>(true, false))), u_input.b.x) % 32u));
    var var_1 = vec4<f32>(-436f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(!vec4<bool>(var_0.c.b, true, var_0.a.b, true))), _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 728f);
    var var_2 = Struct_4(select(vec4<bool>(!var_0.a.b, false, func_4(var_0.a.b && var_0.c.b, _wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(-var_0.a.c.x), true).c.b, true), !vec4<bool>(true, true != var_0.c.b, var_1.x > var_0.c.c.x, !var_0.c.b), !(!select(vec4<bool>(var_0.a.b, false, true, false), vec4<bool>(true, true, true, var_0.c.b), vec4<bool>(false, true, var_0.a.b, true)))));
    var_0 = func_6(~func_4(true, -948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) - -1035f), all(!var_2.a.zyx)).a.a.x, var_0.a.c, Struct_4(select(var_2.a, vec4<bool>(any(var_2.a.wzy), true, !var_0.c.b, !var_0.a.b), vec4<bool>(!var_2.a.x, false, any(var_2.a.yx), any(vec2<bool>(var_0.c.b, false))))), _wgslsmith_clamp_i32(i32(-1i) * -var_0.b, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -2147483647i, u_input.a), _wgslsmith_add_vec3_i32(var_0.a.a, vec3<i32>(-16630i, -40839i, var_0.a.a.x))), u_input.a));
    var var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(-351f);
}

