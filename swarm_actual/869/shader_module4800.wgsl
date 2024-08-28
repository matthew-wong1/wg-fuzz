struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -23386i), vec2<bool>(false, false)), -1i, vec3<f32>(-526f, 1191f, 2331f), 2147483647i, true), Struct_2(Struct_1(vec2<i32>(37281i, i32(-2147483648)), vec2<bool>(false, false)), -235i, vec3<f32>(807f, -1939f, -383f), -41982i, false), Struct_2(Struct_1(vec2<i32>(1i, -43250i), vec2<bool>(true, false)), -61753i, vec3<f32>(1072f, -177f, 191f), 2147483647i, true), Struct_2(Struct_1(vec2<i32>(5724i, -1142i), vec2<bool>(true, true)), -1i, vec3<f32>(175f, -1350f, -315f), -16693i, false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, true)), 29192i, vec3<f32>(782f, 1561f, 1372f), 2147483647i, false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -27336i), vec2<bool>(true, false)), -10061i, vec3<f32>(264f, 2051f, 197f), -32552i, false), Struct_2(Struct_1(vec2<i32>(-10274i, -1i), vec2<bool>(false, true)), -15768i, vec3<f32>(-685f, 723f, -1262f), 2147483647i, true), Struct_2(Struct_1(vec2<i32>(41698i, 2147483647i), vec2<bool>(false, false)), 4963i, vec3<f32>(-589f, -638f, 1366f), i32(-2147483648), true), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, false)), -25206i, vec3<f32>(823f, -1293f, 515f), -27637i, true), Struct_2(Struct_1(vec2<i32>(-1i, -13348i), vec2<bool>(false, true)), -40460i, vec3<f32>(149f, 348f, 420f), 66429i, true), Struct_2(Struct_1(vec2<i32>(0i, -40608i), vec2<bool>(false, false)), 2147483647i, vec3<f32>(587f, 1000f, -325f), -1i, false), Struct_2(Struct_1(vec2<i32>(1i, 19076i), vec2<bool>(true, true)), i32(-2147483648), vec3<f32>(-474f, 1714f, -564f), 2147483647i, true), Struct_2(Struct_1(vec2<i32>(2147483647i, -42508i), vec2<bool>(false, false)), -1i, vec3<f32>(-3035f, 1669f, -461f), -22967i, false), Struct_2(Struct_1(vec2<i32>(-27917i, 0i), vec2<bool>(true, false)), 0i, vec3<f32>(-2550f, 1091f, 109f), -66081i, false), Struct_2(Struct_1(vec2<i32>(78887i, 1i), vec2<bool>(true, true)), 2147483647i, vec3<f32>(-255f, 784f, 1101f), -26028i, false), Struct_2(Struct_1(vec2<i32>(1857i, 2147483647i), vec2<bool>(true, true)), 17377i, vec3<f32>(766f, -647f, 257f), 2147483647i, false), Struct_2(Struct_1(vec2<i32>(74582i, 1i), vec2<bool>(false, false)), -7887i, vec3<f32>(-1352f, -727f, -1348f), 0i, false), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(true, false)), -1i, vec3<f32>(-226f, -1045f, -126f), -24750i, true), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec2<bool>(false, false)), 29226i, vec3<f32>(-1524f, -485f, -375f), 0i, false), Struct_2(Struct_1(vec2<i32>(22513i, i32(-2147483648)), vec2<bool>(false, false)), -1i, vec3<f32>(-1738f, 1281f, 3338f), -2709i, true), Struct_2(Struct_1(vec2<i32>(1i, 46661i), vec2<bool>(true, true)), 41313i, vec3<f32>(579f, -957f, -1000f), i32(-2147483648), true), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<bool>(false, false)), i32(-2147483648), vec3<f32>(493f, 2441f, -739f), -1i, false), Struct_2(Struct_1(vec2<i32>(2147483647i, -21225i), vec2<bool>(false, true)), i32(-2147483648), vec3<f32>(-489f, 278f, 607f), -11005i, false), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), vec2<bool>(true, true)), 2147483647i, vec3<f32>(-1278f, 210f, -1513f), 20248i, true));

var<private> global1: array<i32, 25>;

var<private> global2: bool;

var<private> global3: array<bool, 12> = array<bool, 12>(true, true, false, true, false, true, false, false, true, false, false, false);

