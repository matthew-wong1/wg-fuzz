struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -1i, 2147483647i);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(1456f, -2274f, 734f)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-1000f, -373f, -1845f)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1419f, -393f, 730f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-668f, 1210f, 1749f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-307f, -681f, 727f)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-924f, 145f, -607f)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1409f, -1533f, -364f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(472f, -727f, -496f)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1088f, -1318f, 710f)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(573f, 1000f, -833f)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1007f, 1027f, 1854f)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(1226f, 1712f, 268f)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-393f, -644f, 803f)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-547f, 732f, -288f)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(607f, 2109f, -1097f)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(1087f, -313f, -584f)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-101f, -223f, 411f)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-1000f, 345f, -320f)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-496f, 291f, -1594f)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-938f, 273f, 390f)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-199f, -2316f, 340f)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-451f, 1437f, 596f)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-170f, -1071f, -1087f)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(552f, 806f, -1000f)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(1949f, 1000f, -528f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(829f, 143f, 286f)), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-928f, -1848f, -1415f)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-614f, 422f, 1950f)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-833f, 957f, -1816f)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-1575f, 231f, -323f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1140f, 163f, -1711f)));

var<private> global2: vec4<bool>;

var<private> global3: array<f32, 29>;

var<private> global4: array<u32, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~arg_1, 31u)];
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1197f * arg_0.b), _wgslsmith_f_op_f32(step(651f, global3[_wgslsmith_index_u32(arg_1, 29u)])), any(var_0.a)))) == -130f);
    var var_2 = select(vec3<i32>(u_input.b.x, 4162i, -16998i), u_input.c.yxz, vec3<bool>(all(vec3<bool>(arg_0.a.x, true, false)), true, global2.x));
    var_1 = false & (_wgslsmith_mult_u32(arg_1 ^ arg_1, arg_1) < (arg_1 << (arg_1 % 32u)));
    var var_3 = firstTrailingBit(~firstLeadingBit(u_input.a));
    return !global2.wyz;
}

