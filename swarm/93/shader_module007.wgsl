struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(25526i, -1i, 0i, 1i, i32(-2147483648), 34307i, 1i, -25427i, 1i, -13636i, -1i, 1i, -49273i, 0i, -16028i, 35960i, 2147483647i, -1i, 2147483647i, 14983i, 0i, 2147483647i, -1i, -356i, 0i, -24324i, 28154i, 29519i, 1i, -12595i, 0i, -33322i);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<u32, 31> = array<u32, 31>(8639u, 12267u, 3918u, 124433u, 0u, 4294967295u, 0u, 13904u, 24688u, 36519u, 1022u, 36675u, 0u, 1u, 0u, 4294967295u, 1u, 48933u, 23115u, 1u, 52581u, 20861u, 53042u, 0u, 4294967295u, 0u, 10427u, 10056u, 4294967295u, 5768u, 1u);

var<private> global3: array<i32, 21>;

var<private> global4: array<f32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(1517f - global4[_wgslsmith_index_u32(1u, 31u)]);
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.wx, _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(global2[_wgslsmith_index_u32(8593u, 31u)]), u_input.a.x) ^ min(u_input.a.wz, vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18062u, 31u)], 31u)])), u_input.a.yz & ~firstTrailingBit(u_input.a.zw)), vec2<u32>(~1u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zzx, abs(vec3<u32>(0u, 21521u, 1u))), u_input.a.zzw << (~vec3<u32>(0u, u_input.a.x, 134770u) % vec3<u32>(32u))), 31u)]));
    global0 = array<i32, 32>();
    let var_2 = global1.x;
    var var_3 = Struct_1(!vec2<bool>(true, all(!global1.zzz)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-u_input.b, u_input.b), -1i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1304f * _wgslsmith_f_op_f32(exp2(var_0))) + _wgslsmith_f_op_f32(1644f - global4[_wgslsmith_index_u32(0u, 31u)])), -1295f));
    return !global1.xw;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(select(select(vec2<bool>(true, select(false, true, false)), func_3(), global1.yy), select(func_3(), vec2<bool>(all(vec2<bool>(global1.x, true)), global1.x), true), !func_3()), -2147483647i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(395f, -1326f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)]), vec3<f32>(656f, global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(u_input.a.x, 31u)])))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)], 346f) - vec3<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], global4[_wgslsmith_index_u32(u_input.a.x, 31u)], 370f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-217f, -1305f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(75441u, 31u)], 31u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-663f, -131f, -1249f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(0u, 31u)], -690f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 31u)])), func_3().x)))))));
    global1 = select(vec4<bool>(var_0.a.x, all(!global1.ww), func_3().x, _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27187u, 31u)], 31u)], 31u)]) != (_wgslsmith_dot_vec3_u32(vec3<u32>(28214u, 0u, 5775u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)]))), !vec4<bool>(var_0.a.x, !global1.x, var_0.a.x, select(global1.x & false, any(global1.yy), true)), !select(vec4<bool>(true, false, 130058u >= u_input.a.x, true), select(vec4<bool>(false, global1.x, var_0.a.x, false), vec4<bool>(var_0.a.x, true, false, global1.x), global1.x), (global2[_wgslsmith_index_u32(24205u, 31u)] != 4294967295u) | select(var_0.a.x, false, var_0.a.x)));
    let var_1 = Struct_1(var_0.a, 25416i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -1035f)))), 1139f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~4294967295u, 31u)] * -1217f)));
    global4 = array<f32, 31>();
    var var_2 = ~u_input.b.wyx;
    return vec4<bool>(all(vec4<bool>(_wgslsmith_div_i32(var_1.b, global0[_wgslsmith_index_u32(4294967295u, 32u)]) < select(var_2.x, -9547i, var_0.a.x), all(!vec2<bool>(var_0.a.x, false)), any(vec2<bool>(true, true)), global1.x)), var_1.a.x, false, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global3 = array<i32, 21>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u ^ ~(~_wgslsmith_sub_u32(1u, u_input.a.x)), 1u), 32u)];
    var var_1 = arg_2;
    let var_2 = firstTrailingBit(_wgslsmith_clamp_u32(10527u, firstTrailingBit(1u), min(u_input.a.x, ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 31u)], 4294967295u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f + arg_2.c.x) * _wgslsmith_f_op_f32(-457f * 465f))), -1054f, arg_2.c.x));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    global1 = select(select(select(vec4<bool>(arg_0.a.x | arg_0.a.x, true, true, all(vec4<bool>(true, false, true, false))), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, global1.x), !vec4<bool>(arg_0.a.x, false, false, arg_0.a.x)), vec4<bool>(any(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x)), false, (21038u > global2[_wgslsmith_index_u32(20300u, 31u)]) | false, _wgslsmith_f_op_f32(max(1539f, arg_1)) != arg_1), true), vec4<bool>(any(select(vec2<bool>(false, arg_0.a.x), !vec2<bool>(global1.x, arg_0.a.x), select(arg_0.a, arg_0.a, vec2<bool>(true, global1.x)))), select(select(true, true && global1.x, global1.x), !global1.x | true, !(arg_0.b < -37560i)), false, arg_0.a.x), any(global1.wx));
    var var_0 = arg_0;
    let var_1 = 45483i;
    var_0 = func_4(!select(!select(vec4<bool>(arg_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(arg_0.a.x, false, var_0.a.x, false)), !func_2(), !global1.x), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~0u), 31u)], 31u)] ^ _wgslsmith_add_u32(global2[_wgslsmith_index_u32(~1622u, 31u)], 1u), 21u)], Struct_1(func_3(), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4[_wgslsmith_index_u32(47988u, 31u)], 313f, -521f))) * var_0.c))), !any(global1.zwx) || (true & any(vec2<bool>(arg_0.a.x, true))));
    let var_2 = vec2<f32>(588f, _wgslsmith_f_op_f32(step(-504f, arg_0.c.x)));
    return !vec4<bool>(arg_0.a.x, arg_0.a.x, _wgslsmith_mult_u32(u_input.a.x, ~0u) > ~(~1u), global1.x || false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(select(32323u, ~u_input.a.x ^ u_input.a.x, all(select(select(vec4<bool>(global1.x, false, true, false), func_1(Struct_1(global1.xx, global3[_wgslsmith_index_u32(1u, 21u)], vec3<f32>(-1000f, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], -2425f)), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)]), false), vec4<bool>(!global1.x, global1.x, any(vec3<bool>(global1.x, true, global1.x)), global1.x), all(func_2().yxy)))), 31u)];
    global1 = !(!vec4<bool>(any(global1.xz) != func_3().x, global1.x & any(vec2<bool>(global1.x, false)), true, func_3().x));
    let var_1 = Struct_1(func_1(func_4(!func_1(Struct_1(vec2<bool>(true, false), u_input.b.x, vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 31u)], 1000f, 1073f)), -1911f), 0i, Struct_1(vec2<bool>(false, false), global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 21u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(7837u, 31u)], 477f, global4[_wgslsmith_index_u32(u_input.a.x, 31u)]) - vec3<f32>(global4[_wgslsmith_index_u32(64466u, 31u)], global4[_wgslsmith_index_u32(1u, 31u)], -1000f))), select(func_4(vec4<bool>(global1.x, true, false, global1.x), -37303i, Struct_1(vec2<bool>(false, global1.x), 1i, vec3<f32>(global4[_wgslsmith_index_u32(1u, 31u)], -1227f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47178u, 31u)], 31u)], 31u)])), global1.x).a.x, global1.x, all(vec4<bool>(global1.x, true, global1.x, false)))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, firstLeadingBit(1u)), 31u)])).wz, i32(-1i) * -8056i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + 707f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(28674u, 31u)], 1254f), _wgslsmith_f_op_f32(-245f - -735f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1215f, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], -219f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1372f, -1265f, -869f) + vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], 799f)), vec3<bool>(true, true, true))) + vec3<f32>(global4[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 31u)] + -427f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = ~select(u_input.a.www, ~reverseBits(u_input.a.xzy << (vec3<u32>(7155u, 42233u, 1u) % vec3<u32>(32u))), (_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 13378i) < 13194i) | !var_1.a.x);
    global3 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.zwx, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_div_u32(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)]), ~global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), firstTrailingBit(vec3<u32>(0u, 17857u, 92061u))) ^ ~8167u, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f))))), max(u_input.b, select(vec4<i32>(~19699i, abs(-38678i), global0[_wgslsmith_index_u32(4294967295u, 32u)] ^ -1i, global3[_wgslsmith_index_u32(4294967295u | u_input.a.x, 21u)]), vec4<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 31u)], 21u)], var_1.b, 3541i, 10530i) & u_input.b, !vec4<bool>(false, global1.x, true, global1.x))));
}

