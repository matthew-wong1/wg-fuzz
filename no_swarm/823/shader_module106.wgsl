struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(71357u, 375f, vec3<bool>(true, false, false), vec4<bool>(true, true, false, true)), Struct_1(4294967295u, -198f, vec3<bool>(true, false, false), vec4<bool>(true, true, true, true)), Struct_1(0u, -584f, vec3<bool>(true, false, false), vec4<bool>(false, true, false, true)), Struct_1(52728u, -1200f, vec3<bool>(false, false, true), vec4<bool>(true, false, true, false)), Struct_1(95966u, -155f, vec3<bool>(true, false, true), vec4<bool>(false, true, false, true)), Struct_1(333u, 1711f, vec3<bool>(true, true, true), vec4<bool>(false, false, true, true)), Struct_1(75433u, 1408f, vec3<bool>(true, true, false), vec4<bool>(true, true, false, true)), Struct_1(14543u, 328f, vec3<bool>(true, false, false), vec4<bool>(false, false, true, true)), Struct_1(1u, -561f, vec3<bool>(false, true, false), vec4<bool>(false, true, false, false)), Struct_1(0u, 940f, vec3<bool>(true, true, true), vec4<bool>(true, true, false, false)), Struct_1(4048u, -2531f, vec3<bool>(true, true, false), vec4<bool>(true, false, false, false)), Struct_1(0u, 1782f, vec3<bool>(true, false, true), vec4<bool>(true, true, true, false)), Struct_1(4294967295u, 722f, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true)), Struct_1(2046u, -956f, vec3<bool>(true, true, false), vec4<bool>(true, false, true, true)), Struct_1(0u, 284f, vec3<bool>(false, true, false), vec4<bool>(false, false, true, true)), Struct_1(35197u, 1237f, vec3<bool>(true, true, false), vec4<bool>(false, false, true, false)), Struct_1(4294967295u, -1171f, vec3<bool>(true, true, false), vec4<bool>(true, false, true, true)), Struct_1(48857u, -841f, vec3<bool>(false, true, false), vec4<bool>(false, true, true, true)), Struct_1(1u, -1189f, vec3<bool>(true, true, true), vec4<bool>(false, true, true, true)), Struct_1(91478u, 1647f, vec3<bool>(true, true, false), vec4<bool>(true, false, false, false)), Struct_1(1u, 408f, vec3<bool>(false, true, true), vec4<bool>(false, false, false, true)), Struct_1(1u, -866f, vec3<bool>(true, false, false), vec4<bool>(false, true, false, false)), Struct_1(0u, 764f, vec3<bool>(true, false, true), vec4<bool>(false, true, false, true)), Struct_1(11680u, -605f, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), Struct_1(0u, -616f, vec3<bool>(true, false, false), vec4<bool>(false, false, false, false)), Struct_1(4294967295u, 1656f, vec3<bool>(true, false, false), vec4<bool>(false, true, true, true)));

var<private> global2: array<bool, 22>;

var<private> global3: bool = false;

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 46530i, -12451i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = firstLeadingBit(select(firstTrailingBit(select(~vec3<u32>(u_input.a, 41019u, arg_0.a), vec3<u32>(10606u, 18705u, 74477u), all(vec2<bool>(arg_0.d.x, arg_0.d.x)))), vec3<u32>(~arg_0.a >> (firstTrailingBit(arg_0.a) % 32u), ~3228u, 36759u), -26308i <= global4.x));
    let var_1 = min(_wgslsmith_dot_vec2_u32(var_0.xy, var_0.zz), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, u_input.a, 18338u)), var_0), 1u), 57644u));
    var var_2 = Struct_2(arg_0.d, arg_0, abs(vec3<i32>(-global4.x, _wgslsmith_mod_i32(1i, global4.x), 1i)) << (~var_0 % vec3<u32>(32u)), firstLeadingBit(abs(select(var_0.yx, vec2<u32>(0u, var_1), vec2<bool>(arg_0.c.x, arg_0.c.x))) << (select(abs(vec2<u32>(u_input.a, var_1)), vec2<u32>(u_input.a, 115952u) | var_0.yx, global2[_wgslsmith_index_u32(abs(3492u), 22u)]) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -414f, -716f) + vec3<f32>(var_2.b.b, -793f, -643f))))));
    var var_4 = Struct_3(-max(~global4.x, var_2.c.x), vec2<u32>(~12412u, ~0u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, 105224u & var_0.x), var_2.d) % vec2<u32>(32u)));
    return !var_2.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(true, global2[_wgslsmith_index_u32(45698u, 22u)])), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 22u)]))), select(select(vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(44879u, 22u)], false, false, true)), true), vec2<bool>(func_3(global1[_wgslsmith_index_u32(u_input.a, 26u)]), global2[_wgslsmith_index_u32(u_input.a, 22u)] || global2[_wgslsmith_index_u32(u_input.a, 22u)]), !(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], true))), !vec2<bool>(any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 22u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(13841u, u_input.a)), 22u)]), true), select(false, false, !(!all(vec2<bool>(false, true)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(1u), _wgslsmith_mult_u32(0u, u_input.a)), 26u)];
    let var_2 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1503f))), false, false, false | var_0.x), Struct_1(firstLeadingBit(firstLeadingBit(var_1.a ^ 14898u)), -770f, select(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)])), select(!var_1.d.zyz, var_1.d.wyx, select(vec3<bool>(false, var_1.d.x, var_0.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], true, true), global2[_wgslsmith_index_u32(var_1.a, 22u)])), var_1.c), select(var_1.d, !vec4<bool>(true, var_0.x, true, false), -global4.x < -59386i)), -(select(firstLeadingBit(vec3<i32>(global4.x, -10015i, global4.x)), -vec3<i32>(35283i, 1i, -1395i), true) & abs(-vec3<i32>(global4.x, 2147483647i, -34826i))), select(min(select(vec2<u32>(var_1.a, 21831u), vec2<u32>(104708u, 1u), vec2<bool>(global2[_wgslsmith_index_u32(var_1.a, 22u)], false)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(66452u, var_1.a))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 7416u), vec2<u32>(75896u, u_input.a))), !var_1.c.x) >> (~select(vec2<u32>(var_1.a, 7694u) ^ vec2<u32>(var_1.a, var_1.a), firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)), select(var_0, vec2<bool>(var_1.c.x, false), var_1.c.x)) % vec2<u32>(32u)));
    var var_3 = Struct_3(var_2.c.x, _wgslsmith_sub_vec2_u32(select(~(vec2<u32>(4294967295u, 0u) & var_2.d), var_2.d, !(0u == var_2.b.a)), ~(_wgslsmith_div_vec2_u32(var_2.d, vec2<u32>(u_input.a, var_2.b.a)) << ((vec2<u32>(var_1.a, 790u) ^ var_2.d) % vec2<u32>(32u)))));
    global0 = u_input.a;
    return var_2;
}

