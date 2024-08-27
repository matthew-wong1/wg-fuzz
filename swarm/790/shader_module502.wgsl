struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(18953u, 1u), Struct_3(1u, 4294967295u), Struct_3(65645u, 4294967295u), Struct_3(1u, 0u), Struct_3(43160u, 0u), Struct_3(0u, 21464u), Struct_3(1u, 4294967295u), Struct_3(26009u, 0u), Struct_3(1u, 1u), Struct_3(1u, 48347u), Struct_3(1u, 69820u), Struct_3(42906u, 29551u), Struct_3(50669u, 27641u), Struct_3(18276u, 79737u), Struct_3(0u, 9357u), Struct_3(14229u, 67969u), Struct_3(53753u, 15071u), Struct_3(6052u, 1u), Struct_3(4294967295u, 125239u), Struct_3(15075u, 70251u), Struct_3(10399u, 43780u), Struct_3(4294967295u, 36217u));

var<private> global3: array<bool, 3>;

var<private> global4: vec4<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = 50855u;
    global0 = Struct_1(vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(global0.a.x, 46935i), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, global0.a.x), global0.a))));
    let var_1 = select(~var_0, 1u, select(all(!vec4<bool>(arg_0, false, false, false)), true, select(global3[_wgslsmith_index_u32(1u, 3u)] & true, any(vec3<bool>(arg_0, true, false)), true)) & ((-37405i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 11622u, u_input.a.x), u_input.a.xzy) % 32u)) <= (global0.a.x >> (~var_0 % 32u))));
    global4 = countOneBits(abs(~(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(41283u, 0u, u_input.a.x, var_1), vec4<u32>(62122u, u_input.a.x, 4294967295u, u_input.a.x)))));
    var var_2 = vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(~firstLeadingBit(1u), 3u)], global3[_wgslsmith_index_u32(43050u, 3u)], 0u < _wgslsmith_mod_u32(global4.x, 3179u))), reverseBits(firstLeadingBit(1u)) == abs(~global4.x), var_0 != ~73542u);
    return global0.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~(~vec2<i32>(-4867i, -809i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 56247u), u_input.a.yw) % vec2<u32>(32u))), arg_1.x, func_3(true | (true == (true | global3[_wgslsmith_index_u32(117800u, 3u)]))), global4.wxy, Struct_1(~vec2<i32>(arg_1.x, global0.a.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(~min(min(vec4<u32>(1u, 34751u, var_0.d.x, 4294967295u), max(u_input.a, u_input.a)), ~select(vec4<u32>(37585u, var_0.d.x, u_input.a.x, var_0.d.x), u_input.a, arg_0)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global4.x, u_input.a.x, global4.x)), reverseBits(var_0.d)), abs(vec3<u32>(4294967295u, global4.x, 1u) & var_0.d)), _wgslsmith_mod_u32(22922u, 4294967295u >> (var_0.d.x % 32u)) | 0u, firstTrailingBit(_wgslsmith_div_u32(max(u_input.a.x, 4294967295u), ~56865u)), _wgslsmith_clamp_u32(~reverseBits(31118u), u_input.a.x, 30588u)));
    global3 = array<bool, 3>();
    global4 = ~u_input.a;
    global4 = countOneBits(vec4<u32>(global4.x, var_0.d.x | 5573u, 1u, abs(~(~global4.x))));
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(select(2147483647i, global0.a.x, false) << (4294967295u % 32u), global0.a.x), ~select(abs(var_0.a.a), var_0.a.a, arg_2)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>) -> f32 {
    global0 = func_2(select(!(!select(vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(global4.x, 12u)]), vec4<bool>(arg_1.x, true, false, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], global3[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global1[_wgslsmith_index_u32(global4.x, 12u)]))), vec4<bool>(select(false, arg_1.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.a.wz), 12u)]), false, any(vec3<bool>(global3[_wgslsmith_index_u32(15449u, 3u)], true, true)), select(true, true, !arg_1.x)), true), ~(~_wgslsmith_mod_vec2_i32(arg_0.zx >> (u_input.a.xw % vec2<u32>(32u)), abs(global0.a))), arg_1);
    var var_0 = select(vec3<bool>(true, (0i ^ global0.a.x) == -1i, any(vec3<bool>(false == global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true, true))), select(select(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(40364u, 3u)]), select(vec3<bool>(true, true, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], false, true), vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), true), vec3<bool>(arg_1.x, true, any(vec2<bool>(arg_1.x, true))), all(!vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true))), !(!select(vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true), global1[_wgslsmith_index_u32(127647u, 12u)])), select(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(0u, 3u)], false), !vec3<bool>(true, global1[_wgslsmith_index_u32(106452u, 12u)], arg_1.x), !(!vec3<bool>(arg_1.x, false, true)))), !global1[_wgslsmith_index_u32(3027u, 12u)]);
    global3 = array<bool, 3>();
    let var_1 = _wgslsmith_mod_i32(arg_0.x, 1i);
    let var_2 = Struct_2(func_2(select(select(vec4<bool>(arg_1.x, arg_1.x, true, var_0.x), vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], false), !vec4<bool>(true, global1[_wgslsmith_index_u32(global4.x, 12u)], global1[_wgslsmith_index_u32(global4.x, 12u)], false)), !select(vec4<bool>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(global4.x, 3u)], var_0.x), vec4<bool>(true, false, var_0.x, global3[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], true)), true)), vec2<i32>(_wgslsmith_add_i32(global0.a.x >> (0u % 32u), min(var_1, 43261i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, arg_0.x), 0i)), !select(arg_1, !var_0.zy, var_0.x)), arg_0.x, arg_0.x, ~(~u_input.a.wzw), func_2(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 3u)], false, arg_1.x, false)), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(13608u, 12u)], true, true), select(vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(118004u, 3u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], var_0.x, arg_1.x, false), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), true), min(u_input.a.x, 0u) <= _wgslsmith_mod_u32(u_input.a.x, global4.x)), arg_0.wy, select(vec2<bool>(true, any(arg_1)), vec2<bool>(any(vec3<bool>(false, true, arg_1.x)), true), all(select(vec4<bool>(false, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0.x), arg_1.x)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-460f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 2090f), -1865f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(firstLeadingBit(-vec4<i32>(23545i, ~global0.a.x, ~global0.a.x, min(-44772i, -29948i))), select(!select(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 3u)], false), vec2<bool>(false, false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)] | (global3[_wgslsmith_index_u32(u_input.a.x, 3u)] & global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), false), true)));
    global3 = array<bool, 3>();
    global0 = Struct_1(vec2<i32>(~28334i, func_2(select(select(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 12u)], global1[_wgslsmith_index_u32(21977u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(23888u, 3u)], false, global3[_wgslsmith_index_u32(69029u, 3u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global4.x, 12u)])), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true, false, false), true), global0.a, select(!vec2<bool>(global1[_wgslsmith_index_u32(global4.x, 12u)], global3[_wgslsmith_index_u32(global4.x, 3u)]), !vec2<bool>(global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(u_input.a.x, 3u)]), global3[_wgslsmith_index_u32(min(1u, global4.x), 3u)])).a.x));
    var var_1 = countOneBits(global4.zz);
    global4 = vec4<u32>(global4.x, 46617u, ~(u_input.a.x ^ global4.x), min(~u_input.a.x | ~34106u, ~_wgslsmith_clamp_u32(4294967295u, 48952u, var_1.x))) & ~min(u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a));
    let var_2 = select(select(vec3<bool>(_wgslsmith_f_op_f32(ceil(915f)) == _wgslsmith_f_op_f32(sign(2070f)), !global1[_wgslsmith_index_u32(global4.x, 12u)] && all(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 12u)], true, global3[_wgslsmith_index_u32(0u, 3u)])), global3[_wgslsmith_index_u32(global4.x >> (max(global4.x, 62020u) % 32u), 3u)]), select(vec3<bool>(false, false, any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], true))), vec3<bool>(true, true, true), all(vec3<bool>(global1[_wgslsmith_index_u32(45274u, 12u)], true, global3[_wgslsmith_index_u32(4294967295u, 3u)]))), any(!(!vec4<bool>(true, global3[_wgslsmith_index_u32(12376u, 3u)], false, global3[_wgslsmith_index_u32(1u, 3u)])))), select(!vec3<bool>(true, false, 2147483647i < global0.a.x), vec3<bool>(_wgslsmith_f_op_f32(trunc(-544f)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, global1[_wgslsmith_index_u32(~(~43942u), 12u)]), all(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 3u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.x, 3u)], global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(15995u, 12u)], false, true, false)))), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(global4.x, 3u)], global1[_wgslsmith_index_u32(1u, 12u)], false))), !select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(global4.x, 3u)]), !vec3<bool>(global1[_wgslsmith_index_u32(24326u, 12u)], global3[_wgslsmith_index_u32(global4.x, 3u)], true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), global3[_wgslsmith_index_u32(0u, 3u)])), !vec3<bool>(all(vec4<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 3u)], global3[_wgslsmith_index_u32(0u, 3u)], true)), !global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(2044f)), -1001f, _wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, global0.a.x, 0i), vec4<i32>(-2147483647i, 0i, 13455i, global0.a.x)), var_2.yz))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, -1583f, 1794f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2401f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(833f, -1579f)))), 2035f));
    var_1 = u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(1019i << (u_input.a.x % 32u), global0.a.x | global0.a.x, global0.a.x, ~2147483647i), ~vec4<i32>(global0.a.x, global0.a.x, -24835i, 13067i)) | select(vec4<i32>(_wgslsmith_div_i32(-2147483647i, global0.a.x), abs(global0.a.x), global0.a.x, -2147483647i), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -857i, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), true), vec2<u32>(var_1.x, max(~_wgslsmith_mult_u32(global4.x, var_1.x), min(min(23053u, 1u), var_1.x))), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-359f * 151f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_div_f32(-1167f, var_3.x)))));
}

