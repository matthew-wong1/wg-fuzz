struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<bool>, 1>;

var<private> global3: array<vec2<u32>, 8>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(~(~u_input.d.xy) ^ vec2<u32>(u_input.b, 78425u), any(vec2<bool>(true, all(vec2<bool>(false, false)))), !global2[_wgslsmith_index_u32(4294967295u, 1u)]));
    let var_1 = any(var_0.a.c);
    global3 = array<vec2<u32>, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-254f)) + -324f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(915f * -1000f))))));
    global2 = array<vec2<bool>, 1>();
    return ~(~max(_wgslsmith_mult_vec4_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec4<u32>(global1.x, 22312u, 1u, 1u))), global0[_wgslsmith_index_u32(u_input.c, 19u)]));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(1000f));
    global3 = array<vec2<u32>, 8>();
    var var_1 = arg_0.a;
    return 320f;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_4(!vec4<bool>(true, !any(vec4<bool>(arg_0.x, false, arg_0.x, false)), !select(arg_0.x, false, arg_0.x), ~global1.x > _wgslsmith_mod_u32(1u, 1u)), ~((~arg_1.x ^ 4294967295u) | (~u_input.b ^ global1.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1104f, 881f, arg_2, -1177f) + vec4<f32>(-287f, arg_2, -1221f, arg_2)))), all(select(!vec4<bool>(arg_0.x, true, true, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, true)), false)), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 24849u), _wgslsmith_dot_vec2_u32(arg_3, arg_1))), global1.x < arg_3.x, true), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -574f, -542f, arg_2) * vec4<f32>(arg_2, 515f, arg_2, -617f)), vec4<f32>(413f, 429f, 1870f, arg_2))))), 4294967295u == func_3().x, ~4294967295u, arg_0.x, !any(!global2[_wgslsmith_index_u32(0u, 1u)])));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(-116f - 238f)));
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = select(18154u, 22209u, u_input.e != ~(i32(-1i) * -u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(global2[_wgslsmith_index_u32(u_input.b, 1u)], _wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_div_vec2_u32(~vec2<u32>(0u, global1.x), vec2<u32>(41435u, 0u) & vec2<u32>(u_input.d.x, global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(vec2<u32>(1u, global1.x), true, global2[_wgslsmith_index_u32(1u, 1u)])), func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1000f) * arg_0))), u_input.d.xx)));
    let var_2 = Struct_4(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, false))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1501f * arg_0)) >= -1425f), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(max(4294967295u, 48090u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 32030u, 1u, 36119u), vec4<u32>(80292u, global1.x, 0u, 36910u)), u_input.d.x, min(_wgslsmith_add_u32(u_input.c, u_input.d.x), ~6453u)), global0[_wgslsmith_index_u32(~global1.x, 19u)]), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0))), any(select(select(global2[_wgslsmith_index_u32(64767u, 1u)], vec2<bool>(true, false), global2[_wgslsmith_index_u32(17109u, 1u)]), global2[_wgslsmith_index_u32(0u, 1u)], select(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(global1.x, 1u)], global2[_wgslsmith_index_u32(global1.x, 1u)]))), _wgslsmith_dot_vec3_u32(u_input.d, ~(~vec3<u32>(1u, global1.x, 0u))), false, !(!all(vec4<bool>(false, true, false, true)))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, _wgslsmith_f_op_f32(trunc(1060f)), -1000f, -1610f)), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), 1u, true, !all(select(global2[_wgslsmith_index_u32(350u, 1u)], global2[_wgslsmith_index_u32(3132u, 1u)], vec2<bool>(true, false)))));
    var var_3 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.e, 0i), firstLeadingBit(12395i)), u_input.a.x, -min(43054i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 6571i, -2147483647i), vec4<i32>(2606i, u_input.a.x, -1i, 42059i))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(u_input.e, 2147483647i, u_input.e), -vec3<i32>(-14303i, u_input.e, 1i), true), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.e, 24832i)), min(vec3<i32>(u_input.e, -2147483647i, 21082i), vec3<i32>(u_input.a.x, 2147483647i, -1i)))), select(~(-1i), -2147483647i, u_input.d.x <= 34096u) >> ((_wgslsmith_sub_u32(4294967295u, 16499u) & u_input.b) % 32u)));
    var var_4 = 2890f;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.a.ww) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(trunc(var_2.d.a.xz)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)))))));
}

fn func_1() -> bool {
    var var_0 = 1f;
    global2 = array<vec2<bool>, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1107f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1095f, -833f) + vec2<f32>(654f, 555f))))) + vec2<f32>(_wgslsmith_f_op_f32(874f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1187f, 246f)) + -3305f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -582f)))));
    let var_2 = firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, reverseBits(44467i), _wgslsmith_mod_i32(-u_input.a.x, u_input.e ^ u_input.a.x)), u_input.a));
    let var_3 = !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(33613u, 0u, 25426u)), vec3<u32>(u_input.d.x, u_input.c, u_input.b))), ~(1u ^ select(73354u, global1.x, false))), 1u)];
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(all(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false)), all(vec3<bool>(false, true, false)))), func_1()));
    global1 = global3[_wgslsmith_index_u32(max(44843u, select(global1.x, u_input.d.x, false)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global1.x, 35502u, 4294967295u)), 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, 896f, 910f, 1389f)))), vec4<f32>(-102f, -866f, _wgslsmith_f_op_f32(select(-413f, -1783f, true)), _wgslsmith_div_f32(1048f, -1001f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-165f, _wgslsmith_f_op_f32(ceil(389f)), _wgslsmith_f_op_f32(abs(-747f)), _wgslsmith_f_op_f32(f32(-1f) * -964f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-308f, -1683f, 570f, -869f), vec4<f32>(1813f, -1000f, 1000f, -1000f))))))), _wgslsmith_dot_vec2_i32(u_input.a.yy, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.e, u_input.a.x), vec2<i32>(-2147483647i, -75461i)) & vec2<i32>(2147483647i, u_input.e)));
}