fn func_1() -> f32 {
    global4 = vec3<i32>(firstTrailingBit(12769i), global4.x, -31724i);
    let var_0 = func_2();
    let var_1 = _wgslsmith_sub_vec2_u32(var_0.d, vec2<u32>(0u, var_0.b.a));
    var var_2 = Struct_3(-var_0.c.x, ~_wgslsmith_div_vec2_u32(~var_1, ~var_1) << ((var_0.d >> (~(~vec2<u32>(var_0.b.a, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = array<Struct_1, 26>();
    return _wgslsmith_f_op_f32(-var_0.b.b);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_3 {
    return Struct_3(abs(-1i), abs(vec2<u32>(_wgslsmith_sub_u32(u_input.a & 72783u, abs(4294967295u)), ~u_input.a >> (_wgslsmith_sub_u32(4294967295u, u_input.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = ~u_input.a;
    let var_2 = Struct_3(-59637i, vec2<u32>(~u_input.a, _wgslsmith_div_u32(60396u, var_1 << (var_1 % 32u))) & firstLeadingBit(vec2<u32>(var_1 >> (44662u % 32u), _wgslsmith_mult_u32(1302u, var_1))));
    var var_3 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1632f)), _wgslsmith_f_op_f32(func_1())))), !select(func_2().a.wz, func_2().a.yz, true), vec2<bool>(!(!global2[_wgslsmith_index_u32(var_2.b.x, 22u)]) | true, true), !(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 22u)], true), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_2.b.x, 22u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.b.x, 22u)], false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(var_2.b.x, 22u)])), !vec3<bool>(global2[_wgslsmith_index_u32(var_1, 22u)], false, global2[_wgslsmith_index_u32(var_2.b.x, 22u)]))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, 236f, 712f, 725f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1337f, 698f, 1738f, -628f))))), vec4<f32>(1049f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-265f, 915f, false))), 1000f, -1000f)));
    let var_5 = var_2;
    var_0 = ~(var_3.b.x >> (~var_1 % 32u));
    let var_6 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1368f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1969f, var_4.x), -703f))))), func_2().b.d.yx, vec2<bool>(func_3(global1[_wgslsmith_index_u32(abs(4294967295u), 26u)]), false), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_1, 22u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)], false), false), vec3<bool>(global4.x > global4.x, global2[_wgslsmith_index_u32(30153u, 22u)] && global2[_wgslsmith_index_u32(u_input.a, 22u)], var_4.x <= var_4.x), 0u >= func_4(var_4.x, vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(false, true, false)).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(968f, 377f, var_4.x, var_4.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -832f, var_4.x, var_4.x) * vec4<f32>(562f, var_4.x, 163f, var_4.x))))), _wgslsmith_add_vec4_u32(vec4<u32>(~var_3.b.x, abs(var_2.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(39610u, var_2.b.x), ~4294967295u), var_2.b.x), _wgslsmith_sub_vec4_u32(abs(max(vec4<u32>(0u, u_input.a, 10202u, 7228u), vec4<u32>(4294967295u, var_2.b.x, var_6.b.x, 1u))), select(countOneBits(vec4<u32>(var_6.b.x, u_input.a, 4294967295u, var_3.b.x)), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(global2[_wgslsmith_index_u32(var_3.b.x, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(var_2.b.x, 22u)], global2[_wgslsmith_index_u32(var_2.b.x, 22u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(var_3.b.x, 22u)], false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_4.x, var_4.x), 943f)), _wgslsmith_f_op_f32(var_4.x * 445f))))), _wgslsmith_mult_vec2_i32(~min(-global4.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(-30915i, var_2.a), vec2<i32>(46922i, -2147483647i))), vec2<i32>(var_6.a, -3614i)));
}

