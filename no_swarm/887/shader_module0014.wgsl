struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
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

var<private> global0: array<f32, 3> = array<f32, 3>(1000f, 1593f, -1110f);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(true, vec2<f32>(-151f, 235f), vec3<u32>(4294967295u, 19506u, 23413u), vec4<f32>(1000f, -1616f, 738f, -1333f), false), Struct_1(true, vec2<f32>(409f, 202f), vec3<u32>(49496u, 4294967295u, 1u), vec4<f32>(1304f, 774f, -1265f, -708f), true), Struct_1(false, vec2<f32>(892f, 872f), vec3<u32>(0u, 84099u, 4294967295u), vec4<f32>(-583f, 1000f, -984f, -379f), false), Struct_1(true, vec2<f32>(808f, 365f), vec3<u32>(32361u, 36886u, 41714u), vec4<f32>(1000f, -186f, 461f, -1211f), true), Struct_1(true, vec2<f32>(-633f, 885f), vec3<u32>(1u, 101456u, 46012u), vec4<f32>(736f, 830f, -949f, 734f), true), Struct_1(false, vec2<f32>(379f, 918f), vec3<u32>(68157u, 0u, 12554u), vec4<f32>(-673f, -1001f, 112f, -324f), true), Struct_1(true, vec2<f32>(-1599f, 752f), vec3<u32>(42115u, 24502u, 4294967295u), vec4<f32>(458f, 129f, 147f, 2289f), false), Struct_1(false, vec2<f32>(-547f, 674f), vec3<u32>(53317u, 70962u, 0u), vec4<f32>(129f, -1000f, -468f, -635f), true), Struct_1(true, vec2<f32>(606f, -214f), vec3<u32>(4294967295u, 1u, 18792u), vec4<f32>(665f, -234f, -1074f, -1000f), false), Struct_1(false, vec2<f32>(335f, -458f), vec3<u32>(8855u, 24527u, 12282u), vec4<f32>(-1000f, -2867f, 1047f, -147f), true), Struct_1(false, vec2<f32>(642f, 431f), vec3<u32>(4294967295u, 24885u, 4294967295u), vec4<f32>(-403f, 304f, -343f, 398f), true), Struct_1(false, vec2<f32>(1000f, -1000f), vec3<u32>(14053u, 47485u, 56951u), vec4<f32>(-1000f, -567f, -1031f, 1000f), false), Struct_1(true, vec2<f32>(-1000f, 369f), vec3<u32>(18324u, 0u, 10630u), vec4<f32>(221f, -1000f, 667f, 646f), true), Struct_1(false, vec2<f32>(737f, -159f), vec3<u32>(4294967295u, 0u, 83814u), vec4<f32>(1898f, -484f, -696f, -1457f), true), Struct_1(true, vec2<f32>(-799f, -240f), vec3<u32>(1u, 17193u, 93871u), vec4<f32>(1000f, 294f, -445f, -1148f), true), Struct_1(false, vec2<f32>(-1379f, -1000f), vec3<u32>(52516u, 16308u, 31688u), vec4<f32>(438f, 1044f, 1051f, -459f), false), Struct_1(true, vec2<f32>(-234f, 469f), vec3<u32>(46201u, 59777u, 2361u), vec4<f32>(-947f, -517f, 135f, 1665f), true), Struct_1(true, vec2<f32>(-432f, -1505f), vec3<u32>(60069u, 4294967295u, 0u), vec4<f32>(719f, 611f, 1000f, -813f), false), Struct_1(false, vec2<f32>(638f, -1001f), vec3<u32>(6742u, 94523u, 4294967295u), vec4<f32>(-722f, 574f, -364f, -1220f), false), Struct_1(true, vec2<f32>(-1018f, -607f), vec3<u32>(20732u, 4294967295u, 25775u), vec4<f32>(536f, 161f, 1014f, 122f), false), Struct_1(true, vec2<f32>(1272f, -518f), vec3<u32>(4294967295u, 1u, 13131u), vec4<f32>(1083f, 1571f, -2032f, -417f), false), Struct_1(false, vec2<f32>(-228f, -225f), vec3<u32>(24186u, 52319u, 1u), vec4<f32>(510f, 803f, 217f, -1000f), true));

