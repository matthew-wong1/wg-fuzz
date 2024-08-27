struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(2147483647i, 336i), vec2<i32>(21925i, i32(-2147483648)), vec2<i32>(13369i, 55654i), vec2<i32>(-10085i, 33349i), vec2<i32>(22064i, 24047i), vec2<i32>(54727i, 50062i), vec2<i32>(1881i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -10286i), vec2<i32>(21991i, -4296i), vec2<i32>(-69989i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -23626i), vec2<i32>(48521i, -15905i), vec2<i32>(2147483647i, 0i), vec2<i32>(-55103i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(-3349i, i32(-2147483648)), vec2<i32>(-1i, 4913i), vec2<i32>(10382i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), -17887i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_4(4294967295u, max(~(arg_1.a.d.x | arg_1.a.d.x), select(countOneBits(~arg_1.c.a.d.x), ~firstLeadingBit(u_input.c), (1732f == arg_1.c.e.x) && (arg_0 & true))), vec3<bool>(false, !all(select(vec2<bool>(arg_0, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), arg_1.c.c.b)), false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-732f, arg_1.b)) + _wgslsmith_f_op_f32(sign(arg_1.b))), arg_1.b) + _wgslsmith_f_op_f32(floor(1481f))));
    global0 = array<bool, 31>();
    global1 = array<vec2<i32>, 24>();
    var var_2 = arg_1;
    return _wgslsmith_div_i32(firstLeadingBit(-37402i), 17299i);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(u_input.e.yy | ~vec2<i32>(arg_1.x, arg_0), !(!any(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], false))), max(vec3<i32>(u_input.b, -17626i, 1i) >> (firstLeadingBit(vec3<u32>(1u, 4294967295u, 18727u)) % vec3<u32>(32u)), vec3<i32>(func_3(global0[_wgslsmith_index_u32(0u, 31u)], Struct_3(Struct_1(vec2<i32>(66263i, arg_0), false, u_input.e, vec2<u32>(23828u, 7088u)), -343f, Struct_2(Struct_1(arg_1, global0[_wgslsmith_index_u32(u_input.c, 31u)], vec3<i32>(u_input.b, -2147483647i, 2147483647i), vec2<u32>(u_input.c, u_input.c)), true, Struct_1(arg_1, global0[_wgslsmith_index_u32(42628u, 31u)], vec3<i32>(arg_0, u_input.e.x, -17350i), vec2<u32>(u_input.c, 0u)), vec2<i32>(arg_0, arg_0), vec4<f32>(905f, -1492f, 1214f, -1402f)))), ~0i, max(2147483647i, arg_0))), vec2<u32>(_wgslsmith_mult_u32(~u_input.c, ~1u), 40143u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-604f, -262f)))) * -925f), Struct_2(Struct_1(~(vec2<i32>(-4144i, -1i) >> (vec2<u32>(0u, arg_2) % vec2<u32>(32u))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], false, false, global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], false, global0[_wgslsmith_index_u32(11201u, 31u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], false, global0[_wgslsmith_index_u32(u_input.c, 31u)]))), -abs(vec3<i32>(4552i, arg_1.x, u_input.b)), ~vec2<u32>(u_input.c, 16466u)), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 31u)] & global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)] & global0[_wgslsmith_index_u32(u_input.c, 31u)], true, global0[_wgslsmith_index_u32(~1294u, 31u)])), Struct_1(-vec2<i32>(arg_0, arg_1.x), !global0[_wgslsmith_index_u32(arg_2, 31u)] & true, (u_input.e | u_input.e) << (vec3<u32>(39841u, u_input.c, u_input.c) % vec3<u32>(32u)), ~(~vec2<u32>(37598u, arg_2))), vec2<i32>(_wgslsmith_div_i32(-1i, ~(-47290i)), -27174i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1683f), _wgslsmith_f_op_f32(f32(-1f) * -1511f), _wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(407f * 1388f)))));
    var var_1 = !select(vec4<bool>(false, true, !all(vec4<bool>(var_0.a.b, true, false, false)), global0[_wgslsmith_index_u32(~335u, 31u)]), !select(select(vec4<bool>(var_0.c.a.b, true, global0[_wgslsmith_index_u32(arg_2, 31u)], true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(var_0.c.b, var_0.a.b, false, true)), !vec4<bool>(true, global0[_wgslsmith_index_u32(24245u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(30915u, 31u)]), select(vec4<bool>(false, false, false, var_0.c.b), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(4810u, 31u)]), true)), vec4<bool>(all(!vec2<bool>(var_0.a.b, true)), _wgslsmith_f_op_f32(round(-363f)) >= _wgslsmith_f_op_f32(var_0.c.e.x + -2300f), true, global0[_wgslsmith_index_u32(arg_2, 31u)]));
    let var_2 = var_0.a.d.x;
    var var_3 = countOneBits(vec2<u32>(36300u, _wgslsmith_add_u32(abs(26090u) >> (~u_input.c % 32u), ~21042u)));
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -max(0i, var_0.a.a.x), ~countOneBits(arg_0)), _wgslsmith_sub_i32(arg_1.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, -24728i, 2147483647i, arg_1.x), -vec4<i32>(arg_1.x, u_input.b, -37928i, arg_1.x)), countOneBits(~vec4<i32>(22183i, -2147483647i, 1i, -2147483647i)))), var_0.a.c.x, ~var_0.a.c.x >> ((abs(var_3.x >> (0u % 32u)) | ~(~15708u)) % 32u));
    return vec2<u32>(firstTrailingBit(~var_3.x), _wgslsmith_add_u32(0u, 1u));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(u_input.e.yy, u_input.e.yz), arg_3, -firstLeadingBit(vec3<i32>(~u_input.a, u_input.a, -63809i)), vec2<u32>(firstTrailingBit(u_input.c), firstLeadingBit(0u)) & firstLeadingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(28643u, arg_2), vec2<u32>(arg_2, arg_0.a)), func_2(0i, vec2<i32>(u_input.e.x, u_input.e.x), u_input.c), arg_0.c.xy)));
    global1 = array<vec2<i32>, 24>();
    var var_1 = ~_wgslsmith_sub_u32(select(firstLeadingBit(reverseBits(arg_0.b)), 0u, arg_0.c.x), ~arg_2);
    var var_2 = select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 4711u, 25352u, 52115u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, u_input.c, u_input.c, 12452u), vec4<u32>(var_0.d.x, arg_2, 40892u, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, 21338u), reverseBits(vec4<u32>(4294967295u, 4294967295u, 16315u, arg_2)))), 31u)], !any(vec2<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(17904u, 31u)])), any(vec2<bool>(!var_0.b, false))), vec3<bool>(true, all(arg_0.c), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))) > _wgslsmith_f_op_f32(f32(-1f) * -145f)), true);
    global0 = array<bool, 31>();
    return Struct_3(Struct_1(~select(u_input.e.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), u_input.e.xx), vec2<bool>(true, true)), all(!select(vec4<bool>(true, false, false, arg_0.c.x), vec4<bool>(false, arg_0.c.x, global0[_wgslsmith_index_u32(arg_0.a, 31u)], var_0.b), vec4<bool>(var_0.b, false, true, var_0.b))), _wgslsmith_mult_vec3_i32(vec3<i32>(-31073i, 1i, ~var_0.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-13823i, -46894i, var_0.c.x), vec3<i32>(u_input.a, -98328i, u_input.e.x) & u_input.e)), vec2<u32>(17650u, 1u)), -1000f, Struct_2(Struct_1(select(var_0.c.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -25499i), var_0.c.xy, var_0.a), select(vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(var_0.b, arg_0.c.x), vec2<bool>(var_2.x, var_0.b))), arg_0.a > ~arg_2, var_0.c, vec2<u32>(4294967295u, 41902u) & var_0.d), (i32(-1i) * -26396i) < _wgslsmith_clamp_i32(-29971i, u_input.d >> (u_input.c % 32u), -2147483647i), Struct_1(vec2<i32>(0i, -10776i), false, ~max(var_0.c, vec3<i32>(-1i, -2147483647i, -1i)), var_0.d), abs(~firstLeadingBit(vec2<i32>(var_0.a.x, 22898i))), vec4<f32>(_wgslsmith_f_op_f32(-162f * _wgslsmith_f_op_f32(trunc(-659f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1417f + arg_1.x) + arg_1.x), _wgslsmith_f_op_f32(select(arg_1.x, 692f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) + _wgslsmith_f_op_f32(min(1505f, -1659f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_4(min(~(u_input.c | 11435u), u_input.c), u_input.c, select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(45461u, 31u)], true, global0[_wgslsmith_index_u32(54518u, 31u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 31u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)])), !vec3<bool>(global0[_wgslsmith_index_u32(63914u, 31u)], global0[_wgslsmith_index_u32(76527u, 31u)], global0[_wgslsmith_index_u32(24372u, 31u)]), !global0[_wgslsmith_index_u32(4294967295u, 31u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], false, global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(15061u, 31u)], true, global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], false, global0[_wgslsmith_index_u32(4294967295u, 31u)])), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), global0[_wgslsmith_index_u32(24895u, 31u)]), global0[_wgslsmith_index_u32(~1u, 31u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 31u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1492f, -517f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, -506f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1511f, 969f) + vec2<f32>(1117f, 411f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-107f, -480f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(572f, -549f))))), _wgslsmith_div_u32(u_input.c, _wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c) | max(u_input.c, 50940u)) | ~u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~2767u), max(~_wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c)), 31u)]);
    global0 = array<bool, 31>();
    var var_1 = vec3<i32>(-(i32(-1i) * -26421i), u_input.d, u_input.b);
    let var_2 = !select(!vec2<bool>(all(vec2<bool>(var_0.a.b, true)), false), select(vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.a.d.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(36634u, 31u)], false))), !select(vec2<bool>(false, true), vec2<bool>(var_0.a.b, var_0.a.b), true), 1f <= var_0.b), all(vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), var_0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.c.e.x))))));
    let var_4 = func_1(Struct_4((_wgslsmith_sub_u32(u_input.c, var_0.a.d.x) & ~u_input.c) & 17698u, ~(~min(0u, 4294967295u)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, var_2.x), var_0.c.c.b), !vec3<bool>(var_0.c.b, var_2.x, global0[_wgslsmith_index_u32(u_input.c, 31u)]), !var_2.x), vec3<bool>(false, var_2.x, var_2.x), global0[_wgslsmith_index_u32(countOneBits(var_0.c.a.d.x << (4294967295u % 32u)), 31u)])), vec2<f32>(func_1(Struct_4(10614u, u_input.c, !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], var_0.c.c.b, var_0.c.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c.e.zz, var_0.c.e.wy) - var_0.c.e.zy), 1u, -1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(-20003i, 0i, 8903i, 0i), vec4<i32>(u_input.a, -2147483647i, 27109i, var_1.x))).c.e.x, 1893f), 1u, !(!(!(!global0[_wgslsmith_index_u32(63340u, 31u)])))).a;
    let var_5 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(var_4.c, vec3<i32>(var_4.a.x, u_input.d, var_1.x) >> (vec3<u32>(18691u, var_4.d.x, 51524u) % vec3<u32>(32u))) >> ((vec3<u32>(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(30486u, u_input.c, 26247u, var_4.d.x), vec4<u32>(110083u, 4294967295u, var_0.a.d.x, var_4.d.x)), 49467u) ^ _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_4.d.x, 0u, 0u)), vec3<u32>(var_0.a.d.x, u_input.c, 49767u))) % vec3<u32>(32u)), vec3<i32>(abs(2147483647i), ~(~var_4.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, 0i, 33864i, var_0.c.c.c.x), ~vec4<i32>(0i, -2147483647i, 24513i, var_0.a.a.x)) | _wgslsmith_div_i32(~u_input.d, _wgslsmith_add_i32(0i, var_0.c.a.c.x))), vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_div_i32(var_4.c.x, 2147483647i), var_0.c.d.x), -29596i, _wgslsmith_mod_i32(2147483647i, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(var_0.a.a.x, _wgslsmith_sub_i32(var_0.c.c.c.x, _wgslsmith_dot_vec2_i32(var_4.a, vec2<i32>(2147483647i, var_4.c.x))), var_4.a.x)), var_4.d, vec2<f32>(var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(var_0.c.e.x - _wgslsmith_div_f32(-1006f, -885f)))));
}

