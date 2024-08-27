struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(10021u, 4294967295u);

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: array<Struct_4, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global2 = array<Struct_4, 32>();
    global2 = array<Struct_4, 32>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(489f)) - _wgslsmith_f_op_f32(-1022f - 875f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -426f)))), Struct_1(min(firstTrailingBit(~1i), ~select(1i, 2147483647i, arg_0))), Struct_1(1i), vec4<u32>(u_input.a.x, max(~(~global0.x), 31870u), ~global0.x, ~_wgslsmith_clamp_u32(min(global0.x, global0.x), u_input.a.x, _wgslsmith_div_u32(global0.x, 0u))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, ~(~(~firstTrailingBit(global0.x)))), 32u)];
    return vec3<bool>(arg_0, true, any(select(select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, var_1.b), var_1.b), vec3<bool>(var_1.b, var_1.b, true), !var_1.b), select(vec3<bool>(false, true, false), select(vec3<bool>(arg_0, var_1.b, true), vec3<bool>(false, false, true), vec3<bool>(arg_0, var_1.b, false)), false), select(vec3<bool>(var_1.b, arg_0, true), select(vec3<bool>(false, var_1.b, arg_0), vec3<bool>(false, false, false), vec3<bool>(true, var_1.b, false)), vec3<bool>(true, true, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1250f * -342f) - 1000f)))), _wgslsmith_f_op_f32(trunc(-2639f)));
    let var_1 = firstLeadingBit(vec3<u32>(21681u, 1u, 23543u) | vec3<u32>(~global0.x, 1u, countOneBits(82751u))) & u_input.a.yww;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(4294967295u, var_1.x, false), ~(~(~3212u)), firstTrailingBit(0u), ~4294967295u), u_input.a);
    var var_3 = true | any(arg_0.zz);
    var_3 = all(func_3(true));
    return true;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<vec3<f32>, 15>();
    var var_0 = global0.x;
    var var_1 = global1[_wgslsmith_index_u32(0u, 15u)];
    let var_2 = select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(false, true), true), vec2<bool>(335f >= _wgslsmith_f_op_f32(var_1.x * 546f), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))), !(abs(u_input.a.x) != firstTrailingBit(global0.x))), !vec2<bool>(all(vec2<bool>(true, true)), func_2(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), Struct_1(arg_0.x))), true);
    let var_3 = global2[_wgslsmith_index_u32(~38837u, 32u)];
    return Struct_1(i32(-1i) * -2147483647i);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-615f, -836f)), 1684f), -1000f)), func_1(vec3<i32>(~countOneBits(arg_2.a), -7821i, -1i)), Struct_1(countOneBits(-6907i)), _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_1.x >> (0u % 32u), select(u_input.a.x, arg_1.x, arg_0.x) >> ((arg_1.x & 99215u) % 32u), ~(u_input.a.x ^ global0.x), ~1u), vec4<u32>(21782u, _wgslsmith_dot_vec3_u32(vec3<u32>(27254u, 5392u, u_input.a.x), u_input.a.xwy), ~u_input.a.x | ~0u, 1u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1143f, var_0.a.x), vec2<f32>(var_0.a.x, var_0.a.x)))), Struct_1(countOneBits(var_0.b.a)), func_1(reverseBits(firstTrailingBit(-vec3<i32>(2147483647i, var_0.c.a, arg_2.a)))), var_0.d);
    global1 = array<vec3<f32>, 15>();
    global2 = array<Struct_4, 32>();
    var var_2 = Struct_3(_wgslsmith_clamp_u32(var_0.d.x, _wgslsmith_dot_vec4_u32(var_0.d, select(firstLeadingBit(vec4<u32>(u_input.a.x, arg_1.x, arg_1.x, global0.x)), u_input.a, arg_0.x)), 4294967295u), vec3<u32>(var_1.d.x, 4294967295u, _wgslsmith_add_u32(1u, u_input.a.x) | global0.x) ^ select(_wgslsmith_sub_vec3_u32(var_0.d.yzw | var_1.d.wxy, vec3<u32>(u_input.a.x, 0u, 4294967295u)), max(~u_input.a.wwz, select(u_input.a.xxy, u_input.a.zzz, false)), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, global0.x), var_0.d.wx, vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(38821u, arg_1.x), vec2<u32>(0u, var_0.d.x))))), _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-568f, 150f)) + _wgslsmith_f_op_f32(1335f * -1158f)), 811f)))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 32>();
    var var_0 = Struct_3(reverseBits(~1u), vec3<u32>(~abs(31944u), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 67446u & global0.x), ~_wgslsmith_add_u32(global0.x, 2758u)), 4294967295u), vec2<u32>(25818u, 0u >> (((global0.x >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1270f, -2001f), _wgslsmith_f_op_f32(1319f * 884f), true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -223f)) * _wgslsmith_f_op_f32(f32(-1f) * -480f))));
    global2 = array<Struct_4, 32>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, 1053f, var_0.d) * vec4<f32>(-1000f, var_0.d, var_0.d, 306f)), _wgslsmith_div_vec4_f32(vec4<f32>(-525f, var_0.d, 754f, var_0.d), vec4<f32>(var_0.d, 699f, var_0.d, var_0.d)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, 405f, 625f, -1000f) * vec4<f32>(var_0.d, var_0.d, var_0.d, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-970f, var_0.d, var_0.d, 1776f) - vec4<f32>(var_0.d, var_0.d, -1591f, 545f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-424f, var_0.d), _wgslsmith_f_op_f32(var_0.d + -445f), _wgslsmith_f_op_f32(1303f + 1307f), _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(535f, 160f, var_0.d, var_0.d), vec4<f32>(var_0.d, 476f, var_0.d, 496f))), any(vec2<bool>(true, false))))));
    global2 = array<Struct_4, 32>();
    global0 = u_input.a.xz;
    global1 = array<vec3<f32>, 15>();
    let var_2 = 1469f;
    var var_3 = func_4(!vec4<bool>(true, select(true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(false, select(true, true, false), true)), u_input.a.wy, func_1(~select(vec3<i32>(-1i, -11325i, -7775i), vec3<i32>(2147483647i, 429i, -1i), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(select(2147483647i, var_3.a, false), -2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-18586i, -25515i, 0i, 2147483647i)), vec4<i32>(-6730i, var_3.a, 6930i, var_3.a) >> (vec4<u32>(618u, 28638u, 0u, var_0.b.x) % vec4<u32>(32u)))), -12138i), ~_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.b.x, u_input.a.x, 1u, 26893u)), ~(~vec4<u32>(0u, 0u, 0u, global0.x))) % 32u));
}

