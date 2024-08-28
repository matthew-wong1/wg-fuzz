struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(-1i);

var<private> global2: array<bool, 10>;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(2147483647i), Struct_1(1390i), Struct_1(-17627i), Struct_1(0i), Struct_1(-28437i), Struct_1(-20687i), Struct_1(11726i), Struct_1(-1i), Struct_1(-48927i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(-31718i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(-20150i));

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_1 = _wgslsmith_f_op_f32(step(-784f, 847f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1604f)), _wgslsmith_f_op_f32(arg_0.b - arg_0.b), any(!vec4<bool>(global2[_wgslsmith_index_u32(32130u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(60442u, 10u)], global2[_wgslsmith_index_u32(21927u, 10u)])))) * arg_0.b);
    global1 = Struct_1(max(var_0.a, u_input.c));
    global0 = !global2[_wgslsmith_index_u32(~(max(u_input.b.x, u_input.d.x) & 1u) ^ (~(u_input.b.x >> (11138u % 32u)) >> (~(~u_input.d.x) % 32u)), 10u)];
    var var_2 = _wgslsmith_f_op_f32(step(1000f, 678f));
    return _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, arg_0.a.x) + arg_0.b)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -350f))));
    global0 = global2[_wgslsmith_index_u32(u_input.b.x, 10u)];
    var var_1 = Struct_2(arg_2, _wgslsmith_f_op_f32(-1299f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))) - _wgslsmith_f_op_f32(1075f + arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_2.zxy)))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(var_0, -335f, arg_2.x, -1000f), arg_2.x, arg_2.wyy))), _wgslsmith_f_op_f32(trunc(arg_2.x)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(var_0, -1546f, arg_2.x, var_1.a.x)) - _wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(-982f, -703f, arg_2.x, var_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_1.a.x), 1244f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-369f)), _wgslsmith_f_op_f32(f32(-1f) * -968f), 2125f))));
    var_2 = Struct_2(var_1.a, var_2.a.x, arg_2.xzy);
    return firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13691u, 22976u, u_input.a.x, 2943u), u_input.a), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) >> (~u_input.a.yz % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(arg_0.x, -987f, arg_0.x, arg_0.x), -351f, vec3<f32>(-165f, arg_0.x, -1768f)))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(524f - -1000f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(1147f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-400f, arg_0.x, arg_0.x, arg_0.x), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1457f, -1207f, 563f, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, arg_0.x, -431f, -135f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, -1295f, 1803f), vec4<f32>(arg_0.x, -505f, arg_0.x, 1249f), vec4<bool>(true, false, global2[_wgslsmith_index_u32(11248u, 10u)], global2[_wgslsmith_index_u32(arg_1.x, 10u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1119f, 755f, -854f))))));
    let var_1 = global4[_wgslsmith_index_u32(~(~31018u), 19u)];
    return abs(min(max(select(vec4<i32>(u_input.c, u_input.c, -1i, 2147483647i) >> (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 23706u) % vec4<u32>(32u)), vec4<i32>(-25535i, u_input.c, -16902i, global1.a), true), -vec4<i32>(-48546i, -2147483647i, u_input.c, u_input.c) ^ ~vec4<i32>(u_input.c, 33539i, u_input.c, var_1.a)), vec4<i32>(max(var_1.a ^ var_1.a, ~global1.a), 37507i, firstTrailingBit(reverseBits(u_input.c)), _wgslsmith_add_i32(-var_1.a, 0i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    let var_0 = vec3<u32>(abs(_wgslsmith_dot_vec2_u32(~(~u_input.d.zx), u_input.d.yz)), 48586u, abs(u_input.b.x));
    let var_1 = global4[_wgslsmith_index_u32(select(_wgslsmith_div_u32(4294967295u, u_input.a.x), abs(firstTrailingBit(var_0.x)), select(arg_3.x, false, global2[_wgslsmith_index_u32(~(~4294967295u), 10u)])), 19u)];
    var var_2 = !select(select(vec4<bool>(all(vec2<bool>(true, false)), false, arg_3.x, true), select(!vec4<bool>(false, arg_3.x, true, false), !vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.d.x, 10u)]), false), !select(vec4<bool>(arg_3.x, arg_2, false, arg_3.x), vec4<bool>(true, arg_3.x, global2[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(arg_3.x, false, true, global2[_wgslsmith_index_u32(58062u, 10u)]))), select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x != global2[_wgslsmith_index_u32(var_0.x, 10u)], true), select(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(1067u, 10u)], true), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], false), arg_2), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 10u)], arg_2, true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], true, true), vec4<bool>(arg_2, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.d.x, 10u)], arg_2)), !vec4<bool>(false, global2[_wgslsmith_index_u32(12212u, 10u)], arg_3.x, false)), true), select(vec4<bool>(true, any(arg_3), arg_2, true), !select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(var_0.x, 10u)], true, global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(true, arg_2, false, global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(false, arg_2, true, arg_3.x)), arg_2));
    let var_3 = ~46781u;
    global3 = array<Struct_1, 18>();
    return 1i;
}

