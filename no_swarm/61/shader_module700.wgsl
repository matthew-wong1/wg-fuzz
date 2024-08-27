struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: vec3<f32> = vec3<f32>(-522f, -1983f, 261f);

var<private> global2: array<i32, 4>;

var<private> global3: array<vec3<i32>, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -485f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, -1418f, -1000f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -291f)), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-612f - -150f), _wgslsmith_f_op_f32(-386f + global1.x))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(142f, global1.x), 497f, _wgslsmith_div_f32(-1704f, 734f), global1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, global1.x, 995f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, 1739f, -152f), vec4<f32>(-508f, global1.x, 164f, -1049f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1080f, 226f, 2075f, 943f)))), vec4<f32>(-533f, _wgslsmith_f_op_f32(585f * global1.x), _wgslsmith_f_op_f32(global1.x * 167f), global1.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, -1000f, -305f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 206f, 258f, 518f), vec4<f32>(var_0.x, global1.x, var_0.x, -543f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-163f, global1.x, -2111f, 1000f), vec4<f32>(-1117f, -1400f, -1103f, global1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1261f, -1396f, var_0.x))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x, -313f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -690f, var_0.x, var_0.x)))))));
    var var_2 = select(vec3<bool>(!any(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(0u, 32u)], true)), !select(false, all(global0[_wgslsmith_index_u32(29443u, 32u)]), true), false), !vec3<bool>(~global2[_wgslsmith_index_u32(u_input.c, 4u)] >= -20989i, true, true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), false));
    global3 = array<vec3<i32>, 5>();
    let var_3 = Struct_2(Struct_1(firstTrailingBit(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(46321u, u_input.c, 9909u)), vec3<u32>(0u, 10466u, 0u) & vec3<u32>(16604u, 4294967295u, u_input.c)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, var_1.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1767f)) > var_0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    global3 = array<vec3<i32>, 5>();
    var var_0 = max(u_input.a.x, u_input.b.x) ^ global2[_wgslsmith_index_u32(33575u, 4u)];
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-376f)), -513f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f))), arg_0.x)), _wgslsmith_f_op_f32(select(global1.x, global1.x, func_3()))));
    var var_2 = arg_0.x;
    var_0 = -firstLeadingBit(_wgslsmith_sub_i32(abs(-10876i), (55933i << (arg_1 % 32u)) | global2[_wgslsmith_index_u32(arg_1 << (1u % 32u), 4u)]));
    return Struct_2(Struct_1(vec3<u32>(u_input.d, ~u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 23803u, u_input.d), vec3<u32>(18683u, 52367u, arg_1)), ~vec3<u32>(8696u, u_input.d, u_input.d)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = u_input.c;
    let var_1 = Struct_3(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(40886u, 4u)], _wgslsmith_add_i32(u_input.b.x, reverseBits(-38i) << (var_0 % 32u))));
    var var_2 = vec3<u32>(u_input.d, arg_1.a.a.x, _wgslsmith_div_u32(max(_wgslsmith_add_u32(u_input.c, u_input.d) ^ _wgslsmith_div_u32(var_0, arg_0), reverseBits(~8290u)), 5666u));
    var var_3 = select(!vec4<bool>(true, arg_2, true, select(true, arg_2, arg_2)), vec4<bool>(((arg_2 | arg_2) && any(vec3<bool>(arg_2, arg_2, false))) && false, true, arg_2, !(global1.x >= _wgslsmith_f_op_f32(f32(-1f) * -316f))), arg_2);
    var var_4 = _wgslsmith_mod_u32(~var_2.x, arg_1.a.a.x);
    return -1i;
}

fn func_1() -> Struct_1 {
    let var_0 = 1017u;
    let var_1 = -258f;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -499f)));
    var var_3 = firstLeadingBit(firstLeadingBit(func_4(countOneBits(1u) >> (var_0 % 32u), func_2(global1.yx, u_input.c, vec2<bool>(true, true)), select(true, -1102f != var_2, true))));
    var var_4 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 26878u, 1u), ~vec3<u32>(var_0, var_0, 0u)), ~vec3<u32>(var_0, 26954u, 4294967295u)) ^ min(~select(vec3<u32>(0u, var_0, 1u), vec3<u32>(u_input.d, 1u, 17274u), vec3<bool>(false, true, true)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(32057u, 20486u, var_0)), ~vec3<u32>(u_input.c, u_input.d, 0u))));
    return Struct_1(var_4.a);
}

fn func_5(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = ~vec3<i32>(func_4(select(27343u, 4294967295u, false) ^ 4294967295u, func_2(_wgslsmith_f_op_vec2_f32(global1.yz - global1.zz), func_2(vec2<f32>(-288f, 709f), 0u, vec2<bool>(false, false)).a.a.x, select(global0[_wgslsmith_index_u32(56127u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], false)), true & all(vec4<bool>(true, true, true, true))), -41552i, -_wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a.a.yz, vec2<u32>(7359u, 2509u)), 4u)], max(-13256i, 2147483647i)));
    global2 = array<i32, 4>();
    let var_1 = vec2<i32>(1638i, -1i);
    global2 = array<i32, 4>();
    var var_2 = (abs(global3[_wgslsmith_index_u32(17416u, 5u)]) | vec3<i32>(68984i, global2[_wgslsmith_index_u32(31856u, 4u)], ~(-1i))) >> (arg_0.a.a % vec3<u32>(32u));
    return _wgslsmith_add_vec4_i32(reverseBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(21127i, var_0.x, global2[_wgslsmith_index_u32(0u, 4u)], 20163i), u_input.a << (vec4<u32>(1u, arg_0.a.a.x, 0u, 0u) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_i32(u_input.a, u_input.a), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = any(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true)) || true;
    var var_2 = countOneBits(_wgslsmith_mult_vec4_i32(func_5(Struct_2(func_1())), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(84855u, 4u)], u_input.b.x, u_input.a.x)), u_input.a), vec4<i32>(-2147483647i, u_input.b.x, -1i, 42644i) >> (vec4<u32>(38597u, 18850u, u_input.c, 1u) % vec4<u32>(32u)))));
    let var_3 = Struct_1(vec3<u32>(u_input.c, 4294967295u, max(~select(28978u, u_input.c, false), ~4294967295u << ((u_input.c & u_input.d) % 32u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(649f, _wgslsmith_f_op_f32(-global1.x)))));
    let var_5 = Struct_3(_wgslsmith_mult_i32(func_5(Struct_2(Struct_1(var_3.a))).x, min(var_2.x, ~_wgslsmith_mult_i32(var_2.x, -2147483647i))));
    var var_6 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(9668u, 4u)] >> (4294967295u % 32u), select(var_5.a, -2147483647i, var_1), 1i), select(~(vec3<i32>(-1i, u_input.a.x, 2147483647i) | vec3<i32>(var_2.x, 0i, 2147483647i)), global3[_wgslsmith_index_u32(1u, 5u)], all(vec2<bool>(true, var_1)) | all(vec3<bool>(true, true, var_1)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -1199f, 734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -524f)))), func_5(Struct_2(Struct_1(func_2(global1.zz, var_3.a.x, global0[_wgslsmith_index_u32(57371u, 32u)]).a.a))).zw, _wgslsmith_clamp_i32(max(u_input.b.x, global2[_wgslsmith_index_u32(var_3.a.x, 4u)]), -1i, var_5.a));
}

