struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(0i, Struct_1(vec4<f32>(1843f, 279f, -489f, 1890f), 2297u, 0u, 9784u, vec2<i32>(i32(-2147483648), -40407i)), vec3<i32>(2147483647i, 1i, -622i), vec3<bool>(false, false, false)), Struct_2(6107i, Struct_1(vec4<f32>(-788f, 1805f, 1013f, -1078f), 45234u, 0u, 20008u, vec2<i32>(2147483647i, -45863i)), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_2(-9324i, Struct_1(vec4<f32>(1000f, -656f, 558f, -976f), 12840u, 789u, 1u, vec2<i32>(64161i, -31452i)), vec3<i32>(-1i, 0i, 2464i), vec3<bool>(false, true, true)));

var<private> global1: array<f32, 23> = array<f32, 23>(498f, -2136f, -545f, 408f, -185f, -656f, -156f, 256f, 215f, -1000f, -1088f, 1145f, -319f, 705f, 647f, 442f, -1995f, -501f, 398f, 414f, 1130f, 602f, -1630f);

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<f32, 9>;

var<private> global4: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = select(select(select(vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, false)), false, any(vec3<bool>(true, true, true))), vec4<bool>(true, false, true, true), all(vec3<bool>(true, true, true))), vec4<bool>(true, false, !any(vec3<bool>(true, true, true)), true), false), vec4<bool>(true, false, !(any(vec2<bool>(true, false)) | select(false, false, false)), true), all(select(vec2<bool>(true, true), vec2<bool>(true, u_input.a.x == 0i), select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    let var_1 = Struct_3(false, global2[_wgslsmith_index_u32(~85419u, 24u)], _wgslsmith_f_op_f32(min(2541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 9u)])), -1122f, all(var_0.wyz))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(31626u, 23u)], 195f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(49628u, 23u)]))))))), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, select(27584u, 0u, true)), 23u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 23u)])), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(firstLeadingBit(0u)), ~(~1u), 1u), 9u)]), Struct_2(_wgslsmith_clamp_i32(~(-2147483647i), u_input.a.x, abs(-2147483647i)), global2[_wgslsmith_index_u32(57079u, 24u)], _wgslsmith_add_vec3_i32(u_input.a.wyy, u_input.a.yzw), !select(var_0.www, var_0.wyz, false)));
    global3 = array<f32, 9>();
    global0 = array<Struct_2, 3>();
    let var_2 = 0i;
    return -328f;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: bool) -> u32 {
    global4 = arg_1;
    global3 = array<f32, 9>();
    var var_0 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 1u, 46266u, 54860u))), firstTrailingBit(max(vec4<u32>(37554u, 1u, 102704u, 10527u), ~vec4<u32>(32813u, 1u, 0u, 31346u)))), vec4<u32>(~(~0u), 4294967295u, 8791u, ~firstLeadingBit(max(4294967295u, 17613u))), vec4<bool>(-151f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -118f), !arg_3, true, arg_3 | true));
    global0 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_f_op_f32(291f * global1[_wgslsmith_index_u32(var_0.x, 23u)]);
    return 523u;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = !select(select(!vec4<bool>(false, arg_2, false, true), vec4<bool>(arg_0.b.b.b >= 61909u, arg_3 >= arg_0.b.b.c, false, u_input.a.x <= arg_0.a), arg_0.b.d.x), vec4<bool>(false, select(arg_0.b.c.x >= -15443i, global3[_wgslsmith_index_u32(52654u, 9u)] >= 3441f, all(vec4<bool>(true, true, false, true))), true, true), vec4<bool>(arg_1.x, any(vec3<bool>(true, arg_0.b.d.x, true)) | arg_1.x, true, !arg_1.x | true));
    global3 = array<f32, 9>();
    global1 = array<f32, 23>();
    let var_1 = false;
    let var_2 = all(!(!arg_0.b.d.yx));
    return arg_3;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(true, global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 10440u, 1u), vec3<u32>(arg_0.x, arg_0.x, 4294967295u)) >> (firstTrailingBit(firstTrailingBit(arg_0.x)) % 32u)), 24u)], global3[_wgslsmith_index_u32(~(max(_wgslsmith_mod_u32(4294967295u, 22596u), ~34290u) >> (arg_0.x % 32u)), 9u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 9u)], 527f)), global3[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_f_op_f32(-1065f + global1[_wgslsmith_index_u32(arg_0.x, 23u)])) - vec3<f32>(global1[_wgslsmith_index_u32(abs(124529u), 23u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 9u)] + 2535f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 9u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(816f, 424f, -453f))), vec3<f32>(_wgslsmith_f_op_f32(select(1457f, global1[_wgslsmith_index_u32(arg_0.x, 23u)], true)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 9u)] * global3[_wgslsmith_index_u32(arg_0.x, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 41122u, arg_0.x), vec3<u32>(365u, arg_0.x, 4294967295u)), 9u)]), (global3[_wgslsmith_index_u32(arg_0.x, 9u)] <= global1[_wgslsmith_index_u32(arg_0.x, 23u)]) | true))), global0[_wgslsmith_index_u32(func_4(Struct_4(1246i >> (func_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 2147483647i, false, true) % 32u), global0[_wgslsmith_index_u32(arg_0.x, 3u)], _wgslsmith_mult_vec2_i32(~u_input.a.wy, firstTrailingBit(u_input.a.yx)), ~vec4<i32>(u_input.a.x, 0i, 0i, u_input.a.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true), !(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(21644u, 9u)], -1000f) > global1[_wgslsmith_index_u32(26215u, 23u)]), reverseBits(1u)), 3u)]);
    let var_1 = -var_0.e.b.e.x;
    let var_2 = false != (u_input.a.x > var_1);
    var var_3 = firstTrailingBit(firstTrailingBit(~(~firstLeadingBit(arg_0))));
    global4 = _wgslsmith_add_i32(-_wgslsmith_mult_i32(2147483647i, max(var_0.b.e.x, var_0.e.c.x)), ~(-18684i));
    return global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(var_0.b.c, _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 40079u, arg_0.x), vec3<u32>(4294967295u, 15676u, var_0.b.c))), vec3<u32>(arg_0.x ^ var_3.x, abs(var_0.e.b.b), 1u))), _wgslsmith_mod_u32(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(61783u, arg_0.x, 37588u, var_3.x), vec4<u32>(4294967295u, var_3.x, arg_0.x, 4294967295u) << (vec4<u32>(0u, 0u, 11777u, 4294967295u) % vec4<u32>(32u))), ~(vec4<u32>(var_3.x, arg_0.x, arg_0.x, var_0.e.b.c) | vec4<u32>(35189u, arg_0.x, 1u, 1u))))), 3u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_1(vec2<u32>(arg_2.b.b.c, 4294967295u) >> (vec2<u32>(1u, arg_2.b.b.c) % vec2<u32>(32u))).b.a), arg_2.b.b.a));
    var var_1 = arg_2.b.b;
    let var_2 = true;
    let var_3 = func_1(reverseBits(vec2<u32>(0u >> (arg_0.x % 32u), _wgslsmith_sub_u32(7538u, 1u)) & arg_0)).b;
    var var_4 = var_3.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(var_3.a + arg_2.b.b.a), var_1.b, ~0u, ~arg_2.b.b.c, var_3.e);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<Struct_2, 3>();
    var var_0 = ~countOneBits(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(arg_1.b, 4294967295u, 0u), ~0u, _wgslsmith_mult_u32(4294967295u, arg_1.b))));
    var var_1 = Struct_3(!(!(func_1(vec2<u32>(0u, arg_1.c)).d.x && true)), Struct_1(arg_1.a, ~var_0.x & max(arg_1.c, 3258u >> (arg_1.c % 32u)), 1111u, 0u, min(func_5(max(var_0.xx, vec2<u32>(28214u, 0u)), -u_input.a, Struct_4(58114i, Struct_2(-2147483647i, arg_1, vec3<i32>(-16645i, 0i, -2250i), vec3<bool>(false, false, true)), vec2<i32>(0i, 1i), vec4<i32>(-12617i, u_input.a.x, u_input.a.x, u_input.a.x))).e, vec2<i32>(1i, ~(-1i)))), _wgslsmith_f_op_f32(select(-334f, global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(44774u, var_0.x), 50273u)), 23u)], any(vec3<bool>(false, arg_1.d == 0u, any(vec2<bool>(true, true)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), global3[_wgslsmith_index_u32(~var_0.x, 9u)], 736f) + arg_1.a.xwz))), Struct_2(firstTrailingBit(-27195i), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-617f, global3[_wgslsmith_index_u32(var_0.x, 9u)], 2107f, -730f)), 0u, ~(var_0.x ^ var_0.x), _wgslsmith_clamp_u32(3842u, _wgslsmith_sub_u32(var_0.x, var_0.x), ~0u), select(-vec2<i32>(44343i, -2147483647i), -vec2<i32>(-1i, u_input.a.x), true)), u_input.a.zyz ^ -u_input.a.wwy, func_1(~(~var_0.xx)).d));
    var var_2 = ~(~(~vec4<u32>(0u, var_0.x, 51324u, arg_1.d) | select(firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 104370u, var_1.b.d)), vec4<u32>(54653u, 26854u, var_0.x, 0u), var_0.x == arg_1.c)));
    global4 = _wgslsmith_div_i32(firstLeadingBit(~u_input.a.x) | 1i, -1645i);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 4294967295u, 77158u), 9u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.c), var_0.yz) ^ 3765u, 23u)]))), 368f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(-1i, -14249i), u_input.a.x), 0i));
    var var_1 = vec3<u32>(60475u, firstTrailingBit(~_wgslsmith_mod_u32(7266u, 4294967295u)), ~(~(~67030u)) & _wgslsmith_div_u32(1u ^ _wgslsmith_clamp_u32(33736u, 1u, 4294967295u), ~(~0u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(vec2<i32>(abs(select(u_input.a.x, 2147483647i, false)), u_input.a.x), func_5(~var_1.yx, u_input.a, Struct_4(u_input.a.x, func_1(vec2<u32>(var_1.x, var_1.x)), u_input.a.yw, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))));
    global4 = u_input.a.x << (select(abs(countOneBits(func_5(vec2<u32>(var_1.x, 14523u), u_input.a, Struct_4(8067i, Struct_2(-1i, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 23u)], global1[_wgslsmith_index_u32(2705u, 23u)], -1000f, var_2.x), var_1.x, var_1.x, var_1.x, u_input.a.zy), vec3<i32>(u_input.a.x, u_input.a.x, -45419i), vec3<bool>(false, false, false)), u_input.a.wx, u_input.a)).d)), (_wgslsmith_mod_u32(var_1.x, var_1.x) ^ var_1.x) << (63513u % 32u), func_1(~vec2<u32>(var_1.x, var_1.x)).b.a.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, global1[_wgslsmith_index_u32(27414u, 23u)])) - _wgslsmith_div_f32(-455f, global1[_wgslsmith_index_u32(19500u, 23u)]))) % 32u);
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(u_input.a.wwx), vec3<i32>(-1i, -40339i, 16337i), -vec3<i32>(var_0.x, 2147483647i, u_input.a.x) ^ u_input.a.yyy), reverseBits(vec3<i32>(-1i, ~(-1i), 3159i))), ~vec3<i32>(_wgslsmith_mult_i32(var_0.x, 34693i), firstLeadingBit(firstTrailingBit(0i)), -2147483647i));
    let var_4 = Struct_3((!any(vec3<bool>(false, false, false)) | any(vec4<bool>(true, true, true, true))) & (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) < _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(42486u, 23u)]))), global2[_wgslsmith_index_u32(var_1.x, 24u)], -927f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, -550f, 517f) + var_2) + _wgslsmith_f_op_vec3_f32(-var_2)))), global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~(~1u), 0u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x, var_1.x), ~var_1.x), var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 4294967295u)), vec2<u32>(0u, 4294967295u)))), 3u)]);
    var var_5 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), global3[_wgslsmith_index_u32(var_1.x, 9u)], global1[_wgslsmith_index_u32(var_1.x << (~1u % 32u), 23u)], -269f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_4.e.b.a, _wgslsmith_f_op_vec4_f32(select(var_4.e.b.a, vec4<f32>(2189f, var_2.x, global3[_wgslsmith_index_u32(0u, 9u)], var_2.x), var_4.a)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_4.b.a * vec4<f32>(-664f, global3[_wgslsmith_index_u32(var_4.e.b.d, 9u)], 430f, var_4.e.b.a.x))))), all(select(vec4<bool>(true, false, var_4.e.d.x, false), select(vec4<bool>(false, var_4.e.d.x, var_4.e.d.x, var_4.e.d.x), vec4<bool>(var_4.e.d.x, true, var_4.e.d.x, false), vec4<bool>(true, var_4.a, var_4.a, true)), select(true, true, true))))), vec4<f32>(-1169f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(var_1.x << (var_1.x % 32u)), 9u)] + _wgslsmith_f_op_f32(func_3())), -426f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, var_1.x), select(var_1.xy ^ var_1.zy, vec2<u32>(32316u, var_1.x), !var_4.e.d.zy)), 23u)])));
    var var_6 = global2[_wgslsmith_index_u32(func_4(Struct_4(1i, func_1(var_1.yz >> (~vec2<u32>(var_1.x, 4294967295u) % vec2<u32>(32u))), vec2<i32>(~(-13470i), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_4.e.c.x, u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(604i, var_0.x, 29385i, u_input.a.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(0i, ~u_input.a.x, -2147483647i, 1i), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-23873i, u_input.a.x, 25463i, 1i), u_input.a, vec4<bool>(var_4.e.d.x, var_4.e.d.x, var_4.a, false)), u_input.a))), vec3<bool>(!(var_4.e.c.x == _wgslsmith_dot_vec2_i32(u_input.a.xx, var_4.e.b.e)), var_4.a && (reverseBits(var_4.e.b.d) <= (var_1.x | 0u)), !var_4.e.d.x), true, ~var_4.b.b >> (var_1.x % 32u)), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-9894i, _wgslsmith_mult_i32(var_0.x, var_4.b.e.x)));
}

