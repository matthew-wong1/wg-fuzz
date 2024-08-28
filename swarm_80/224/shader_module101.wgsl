struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec2<i32> = vec2<i32>(-21606i, 2147483647i);

var<private> global2: array<vec4<u32>, 25>;

var<private> global3: Struct_1;

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(global3.a, -23329i, ~(~reverseBits(global3.c)) >> (((reverseBits(global3.d) & (67451u << (global3.d % 32u))) >> ((79492u << (reverseBits(global3.c) % 32u)) % 32u)) % 32u), _wgslsmith_dot_vec2_u32(abs(~max(vec2<u32>(5457u, 1u), vec2<u32>(44625u, global3.c))), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.d, 29086u), vec2<u32>(21012u, 10881u))) | vec2<u32>(4294967295u, ~24445u)), false);
    let var_1 = !select(var_0.a.yx, select(select(!var_0.a.wy, vec2<bool>(true, true), !vec2<bool>(global3.a.x, false)), select(vec2<bool>(global3.a.x, true), select(vec2<bool>(var_0.a.x, false), global3.a.wx, global3.a.yw), select(global3.a.wy, vec2<bool>(false, var_0.e), var_0.e)), !global3.a.xy), vec2<bool>(global3.a.x, _wgslsmith_f_op_f32(ceil(-1246f)) <= _wgslsmith_div_f32(-452f, 1776f)));
    var var_2 = Struct_1(!vec4<bool>(any(select(global3.a.xxx, vec3<bool>(var_1.x, false, true), vec3<bool>(false, true, false))), var_1.x, var_1.x, all(select(vec2<bool>(true, false), global3.a.yy, vec2<bool>(var_1.x, true)))), global1.x, 1u >> (countOneBits(~(~17579u)) % 32u), countOneBits(abs(1u)), (true || var_1.x) & var_1.x);
    var var_3 = ~select((abs(vec2<u32>(var_2.c, 79387u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(43449u, 1u), vec2<u32>(36769u, global3.d)) % vec2<u32>(32u))) ^ (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.d), vec2<u32>(var_0.d, var_0.c)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(81226u, 0u), vec2<u32>(48219u, global3.d), vec2<u32>(var_2.d, 52501u)) % vec2<u32>(32u))), firstLeadingBit(~abs(vec2<u32>(4294967295u, global3.d))), any(select(var_1, !global3.a.xz, any(vec4<bool>(true, true, true, false)))));
    let var_4 = ~select(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(var_2.d, 25u)], global2[_wgslsmith_index_u32(61317u, 25u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(11338u, 27305u, 0u, var_0.d), vec4<u32>(4294967295u, 4294967295u, 26912u, var_3.x)))), _wgslsmith_add_vec4_u32(abs(firstTrailingBit(global2[_wgslsmith_index_u32(51907u, 25u)])), global2[_wgslsmith_index_u32(~17771u, 25u)]), true);
    return ~u_input.a.wyx >> ((_wgslsmith_clamp_vec3_u32(var_4.wxw, vec3<u32>(var_4.x, var_3.x, 40031u) << (vec3<u32>(86672u, 20801u, 27343u) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(var_4.xyx, var_4.wwy)) ^ vec3<u32>(var_2.c, 4294967295u, global3.d)) % vec3<u32>(32u));
}

