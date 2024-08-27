struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(2147483647i, Struct_1(0u, vec4<u32>(1u, 4294967295u, 19473u, 33263u)), false, 9134i)), Struct_3(Struct_2(-3376i, Struct_1(0u, vec4<u32>(0u, 86434u, 1u, 14041u)), false, 1i)), Struct_3(Struct_2(2147483647i, Struct_1(46967u, vec4<u32>(4294967295u, 29326u, 0u, 131342u)), false, 1i)), Struct_3(Struct_2(-11643i, Struct_1(0u, vec4<u32>(38863u, 1u, 0u, 4294967295u)), true, -1i)), Struct_3(Struct_2(-11547i, Struct_1(4294967295u, vec4<u32>(52057u, 1u, 86999u, 1u)), false, 14396i)), Struct_3(Struct_2(-1i, Struct_1(11681u, vec4<u32>(1u, 53369u, 45150u, 4294967295u)), true, 21847i)), Struct_3(Struct_2(-68026i, Struct_1(45463u, vec4<u32>(4294967295u, 0u, 105349u, 1u)), true, 7630i)), Struct_3(Struct_2(-25125i, Struct_1(1u, vec4<u32>(0u, 0u, 1u, 0u)), true, -7270i)), Struct_3(Struct_2(22678i, Struct_1(1u, vec4<u32>(9968u, 0u, 0u, 4294967295u)), false, -4984i)), Struct_3(Struct_2(1i, Struct_1(4294967295u, vec4<u32>(0u, 90019u, 4250u, 14669u)), true, 18242i)), Struct_3(Struct_2(14799i, Struct_1(12663u, vec4<u32>(9261u, 23611u, 4294967295u, 18219u)), true, 2147483647i)), Struct_3(Struct_2(-50516i, Struct_1(42079u, vec4<u32>(4294967295u, 30030u, 36392u, 23350u)), false, 12274i)), Struct_3(Struct_2(2147483647i, Struct_1(1u, vec4<u32>(4294967295u, 10622u, 1u, 0u)), false, -10735i)), Struct_3(Struct_2(-26401i, Struct_1(80033u, vec4<u32>(37225u, 54339u, 0u, 0u)), false, 17509i)), Struct_3(Struct_2(1i, Struct_1(1u, vec4<u32>(1u, 4294967295u, 42127u, 19867u)), false, -11947i)), Struct_3(Struct_2(2147483647i, Struct_1(5844u, vec4<u32>(0u, 1u, 53490u, 2386u)), true, 2147483647i)), Struct_3(Struct_2(1i, Struct_1(4294967295u, vec4<u32>(0u, 33957u, 1u, 59195u)), false, 0i)), Struct_3(Struct_2(-44284i, Struct_1(1u, vec4<u32>(84041u, 0u, 4294967295u, 10405u)), false, -27335i)), Struct_3(Struct_2(-1i, Struct_1(4294967295u, vec4<u32>(6138u, 0u, 0u, 8556u)), true, -1i)), Struct_3(Struct_2(1i, Struct_1(0u, vec4<u32>(1u, 31072u, 1u, 80130u)), true, 2147483647i)), Struct_3(Struct_2(2147483647i, Struct_1(20852u, vec4<u32>(1u, 34993u, 30232u, 0u)), false, -5276i)), Struct_3(Struct_2(-1i, Struct_1(91828u, vec4<u32>(19198u, 1u, 0u, 0u)), true, i32(-2147483648))));

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(-26586i, Struct_1(4294967295u, vec4<u32>(32121u, 12914u, 11180u, 33216u)), true, -1i)), Struct_3(Struct_2(-1i, Struct_1(1u, vec4<u32>(4294967295u, 101263u, 1u, 95857u)), false, -46518i)), Struct_3(Struct_2(2147483647i, Struct_1(40477u, vec4<u32>(0u, 4294967295u, 22572u, 1u)), true, -1i)), Struct_3(Struct_2(-1i, Struct_1(4294967295u, vec4<u32>(55492u, 1u, 29321u, 28286u)), false, i32(-2147483648))), Struct_3(Struct_2(i32(-2147483648), Struct_1(1u, vec4<u32>(5428u, 30267u, 9107u, 4093u)), true, -6111i)), Struct_3(Struct_2(62154i, Struct_1(44374u, vec4<u32>(24492u, 2049u, 12982u, 1197u)), true, 65753i)), Struct_3(Struct_2(i32(-2147483648), Struct_1(17451u, vec4<u32>(12744u, 0u, 1u, 4294967295u)), false, 63705i)), Struct_3(Struct_2(-1i, Struct_1(19391u, vec4<u32>(4294967295u, 116662u, 1u, 4294967295u)), false, -7192i)), Struct_3(Struct_2(82702i, Struct_1(4294967295u, vec4<u32>(4294967295u, 1u, 26089u, 19473u)), true, 23222i)), Struct_3(Struct_2(-17068i, Struct_1(0u, vec4<u32>(82466u, 0u, 40535u, 59031u)), true, -24465i)), Struct_3(Struct_2(6557i, Struct_1(3933u, vec4<u32>(4294967295u, 51573u, 9572u, 0u)), false, 50557i)), Struct_3(Struct_2(-1876i, Struct_1(4294967295u, vec4<u32>(25243u, 86180u, 0u, 3439u)), true, 3009i)), Struct_3(Struct_2(-26594i, Struct_1(0u, vec4<u32>(1u, 96904u, 63562u, 14077u)), true, 0i)), Struct_3(Struct_2(-1i, Struct_1(0u, vec4<u32>(14319u, 32888u, 4294967295u, 66761u)), false, 0i)), Struct_3(Struct_2(i32(-2147483648), Struct_1(93829u, vec4<u32>(4294967295u, 1u, 14369u, 0u)), true, -52794i)), Struct_3(Struct_2(-39299i, Struct_1(0u, vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), false, i32(-2147483648))), Struct_3(Struct_2(1i, Struct_1(60391u, vec4<u32>(1u, 59766u, 4294967295u, 95869u)), false, -22436i)), Struct_3(Struct_2(1i, Struct_1(60519u, vec4<u32>(4294967295u, 0u, 0u, 53130u)), true, 8202i)), Struct_3(Struct_2(27104i, Struct_1(4294967295u, vec4<u32>(1u, 23983u, 4294967295u, 15767u)), false, 0i)), Struct_3(Struct_2(70069i, Struct_1(4294967295u, vec4<u32>(4294967295u, 1769u, 1u, 43443u)), false, 28187i)), Struct_3(Struct_2(-1i, Struct_1(4294967295u, vec4<u32>(75835u, 9521u, 124270u, 0u)), true, 32458i)), Struct_3(Struct_2(-18871i, Struct_1(0u, vec4<u32>(95342u, 1u, 1u, 1u)), false, 2147483647i)), Struct_3(Struct_2(0i, Struct_1(54224u, vec4<u32>(0u, 1u, 19243u, 49873u)), false, 2147483647i)), Struct_3(Struct_2(1i, Struct_1(1u, vec4<u32>(0u, 6349u, 1u, 1u)), true, 0i)), Struct_3(Struct_2(-15384i, Struct_1(1766u, vec4<u32>(0u, 26346u, 4294967295u, 0u)), false, 13198i)), Struct_3(Struct_2(-41949i, Struct_1(0u, vec4<u32>(1893u, 4294967295u, 29764u, 0u)), false, -11180i)), Struct_3(Struct_2(1i, Struct_1(1u, vec4<u32>(7216u, 33850u, 40596u, 0u)), false, 31176i)), Struct_3(Struct_2(39932i, Struct_1(4294967295u, vec4<u32>(4294967295u, 76866u, 1511u, 1u)), true, 4449i)), Struct_3(Struct_2(-3465i, Struct_1(30359u, vec4<u32>(0u, 4294967295u, 8503u, 286u)), false, i32(-2147483648))));

