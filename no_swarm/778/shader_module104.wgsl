struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: f32 = -967f;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<u32, 6>;

var<private> global4: array<i32, 5> = array<i32, 5>(5177i, 29262i, 0i, 0i, -10110i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> bool {
    global4 = array<i32, 5>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-337f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(715f - -292f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1074f, arg_3, true)) + _wgslsmith_f_op_f32(select(arg_3, 2340f, global0[_wgslsmith_index_u32(arg_1, 9u)])))))), 273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-190f, _wgslsmith_f_op_f32(min(616f, _wgslsmith_f_op_f32(-832f * arg_3))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -286f)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) * var_0.x)), -816f);
    let var_2 = true;
    var var_3 = vec2<f32>(-1076f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1774f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(712f)))));
    return var_2;
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1402f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f))) * _wgslsmith_f_op_f32(-1000f - -393f)));
    var var_0 = Struct_4(~vec3<u32>(70039u, ~global3[_wgslsmith_index_u32(0u, 6u)], 4294967295u) | (select(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], global3[_wgslsmith_index_u32(1u, 6u)], u_input.b.x)), vec3<u32>(22896u, 41571u, 0u) << (vec3<u32>(global3[_wgslsmith_index_u32(13191u, 6u)], global3[_wgslsmith_index_u32(u_input.b.x, 6u)], global3[_wgslsmith_index_u32(u_input.b.x, 6u)]) % vec3<u32>(32u)), !vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 9u)], true, global0[_wgslsmith_index_u32(31434u, 9u)])) >> (~(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 6u)], u_input.b.x, 19159u)) % vec3<u32>(32u))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(~u_input.b.x, 9u)], any(vec4<bool>(false, false, true, false)), global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], false, !global0[_wgslsmith_index_u32(40624u, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.b), 6u)], 9u)]), global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec4<bool>(_wgslsmith_div_u32(66283u, 48539u) >= global3[_wgslsmith_index_u32(u_input.b.x, 6u)], true, false, false), vec4<bool>(func_3(Struct_5(Struct_1(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], vec4<u32>(16693u, global3[_wgslsmith_index_u32(82874u, 6u)], 4294967295u, global3[_wgslsmith_index_u32(45300u, 6u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49256u, 6u)], 6u)], 0i), vec4<bool>(global0[_wgslsmith_index_u32(3595u, 9u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], false), global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_2(vec4<u32>(0u, 52672u, u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)]), vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i), 0i)), ~20476u, vec2<i32>(2147483647i, 13213i) | vec2<i32>(global4[_wgslsmith_index_u32(1u, 5u)], 0i), -328f), true || (global0[_wgslsmith_index_u32(39562u, 9u)] && global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), true, true)), global2[_wgslsmith_index_u32(1251u, 1u)], -11164i, max(vec2<i32>(0i, -46569i), min(_wgslsmith_add_vec2_i32(~vec2<i32>(-27819i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.a), vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 5u)]), vec2<i32>(51326i, u_input.a))), -abs(vec2<i32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 5u)], u_input.a)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f - -847f)) + -100f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-952f, 1921f))), -205f)) + 129f));
    let var_1 = _wgslsmith_mult_vec4_u32(var_0.c.a, var_0.c.a);
    global0 = array<bool, 9>();
    return Struct_3(1140u, reverseBits(abs(vec2<i32>(~u_input.a, firstLeadingBit(global4[_wgslsmith_index_u32(var_1.x, 5u)])))));
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    global1 = -1295f;
    var var_0 = -reverseBits(select(~(-13952i), -2147483647i, _wgslsmith_clamp_i32(u_input.a, 1i, u_input.a) >= -14732i));
    var var_1 = func_2();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, -828f, true)))), 1f);
    let var_3 = 69484u | global3[_wgslsmith_index_u32(~(~(u_input.b.x >> (22933u % 32u))) << (max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a, u_input.b.x) >> ((29752u << (global3[_wgslsmith_index_u32(u_input.b.x, 6u)] % 32u)) % 32u), 6u)], 6u)], u_input.b.x) % 32u), 6u)];
    return firstLeadingBit(select(~vec4<u32>(u_input.b.x, 0u, 1u, 39095u), ~(~vec4<u32>(0u, 0u, var_1.a, var_1.a)), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.a, 9u)], false, false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], false, true, global0[_wgslsmith_index_u32(5591u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_3, 9u)], false, false, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(var_3, 9u)], true, global0[_wgslsmith_index_u32(var_3, 9u)])), !global0[_wgslsmith_index_u32(var_3, 9u)]))) & vec4<u32>(firstLeadingBit(~func_2().a), var_1.a, (0u | _wgslsmith_clamp_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], var_3)) | 36966u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1387f;
    global4 = array<i32, 5>();
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~(~vec2<i32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 5u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 5u)])), ~(-vec2<i32>(19967i, 0i)), ~vec2<i32>(-2147483647i, u_input.a)), -vec2<i32>(u_input.a | global4[_wgslsmith_index_u32(22703u, 5u)], ~u_input.a)), func_1(vec2<i32>(-firstTrailingBit(1i), -8904i)), 8202u, ~countOneBits(1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, firstLeadingBit(-39521i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -10499i, u_input.a), vec4<i32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2170u, 6u)], 5u)], global4[_wgslsmith_index_u32(1u, 5u)], 1i, -18039i))), -vec3<i32>(u_input.a, u_input.a, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(96776u, 6u)], 5u)]) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))));
    var var_1 = Struct_5(Struct_1(_wgslsmith_add_i32(-2147483647i, 1i), ~(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 1u, global3[_wgslsmith_index_u32(20841u, 6u)], u_input.b.x)) ^ abs(var_0.b)), ~(~(~u_input.b.x)), -34921i), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.c, 9u)], global0[_wgslsmith_index_u32(var_0.c << (var_0.c % 32u), 9u)], all(vec3<bool>(global0[_wgslsmith_index_u32(23354u, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 9u)], false)), true), select(vec4<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14054u, 6u)], 9u)], false)), all(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 9u)], false, global0[_wgslsmith_index_u32(29498u, 9u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(71870u, 45441u), 9u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(0u, 9u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true, false, global0[_wgslsmith_index_u32(79318u, 9u)])), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(15498u, 9u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(var_0.b.x, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 6u)], 9u)], true, true, global0[_wgslsmith_index_u32(0u, 9u)]), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)], 9u)]), any(vec2<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(91739u, 6u)], 9u)])))), select(global0[_wgslsmith_index_u32(var_0.c, 9u)] & global0[_wgslsmith_index_u32(min(0u, u_input.b.x), 9u)], false, global0[_wgslsmith_index_u32(~26335u, 9u)]), global2[_wgslsmith_index_u32(u_input.b.x, 1u)]);
    var var_2 = all(var_1.b.yxy);
    let var_3 = var_1.b;
    let var_4 = min(23413u, _wgslsmith_dot_vec2_u32(~select(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c, u_input.b.x), var_1.d.a.yw), reverseBits(vec2<u32>(u_input.b.x, var_0.b.x)), vec2<bool>(var_3.x, true)), vec2<u32>(var_1.a.c, u_input.b.x)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2174f));
    var_2 = true == (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.b.x, 1u), var_1.d.a) ^ ~var_0.b.x, ~var_0.b.x << (~1200u % 32u)), 9u)] & var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_5, (vec3<u32>(~14393u, 34329u, u_input.b.x) << (~select(vec3<u32>(44487u, 1255u, 1u), var_1.a.b.zxw, true) % vec3<u32>(32u))) & vec3<u32>(func_2().a, 4294967295u, firstTrailingBit(var_0.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1886f, var_5)))), vec2<f32>(_wgslsmith_f_op_f32(var_5 * 2531f), _wgslsmith_f_op_f32(sign(225f))))), -1043f);
}