var<private> global3: array<i32, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = !(!(!any(!vec4<bool>(true, false, global1.x, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1246f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(select(0u, u_input.a, true), 3u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(159209u, 3u)] + 557f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]))), -1111f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~4294967295u << (reverseBits(u_input.c.x) % 32u), 3u)]))));
    let var_2 = 6042u;
    global3 = array<i32, 6>();
    let var_3 = _wgslsmith_mult_u32(firstLeadingBit(30513u), _wgslsmith_add_u32(min(4294967295u, ~var_2), 1u));
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global3[_wgslsmith_index_u32(22744u, 6u)], global3[_wgslsmith_index_u32(18000u, 6u)], -2147483647i, 45921i), vec4<i32>(u_input.b.x, u_input.b.x, -20067i, global3[_wgslsmith_index_u32(arg_1, 6u)]), true), u_input.b), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3, ~var_2), 6u)]) & ~1i, u_input.b.x);
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = ~select(4294967295u, u_input.d.x | 24553u, !global1.x && !global1.x) << (52172u % 32u);
    var var_1 = func_3(-6353i < _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 1u), 6u)], firstTrailingBit(2147483647i), i32(-1i) * -2147483647i), abs(u_input.c.x)) ^ _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(reverseBits(u_input.a << (firstTrailingBit(u_input.a) % 32u)), 6u)], 1i);
    var_0 = firstTrailingBit(u_input.c.x);
    global3 = array<i32, 6>();
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], -497f)), global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), u_input.c.zw)), 3u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 3u)]))));
    return select(!vec3<bool>(false, true, 1i == global3[_wgslsmith_index_u32(~u_input.c.x, 6u)]), vec3<bool>(arg_0.x, true, false), arg_0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = select(select(!select(vec3<bool>(false, global1.x, global1.x), !vec3<bool>(global1.x, false, true), global3[_wgslsmith_index_u32(0u, 6u)] <= -38437i), select(vec3<bool>(u_input.b.x >= -55467i, 1u < u_input.c.x, any(vec3<bool>(true, global1.x, false))), !vec3<bool>(false, global1.x, global1.x), select(!vec3<bool>(global1.x, global1.x, false), func_2(vec4<bool>(true, global1.x, true, false)), !vec3<bool>(true, global1.x, true))), vec3<bool>(u_input.d.x < 1u, any(!vec3<bool>(global1.x, global1.x, global1.x)), global1.x)), select(vec3<bool>(func_2(!vec4<bool>(global1.x, global1.x, true, global1.x)).x, true, true), vec3<bool>(true, !global1.x, false), _wgslsmith_f_op_f32(step(427f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 3u)] * global0[_wgslsmith_index_u32(u_input.d.x, 3u)]))) < _wgslsmith_f_op_f32(ceil(391f))), func_2(!select(!vec4<bool>(true, true, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), true)));
    let var_1 = !(!select(!(!vec4<bool>(global1.x, false, true, false)), vec4<bool>(var_0.x, select(false, true, global1.x), all(var_0.xy), true), select(vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(true, true, global1.x, var_0.x), vec4<bool>(true, false, var_0.x, true), false), vec4<bool>(global1.x, false, true, false))));
    global3 = array<i32, 6>();
    global0 = array<f32, 3>();
    global1 = var_1.wz;
    return global2[_wgslsmith_index_u32(abs(~(~(~u_input.d.x))), 22u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<f32, 3>();
    var var_0 = select(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, arg_1.c.x, 0u, u_input.a)) >> (vec4<u32>(28628u, 0u, u_input.d.x, arg_1.c.x) % vec4<u32>(32u)), u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x & 30250u, arg_1.c.x), firstLeadingBit(~vec2<u32>(20629u, 0u))), false) << (reverseBits(u_input.d.x) % 32u);
    var var_1 = u_input.b.yy;
    global1 = select(vec2<bool>(all(select(vec2<bool>(arg_1.e, global1.x), !arg_2, arg_2)), global1.x), arg_2, arg_2);
    let var_2 = 10773u ^ _wgslsmith_sub_u32(abs(abs(select(u_input.a, arg_1.c.x, true))), ~(~min(15395u, u_input.c.x)));
    return Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -331f))) + -767f), func_1().d.x), ~arg_1.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 3u)]), _wgslsmith_f_op_f32(ceil(arg_1.d.x)), _wgslsmith_f_op_f32(-1000f * arg_1.b.x))))), arg_1.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a || arg_3, arg_2.d.wx, _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 3913u), u_input.c.www)), ~_wgslsmith_sub_vec3_u32(~arg_0, ~arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-449f)))), arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d.x))))), any(!vec3<bool>(arg_1.e, global1.x, all(vec2<bool>(true, true)))));
    var var_1 = arg_2;
    return arg_2;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec3<i32>(arg_0.x, ~2147483647i, _wgslsmith_dot_vec4_i32(abs(u_input.b), ~(vec4<i32>(arg_0.x, global3[_wgslsmith_index_u32(arg_2.c.x, 6u)], arg_0.x, u_input.b.x) >> (u_input.c % vec4<u32>(32u))) >> (~firstLeadingBit(vec4<u32>(arg_3.c.x, u_input.d.x, 82229u, 1u)) % vec4<u32>(32u))));
    var var_1 = Struct_1(arg_2.e, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1140f, arg_3.d.x, false)) + _wgslsmith_f_op_f32(-arg_1.x)) - -123f), _wgslsmith_f_op_f32(-arg_3.d.x)), vec3<u32>(arg_3.c.x, arg_2.c.x >> (firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, 4294967295u)) % 32u), u_input.c.x), arg_3.d, true);
    global0 = array<f32, 3>();
    global3 = array<i32, 6>();
    var var_2 = 34611u;
    return !func_2(select(vec4<bool>(!global1.x, arg_3.a, all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, global1.x))), !select(vec4<bool>(arg_3.a, false, global1.x, true), vec4<bool>(global1.x, true, true, false), vec4<bool>(var_1.a, false, false, global1.x)), all(select(vec4<bool>(false, false, var_1.e, arg_2.a), vec4<bool>(true, false, arg_3.a, true), vec4<bool>(false, arg_2.a, true, arg_2.a))))).zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global2 = array<Struct_1, 22>();
    global1 = vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 6u)] < abs(-9559i), false);
    let var_1 = global3[_wgslsmith_index_u32(abs(countOneBits(60344u)), 6u)];
    let var_2 = select(!(!(!vec2<bool>(global1.x, global1.x))), func_6(u_input.b.xx >> ((_wgslsmith_mult_vec2_u32(u_input.c.yy, u_input.d) >> (u_input.c.xz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<f32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(86090u, 3u)]), func_5(abs(vec3<u32>(4294967295u, 1u, u_input.c.x)), global2[_wgslsmith_index_u32(u_input.d.x, 22u)], func_4(global1.x, func_1(), vec2<bool>(false, true)), any(vec4<bool>(false, global1.x, true, global1.x))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, u_input.c.x)), 22u)]), func_2(!vec4<bool>(false && global1.x, false, true, false || global1.x)).xy);
    global2 = array<Struct_1, 22>();
    var var_3 = global2[_wgslsmith_index_u32(1u, 22u)];
    let var_4 = global2[_wgslsmith_index_u32(0u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x)))));
}

