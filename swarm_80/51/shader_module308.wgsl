struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), 98952u);

var<private> global1: array<f32, 6>;

var<private> global2: array<u32, 17>;

var<private> global3: array<bool, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    global3 = array<bool, 15>();
    global1 = array<f32, 6>();
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(global0.b, 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(40594u, 6u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x | 0u, global0.b), 6u)], -332f)));
    let var_2 = ~vec4<i32>(~_wgslsmith_mult_i32(~u_input.c, ~724i), u_input.b.x, 15326i, reverseBits(u_input.b.x) | func_3(select(vec4<bool>(false, arg_1.a.x, arg_0, true), vec4<bool>(global0.a.x, arg_0, arg_1.a.x, true), true), arg_1));
    let var_3 = func_3(arg_1.a, arg_1);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -352f), -403f)), global1[_wgslsmith_index_u32(19237u, 6u)], true)), _wgslsmith_f_op_f32(min(-1846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.b, 6u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-819f, 675f)))), _wgslsmith_f_op_f32(210f * -970f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(415f, _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(ceil(var_1.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global0.b), 6u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-694f, -1194f, 572f, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(0u, 6u)], -637f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-257f, 349f, -1343f, var_1.x)))))));
    return arg_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(10176i, firstTrailingBit(-(arg_0.x | u_input.c)), arg_1), ~u_input.a, abs(min(countOneBits(u_input.a), abs(u_input.a))) | ~_wgslsmith_mod_i32(-35971i, -2147483647i));
    let var_1 = -23912i;
    let var_2 = arg_2;
    var_0 = var_1;
    let var_3 = arg_2.a;
    return ~firstLeadingBit(~func_2(false, var_2).b ^ ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(38399u, 17u)], 13044u));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = vec4<u32>(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(max(21507u, global0.b), 17u)], reverseBits(global0.b), 4294967295u) & func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_0, u_input.c, u_input.c), vec4<i32>(0i, u_input.b.x, -1i, -1i)), vec4<i32>(arg_0, arg_0, -2147483647i, u_input.c)), _wgslsmith_sub_i32(u_input.b.x, firstTrailingBit(u_input.c)), func_2(all(vec3<bool>(global0.a.x, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 15u)])), Struct_1(vec4<bool>(global0.a.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 15u)], true, global0.a.x), global2[_wgslsmith_index_u32(global0.b, 17u)]))), _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]) | vec2<u32>(1u, global2[_wgslsmith_index_u32(global0.b, 17u)]))), ~vec2<u32>(global2[_wgslsmith_index_u32(62541u, 17u)], 0u)), global2[_wgslsmith_index_u32(0u, 17u)], ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59760u, 17u)], 17u)], 17u)], global0.b), 17u)], global2[_wgslsmith_index_u32(1u, 17u)]) ^ (max(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(74351u, 17u)], 37226u), ~0u) & 27629u));
    let var_1 = func_2(false, func_2(any(global0.a.zy), func_2(all(vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b, 17u)], 15u)], false, global0.a.x)) & (0i <= u_input.a), Struct_1(!global0.a, 109420u))));
    let var_2 = false;
    var var_3 = func_2(select(true, arg_0 < _wgslsmith_mult_i32(u_input.c, -2147483647i), var_2), var_1);
    var var_4 = 13381u;
    return var_3.a.x != true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    let var_0 = vec3<bool>(!(!(1u == global2[_wgslsmith_index_u32(1u, 17u)])) || global0.a.x, select(global3[_wgslsmith_index_u32(~35194u, 15u)], any(select(vec2<bool>(true, true), !vec2<bool>(global0.a.x, global0.a.x), global0.a.x)), false), (_wgslsmith_div_f32(1f, global1[_wgslsmith_index_u32(~36264u, 6u)]) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -532f)))) != !global0.a.x);
    var var_1 = vec4<bool>(true, func_1(reverseBits(-1i)) || (165f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 6u)])))), all(global0.a), var_0.x);
    var var_2 = Struct_1(select(global0.a, select(vec4<bool>(func_1(28694i), false, any(vec3<bool>(true, false, false)), select(false, true, var_0.x)), select(vec4<bool>(var_1.x, global0.a.x, global0.a.x, true), vec4<bool>(global0.a.x, true, var_1.x, var_1.x), global0.a), (global1[_wgslsmith_index_u32(462u, 6u)] <= global1[_wgslsmith_index_u32(4294967295u, 6u)]) && true), !func_2(true && global0.a.x, Struct_1(global0.a, 2746u)).a), 0u);
    var var_3 = Struct_1(!(!global0.a), abs(~(~(~global2[_wgslsmith_index_u32(48633u, 17u)]))));
    var_3 = func_2(!(all(!vec4<bool>(var_3.a.x, var_0.x, false, false)) && !any(var_2.a)), Struct_1(!var_3.a, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(19841u, 24943u << (max(global0.b, var_3.b) % 32u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.b, 17u)], 6u)], global1[_wgslsmith_index_u32(53647u, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(46215u, 6u)], global1[_wgslsmith_index_u32(var_2.b, 6u)])) - global1[_wgslsmith_index_u32(~1u, 6u)]), -1174f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(27656u, 6u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(37046u, 6u)], 488f))), -1354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f + global1[_wgslsmith_index_u32(11543u, 6u)]) * _wgslsmith_f_op_f32(ceil(1936f))), _wgslsmith_f_op_f32(f32(-1f) * -684f))), ~reverseBits(_wgslsmith_div_vec2_u32(min(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u), vec2<u32>(0u, var_2.b)), firstTrailingBit(vec2<u32>(var_2.b, 33100u)))), select(_wgslsmith_add_vec2_u32(~vec2<u32>(var_3.b, 1u), vec2<u32>(global0.b, 1u)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, global2[_wgslsmith_index_u32(14543u, 17u)]), vec2<u32>(10813u, 18659u), vec2<u32>(55745u, global2[_wgslsmith_index_u32(47618u, 17u)])) << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), true && global0.a.x));
}

