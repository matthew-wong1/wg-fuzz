struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, true, false, true, false, true, false, false, false, false, false, false, true, false, false, true, true, false, false);

var<private> global1: array<u32, 1>;

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1000f, -178f), vec2<f32>(2157f, -874f), vec2<f32>(602f, -182f), vec2<f32>(921f, 876f), vec2<f32>(-132f, -607f), vec2<f32>(434f, 834f), vec2<f32>(-1421f, -1258f), vec2<f32>(-669f, -1574f), vec2<f32>(887f, 258f), vec2<f32>(-439f, -397f), vec2<f32>(403f, 1273f), vec2<f32>(1786f, -585f), vec2<f32>(734f, -676f), vec2<f32>(357f, -2160f), vec2<f32>(1698f, -1051f), vec2<f32>(-1297f, 1000f), vec2<f32>(-547f, 1463f), vec2<f32>(815f, -704f), vec2<f32>(-539f, 108f), vec2<f32>(757f, -803f), vec2<f32>(1928f, -709f), vec2<f32>(836f, -779f), vec2<f32>(770f, -1000f), vec2<f32>(1647f, -1212f), vec2<f32>(-1333f, -602f), vec2<f32>(903f, 1000f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_2(all(select(!select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(81329u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17500u, 1u)], 19u)], false, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)]), false), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 19u)], global0[_wgslsmith_index_u32(~38107u, 19u)], all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(19363u, 19u)]))), !vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 19u)]))), Struct_1(firstLeadingBit(~abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 1u)], 34312u, 90581u, global1[_wgslsmith_index_u32(21018u, 1u)]))), select(vec4<bool>(!global0[_wgslsmith_index_u32(39921u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)] != 52849u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)] & false, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 19u)], false))), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4882u, 1u)], 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21488u, 1u)], 19u)])), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u << (u_input.a.x % 32u), 19u)], global0[_wgslsmith_index_u32(u_input.b & u_input.b, 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30918u, 1u)], 1u)] << (global1[_wgslsmith_index_u32(107752u, 1u)] % 32u), 19u)], !global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), 0i, arg_0.x <= arg_0.x, true), Struct_1(~(~vec4<u32>(31440u, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(52415u, 1u)], 81673u) | (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]) ^ vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 90972u, u_input.b))), !vec4<bool>(u_input.b != 40451u, all(vec2<bool>(global0[_wgslsmith_index_u32(8400u, 19u)], false)), false != global0[_wgslsmith_index_u32(u_input.b, 19u)], !global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_mult_i32(arg_0.x, _wgslsmith_div_i32(arg_0.x << (u_input.a.x % 32u), -51072i | arg_0.x)), false, true), !vec2<bool>(!(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 19u)] && true), any(!vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69847u, 1u)], 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false, global0[_wgslsmith_index_u32(1u, 19u)]))), true);
    global1 = array<u32, 1>();
    global1 = array<u32, 1>();
    let var_1 = Struct_3(~(~max(var_0.c.a.x, u_input.a.x)) | ~(~(6947u | global1[_wgslsmith_index_u32(0u, 1u)])), var_0.c.a.zyx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * -188f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_f_op_f32(-1011f * -542f)))))), var_0.b, _wgslsmith_div_f32(247f, _wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(floor(2229f)))));
    global2 = array<vec2<f32>, 26>();
    return var_1.c;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global1 = array<u32, 1>();
    let var_0 = vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], ~u_input.b << (global1[_wgslsmith_index_u32(arg_0.x, 1u)] % 32u), 35616u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_0.x, 1u)], ~(global1[_wgslsmith_index_u32(8245u, 1u)] >> (global1[_wgslsmith_index_u32(arg_0.x, 1u)] % 32u)) << (~30042u % 32u)));
    var var_1 = vec2<bool>(any(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 19u)])), all(!select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(38559u, 19u)]), vec3<bool>(true, false, false), all(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(0u, 19u)])))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1408f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(25260i, 11427i, 1i, -23283i)))))) - _wgslsmith_f_op_f32(ceil(-526f)));
    global2 = array<vec2<f32>, 26>();
    return Struct_1(arg_0, select(select(vec4<bool>(var_1.x, true, !var_1.x, var_1.x), !(!vec4<bool>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(37962u, 19u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 19u)], false, global0[_wgslsmith_index_u32(23860u, 19u)], true), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 19u)], false, var_1.x), !vec4<bool>(false, true, var_1.x, true))), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(37945u, 19u)], global0[_wgslsmith_index_u32(var_0.x, 19u)], global0[_wgslsmith_index_u32(43537u, 19u)])), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 19u)], var_1.x, false, global0[_wgslsmith_index_u32(var_0.x, 19u)])), true), select(vec4<bool>(true, true == var_1.x, !global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false | var_1.x), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], false, true)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(1u, 10355u, false), 1u)], 19u)], false, global0[_wgslsmith_index_u32(var_0.x, 19u)]), vec4<bool>(true, var_2 > -392f, true, var_1.x))), -36170i, !var_1.x, all(!vec2<bool>(true, !var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_3(min(min(~_wgslsmith_clamp_u32(4294967295u, 0u, 41623u), global1[_wgslsmith_index_u32(~countOneBits(arg_0.b.a.x), 1u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(arg_0.b.a.x), 12977u), 1u)]), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_0.b.a.zyw, vec3<u32>(u_input.a.x, u_input.a.x, ~u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.b, arg_0.c.a.x), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16011u, 1u)], 1u)]), min(select(arg_0.c.a.xwx, vec3<u32>(0u, 1u, u_input.b), global0[_wgslsmith_index_u32(1u, 19u)]), ~arg_0.b.a.xwy))), _wgslsmith_f_op_f32(ceil(-2147f)), Struct_1(vec4<u32>(~(u_input.a.x >> (4294967295u % 32u)), global1[_wgslsmith_index_u32(4294967295u, 1u)], 44481u, arg_0.c.a.x), select(!func_2(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c.a.x, 1u)], 1u)], 4294967295u, 1u)).b, !vec4<bool>(false, false, arg_0.b.e, global0[_wgslsmith_index_u32(560u, 19u)]), select(!arg_0.b.b, vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.c.a.x, 19u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(19518u, 19u)], arg_0.a, false))), arg_0.b.c, false, !all(arg_0.c.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(665f, -1286f)) * _wgslsmith_div_f32(-739f, arg_1.x)))), _wgslsmith_f_op_f32(trunc(arg_1.x)), arg_0.c.c == 33076i)));
    global2 = array<vec2<f32>, 26>();
    global1 = array<u32, 1>();
    global1 = array<u32, 1>();
    let var_1 = abs(0i);
    return arg_1.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: i32) -> f32 {
    global0 = array<bool, 19>();
    global1 = array<u32, 1>();
    global1 = array<u32, 1>();
    var var_0 = Struct_3(arg_0.b.x, _wgslsmith_sub_vec3_u32(~(arg_0.b ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0.b.x, u_input.a.x), arg_0.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_0.b.x, 1u)], 17274u) | arg_0.b, min(arg_0.b, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u, u_input.a.x)))), -1498f, arg_0.d, _wgslsmith_f_op_f32(func_4(Struct_2(global0[_wgslsmith_index_u32(0u, 19u)], Struct_1(~arg_0.d.a, arg_0.d.b, arg_1.x, 0i <= arg_1.x, false), func_2(~arg_0.d.a), select(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16221u, 1u)], 1u)], 19u)], arg_0.d.b.x), vec2<bool>(arg_0.d.d, false), func_2(arg_0.d.a).b.xx), arg_0.d.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, arg_0.e, arg_0.c, 858f) + vec4<f32>(-1873f, 224f, arg_2.x, -1471f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(535f, arg_2.x, -709f, arg_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, arg_2.x, arg_2.x))))))));
    let var_1 = (_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, -2147483647i, arg_0.d.c, arg_1.x), vec4<i32>(arg_3, 20591i, arg_3, 84439i)), vec4<i32>(_wgslsmith_mult_i32(var_0.d.c, arg_0.d.c), abs(arg_1.x), ~var_0.d.c, _wgslsmith_add_i32(arg_1.x, arg_1.x))) | vec4<i32>(countOneBits(var_0.d.c << (51130u % 32u)), 1i, arg_0.d.c, 1i)) ^ vec4<i32>(arg_1.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -arg_3), firstLeadingBit(arg_1.x) >> (arg_0.d.a.x % 32u)), -70532i, arg_0.d.c ^ 0i);
    return -886f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1229f * -2072f) + _wgslsmith_f_op_f32(f32(-1f) * -1685f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(1u, vec3<u32>(global1[_wgslsmith_index_u32(67290u, 1u)], global1[_wgslsmith_index_u32(52361u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]), 1000f, Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9965u, 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], 15241u), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(51092u, 19u)], true), 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(36102u, 19u)]), 1258f), vec2<i32>(3886i, 1i), vec3<f32>(1000f, 307f, -893f), 22635i)) + _wgslsmith_div_f32(-589f, -763f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1670f, 990f)), _wgslsmith_f_op_f32(ceil(947f))), _wgslsmith_f_op_f32(-124f * _wgslsmith_div_f32(-427f, 114f))))));
    var var_1 = 1f;
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 30313u), firstLeadingBit(vec4<u32>(21920u, u_input.a.x, global1[_wgslsmith_index_u32(30326u, 1u)], global1[_wgslsmith_index_u32(81335u, 1u)]))) << (vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18442u, 1u)], 1u)], 4294967295u, 4294967295u, 1353u), vec4<u32>(79036u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 1u)], 1u)], 7264u, u_input.a.x)), u_input.b) % vec4<u32>(32u)), (_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(49745u, 1u)], 34490u, 0u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 1u)])) | firstLeadingBit(vec4<u32>(65692u, 0u, 38765u, 1u))) >> (max(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 1u)], u_input.b, u_input.b), vec4<u32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)], 88256u, global1[_wgslsmith_index_u32(10556u, 1u)]) ^ vec4<u32>(4294967295u, u_input.a.x, 25429u, u_input.b)) % vec4<u32>(32u)), ~((vec4<u32>(25311u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76979u, 1u)], 1u)], 0u) ^ vec4<u32>(u_input.b, 4294967295u, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 1u)])) << (_wgslsmith_sub_vec4_u32(vec4<u32>(53907u, 1943u, global1[_wgslsmith_index_u32(1u, 1u)], u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], 36933u, u_input.b, u_input.b)) % vec4<u32>(32u)))), !vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(var_0.x * var_0.x), true, !any(vec2<bool>(true, false)), all(func_2(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u, global1[_wgslsmith_index_u32(0u, 1u)])).b)), reverseBits(i32(-1i) * -_wgslsmith_mult_i32(2147483647i, -1i)), true && global0[_wgslsmith_index_u32(4294967295u, 19u)], !(!all(vec3<bool>(global0[_wgslsmith_index_u32(59513u, 19u)], false, true)) & global0[_wgslsmith_index_u32(~4294967295u, 19u)]));
    var var_3 = -countOneBits(var_2.c);
    let var_4 = -(~vec2<i32>(-1i, -var_2.c));
    var_3 = ~select(2147483647i, -reverseBits(firstTrailingBit(1i)), any(var_2.b.xyy));
    let var_5 = _wgslsmith_sub_u32(countOneBits(~(~var_2.a.x) << (countOneBits(u_input.a.x) % 32u)), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1616u, 1u)], 1u)], global1[_wgslsmith_index_u32(29610u, 1u)], u_input.a.x)), var_2.a.zxw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_4 >> (var_2.a.xy % vec2<u32>(32u)), reverseBits(~vec2<i32>(0i, var_4.x)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a.zz, vec2<u32>(48319u, 18183u)), select(vec2<u32>(14324u, u_input.b), vec2<u32>(1u, 1u), vec2<bool>(false, true))) % vec2<u32>(32u))));
}