var<private> global2: vec2<u32> = vec2<u32>(0u, 89055u);

var<private> global3: array<Struct_3, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, _wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x))));
    var var_1 = _wgslsmith_div_vec3_u32(arg_2.b.a.b.b.xyy, ~arg_2.b.a.b.b.yxz >> (vec3<u32>(arg_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, u_input.e, arg_0, 32190u), vec4<u32>(23243u, 36090u, 27346u, u_input.a) << (vec4<u32>(57445u, arg_2.b.a.b.b.x, arg_0, global2.x) % vec4<u32>(32u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_2.b.a.b.a, global2.x, 117618u), _wgslsmith_div_u32(37246u, arg_2.d.a))) % vec3<u32>(32u)));
    let var_2 = Struct_2(arg_2.a.x, Struct_1(firstLeadingBit(min(46186u, var_1.x)) >> (~arg_0 % 32u), vec4<u32>(4294967295u, u_input.a, _wgslsmith_div_u32(~6642u, global2.x), var_1.x)), any(select(!select(vec4<bool>(false, arg_2.b.a.c, arg_2.b.a.c, arg_2.b.a.c), vec4<bool>(true, arg_2.b.a.c, arg_2.b.a.c, true), vec4<bool>(arg_2.b.a.c, arg_2.b.a.c, arg_2.b.a.c, false)), !vec4<bool>(arg_2.b.a.c, arg_2.b.a.c, arg_2.b.a.c, false), true)), 7116i);
    var var_3 = arg_2.b.a;
    global2 = countOneBits(~(~select(vec2<u32>(1u, 66602u), abs(vec2<u32>(56688u, 39672u)), 2147483647i != u_input.d.x)));
    return 1u;
}

