struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global4: array<i32, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global3 = array<Struct_1, 6>();
    global0 = 11230u;
    global1 = array<Struct_1, 21>();
    global2 = vec2<i32>(i32(-1i) * -34407i, countOneBits(global4[_wgslsmith_index_u32(firstTrailingBit(~arg_1.b.x) ^ 49023u, 5u)]));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1379f)), -430f, 1359f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-813f, _wgslsmith_div_f32(-620f, _wgslsmith_f_op_f32(f32(-1f) * -2081f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -202f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(537f)), _wgslsmith_f_op_f32(f32(-1f) * -1173f), -1793f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(491f, -555f, -242f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1933f, -1161f, -114f)))))));
    return _wgslsmith_div_f32(-130f, _wgslsmith_f_op_f32(exp2(1f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> u32 {
    global3 = array<Struct_1, 6>();
    var var_0 = 655f != arg_0.x;
    var_0 = false;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-25927i, arg_1.d), vec2<i32>(-10512i, -12462i)), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 5u)]), -1i, firstTrailingBit(global4[_wgslsmith_index_u32(u_input.a, 5u)] >> (5621u % 32u))) ^ (abs(vec3<i32>(arg_1.d, -2147483647i, global2.x) & vec3<i32>(-31303i, global4[_wgslsmith_index_u32(u_input.a, 5u)], 2147483647i)) ^ select(vec3<i32>(-1i, global2.x, global2.x), vec3<i32>(global2.x, global2.x, 1i), !vec3<bool>(false, true, arg_1.b.a))), _wgslsmith_add_vec3_i32(vec3<i32>(9165i, global4[_wgslsmith_index_u32(~u_input.a, 5u)], global2.x) ^ vec3<i32>(-8277i, -28015i, -arg_1.d), vec3<i32>(0i ^ -global2.x, abs(_wgslsmith_mult_i32(global2.x, global4[_wgslsmith_index_u32(u_input.a, 5u)])), max(abs(2147483647i), ~1i))));
    var var_2 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_div_u32(min(14187u, 28718u), 84570u)) | ~u_input.a);
    return abs(u_input.a);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = !all(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false)));
    var var_1 = Struct_2(~reverseBits(~vec2<u32>(4294967295u, 0u) & ~vec2<u32>(49499u, u_input.a)), global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(22006i, Struct_3(Struct_1(true), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), true), Struct_1(true))), -793f, -483f, _wgslsmith_f_op_f32(step(314f, 893f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1155f, 1021f, 138f))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1055f, -273f))), global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(u_input.a, 1u), u_input.a, global2.x == arg_0), 21u)], _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1074f, -966f, -1349f, 1462f), _wgslsmith_f_op_vec4_f32(vec4<f32>(817f, -1580f, -578f, -2966f) + vec4<f32>(-864f, 994f, 1027f, -298f)))), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(u_input.a, 5u)] ^ -24302i, ~16230i))), 21u)], Struct_1(all(vec3<bool>(true, true, true))), false, true);
    let var_2 = 4294967295u;
    var_1 = Struct_2(var_1.a, global3[_wgslsmith_index_u32(var_1.a.x, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(12274u >> (select(39167u, 1u, false) % 32u)), ~u_input.a, abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(993u, var_1.a.x, 30192u)), vec3<u32>(var_1.a.x, var_1.a.x, 0u)))), 21u)], 153f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(670f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1180f, -1000f, true))))), false);
    global2 = ~(~vec2<i32>(-2147483647i, 1i));
    return 54612u;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1272f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) - _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.c.x) * _wgslsmith_f_op_f32(floor(-1000f))) - arg_0.c.x), !arg_0.b.a || !(-650i >= global2.x))));
    let var_1 = func_2(global2.x);
    global4 = array<i32, 5>();
    let var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(~abs(0u), ~1u, u_input.a), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(35315u, 43672u, arg_1.b.x), arg_1.b.zyw, vec3<bool>(false, false, arg_0.b.a)), vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 17621u), 861u))));
    global0 = max(~var_1, var_1);
    return Struct_2(min(arg_1.b.zz | vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, arg_1.b.x, 3383u), var_2), var_2.x), var_2.yz), global3[_wgslsmith_index_u32(var_2.x, 6u)], Struct_1(any(select(select(vec2<bool>(true, arg_0.b.a), vec2<bool>(false, arg_0.b.a), arg_1.a.a), !vec2<bool>(arg_1.c, arg_0.b.a), vec2<bool>(arg_0.b.a, false)))), all(vec2<bool>(any(!vec4<bool>(false, arg_0.b.a, true, false)), arg_1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(func_3(17795i, arg_1, global3[_wgslsmith_index_u32(33173u, 6u)]))) + arg_0.a.x) >= -1973f);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))));
    var var_1 = 0u;
    var var_2 = vec2<bool>(false, true);
    var var_3 = arg_0.b;
    let var_4 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(2147483647i), global4[_wgslsmith_index_u32(~(func_1(Struct_4(arg_1, global1[_wgslsmith_index_u32(arg_0.a.x, 21u)], var_0, global2.x), Struct_3(Struct_1(arg_2.x), vec4<u32>(9978u, u_input.a, 84u, arg_0.a.x), var_3.a)).a.x | ~2903u), 5u)]), (_wgslsmith_mult_i32(global2.x, global4[_wgslsmith_index_u32(u_input.a, 5u)] << (u_input.a % 32u)) ^ 1i) << (abs(~u_input.a) % 32u), _wgslsmith_sub_i32(~global4[_wgslsmith_index_u32(min(u_input.a | 4294967295u, ~u_input.a), 5u)], 0i));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, 696f, 1925f, arg_1.x) + vec4<f32>(-120f, 1000f, arg_1.x, 438f)), var_0, !var_2.x))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0)), _wgslsmith_f_op_vec4_f32(var_0 * var_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(trunc(var_0))))), select(!(!vec4<bool>(true, arg_0.d, true, arg_2.x)), vec4<bool>(var_2.x, var_3.a, all(vec4<bool>(arg_2.x, var_3.a, var_2.x, var_3.a)), arg_0.d), !(!vec4<bool>(false, var_2.x, arg_0.c.a, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_4(vec3<f32>(-268f, 1229f, 411f), global1[_wgslsmith_index_u32(47609u, 21u)], vec4<f32>(-369f, -880f, 1000f, -1000f), 2147483647i), Struct_3(global1[_wgslsmith_index_u32(0u, 21u)], vec4<u32>(13448u, 96458u, 4294967295u, 1u), true)), vec3<f32>(-783f, -844f, -254f), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, true, var_0, false), true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 272f, -366f, -686f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, -1000f, -2143f, 1412f) - vec4<f32>(-662f, -676f, -896f, 675f)), vec4<f32>(-488f, 212f, 1055f, -687f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 120f, 1000f) * vec4<f32>(var_1.x, var_1.x, 1803f, 998f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -836f), vec4<f32>(-711f, var_1.x, var_1.x, -949f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(u_input.a, 5u)], Struct_3(global3[_wgslsmith_index_u32(70158u, 6u)], vec4<u32>(9464u, 1u, 12450u, u_input.a), true), Struct_1(false))) - _wgslsmith_f_op_f32(step(-1036f, var_1.x))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-788f - var_1.x) + var_1.x), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-1i, -global2.x)) & -select(_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, global4[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<i32>(0i, global4[_wgslsmith_index_u32(4294967295u, 5u)])), vec2<i32>(-13255i, global2.x), vec2<bool>(false, true)), ~_wgslsmith_div_vec2_i32(~vec2<i32>(9915i, global4[_wgslsmith_index_u32(u_input.a, 5u)]) | ~vec2<i32>(global2.x, -7583i), vec2<i32>(global4[_wgslsmith_index_u32(1u, 5u)] >> (4294967295u % 32u), 2147483647i)));
    let var_3 = vec2<i32>(i32(-1i) * -1i, -var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 64623u, 28289u) & vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), firstTrailingBit(vec4<u32>(1165u, u_input.a, u_input.a, u_input.a))) & _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 30441u, u_input.a, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 35552u, u_input.a), vec4<u32>(66799u, 4294967295u, 4294967295u, u_input.a)))));
}

