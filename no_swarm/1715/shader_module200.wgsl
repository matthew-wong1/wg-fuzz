struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, false, true, false, false, false, true, true, true, true, true, true, true);

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<bool>(false, false), false, vec4<u32>(4294967295u, 45207u, 86061u, 0u), Struct_1(false, vec4<u32>(12912u, 0u, 51418u, 35701u), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true), vec3<u32>(57565u, 0u, 4877u))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(Struct_1(!select(all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, global0[_wgslsmith_index_u32(4294967295u, 15u)])), true, any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(30358u, 1u)), ~529u, 4294967295u, 35519u), select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(18745u, 15u)], global0[_wgslsmith_index_u32(23559u, 15u)])), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(49246u, 15u)]), vec3<bool>(true, true, true), false), true || all(vec2<bool>(global0[_wgslsmith_index_u32(57946u, 15u)], false))), vec4<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(69690u, 15u)], true, global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), false)), !global0[_wgslsmith_index_u32(~90048u, 15u)], !any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 15u)], true)), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 64945u, 4294967295u), vec3<u32>(73785u, 0u, 77831u), ~vec3<u32>(0u, 86416u, 1u)) | ~(~vec3<u32>(0u, 10936u, 107587u))));
    global2 = array<Struct_2, 1>();
    global0 = array<bool, 15>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(f32(-1f) * -377f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-442f, 1931f) - _wgslsmith_f_op_f32(-677f - 1727f)), _wgslsmith_f_op_f32(f32(-1f) * -608f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-509f, var_1.x)) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1193f)))) - vec2<f32>(282f, var_1.x)));
    return abs(min(var_0.a.e.x, 20202u ^ var_0.a.b.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(func_3(), 15u)], ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 1u, 6207u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), select(!select(vec3<bool>(false, false, true), !vec3<bool>(false, arg_0.x, true), arg_1 == 561f), select(select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 15u)]), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 15u)]), !arg_0.x), select(!vec3<bool>(global0[_wgslsmith_index_u32(17966u, 15u)], arg_0.x, arg_0.x), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)], true), false), all(vec2<bool>(global0[_wgslsmith_index_u32(24002u, 15u)], arg_0.x))), vec3<bool>(false, global0[_wgslsmith_index_u32(min(min(1u, 1u), min(48478u, 0u)), 15u)], _wgslsmith_f_op_f32(ceil(arg_1)) > arg_1)), vec4<bool>(arg_0.x, !any(!vec4<bool>(arg_0.x, false, arg_0.x, global0[_wgslsmith_index_u32(0u, 15u)])), false, true), vec3<u32>(abs(52641u), 0u, 1u));
    var var_1 = global2[_wgslsmith_index_u32(max(var_0.b.x, var_0.b.x), 1u)];
    let var_2 = func_3();
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -510f, arg_1, -1389f), vec4<f32>(arg_1, -672f, arg_1, -288f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, 1360f, -742f, arg_1))), vec4<bool>(!var_1.b, !var_1.b, arg_1 == arg_1, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_div_f32(-366f, -469f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))) * 948f), -694f));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1632f, var_3.x, false))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - var_3.x))), 1220f)), arg_1, _wgslsmith_f_op_f32(var_3.x - arg_1), _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(min(308f, 289f))))))));
    return -545f;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_2, 1>();
    let var_0 = 40977u;
    let var_1 = arg_0.d.a;
    var var_2 = Struct_4(arg_0.d, u_input.c, (-1i ^ ~u_input.a) | u_input.b);
    let var_3 = 1u;
    return var_2.a;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = Struct_3(func_4(global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1281f, 146f), vec3<f32>(arg_0, arg_0, 1000f), vec3<bool>(false, true, global0[_wgslsmith_index_u32(60244u, 15u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2121f), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, global0[_wgslsmith_index_u32(1227u, 15u)]), arg_0)), 819f), any(vec2<bool>(true, true)))), !(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), true))));
    let var_1 = ~abs(vec2<u32>(select(var_0.a.e.x, _wgslsmith_sub_u32(21320u, 1u), var_0.a.a), _wgslsmith_dot_vec2_u32(~var_0.a.b.wz, ~var_0.a.b.yy)));
    var var_2 = min(~(~abs(var_0.a.b)) | _wgslsmith_div_vec4_u32(select(~vec4<u32>(32668u, 4294967295u, 22475u, 109140u), func_4(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.e.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), global0[_wgslsmith_index_u32(var_1.x, 15u)], var_0.a.b, var_0.a), vec3<f32>(arg_0, arg_0, arg_0), vec2<bool>(false, var_0.a.c.x)).b, vec4<bool>(var_0.a.a, false, global0[_wgslsmith_index_u32(1u, 15u)], false)), select(vec4<u32>(var_0.a.e.x, var_0.a.e.x, var_0.a.e.x, 38856u), vec4<u32>(var_1.x, 28787u, 74802u, 87833u), true)), _wgslsmith_clamp_vec4_u32(var_0.a.b, _wgslsmith_add_vec4_u32(~var_0.a.b, min(~var_0.a.b, vec4<u32>(0u, var_1.x, 41312u, 0u))), vec4<u32>(~_wgslsmith_mod_u32(71723u, var_0.a.e.x), max(var_1.x, _wgslsmith_add_u32(24883u, 1u)), ~_wgslsmith_div_u32(var_1.x, 1u), _wgslsmith_sub_u32(0u, var_1.x))));
    var_0 = Struct_3(func_4(Struct_2(var_0.a.d.wx, all(!var_0.a.c.yz), vec4<u32>(_wgslsmith_mod_u32(96342u, var_0.a.e.x), var_2.x, var_1.x, var_1.x), var_0.a), vec3<f32>(_wgslsmith_f_op_f32(-2143f * _wgslsmith_div_f32(arg_0, -907f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1484f, arg_0)), arg_0), var_0.a.d.ww));
    var var_3 = false;
    return firstLeadingBit(-(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(2147483647i << (_wgslsmith_div_u32(select(45997u, 1u, global0[_wgslsmith_index_u32(0u, 15u)]), countOneBits(4294967295u)) % 32u), u_input.c) | _wgslsmith_add_i32(0i, func_1(_wgslsmith_f_op_f32(floor(304f))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(abs(~3136u)), 5u)];
    var var_2 = _wgslsmith_sub_vec2_u32(var_1.d.e.xy ^ ~(~var_1.d.e.yz), vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.d.b.x, 40625u, 1u, var_1.d.b.x)), reverseBits(firstLeadingBit(var_1.c))), ~(~(~1u))));
    let var_3 = func_4(Struct_2(!(!select(var_1.a, var_1.a, var_1.a)), !all(!vec2<bool>(var_1.a.x, true)), select(var_1.c, ~vec4<u32>(70773u, var_1.d.b.x, 49358u, 33280u), !(!var_1.d.d)), var_1.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1237f + 2068f), -804f, true)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-324f)), 1f))), 927f, 1f), vec2<bool>((true || global0[_wgslsmith_index_u32(~var_2.x, 15u)]) | func_4(Struct_2(var_1.a, false, vec4<u32>(8582u, 58533u, 2417u, var_2.x), Struct_1(global0[_wgslsmith_index_u32(var_2.x, 15u)], var_1.c, var_1.d.d.yyw, vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(var_1.d.e.x, 15u)]), vec3<u32>(var_1.d.e.x, 0u, var_1.d.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1963f, 1018f, -1622f) - vec3<f32>(1063f, -852f, 329f)), var_1.d.d.yw).a, global0[_wgslsmith_index_u32(func_3(), 15u)])).c;
    var var_4 = Struct_2(var_3.xz, true, _wgslsmith_div_vec4_u32(vec4<u32>(~countOneBits(56694u), var_2.x, 17188u, var_2.x | ~var_2.x), ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.d.b.wx, var_1.d.e.xx), var_2.x >> (var_2.x % 32u), 0u, 41111u)), Struct_1(!var_3.x, vec4<u32>(var_2.x, 23465u, var_2.x, var_2.x ^ var_2.x), !var_3, var_1.d.d, vec3<u32>(var_2.x, 0u, var_2.x)));
    global0 = array<bool, 15>();
    global1 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.e.yz, min(~(-var_0), 1i) ^ ~u_input.c, var_1.c.yyz);
}