fn func_2() -> vec3<bool> {
    let var_0 = 4294967295u;
    let var_1 = vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u | ~var_0, 29u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f)));
    global2 = select(select(!(!vec4<bool>(false, var_1.x, global2.x, true)), !(!select(vec4<bool>(var_1.x, var_1.x, global2.x, var_1.x), vec4<bool>(var_1.x, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, false, false))), all(select(vec3<bool>(false, var_1.x, global2.x), !var_1, func_3(Struct_2(vec4<bool>(false, global2.x, var_1.x, global2.x), global3[_wgslsmith_index_u32(0u, 29u)], vec4<f32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(var_0, 29u)], global3[_wgslsmith_index_u32(7430u, 29u)], global3[_wgslsmith_index_u32(49297u, 29u)]), vec2<f32>(global3[_wgslsmith_index_u32(50332u, 29u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 29u)])), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)])))), !(!vec4<bool>(global4[_wgslsmith_index_u32(35449u, 16u)] > var_0, true, select(var_1.x, true, false), true)), select(select(!select(vec4<bool>(global2.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, global2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, false, global2.x, global2.x), global2.x), !select(vec4<bool>(false, var_1.x, true, global2.x), vec4<bool>(false, global2.x, global2.x, false), global2.x)), vec4<bool>(global2.x, global2.x, true, global2.x), select(vec4<bool>(true, !var_1.x, global2.x, any(global2.yy)), !select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, true, true, global2.x), vec4<bool>(false, var_1.x, false, var_1.x)), select(select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(true, global2.x, false, global2.x), var_1.x), select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), global2.x), vec4<bool>(var_1.x, false, false, global2.x)))));
    var var_2 = 29176u;
    let var_3 = Struct_1(select(!(!(!vec4<bool>(true, var_1.x, global2.x, true))), vec4<bool>(var_1.x, !global2.x, true && all(vec2<bool>(false, false)), any(func_3(Struct_2(vec4<bool>(true, var_1.x, false, var_1.x), 1081f, vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], -2395f, global3[_wgslsmith_index_u32(var_0, 29u)], 1635f), vec2<f32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(19381u, 29u)])), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0, 16u)], 16u)]).xy)), select(var_1.x, !var_1.x, global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(29983u, 29u)] * 1042f), global3[_wgslsmith_index_u32(44068u, 29u)], _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_0, 29u)], 1000f))))));
    return vec3<bool>(!any(vec3<bool>(var_0 == global4[_wgslsmith_index_u32(var_0, 16u)], true, var_1.x)), select(global2.x, true, false), true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_1(select(vec4<bool>(false, true, !global2.x, any(!vec2<bool>(global2.x, var_0.x))), select(vec4<bool>(any(var_0), true, false, var_0.x && global2.x), vec4<bool>(func_2().x, global2.x, all(global2.xx), global2.x || var_0.x), !select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(global2.x, false, global2.x, false), true)), vec4<bool>(var_0.x, true, var_0.x, false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-367f - 877f), global3[_wgslsmith_index_u32(select(1u, global4[_wgslsmith_index_u32(23389u, 16u)], var_0.x), 29u)], !global2.x)) * -121f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244f - -710f) - _wgslsmith_f_op_f32(-936f - 634f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2323f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 29u)]))))));
    let var_2 = false;
    let var_3 = global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(3735u, 16u)], 31u)];
    let var_4 = u_input.b.x;
    return Struct_1(!select(var_3.a, var_3.a, vec4<bool>(true, var_1.a.x, !var_2, !var_0.x)), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(min(global0.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(7462i, 1i, -42116i), -abs(countOneBits(vec3<i32>(25257i, 26637i, u_input.d)))), global2.x & !any(func_1().a.wyw));
    global4 = array<u32, 16>();
    let var_2 = Struct_2(func_1().a, var_0.b.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f - -624f) + _wgslsmith_f_op_f32(1919f * var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1303f), 583f, 1332f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1051f, 1278f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(68981u, 16u)], 16u)], 29u)], 786f) + vec4<f32>(var_0.b.x, var_0.b.x, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 29u)], var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15473u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 29u)], 1560f, var_0.b.x, 401f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 29u)], var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], 1261f)))))));
    let var_3 = Struct_2(select(vec4<bool>(true, any(select(var_2.a, vec4<bool>(true, true, var_2.a.x, var_0.a.x), var_2.a)), var_2.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_2.a.x, var_2.a.x, !var_0.a.x), vec4<bool>(true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 29u)] >= -2913f, !(!var_0.a.x), all(var_2.a.zwz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1598f, global3[_wgslsmith_index_u32(84u, 29u)])))) - _wgslsmith_f_op_f32(-1308f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1052f * var_0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(56363u, 29u)], -538f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32573u, 16u)], 16u)], 29u)], -448f) + var_2.c) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d.x, -355f, var_0.b.x, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(60255u, 16u)], 29u)]), var_2.c))) - _wgslsmith_f_op_vec4_f32(ceil(var_2.c)))), vec2<f32>(-2244f, var_0.b.x));
    var var_4 = false;
    var var_5 = Struct_1(vec4<bool>(true, false, func_2().x, var_0.a.x), var_3.c.wzw);
    var var_6 = var_5.a.xyz;
    var var_7 = Struct_2(vec4<bool>(all(vec4<bool>(var_3.a.x, var_0.a.x, global2.x, func_3(Struct_2(vec4<bool>(var_5.a.x, false, var_2.a.x, true), var_2.d.x, vec4<f32>(136f, 327f, -394f, var_0.b.x), var_0.b.yy), global4[_wgslsmith_index_u32(28224u, 16u)]).x)), true, true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_5.b.x)), var_0.b.x, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 29u)]), _wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(round(1693f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48634u, 16u)], 29u)] * var_5.b.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_3.c - vec4<f32>(-1256f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 29u)], var_5.b.x, -1000f)))))), var_3.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.b.zy, vec2<f32>(-202f, -151f)))), _wgslsmith_f_op_vec2_f32(var_3.c.yx - _wgslsmith_f_op_vec2_f32(select(var_2.d, var_0.b.yy, true))), vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max((vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 32547u) & vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)])) << ((vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54188u, 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)]) | vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 4871u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(12791u, global4[_wgslsmith_index_u32(22155u, 16u)]), vec2<u32>(1944u, global4[_wgslsmith_index_u32(0u, 16u)])), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)]), reverseBits(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(2888u, 16u)])))));
}

