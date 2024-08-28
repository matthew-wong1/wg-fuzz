struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: array<bool, 23>;

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(18511u, 20580u, 1u), vec3<u32>(5470u, 41844u, 4294967295u), vec3<u32>(49881u, 1u, 0u), vec3<u32>(80659u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global1 = array<bool, 23>();
    global2 = array<vec3<u32>, 5>();
    global1 = array<bool, 23>();
    global2 = array<vec3<u32>, 5>();
    global1 = array<bool, 23>();
    return _wgslsmith_mod_vec2_i32(select(min(select(vec2<i32>(1i, 1i), ~vec2<i32>(3923i, -64196i), vec2<bool>(true, true)), -vec2<i32>(-1i, 2147483647i)), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-28802i, 2147483647i, 268i, 58360i), vec4<i32>(-1i, -52525i, 13094i, -2147483647i)), _wgslsmith_clamp_i32(0i, firstLeadingBit(-371i), -42189i)), vec2<bool>(true, global1[_wgslsmith_index_u32(abs(0u), 23u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(1i), -24747i) << (_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.c.x, 0u), vec2<u32>(1u, 40173u), true), firstTrailingBit(vec2<u32>(u_input.c.x, 0u))) % vec2<u32>(32u)), vec2<i32>(-31576i, abs(-1i))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    let var_0 = 1i;
    var var_1 = arg_1.d;
    global1 = array<bool, 23>();
    let var_2 = arg_1;
    global1 = array<bool, 23>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.d.d.x))) + _wgslsmith_f_op_f32(-148f * _wgslsmith_f_op_f32(f32(-1f) * -477f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(arg_1.d.a.x * arg_1.d.a.x), true & (var_1.b.x | (global1[_wgslsmith_index_u32(u_input.b, 23u)] | false)))), 1000f);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(21118u, Struct_2(~func_3(), select(firstLeadingBit(vec3<i32>(42617i, 0i, -15962i)), vec3<i32>(-2147483647i, -2147483647i, -6342i), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true, true, global1[_wgslsmith_index_u32(0u, 23u)]))), max(-vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(-27510i, 1i), vec2<i32>(29043i, -26449i))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(244f, 1709f, -1154f) * global0[_wgslsmith_index_u32(u_input.b, 8u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true, false, global1[_wgslsmith_index_u32(10424u, 23u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(44459u, 23u)], global1[_wgslsmith_index_u32(37478u, 23u)]), global1[_wgslsmith_index_u32(4294967295u, 23u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))), ~reverseBits(u_input.a))), select(!vec4<bool>(true, true, false, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]))), vec4<bool>(!any(vec2<bool>(true, global1[_wgslsmith_index_u32(85476u, 23u)])), !(4294967295u >= u_input.a), true, any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], true, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), true | (false || any(vec2<bool>(global1[_wgslsmith_index_u32(40187u, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)])))), select(vec4<bool>(any(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(3794u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 23u)], true), true)), true, true, false), select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(11565u, 23u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], false, global1[_wgslsmith_index_u32(24368u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(4447u, 23u)], global1[_wgslsmith_index_u32(71430u, 23u)], false)), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), true), true & all(select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 23u)], false)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1467f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) * _wgslsmith_f_op_f32(sign(433f))), -612f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(542f))), -578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) * -376f))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2930f))))), select(select(vec4<bool>(u_input.c.x > 0u, false, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(~u_input.a, 23u)]), !select(var_0.b, vec4<bool>(false, var_0.c.x, var_0.b.x, true), var_0.b), !global1[_wgslsmith_index_u32(98102u, 23u)]), !(!select(var_0.b, vec4<bool>(var_0.b.x, var_0.c.x, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true))), var_0.c), var_0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(30088u, 8u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.d))), select(any(var_0.b.wzy), true & var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 8u)])) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1535f, 448f, var_0.a.x)))), vec3<bool>(any(select(var_0.b, var_0.c, var_0.c)), false, any(!var_0.b.wyw)))));
    var var_2 = u_input.c.yx << (u_input.c.zz % vec2<u32>(32u));
    var_2 = u_input.c.yy;
    var var_3 = u_input.c.wx;
    return _wgslsmith_dot_vec2_i32(select(vec2<i32>(func_3().x, _wgslsmith_sub_i32(-1i, 1i)), _wgslsmith_div_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -20587i), vec2<i32>(15094i, 0i)), min(vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, 15053i)), var_0.c.x || false), firstLeadingBit(firstTrailingBit(vec2<i32>(1i, -2147483647i)))), vec2<bool>((u_input.c.x & u_input.a) <= 0u, (i32(-1i) * -1i) == firstTrailingBit(-3788i))), _wgslsmith_mod_vec2_i32(~reverseBits(vec2<i32>(-39294i, 82497i)), vec2<i32>(~0i, 1i)) | -func_3());
}