fn func_2() -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_mult_u32(~firstLeadingBit(0u), countOneBits(func_3(u_input.e, vec4<i32>(-50277i, u_input.b.x, -2147483647i, -11294i), Struct_4(vec2<i32>(30883i, 1i), global1[_wgslsmith_index_u32(global2.x, 29u)], vec4<f32>(-165f, 896f, -987f, -523f), Struct_1(20784u, vec4<u32>(global2.x, 74094u, 61458u, global2.x)), vec2<f32>(1716f, -1253f)))))) & global2.x;
    global3 = array<Struct_3, 8>();
    global1 = array<Struct_3, 29>();
    return _wgslsmith_mult_u32(9308u, max(4294967295u, 0u << (~u_input.a % 32u))) >= _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(max(select(vec2<u32>(50664u, var_0), vec2<u32>(34560u, 4294967295u), true), vec2<u32>(u_input.a, var_0) | vec2<u32>(1u, var_0)), select(vec2<u32>(global2.x, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(52163u, global2.x)), true)), var_0);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> i32 {
    global3 = array<Struct_3, 8>();
    var var_0 = select(vec4<bool>(any(select(vec3<bool>(arg_3.c, arg_3.c, false), !vec3<bool>(arg_3.c, arg_0.b.a.c, arg_1.a.c), any(vec2<bool>(false, true)))), !arg_0.b.a.c, arg_1.a.c, func_2()), select(!select(!vec4<bool>(false, arg_1.a.c, false, false), !vec4<bool>(true, arg_1.a.c, true, arg_0.b.a.c), vec4<bool>(arg_1.a.c, false, arg_1.a.c, arg_0.b.a.c)), vec4<bool>(true, arg_0.c.x < 643f, any(vec2<bool>(arg_3.c, true)), !arg_3.c), select(!select(vec4<bool>(true, true, arg_3.c, arg_0.b.a.c), vec4<bool>(false, true, arg_3.c, arg_1.a.c), false), vec4<bool>(false, all(vec4<bool>(true, arg_0.b.a.c, arg_3.c, false)), arg_3.c, arg_3.c), vec4<bool>(true, arg_0.b.a.c, !arg_1.a.c, all(vec3<bool>(false, arg_1.a.c, false))))), vec4<bool>(!all(vec3<bool>(false, arg_1.a.c, arg_0.b.a.c)), select(true, arg_1.a.c, false), true, arg_0.b.a.c));
    let var_1 = Struct_2(1i, Struct_1(1u, ~(~_wgslsmith_clamp_vec4_u32(arg_0.d.b, vec4<u32>(1u, 16903u, arg_1.a.b.a, arg_2), arg_3.b.b))), any(!var_0.yww), 1i);
    global2 = countOneBits(~((min(arg_3.b.b.ww, arg_0.b.a.b.b.zx) | vec2<u32>(29182u, global2.x)) | _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.b.b.xz, vec2<u32>(41320u, arg_0.d.a)), var_1.b.b.yz)));
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, 713f, arg_0.c.x, 189f) + arg_0.c))));
    return arg_0.b.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-711f * 812f))), -1084f, _wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1074f)) + _wgslsmith_f_op_f32(ceil(-819f))))));
    var var_1 = u_input.a >= _wgslsmith_div_u32(0u, global2.x);
    var_1 = select((true || !all(vec3<bool>(true, false, false))) | true, any(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), false)), !(4294967295u == global2.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f - _wgslsmith_f_op_f32(f32(-1f) * -1125f))), _wgslsmith_f_op_f32(f32(-1f) * -320f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.xx)))))));
    let var_3 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(-max(vec3<i32>(func_1(Struct_4(vec2<i32>(var_3, -2147483647i), global3[_wgslsmith_index_u32(global2.x, 8u)], vec4<f32>(var_0.x, -402f, 290f, 762f), Struct_1(1u, vec4<u32>(0u, 29230u, 47994u, 44622u)), var_0.yx), global3[_wgslsmith_index_u32(global2.x, 8u)], u_input.e, Struct_2(var_3, Struct_1(4294967295u, vec4<u32>(4702u, global2.x, 44040u, u_input.a)), false, -1i)), var_3, -var_3), -u_input.d.yyw), ~19798i);
}

