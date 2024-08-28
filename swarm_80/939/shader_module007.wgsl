struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 31> = array<i32, 31>(0i, 2147483647i, 2147483647i, 8892i, -33713i, i32(-2147483648), 2147483647i, 13442i, 53954i, i32(-2147483648), 27954i, 2147483647i, 1i, i32(-2147483648), i32(-2147483648), -9044i, 19507i, -6933i, i32(-2147483648), 0i, 1i, 2147483647i, 20791i, i32(-2147483648), 2147483647i, 0i, -7079i, i32(-2147483648), -1i, 2147483647i, -64449i);

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-26679i, 0i, -1i), vec3<i32>(21i, i32(-2147483648), 1i), vec3<i32>(-1i, 31192i, i32(-2147483648)), vec3<i32>(0i, -9424i, -1i), vec3<i32>(-1i, -32896i, 1i), vec3<i32>(i32(-2147483648), 1i, -17283i), vec3<i32>(-18331i, -60243i, 4901i), vec3<i32>(2147483647i, 11828i, 54041i), vec3<i32>(0i, -563i, 80544i), vec3<i32>(-976i, i32(-2147483648), -1i), vec3<i32>(-39247i, -43809i, 49894i), vec3<i32>(-22873i, i32(-2147483648), 32923i), vec3<i32>(2147483647i, -1i, -6693i), vec3<i32>(1i, 1i, -29804i), vec3<i32>(-6976i, 0i, 1i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(i32(-2147483648), 1i, -26204i), vec3<i32>(1i, 0i, 64401i), vec3<i32>(-1i, 41124i, 0i), vec3<i32>(1i, -35711i, -18662i), vec3<i32>(-1i, -41814i, -1i), vec3<i32>(5078i, 1i, i32(-2147483648)), vec3<i32>(-45124i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 7419i, 10398i), vec3<i32>(11818i, -51890i, 20539i), vec3<i32>(-7265i, 51465i, -1i), vec3<i32>(2147483647i, 74468i, 2147483647i), vec3<i32>(0i, -11809i, i32(-2147483648)), vec3<i32>(-36739i, i32(-2147483648), -62489i), vec3<i32>(55176i, -8568i, 43238i), vec3<i32>(2147483647i, 31840i, 2147483647i), vec3<i32>(-8001i, 10816i, 11751i));

var<private> global3: array<bool, 26> = array<bool, 26>(false, false, false, true, false, false, true, true, false, true, false, false, true, false, false, true, true, true, false, false, true, true, true, true, true, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> vec2<i32> {
    var var_0 = -1i;
    return firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)) >> (_wgslsmith_div_vec2_u32(min(~(~vec2<u32>(global0.c, 21227u)), vec2<u32>(global0.d, global0.d)), select(~vec2<u32>(global0.c, 0u), vec2<u32>(_wgslsmith_add_u32(global0.d, global0.d), ~global0.c), !global0.a.x)) % vec2<u32>(32u));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global2 = array<vec3<i32>, 32>();
    let var_0 = arg_0.zx;
    global1 = array<i32, 31>();
    global3 = array<bool, 26>();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, arg_0), ~(43381u & _wgslsmith_div_u32(arg_0.x, 5030u)), 33442u, ~1u);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-global0.b.x, _wgslsmith_mult_i32(-1i, global1[_wgslsmith_index_u32(43539u, 31u)]), select(18487i, -7079i, global3[_wgslsmith_index_u32(arg_0.x, 26u)])), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, -8637i, global0.b.x, -2147483647i)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(global0.b.x, 1i)), ~(-u_input.a.x))), global0.b.wyy);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, global0.b.x, -17702i), vec3<i32>(_wgslsmith_sub_i32(26421i, 1i), 2147483647i, -_wgslsmith_add_i32(global0.b.x, 27732i))), firstTrailingBit(~(~global0.b.x)), Struct_1(select(!vec3<bool>(global0.a.x, global3[_wgslsmith_index_u32(global0.d, 26u)], global3[_wgslsmith_index_u32(arg_0, 26u)]), vec3<bool>(false || global0.a.x, !global0.a.x, arg_1.x >= arg_1.x), global0.a), min(vec4<i32>(8232i, _wgslsmith_mod_i32(-2147483647i, u_input.a.x), func_3(vec4<u32>(13301u, 51347u, 1u, arg_0)), firstTrailingBit(global1[_wgslsmith_index_u32(1u, 31u)])), ~firstTrailingBit(vec4<i32>(global0.b.x, u_input.a.x, -1i, -15559i))), ~1u >> (arg_0 % 32u), _wgslsmith_sub_u32(arg_0 >> (~7919u % 32u), 85633u)), u_input.a.x ^ global1[_wgslsmith_index_u32(0u >> (((global0.c & 41362u) >> (51550u % 32u)) % 32u), 31u)], vec2<u32>(21873u, 28916u));
    let var_1 = 0u ^ var_0.c.d;
    var var_2 = 0u;
    global3 = array<bool, 26>();
    let var_3 = ~(~(countOneBits(global0.c) >> (var_0.c.d % 32u)));
    return StorageBuffer(~vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(global0.c, 31u)] ^ var_0.b, reverseBits(30828i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(var_3, 31u)], global1[_wgslsmith_index_u32(var_1, 31u)], global0.b.x, global0.b.x), u_input.a, vec4<bool>(global0.a.x, global3[_wgslsmith_index_u32(26642u, 26u)], true, global0.a.x)), select(vec4<i32>(1i, -15621i, u_input.a.x, 2147483647i), vec4<i32>(global0.b.x, 1506i, -2147483647i, var_0.d), false)), _wgslsmith_dot_vec4_i32(~u_input.a, global0.b), global0.b.x), 0u, 40341u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), 1453f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(exp2(arg_1.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1000f)), vec4<f32>(arg_1.x, -964f, 604f, arg_1.x), select(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(var_3, 26u)]), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(var_0.e.x, 26u)]), global3[_wgslsmith_index_u32(5085u, 26u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 26>();
    global3 = array<bool, 26>();
    let var_0 = global0.c;
    var var_1 = -global0.b;
    global3 = array<bool, 26>();
    let var_2 = Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(44277u, _wgslsmith_div_u32(1u, global0.d)), 26u)], false, !(global3[_wgslsmith_index_u32(global0.d, 26u)] | true)), _wgslsmith_add_vec4_i32(u_input.a, u_input.a), (global0.c >> (global0.c % 32u)) << ((abs(4294967295u) & _wgslsmith_add_u32(_wgslsmith_add_u32(global0.c, global0.d), global0.d)) % 32u), min(_wgslsmith_sub_u32(global0.d, 22557u >> (global0.c % 32u)) & _wgslsmith_div_u32(~87753u, 21835u), ~global0.c));
    global1 = array<i32, 31>();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = func_2(40580u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1762f, 301f), _wgslsmith_f_op_f32(sign(156f))))));
}