fn func_2() -> Struct_1 {
    global4 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mult_i32(global1.x, 11297i), -global3.b | abs(25136i)), func_3()), max(max(u_input.a.xwy, ~u_input.a.wyz), vec3<i32>(global1.x, global1.x, global1.x)) | -(_wgslsmith_mult_vec3_i32(u_input.a.yzy, u_input.a.xyy) << (vec3<u32>(4294967295u, global3.d, global3.c) % vec3<u32>(32u))));
    let var_0 = u_input.a.yxy;
    global4 = _wgslsmith_clamp_vec3_i32(var_0, vec3<i32>(abs(u_input.a.x), global3.b, var_0.x << ((countOneBits(1u) >> (global3.d % 32u)) % 32u)), vec3<i32>(1639i, ~var_0.x, _wgslsmith_clamp_i32(-12819i, u_input.a.x, global4.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - -390f) + _wgslsmith_f_op_f32(-608f * -1000f)) - -239f)));
    let var_2 = _wgslsmith_sub_u32(global3.c, global3.c << ((4294967295u ^ _wgslsmith_add_u32(global3.c, 1u)) % 32u)) < 1u;
    return global0[_wgslsmith_index_u32(0u, 11u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f * 1056f))))), -2006f);
    let var_1 = true;
    var var_2 = select(~reverseBits(vec2<u32>(arg_2.d, 59153u)), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 12998u), firstLeadingBit(vec2<u32>(32300u, 1u)))), arg_2.a.xx);
    let var_3 = Struct_1(select(vec4<bool>(true, all(!vec2<bool>(true, arg_2.a.x)), all(global3.a), all(arg_1.a)), !(!vec4<bool>(arg_2.a.x, true, true, arg_1.a.x)), true), ~((_wgslsmith_mult_i32(arg_1.b, 2147483647i) & 0i) << (~0u % 32u)), select(56486u, _wgslsmith_clamp_u32(global3.c, select(~var_2.x, 0u, true), 0u), !all(select(global3.a, vec4<bool>(true, arg_1.a.x, true, true), var_1))), abs(~11727u), all(arg_1.a.yzy));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(463f, 315f, -275f, 507f)))))));
    return func_2();
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = (global3.d ^ ~13844u) | (1u & arg_1.c);
    let var_1 = 628f;
    let var_2 = arg_2;
    global4 = select(-(~(arg_3.yzx ^ select(u_input.a.xxz, vec3<i32>(global3.b, 0i, -18555i), vec3<bool>(var_2.e, false, true)))), _wgslsmith_sub_vec3_i32(u_input.a.wzy, reverseBits(vec3<i32>(_wgslsmith_add_i32(u_input.b.x, global4.x), -37318i, _wgslsmith_mod_i32(42223i, global3.b)))), false);
    global1 = ~(-vec2<i32>(countOneBits(var_2.b), select(-29112i, _wgslsmith_dot_vec4_i32(vec4<i32>(5176i, 3186i, arg_3.x, global4.x), arg_3), 660f <= var_1)));
    return _wgslsmith_f_op_f32(-1417f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(539f))), _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1, var_1), var_1)) - -240f)));
}

