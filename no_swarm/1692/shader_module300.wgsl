struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: vec3<i32>;

var<private> global2: vec4<u32> = vec4<u32>(45082u, 1u, 487u, 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    global0 = array<bool, 25>();
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true), 216f, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x | 39482u, 1u, global2.x >> (4294967295u % 32u), 4294967295u), vec4<u32>(_wgslsmith_mod_u32(28351u, arg_3.x), 1u << (0u % 32u), abs(77594u), select(58692u >> (0u % 32u), 22279u, any(vec2<bool>(arg_1.a, true))))), !vec2<bool>(false, !arg_1.a), select(vec4<bool>(arg_1.a, false, true, !arg_1.a), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, all(vec2<bool>(true, global0[_wgslsmith_index_u32(global2.x, 25u)])), !global0[_wgslsmith_index_u32(global2.x, 25u)]), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_1.a, global0[_wgslsmith_index_u32(1u, 25u)], false), vec4<bool>(arg_1.a, false, arg_1.a, true)), !vec4<bool>(global0[_wgslsmith_index_u32(116192u, 25u)], true, arg_1.a, global0[_wgslsmith_index_u32(global2.x, 25u)]), vec4<bool>(false, arg_1.a, arg_1.a, true)), true), !(!vec4<bool>(arg_1.a, false, false, true))), Struct_1(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)])), vec2<bool>(global0[_wgslsmith_index_u32(23200u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), arg_1.a & false), arg_0, _wgslsmith_clamp_u32(global2.x, _wgslsmith_div_u32(4294967295u, 53534u) ^ reverseBits(global2.x), ~15903u)));
    global2 = _wgslsmith_clamp_vec4_u32(abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(15118u, 4294967295u, 4294967295u, 1591u), vec4<u32>(10973u, 4294967295u, 46392u, global2.x)))), ~(~vec4<u32>(1453u, ~global2.x, var_0.e.c >> (4294967295u % 32u), global2.x)), firstTrailingBit(~(~(~vec4<u32>(81955u, 7702u, arg_3.x, 20240u)))));
    global0 = array<bool, 25>();
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0), false, firstLeadingBit(-(_wgslsmith_div_vec4_i32(vec4<i32>(-37017i, global1.x, -2147483647i, 0i), vec4<i32>(2147483647i, global1.x, 2937i, -44824i)) & vec4<i32>(u_input.a, u_input.a, 18220i, -53760i))), firstTrailingBit(firstTrailingBit(vec4<u32>(global2.x, 4294967295u, 55915u, arg_3.x)) | abs(~vec4<u32>(arg_3.x, 0u, var_0.e.c, 0u))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -840f))) * arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(640f))))), arg_0);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.a.x, Struct_3(true, vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_0.a.x)), arg_1.b.x, abs(vec2<u32>(arg_0.d.x, arg_3)))) + arg_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))))) + arg_1.b.wx);
    global2 = vec4<u32>(arg_3, _wgslsmith_add_u32(_wgslsmith_mult_u32(reverseBits(47997u), ~_wgslsmith_mod_u32(68846u, global2.x)), 14720u), _wgslsmith_sub_u32(~(~global2.x), abs(893u << (~arg_3 % 32u))), ~arg_3);
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(!arg_1.a, arg_1.a), !(!vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], false)), global0[_wgslsmith_index_u32(19235u, 25u)]), _wgslsmith_f_op_f32(-var_0.x), arg_3), select(~reverseBits(_wgslsmith_mod_u32(global2.x, 0u)), arg_3, all(vec2<bool>(!arg_0.b, true))), vec2<bool>(any(select(vec2<bool>(arg_2, arg_1.a), vec2<bool>(true, arg_2), vec2<bool>(false, false))), _wgslsmith_mod_u32(~global2.x, max(arg_3, global2.x)) != max(~arg_3, 34542u)), select(vec4<bool>((true && arg_2) && all(vec3<bool>(true, global0[_wgslsmith_index_u32(32185u, 25u)], true)), arg_2 & (arg_0.c.x >= -1i), 0u != ~global2.x, all(vec2<bool>(false, true))), !select(select(vec4<bool>(false, arg_2, false, true), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(true, arg_1.a, arg_2, false)), !vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(global2.x, 25u)]), false), !select(select(vec4<bool>(arg_1.a, arg_2, arg_2, true), vec4<bool>(arg_0.b, arg_1.a, true, true), global0[_wgslsmith_index_u32(arg_3, 25u)]), vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(arg_3, 25u)], arg_0.b), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.a, arg_1.a, arg_1.a))), Struct_1(!vec2<bool>(any(vec2<bool>(arg_1.a, false)), arg_0.b), -143f, 18292u));
    let var_2 = global2.x;
    global0 = array<bool, 25>();
    return !(!select(vec4<bool>(true, false, true, arg_1.a), vec4<bool>(true, all(var_1.d.zxw), false, arg_0.b), select(select(vec4<bool>(false, false, false, true), var_1.d, var_1.d), var_1.d, all(var_1.d))));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = !(!(true & (!global0[_wgslsmith_index_u32(80864u, 25u)] | true)));
    let var_1 = select(select(select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], true, false), vec4<bool>(false, true, false, true), true), func_2(Struct_4(vec3<f32>(-1430f, 520f, -1172f), false, vec4<i32>(28841i, 2147483647i, -3060i, 0i), vec4<u32>(global2.x, global2.x, 1u, global2.x)), Struct_3(global0[_wgslsmith_index_u32(112194u, 25u)], vec4<f32>(-1095f, 618f, -296f, 533f)), global0[_wgslsmith_index_u32(13969u, 25u)], global2.x), arg_0.x < global1.x), vec4<bool>(!global0[_wgslsmith_index_u32(25508u, 25u)], true, !global0[_wgslsmith_index_u32(62792u, 25u)], true), global0[_wgslsmith_index_u32(1u, 25u)]), select(func_2(Struct_4(vec3<f32>(-1396f, 459f, -1136f), global0[_wgslsmith_index_u32(26395u, 25u)], vec4<i32>(-2147483647i, global1.x, 22600i, -6344i), vec4<u32>(1u, global2.x, global2.x, global2.x)), Struct_3(false, vec4<f32>(-1805f, -424f, 1872f, 1000f)), true, 4294967295u), func_2(Struct_4(vec3<f32>(-747f, 1000f, -395f), true, vec4<i32>(arg_0.x, arg_0.x, u_input.a, u_input.a), vec4<u32>(global2.x, 1u, global2.x, global2.x)), Struct_3(true, vec4<f32>(-620f, -297f, -1000f, -1131f)), false || global0[_wgslsmith_index_u32(15032u, 25u)], 4294967295u), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], true))), vec4<bool>(func_2(Struct_4(vec3<f32>(-793f, 934f, 279f), true, vec4<i32>(arg_0.x, global1.x, -578i, arg_0.x), vec4<u32>(global2.x, 28650u, global2.x, 0u)), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 25u)], vec4<f32>(133f, -331f, 811f, 220f)), !global0[_wgslsmith_index_u32(4294967295u, 25u)], global2.x & 1u).x, !global0[_wgslsmith_index_u32(1u, 25u)], true, select(true, global0[_wgslsmith_index_u32(global2.x >> (global2.x % 32u), 25u)], any(vec3<bool>(true, true, true))))), vec4<bool>(((global2.x < global2.x) & true) && false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.x), global2.zw) ^ ~78878u, 1u, global2.x), 25u)], _wgslsmith_f_op_f32(select(300f, _wgslsmith_f_op_f32(1000f * -1674f), global0[_wgslsmith_index_u32(global2.x << (global2.x % 32u), 25u)])) > _wgslsmith_f_op_f32(-1388f + -956f), global0[_wgslsmith_index_u32(~global2.x, 25u)]), vec4<bool>(true, all(vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 25u)], all(vec2<bool>(global0[_wgslsmith_index_u32(57559u, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)])))), global0[_wgslsmith_index_u32(~31401u, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~(~global2.x)), 25u)]));
    global0 = array<bool, 25>();
    let var_2 = select(vec3<bool>(false, !any(!var_1), true), !var_1.wyw, !vec3<bool>(~38794u > _wgslsmith_div_u32(0u, global2.x), false, !var_1.x));
    var_0 = false;
    return -317f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(22546i, 1i, 25117i);
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)), _wgslsmith_f_op_f32(step(618f, _wgslsmith_f_op_f32(func_1(vec2<i32>(global1.x, 10321i))))), 1f))), global0[_wgslsmith_index_u32(49674u, 25u)], vec4<i32>(-1i, -_wgslsmith_mod_i32(reverseBits(44408i), global1.x ^ global1.x), u_input.a, u_input.a), ~vec4<u32>(global2.x, global2.x >> (global2.x % 32u), 1u, 1u) ^ ~vec4<u32>(global2.x, ~0u, countOneBits(global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 1u, 4294967295u), vec4<u32>(global2.x, global2.x, global2.x, global2.x))));
    let var_1 = select(vec3<bool>(var_0.b, any(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.d.x, 25u)])), all(vec2<bool>(true, true)) != var_0.b), !select(func_2(Struct_4(vec3<f32>(1968f, -919f, 187f), global0[_wgslsmith_index_u32(var_0.d.x, 25u)], vec4<i32>(-2147483647i, -1i, u_input.a, -28208i), vec4<u32>(global2.x, 132953u, global2.x, var_0.d.x)), Struct_3(global0[_wgslsmith_index_u32(global2.x, 25u)], vec4<f32>(var_0.a.x, 991f, var_0.a.x, var_0.a.x)), any(vec2<bool>(true, var_0.b)), ~global2.x).ywz, vec3<bool>(false, !global0[_wgslsmith_index_u32(22562u, 25u)], select(var_0.b, var_0.b, global0[_wgslsmith_index_u32(global2.x, 25u)])), all(!vec4<bool>(global0[_wgslsmith_index_u32(2663u, 25u)], true, global0[_wgslsmith_index_u32(global2.x, 25u)], false))), true);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1052f, -1362f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1207f + 762f)))), _wgslsmith_f_op_f32(-591f - -1678f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(sign(var_0.a.x))))), 1077f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(1000f - 688f), _wgslsmith_div_f32(var_0.a.x, -1630f)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2045f), _wgslsmith_f_op_f32(var_0.a.x * 683f), -487f), !any(var_1.yx)))));
    let var_3 = any(select(!func_2(Struct_4(var_2.wxw, false, vec4<i32>(0i, u_input.a, -1i, var_0.c.x), vec4<u32>(var_0.d.x, 55571u, global2.x, 64489u)), Struct_3(var_0.b, vec4<f32>(var_2.x, -701f, 744f, var_0.a.x)), false, 44108u), !vec4<bool>(var_0.b, false, global0[_wgslsmith_index_u32(4294967295u, 25u)], false), vec4<bool>(!var_0.b, select(var_1.x, global0[_wgslsmith_index_u32(var_0.d.x, 25u)], true), true, var_1.x))) || any(!(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)]), vec4<bool>(var_0.b, false, false, var_1.x), false)));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(-438f, var_0.a.x, var_2.x, 1029f))))));
    let var_5 = ~(~var_0.d.yw);
    var var_6 = Struct_3(true, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(reverseBits(~(-60410i)), -u_input.a, firstLeadingBit(-2147483647i), ~1i), var_0.c.xzy, global2.x, var_0.a.x, var_0.d << (vec4<u32>(~1u, 4294967295u, ~_wgslsmith_clamp_u32(global2.x, 4294967295u, 4294967295u), ~(~var_5.x)) % vec4<u32>(32u)));
}

