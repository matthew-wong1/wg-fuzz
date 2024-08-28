struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 45960u, 17894u), Struct_1(0u, vec4<u32>(0u, 46664u, 4294967295u, 62871u), 14881u, vec3<u32>(4294967295u, 4294967295u, 61951u), -842f), vec2<i32>(-64266i, 644i), -49439i);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<i32, 12> = array<i32, 12>(54994i, -1i, 0i, -33052i, 0i, 0i, 25920i, -1i, -8478i, -20058i, i32(-2147483648), 1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = ~(select(arg_0.b, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, 89809u), select(arg_1.b, global0.b.b, true)), true) >> (firstTrailingBit(abs(global0.b.b << (arg_1.b % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_1 = 11290i;
    var var_2 = ~global0.b.b;
    let var_3 = _wgslsmith_f_op_f32(-2428f - _wgslsmith_f_op_f32(-global0.b.e));
    global2 = array<i32, 12>();
    return Struct_1(6567u, ~vec4<u32>(global0.b.c, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.yx, vec2<u32>(arg_0.b.x, 85115u)), vec2<u32>(arg_1.a, arg_2)), ~_wgslsmith_div_u32(global0.b.a, arg_2), ~(~36442u)), arg_1.b.x, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, ~var_0.x, ~81193u) << (arg_0.b.zxy % vec3<u32>(32u)), vec3<u32>(~(~55800u), 1228u, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.e)))) - -181f));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(func_2(Struct_1(_wgslsmith_clamp_u32(4294967295u, arg_3.a.x, 0u), reverseBits(vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 14485u)), arg_2.x ^ 0u, ~vec3<u32>(24443u, 1u, 17831u), arg_3.b.e), global1[_wgslsmith_index_u32(global0.b.b.x, 20u)], 71178u).e, _wgslsmith_f_op_f32(1136f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(949f)) + _wgslsmith_f_op_f32(select(arg_3.b.e, -2090f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1065f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.e, 2208f, arg_3.b.e) - vec3<f32>(-124f, arg_3.b.e, arg_3.b.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(898f, -2301f, global0.b.e), vec3<f32>(arg_3.b.e, global0.b.e, -905f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.e, 1036f, arg_3.b.e) * vec3<f32>(-637f, global0.b.e, global0.b.e))))), vec3<f32>(-335f, 1278f, _wgslsmith_f_op_f32(-2356f * global0.b.e))))));
    global2 = array<i32, 12>();
    var var_1 = (abs(-arg_3.c) ^ arg_3.c) << (arg_3.a.xx % vec2<u32>(32u));
    let var_2 = select(false, var_1.x != -1i, !(!all(vec4<bool>(false, false, false, false)) & ((arg_3.b.e != 766f) || true)));
    var var_3 = var_1.x;
    return func_2(Struct_1(_wgslsmith_dot_vec4_u32(~arg_1, _wgslsmith_mult_vec4_u32(global0.b.b, arg_3.b.b)), vec4<u32>(u_input.b, min(u_input.b, reverseBits(4294967295u)), ~arg_2.x ^ arg_2.x, reverseBits(10675u >> (0u % 32u))), u_input.a, firstTrailingBit(global0.a), _wgslsmith_f_op_f32(step(1815f, _wgslsmith_f_op_f32(ceil(-1943f))))), Struct_1(0u, ~arg_1, u_input.b, vec3<u32>(4294967295u, ~(u_input.b >> (0u % 32u)), ~1u), arg_3.b.e), 1u).d.x;
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.b, 20u)];
    let var_1 = func_2(Struct_1(0u, select(vec4<u32>(u_input.a, global0.b.d.x, u_input.b, _wgslsmith_add_u32(u_input.b, var_0.a)), var_0.b, false), u_input.b, ~var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f + var_0.e) * _wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(-1546f * var_0.e)))), global0.b, var_0.c);
    var var_2 = Struct_2(vec3<u32>(~(~1u ^ (var_0.d.x ^ 0u)), abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a, 98823u, 15143u, var_1.c), var_1.b), func_3(global2[_wgslsmith_index_u32(9680u, 12u)], var_0.b, vec2<u32>(var_1.a, 21467u), Struct_2(var_0.d, Struct_1(43525u, vec4<u32>(41408u, 1u, var_1.a, 1u), global0.b.a, var_1.d, var_0.e), global0.c, 2147483647i)), abs(54211u))), ~reverseBits(u_input.b)), func_2(func_2(Struct_1(~u_input.b, var_1.b, u_input.b, ~vec3<u32>(global0.a.x, global0.a.x, 59497u), _wgslsmith_f_op_f32(exp2(var_0.e))), func_2(Struct_1(1u, vec4<u32>(42608u, var_1.d.x, 13078u, var_0.c), global0.a.x, vec3<u32>(7717u, 1u, var_1.a), var_1.e), global0.b, firstLeadingBit(28496u)), _wgslsmith_mod_u32(55255u, ~4964u)), func_2(Struct_1(select(global0.b.b.x, u_input.b, true), ~global0.b.b, global0.a.x, ~var_1.b.xxx, global0.b.e), global0.b, u_input.b), _wgslsmith_mod_u32(~var_0.b.x >> (1u % 32u), firstTrailingBit(var_1.d.x << (1u % 32u)))), -global0.c, -_wgslsmith_sub_i32(2147483647i, -(~global2[_wgslsmith_index_u32(var_1.d.x, 12u)])));
    var var_3 = Struct_2(vec3<u32>(0u, max(global0.b.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.a.x), global0.b.b.wx)), _wgslsmith_div_u32(max(_wgslsmith_mod_u32(0u, 19688u), ~u_input.b), var_2.a.x)), Struct_1(1895u | _wgslsmith_mult_u32(9511u, func_2(Struct_1(u_input.a, vec4<u32>(var_2.b.b.x, u_input.b, 4294967295u, 4294967295u), 42665u, vec3<u32>(72911u, 41242u, 4294967295u), -304f), Struct_1(var_2.b.d.x, vec4<u32>(4294967295u, 1u, var_0.a, var_0.c), var_2.a.x, var_1.d, 1074f), 0u).b.x), vec4<u32>(var_2.b.d.x, _wgslsmith_sub_u32(6976u, abs(var_0.c)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 1u, 4294967295u), var_1.b), var_0.b), global0.b.a), select(0u, u_input.a, false), ~vec3<u32>(var_1.a, 1u, abs(1u)), -156f), global0.c, min(var_2.c.x, var_2.c.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f * global0.b.e)))));
    return Struct_1(_wgslsmith_mod_u32(~(~(var_2.b.c & 10994u)), ~30695u), vec4<u32>(1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.d.x, var_3.b.d.x, 0u, 23794u), vec4<u32>(1u, var_0.b.x, 0u, global0.a.x))) << (var_3.b.c % 32u), 33235u, var_0.c), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.b.d.x, _wgslsmith_div_u32(23782u, 33268u)) >> (~31829u % 32u), 0u, 90647u & (func_3(-41965i, vec4<u32>(var_0.b.x, var_0.c, var_0.d.x, var_3.a.x), global0.a.yy, Struct_2(var_3.a, Struct_1(var_3.a.x, vec4<u32>(var_3.a.x, 4294967295u, var_2.a.x, 60378u), var_1.d.x, vec3<u32>(var_1.b.x, var_3.b.c, global0.a.x), var_0.e), global0.c, var_2.c.x)) >> (_wgslsmith_add_u32(0u, 1u) % 32u))), vec3<u32>(max(var_0.b.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.d.x, 79172u), abs(4869u))), ~(~1u), ~(~countOneBits(0u))), _wgslsmith_f_op_f32(step(390f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e * -1004f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = func_2(global0.b, Struct_1(13770u, arg_0.b, u_input.a, arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.e)) - _wgslsmith_f_op_f32(-arg_3.x)) + -585f)), arg_2.c);
    var var_2 = vec2<u32>(firstLeadingBit(abs(23935u)), ~min(countOneBits(~global0.a.x), arg_2.d.x & arg_0.c));
    let var_3 = vec3<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), arg_1 >= global2[_wgslsmith_index_u32(arg_0.a, 12u)]), vec3<bool>(true, true, all(vec2<bool>(false, true))), true)), all(select(vec3<bool>(global0.c.x == -2147483647i, true, any(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), false)), false || select(~(-9136i) <= min(global0.c.x, -72239i), all(vec3<bool>(false, true, false)) && true, true));
    var var_4 = arg_3;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 12>();
    let var_0 = func_4(func_1(), global0.d, Struct_1(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), _wgslsmith_sub_u32(4294967295u, 1u), global0.b.b.x, u_input.b), global0.b.b), ~global0.a.x ^ min(global0.b.d.x, 24714u), ~max(global0.b.b.yxx, global0.a) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(12610u, global0.a.x, global0.b.b.x), vec3<u32>(80824u, 1u, global0.b.a)) | ~global0.b.b.yxz) % vec3<u32>(32u)), 914f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.e, 797f, -340f), _wgslsmith_div_vec3_f32(vec3<f32>(1028f, -1359f, -499f), vec3<f32>(-1218f, global0.b.e, global0.b.e))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b.e), _wgslsmith_f_op_f32(441f + global0.b.e), 695f))));
    let var_1 = any(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, false));
    let var_2 = Struct_1(~((min(u_input.a, u_input.b) | func_4(var_0, global0.d, Struct_1(30750u, var_0.b, 1u, vec3<u32>(24907u, 77788u, 91458u), -605f), vec3<f32>(-1451f, var_0.e, var_0.e)).b.x) ^ ~52589u), var_0.b, 42361u, abs(max(vec3<u32>(~global0.b.d.x, u_input.a | 60700u, _wgslsmith_mod_u32(u_input.a, 59321u)), var_0.b.xxz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -572f)))));
    var var_3 = Struct_2(~select(var_0.d ^ vec3<u32>(var_0.a, var_0.c, 4294967295u), _wgslsmith_mod_vec3_u32(var_0.d | vec3<u32>(4294967295u, global0.b.a, 20448u), vec3<u32>(28008u, var_0.c, var_0.d.x) << (global0.b.d % vec3<u32>(32u))), true), Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.c, select(var_0.c, u_input.a, true)), min(~global0.b.c, _wgslsmith_sub_u32(var_0.c, global0.b.a))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_2.b.x, 12594u, 0u, var_2.b.x), ~global0.b.b), ~4294967295u, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f))), vec2<i32>(~(-1i), 1i) & global0.c, firstLeadingBit(1i));
    let var_4 = ~var_0.d.zz;
    var_3 = Struct_2(vec3<u32>(~func_3(18888i, ~var_3.b.b, _wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, var_0.c), var_2.b.zz), Struct_2(vec3<u32>(20526u, global0.b.b.x, global0.a.x), Struct_1(36106u, vec4<u32>(var_3.a.x, 55144u, 128663u, 25533u), global0.b.a, vec3<u32>(0u, global0.a.x, 20328u), global0.b.e), var_3.c, 15148i)), var_4.x, ~var_2.d.x), var_3.b, -(~firstTrailingBit(-global0.c)), select(-_wgslsmith_sub_i32(-14899i, global2[_wgslsmith_index_u32(countOneBits(1u), 12u)]), -var_3.d, _wgslsmith_f_op_f32(floor(-208f)) <= var_0.e));
    global0 = Struct_2(global0.b.d, Struct_1(4294967295u, var_0.b, ~45577u, firstTrailingBit(~global0.a), var_3.b.e), -(vec2<i32>(countOneBits(global0.d), reverseBits(38487i)) ^ vec2<i32>(i32(-1i) * -25352i, 1i)), 2147483647i);
    let var_5 = ~_wgslsmith_div_vec3_i32(-(countOneBits(vec3<i32>(-2147483647i, global0.c.x, var_3.c.x)) ^ vec3<i32>(global0.d, -34649i, var_3.c.x)), ~firstLeadingBit(-vec3<i32>(1i, global0.c.x, global0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-267f * 811f), -1000f, false))), global0.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f - var_0.e) + 1000f)), firstTrailingBit(abs(-var_5)), var_2.c, _wgslsmith_f_op_f32(global0.b.e * var_0.e));
}