fn func_6(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = vec4<i32>(~global1.x, global1.x, -(func_3().x | _wgslsmith_add_i32(global1.x, abs(-1i))), u_input.b.x);
    var var_1 = vec4<bool>(global3.a.x, select(!((global3.e && false) && false), global3.e, global3.e), !(-u_input.b.x >= u_input.a.x), !(_wgslsmith_add_i32(global3.b, max(global3.b, global3.b)) > global3.b));
    var var_2 = Struct_1(global3.a, _wgslsmith_sub_i32(global3.b, global3.b), (global3.c & 20986u) ^ arg_2.x, global3.c, false);
    var_2 = Struct_1(global3.a, func_2().b, ~0u, (global3.d >> (1u % 32u)) | _wgslsmith_clamp_u32(_wgslsmith_div_u32(43075u, reverseBits(30646u)), 1u, select(~32690u, global3.d, global4.x >= -15837i)), false);
    var_2 = Struct_1(vec4<bool>(var_1.x, true, all(global3.a.zzw), all(vec2<bool>(!global3.a.x, !var_1.x))), global1.x, 52109u, 37616u, !all(vec2<bool>(all(vec3<bool>(true, var_1.x, true)), true)));
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))) - arg_1.x))), 229f);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(1029f));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1309f))))))));
    let var_2 = -42150i;
    var var_3 = _wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_f32(func_5(select(global3.e, arg_2.e, arg_0.a.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2174f)), arg_2, func_2()), Struct_1(func_2().a, -18214i, ~(1u << (global3.c % 32u)), 1u, any(global3.a.yy)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-37947i, global3.b, u_input.b.x, 33317i), vec4<i32>(global3.b, global1.x, -19090i, global4.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(924f)), _wgslsmith_f_op_f32(-2390f + -913f), -378f, 2070f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, 154f, 970f, 1013f)))))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u) & vec2<u32>(global3.d, global3.d), max(vec2<u32>(2320u, 0u), vec2<u32>(arg_2.d, 109716u))), min(firstLeadingBit(vec2<u32>(global3.d, 0u)), firstLeadingBit(vec2<u32>(38217u, arg_1)))) & vec2<u32>(2790u, func_4(_wgslsmith_f_op_f32(1484f * -878f), Struct_1(global3.a, global1.x, 0u, 1u, true), func_2()).d), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1359f + 1075f)), 1f)));
    let var_4 = global4.zz;
    return _wgslsmith_add_i32(-9212i, ~(~(arg_0.b | -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_add_vec3_i32(vec3<i32>(-40063i, _wgslsmith_mult_i32(-u_input.b.x, func_1(global0[_wgslsmith_index_u32(global3.d, 11u)], 4294967295u, Struct_1(vec4<bool>(true, global3.e, global3.a.x, global3.a.x), global4.x, global3.d, global3.c, false), global1.x)), _wgslsmith_mult_i32(4754i, -u_input.a.x)) | (u_input.a.wzy & u_input.a.yxw), abs(abs(u_input.a.wzw)));
    global4 = u_input.a.zzx;
    global1 = ~u_input.b;
    var var_0 = min(vec3<i32>(i32(-1i) * -global3.b, _wgslsmith_sub_i32(abs(~u_input.b.x), min(_wgslsmith_sub_i32(global3.b, -2147483647i), 2147483647i)), _wgslsmith_mult_i32(countOneBits(0i), -global1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-(global4.x | -2147483647i), max(_wgslsmith_sub_i32(u_input.b.x, 2147483647i), -global4.x), u_input.a.x), -_wgslsmith_add_vec3_i32(vec3<i32>(global3.b, -1864i, global1.x), vec3<i32>(-40163i, u_input.b.x, 31812i)), u_input.a.xxw));
    let var_1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -566f), func_4(_wgslsmith_div_f32(-1550f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-339f - 2073f)))), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_6(-1000f, vec4<f32>(661f, 391f, 1074f, 1000f), vec2<u32>(global3.c, global3.c), vec3<f32>(307f, 1061f, 171f))).x)), global0[_wgslsmith_index_u32(0u, 11u)], func_2()), Struct_1(global3.a, 19353i, (global3.d | global3.c) << (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(global3.d, 25u)]) % 32u), global3.d, any(global3.a.wwy))), Struct_1(select(func_4(_wgslsmith_f_op_f32(abs(-1055f)), func_2(), Struct_1(vec4<bool>(global3.e, false, true, true), 0i, 12297u, global3.c, global3.e)).a, !vec4<bool>(false, false, global3.e, global3.a.x), select(vec4<bool>(global3.e, global3.e, global3.a.x, true), select(vec4<bool>(global3.e, true, false, false), global3.a, global3.a), select(vec4<bool>(global3.a.x, global3.e, false, global3.a.x), vec4<bool>(global3.e, true, global3.a.x, false), global3.a))), ~1i & (global1.x >> (1u % 32u)), 4294967295u, max(_wgslsmith_sub_u32(~40310u, global3.d), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, 55793u), vec2<u32>(global3.d, global3.c))), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -703f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(831f)), _wgslsmith_f_op_f32(-501f * 1000f))) - _wgslsmith_f_op_f32(562f - 566f))), select(vec2<i32>(~global1.x, ~(-11079i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), func_3().zz, select(select(vec2<bool>(var_1.e, var_1.e), func_2().a.xx, all(vec2<bool>(global3.e, global3.a.x))), var_1.a.xw, !global3.e || true)));
}

