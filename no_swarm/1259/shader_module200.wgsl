struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 22>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 1i));

var<private> global3: Struct_4 = Struct_4(vec4<u32>(25258u, 0u, 36307u, 60253u), vec4<i32>(i32(-2147483648), -38066i, 1i, -21824i), 0u, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: bool) -> vec4<u32> {
    let var_0 = Struct_5(~(-22522i), vec4<u32>(1u, 0u, ~4294967295u, ~global3.c), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(19357i, global0.a), 0i), countOneBits(i32(-1i) * -34150i), 74146i, global3.b.x), vec4<i32>(1i, global0.a, -abs(-78303i), select(global0.a, ~global3.b.x, 596f >= global0.b.x))));
    var var_1 = Struct_3(abs(var_0.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b)) * _wgslsmith_f_op_vec3_f32(floor(global0.b)))), vec3<f32>(-936f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(max(743f, _wgslsmith_f_op_f32(arg_1 * arg_1)))), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(global3.d, global3.d), arg_0), !vec2<bool>(arg_3, arg_3))))));
    global1 = array<u32, 22>();
    var_1 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(-779f, global0.b.x, 1188f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - _wgslsmith_f_op_vec3_f32(-global0.b)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-arg_1)))));
    var_1 = Struct_3(u_input.c.x, _wgslsmith_f_op_vec3_f32(-var_1.b));
    return ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~var_0.b, global3.a), countOneBits(abs(firstLeadingBit(vec4<u32>(global3.c, 76917u, 25446u, 44029u)))));
}

fn func_2() -> vec4<u32> {
    var var_0 = !global3.d;
    global3 = Struct_4(min(func_3(!(!global3.d), global0.b.x, global0.b.x, global3.d), abs(global3.a) ^ ~vec4<u32>(1u, global1[_wgslsmith_index_u32(35353u, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c, 22u)], 22u)], 22u)], global3.c)), reverseBits(vec4<i32>(u_input.c.x, ~(-26845i & global0.a), global3.b.x, firstTrailingBit(-1i) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 22u)] ^ 7569u, 22u)] % 32u))), global3.c, all(vec3<bool>(_wgslsmith_mult_u32(global3.c, 52921u) <= 87957u, select(global3.d, any(vec2<bool>(true, false)), true), false)));
    let var_1 = global3.a.zz;
    var var_2 = Struct_3(max(_wgslsmith_add_i32(~(global2.a.x & global0.a), _wgslsmith_dot_vec3_i32(-global3.b.zyz, ~vec3<i32>(17466i, u_input.b, global0.a))), _wgslsmith_dot_vec4_i32(reverseBits(global3.b), global3.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + global0.b)));
    let var_3 = 4294967295u;
    return vec4<u32>(~firstLeadingBit(110086u), var_1.x, 1u, 1u);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> vec4<u32> {
    global2 = Struct_1(u_input.c);
    global3 = Struct_4(~arg_1 & arg_1, -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 24121i, 2147483647i, 0i), -(vec4<i32>(775i, global3.b.x, 0i, 0i) << (global3.a % vec4<u32>(32u)))), _wgslsmith_clamp_u32(0u, 6159u, _wgslsmith_mod_u32(arg_1.x, reverseBits(global1[_wgslsmith_index_u32(select(34191u, global1[_wgslsmith_index_u32(0u, 22u)], true), 22u)]))), global3.d);
    global3 = Struct_4(vec4<u32>(~global1[_wgslsmith_index_u32(4294967295u | ~arg_1.x, 22u)], global3.c, 29695u, 20679u), -_wgslsmith_mult_vec4_i32(-(vec4<i32>(arg_0.x, u_input.b, global3.b.x, 2147483647i) >> (arg_1 % vec4<u32>(32u))), -vec4<i32>(global0.a, global0.a, u_input.b, 1i)), ~18570u, global3.d);
    var var_0 = countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_1.x, 24318u, 14203u, global1[_wgslsmith_index_u32(9723u, 22u)]), arg_1, false), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2187u, 22u)], 22u)], 4294967295u, arg_1.x, 0u)), _wgslsmith_add_vec4_u32(global3.a, max(vec4<u32>(19755u, 36607u, global3.c, global1[_wgslsmith_index_u32(arg_1.x, 22u)]), vec4<u32>(global1[_wgslsmith_index_u32(arg_1.x, 22u)], arg_1.x, global3.c, arg_1.x)))) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, global1[_wgslsmith_index_u32(1u, 22u)]), firstTrailingBit(vec2<u32>(1u, global1[_wgslsmith_index_u32(arg_1.x, 22u)]))), firstLeadingBit(~global3.a.x), arg_1.x, ~(~global1[_wgslsmith_index_u32(arg_1.x, 22u)])));
    let var_1 = Struct_2(42510u << (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.x, global1[_wgslsmith_index_u32(110077u, 22u)])), firstTrailingBit(~var_0.zw)) % 32u), reverseBits(~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 1000f) * 491f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, global0.b.x)) * vec2<f32>(-1104f, global0.b.x)))), Struct_1(u_input.c));
    return vec4<u32>(~(~max(global3.a.x | 68387u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global3.c), 22u)], var_1.b, ~func_2().x), 22u)], ~125605u, ~arg_1.x);
}

fn func_1() -> Struct_4 {
    global1 = array<u32, 22>();
    let var_0 = func_4(vec2<i32>(_wgslsmith_add_i32(1i, 8070i), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(global2.a.x, 1i), 39765i)), func_2(), ~1i, true);
    let var_1 = firstLeadingBit(2147483647i);
    let var_2 = global3.b.xzx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-567f, 1190f))));
    return Struct_4(var_0, _wgslsmith_sub_vec4_i32(firstLeadingBit(max(vec4<i32>(270i, -2147483647i, global3.b.x, -2147483647i), vec4<i32>(global3.b.x, var_1, 0i, 2147483647i))), ~vec4<i32>(var_1, global3.b.x, 1i, var_2.x)) | vec4<i32>(u_input.a, reverseBits(-2845i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-55052i, 0i, -2768i, u_input.c.x), vec4<i32>(0i, global2.a.x, var_1, global3.b.x)), global2.a.x), firstLeadingBit(~(~(~60637u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    var var_0 = select(vec4<bool>(true, !global3.d, true, true), select(!select(!vec4<bool>(false, false, global3.d, false), !vec4<bool>(global3.d, global3.d, false, true), false), vec4<bool>(global3.d, select(global3.d, false || global3.d, true), global3.d, global3.d), vec4<bool>(-global2.a.x <= global3.b.x, global3.d, !all(vec2<bool>(global3.d, false)), select(true, global3.d | global3.d, global3.d))), (select(true, true, global3.d) != true) | func_1().d);
    var var_1 = Struct_3(_wgslsmith_add_i32(select(-7883i, -15651i, all(vec2<bool>(true, false))), -firstLeadingBit(global2.a.x ^ u_input.a)), _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(113f, global0.b.x, -1445f)) + _wgslsmith_f_op_vec3_f32(floor(global0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))))));
    global2 = Struct_1(vec2<i32>(-1i) * -(select(vec2<i32>(global0.a, global0.a), vec2<i32>(2147483647i, var_1.a), true) & vec2<i32>(1i, global0.a)));
    var var_2 = select(vec2<bool>(true, !(global3.d || true)), var_0.yz, vec2<bool>(true, true));
    global1 = array<u32, 22>();
    let var_3 = _wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))))));
    var var_4 = select(vec2<bool>(true, any(vec4<bool>(false, !global3.d, true, global3.c > 1u))), var_0.zw, true);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global3.a.xxz));
}

