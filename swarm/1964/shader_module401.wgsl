struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<i32, 32> = array<i32, 32>(35874i, -1i, -37951i, 1i, 1i, -26158i, 40106i, 29811i, 41318i, 1i, -1i, 0i, 25072i, -27085i, -15556i, i32(-2147483648), -38786i, -11451i, 22306i, -26979i, 1i, i32(-2147483648), 2147483647i, -62509i, i32(-2147483648), -1i, 0i, -1i, 0i, 0i, 2147483647i, -1679i);

var<private> global2: array<vec3<f32>, 9>;

var<private> global3: array<i32, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2052f * _wgslsmith_f_op_f32(floor(1073f)))))));
    var var_1 = abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-global3[_wgslsmith_index_u32(66444u, 10u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -14158i, 12310i), vec3<i32>(global3[_wgslsmith_index_u32(19961u, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 2147483647i)), global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(23872u, 32u)]), vec4<i32>(~(~71521i), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(51021u, 10u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)])), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, 41084u), 10u)], select(-global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 11444i, true)), vec4<i32>(-1i) * -countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(1u, 32u)], 24850i, global1[_wgslsmith_index_u32(63024u, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1809f, -539f, -2334f, -1302f) + vec4<f32>(-1111f, 1354f, -212f, -578f)), vec4<f32>(-1000f, 242f, 351f, 2110f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1179f, -578f, 2493f, 364f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(929f, -408f, 441f, 2188f) * vec4<f32>(-1351f, -1228f, 449f, -890f))))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -782f)), -1259f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(140f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f * 1129f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(514f, -229f))))));
    global1 = array<i32, 32>();
    return vec2<u32>(u_input.a.x ^ ~(~u_input.a.x), 0u);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global3 = array<i32, 10>();
    global2 = array<vec3<f32>, 9>();
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~arg_0.x, arg_0.x, _wgslsmith_mult_u32(u_input.a.x, arg_0.x)), ~arg_0.x), ~(func_3() >> (select(arg_0, vec2<u32>(102293u, arg_0.x), true) % vec2<u32>(32u))));
    global3 = array<i32, 10>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -249f))))), ~countOneBits(select(vec2<i32>(23309i, global3[_wgslsmith_index_u32(1u, 10u)]) | vec2<i32>(1i, global1[_wgslsmith_index_u32(11582u, 32u)]), _wgslsmith_mult_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(21061u, 10u)], global3[_wgslsmith_index_u32(var_0, 10u)]), vec2<i32>(global3[_wgslsmith_index_u32(1785u, 10u)], 17988i)), true)), Struct_1(vec4<i32>((global3[_wgslsmith_index_u32(79352u, 10u)] | global1[_wgslsmith_index_u32(42786u, 32u)]) ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 32u)], select(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(4318u, 32u)], true) & global3[_wgslsmith_index_u32(16277u, 10u)], global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(arg_0.x, u_input.a.x)), 10u)], countOneBits(abs(2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1076f - -476f), -1454f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-457f))), -1271f), any(vec2<bool>(any(vec4<bool>(true, false, true, false)), global1[_wgslsmith_index_u32(0u, 32u)] < global3[_wgslsmith_index_u32(4294967295u, 10u)])), -17055i), ~_wgslsmith_mult_u32(~var_0, ~(~arg_0.x)), Struct_1(reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(26311u, 10u)], 40344i, -81145i, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<i32>(global1[_wgslsmith_index_u32(var_0, 32u)], global3[_wgslsmith_index_u32(39770u, 10u)], global3[_wgslsmith_index_u32(26963u, 10u)], global3[_wgslsmith_index_u32(arg_0.x, 10u)])), vec4<i32>(14146i, 28216i, global3[_wgslsmith_index_u32(arg_0.x, 10u)], -1437i) ^ vec4<i32>(2147483647i, 56001i, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(42080u, 10u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-912f, _wgslsmith_f_op_f32(step(418f, -790f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), true || any(vec3<bool>(true, true, true)), ~global1[_wgslsmith_index_u32(max(~arg_0.x, u_input.a.x & u_input.a.x), 32u)]));
    return Struct_2(vec4<i32>(-4779i, var_1.c.e & -9486i, firstTrailingBit(64217i), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a + 954f), _wgslsmith_f_op_f32(1000f - -1113f), _wgslsmith_f_op_f32(min(var_1.e.c, var_1.a))) - global2[_wgslsmith_index_u32(~0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, var_0), u_input.a) % 32u), 9u)])), !var_1.e.d);
}

fn func_4(arg_0: Struct_2) -> bool {
    global1 = array<i32, 32>();
    global2 = array<vec3<f32>, 9>();
    let var_0 = ~1i;
    let var_1 = Struct_3(1000f, _wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -arg_0.a.wy) | arg_0.a.zw, vec2<i32>(-1i, -9430i)), Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.xz)), _wgslsmith_f_op_f32(trunc(-151f)), arg_0.c, 19787i), ~_wgslsmith_add_u32(~56761u, func_3().x), Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -1703f)))), -1586f, false, var_0));
    global1 = array<i32, 32>();
    return true;
}

fn func_1() -> vec4<bool> {
    global2 = array<vec3<f32>, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 9u)]) - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(9226u, 9u)] - global2[_wgslsmith_index_u32(8515u, 9u)]))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1414f, -349f, 100f)))));
    var_0 = global2[_wgslsmith_index_u32(~20300u, 9u)];
    var var_1 = func_4(func_2(~(vec2<u32>(0u, u_input.a.x) & ~u_input.a.zz)));
    global3 = array<i32, 10>();
    return select(vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(-var_0.x), all(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)), !vec4<bool>(func_2(u_input.a.zy).c, func_4(Struct_2(vec4<i32>(-42501i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), global2[_wgslsmith_index_u32(u_input.a.x, 9u)], true)), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec4<bool>(true, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(15211u, 32u)] == -10392i, true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)] <= 2147483647i, true), vec4<bool>(true, true, true, true)), select(func_1(), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false))), any(vec4<bool>(false, true, true, func_4(Struct_2(vec4<i32>(1i, 1i, 1i, -25811i), vec3<f32>(418f, 2447f, -483f), false)))));
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_div_i32(i32(-1i) * -1i, max(1i, -1i))), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(firstLeadingBit(~(~1u)), 32u)], global3[_wgslsmith_index_u32(8405u, 10u)]), _wgslsmith_sub_i32(reverseBits(~(-2147483647i)), _wgslsmith_mod_i32(-9865i, global3[_wgslsmith_index_u32(max(func_3().x, func_3().x), 10u)])), abs(-14934i) & (_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(9401u, 10u)] & global3[_wgslsmith_index_u32(7001u, 10u)], -global3[_wgslsmith_index_u32(u_input.a.x, 10u)]) << (~u_input.a.x % 32u)));
    var var_2 = 6309u ^ u_input.a.x;
    global2 = array<vec3<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-479f, _wgslsmith_f_op_f32(max(-1991f, -1337f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(step(618f, -667f))))), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], ~1i), _wgslsmith_mult_i32(var_1.x, 1i));
}