fn func_1() -> f32 {
    let var_0 = vec2<i32>(2147483647i, func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1756f, -349f))), _wgslsmith_clamp_vec2_u32(func_2(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_1(global1.a), vec4<f32>(-1272f, -1000f, 797f, 2112f)), _wgslsmith_clamp_vec2_u32(u_input.a.xy, u_input.b.xx, u_input.a.yy), ~vec2<u32>(u_input.b.x, 32694u)), !all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], false))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1928f, 1517f, -1245f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(617f, 538f, -2325f, 203f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-365f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1648f, -158f, 373f) + vec3<f32>(1452f, -377f, 501f)))), true, select(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 10u)], true, global2[_wgslsmith_index_u32(1u, 10u)])), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false, false), true | !global2[_wgslsmith_index_u32(u_input.a.x, 10u)])));
    global4 = array<Struct_1, 19>();
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-496f, 1566f, -1998f, 1053f), -656f, vec3<f32>(-309f, 496f, 240f)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1179f * -369f), _wgslsmith_f_op_f32(1934f * 677f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(813f, -330f, 121f, 1778f), 342f, vec3<f32>(122f, -746f, 449f)))), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1005f - -303f) + -1429f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1232f)), _wgslsmith_f_op_f32(f32(-1f) * -1467f)), 1757f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, -1000f)), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-102f, -1874f, -1390f, -947f), -1174f, vec3<f32>(-771f, 1011f, 229f))))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(845f + -661f), _wgslsmith_f_op_f32(max(-1598f, -363f)), _wgslsmith_div_f32(-868f, -330f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-141f, -310f, -1132f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-956f, -2162f, _wgslsmith_f_op_f32(f32(-1f) * -2517f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, 1541f, -1305f)) - vec3<f32>(1386f, -555f, -247f)))));
    global0 = false;
    global4 = array<Struct_1, 19>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), var_1.c.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a.x | 1u, 30232u) ^ _wgslsmith_mult_u32(1u, u_input.d.x), firstLeadingBit(_wgslsmith_div_u32(1u, u_input.d.x))), 19u)];
    let var_1 = ~vec2<i32>(-1i, ~(~reverseBits(u_input.c)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f - 619f) + _wgslsmith_f_op_f32(-1325f + 110f)))) - -1023f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 724f));
    var var_3 = _wgslsmith_mult_u32(1u, max(~(~(~40867u)), u_input.b.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1354f, -574f, var_2, var_2), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, 748f, true))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1151f)))), select(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(u_input.d.x, 10u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(42082u, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(u_input.d.x, 10u)]), true), vec4<bool>(true, global2[_wgslsmith_index_u32(~u_input.a.x, 10u)], true, true), any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b.x, 10u)])) & (var_1.x >= var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, _wgslsmith_f_op_f32(trunc(925f)), _wgslsmith_f_op_f32(-201f - var_2), 902f))), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mod_u32(~firstTrailingBit(~40731u), 4294967295u), vec2<i32>(_wgslsmith_add_i32(-13361i, var_0.a >> (70087u % 32u)), u_input.c), (~(vec2<u32>(0u, u_input.b.x) & u_input.d.xx) ^ firstLeadingBit(countOneBits(u_input.a.xx))) << (vec2<u32>(countOneBits(4294967295u), min(u_input.b.x >> (35958u % 32u), abs(u_input.b.x))) % vec2<u32>(32u)));
}