fn func_1() -> i32 {
    let var_0 = -(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, 20928i), -2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-27007i, 7085i, -43823i), _wgslsmith_div_vec3_i32(vec3<i32>(-67089i, -15739i, -22353i), vec3<i32>(24241i, 2147483647i, -2147483647i)))) | select(vec3<i32>(-16230i, -1i << (u_input.c.x % 32u), func_2()), abs(-vec3<i32>(0i, 60696i, -9577i)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(42450u, 23u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], true, global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(39445u, 23u)], global1[_wgslsmith_index_u32(30409u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)])), vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 23u)]), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)) - -1514f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(844f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-675f)) * _wgslsmith_f_op_f32(sign(521f))), _wgslsmith_f_op_f32(sign(1f))))));
    var var_2 = func_3().x;
    global2 = array<vec3<u32>, 5>();
    var var_3 = _wgslsmith_clamp_vec4_u32((u_input.c & _wgslsmith_mult_vec4_u32(u_input.c, u_input.c)) >> (vec4<u32>(select(1u, 58387u >> (u_input.b % 32u), u_input.a < u_input.c.x), ~1u, 4294967295u, countOneBits(u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.c.x, 0u, ~u_input.a), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 39305u, 120782u, 41425u), u_input.c, u_input.c) << (u_input.c % vec4<u32>(32u))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(select(u_input.c.x, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(94617u, 5u)], vec3<u32>(u_input.c.x, u_input.a, 4294967295u)), global1[_wgslsmith_index_u32(~u_input.c.x, 23u)])) | ~min(~44392u << (u_input.c.x % 32u), ~u_input.c.x);
    global0 = array<vec3<f32>, 8>();
    global2 = array<vec3<u32>, 5>();
    global1 = array<bool, 23>();
    var var_1 = Struct_2(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 74699i), reverseBits(vec2<i32>(0i, 1i)), select(vec2<i32>(2147483647i, 0i), vec2<i32>(-43985i, 45465i), true)), vec2<i32>(19213i, i32(-1i) * -2147483647i)) | (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-50881i, 26014i))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, func_1(), ~0i), ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), vec3<i32>(27595i, -1i, -34785i)))), firstTrailingBit(select(vec2<i32>(-37084i, -12205i), firstLeadingBit(vec2<i32>(0i, 54663i)), !global1[_wgslsmith_index_u32(u_input.a, 23u)])) ^ vec2<i32>(6627i, -_wgslsmith_mod_i32(1i, -42458i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 160f) * 351f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f), _wgslsmith_f_op_f32(abs(257f))), _wgslsmith_f_op_f32(-1f)), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)])), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_0, 23u)], global1[_wgslsmith_index_u32(48967u, 23u)], false)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(9400u, abs(6797u)), ~min(var_0, u_input.a)), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~u_input.b), var_0, max(var_0, u_input.b), u_input.c.x), _wgslsmith_f_op_f32(trunc(181f)), countOneBits(max(u_input.c.zxy, firstTrailingBit(~global2[_wgslsmith_index_u32(var_0, 5u)]))));
}