var<private> global4: array<bool, 32> = array<bool, 32>(false, true, false, false, true, true, false, true, false, false, true, true, false, true, false, true, true, false, true, true, false, true, false, true, true, true, false, false, true, false, false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global3 = array<bool, 12>();
    return _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(576f, _wgslsmith_div_f32(-1066f, 852f))))))));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-275f, -588f))), global4[_wgslsmith_index_u32(u_input.a, 32u)])) - _wgslsmith_f_op_f32(trunc(1258f))));
    global4 = array<bool, 32>();
    global3 = array<bool, 12>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2090f * 487f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1898f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -615f))))), _wgslsmith_f_op_f32(-1579f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -2183f))));
    var var_2 = Struct_1(-firstTrailingBit(vec2<i32>(2147483647i, abs(global1[_wgslsmith_index_u32(4294967295u, 25u)]))), vec2<bool>(!(!global4[_wgslsmith_index_u32(u_input.a, 32u)] & !global3[_wgslsmith_index_u32(u_input.a, 12u)]), true));
    return vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-1473f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), var_1.x) * _wgslsmith_f_op_f32(step(var_1.x, 2459f)))));
}

fn func_1() -> u32 {
    global1 = array<i32, 25>();
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -292f);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-980f, _wgslsmith_f_op_f32(-var_1)) + vec2<f32>(var_1, 516f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(899f, -1500f) + vec2<f32>(-261f, var_1)), vec2<f32>(366f, -592f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(278f, 247f), vec2<f32>(-1161f, 292f), vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 32u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 143f))), _wgslsmith_f_op_vec2_f32(func_2())))));
    var var_3 = select(!select(select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(u_input.a, 12u)]), vec2<bool>(global3[_wgslsmith_index_u32(22029u, 12u)], global4[_wgslsmith_index_u32(u_input.a, 32u)]), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], true, false, global3[_wgslsmith_index_u32(u_input.a, 12u)]))), !select(vec2<bool>(false, true), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 12u)])), false), select(vec2<bool>(!global3[_wgslsmith_index_u32(18538u, 12u)] | !global3[_wgslsmith_index_u32(u_input.a, 12u)], true), !(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 12u)], false)), false | all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global4[_wgslsmith_index_u32(u_input.a, 32u)], global4[_wgslsmith_index_u32(30462u, 32u)]))), any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], all(select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 32u)], false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 32u)], false, global4[_wgslsmith_index_u32(5987u, 32u)]), false)), global4[_wgslsmith_index_u32(u_input.a, 32u)])));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 59374u), ~vec2<u32>(44385u, 1u)), vec2<u32>(u_input.a, 6767u), (vec2<u32>(24507u, 0u) & vec2<u32>(4294967295u, u_input.a)) >> (vec2<u32>(2136u, u_input.a) % vec2<u32>(32u)))) << (vec2<u32>(39797u, func_1()) % vec2<u32>(32u));
    global4 = array<bool, 32>();
    var var_1 = global1[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(var_0, var_0 | var_0), var_0), 4294967295u)), 25u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(-1161f * 928f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(select(-473f, -220f, global3[_wgslsmith_index_u32(4294967295u, 12u)]))))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(649f)) - -362f)))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a & var_0.x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -2433f, 336f, -490f))), var_3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c) * _wgslsmith_f_op_vec3_f32(select(var_3.c, vec3<f32>(1382f, var_2.x, _wgslsmith_f_op_f32(func_3())), select(vec3<bool>(var_3.a.b.x, false, true), select(vec3<bool>(true, var_3.e, var_3.e), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 12u)], false, global3[_wgslsmith_index_u32(var_0.x, 12u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 32u)], false, false)), vec3<bool>(var_3.a.b.x, global4[_wgslsmith_index_u32(u_input.a, 32u)], var_3.e))))), vec3<u32>(_wgslsmith_mod_u32(countOneBits(firstLeadingBit(u_input.a)), ~firstLeadingBit(u_input.a)), var_0.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, var_0.x, u_input.a, u_input.a) ^ vec4<u32>(var_0.x, u_input.a, var_0.x, 4294967295u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> ((vec4<u32>(u_input.a, 1u, 0u, 54935u) | vec4<u32>(34758u, var_0.x, var_0.x, 0u)) % vec4<u32>(32u)))));
}

