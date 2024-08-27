struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 41446u;

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4365u, 103161u, 1u), vec3<u32>(73775u, 34126u, 5490u), vec3<u32>(31750u, 4294967295u, 69759u));

var<private> global2: array<f32, 15> = array<f32, 15>(-1173f, -1548f, 769f, -1082f, -738f, 815f, -610f, 373f, -1447f, 968f, 283f, -2613f, 2091f, 1000f, -254f);

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = ~_wgslsmith_add_u32(~countOneBits(arg_2.b), abs(abs(1u))) & ~(~arg_0.a.b.b);
    var var_1 = Struct_1(select(vec2<bool>(false, !any(vec3<bool>(arg_2.a.x, arg_2.a.x, true))), select(vec2<bool>(false != arg_2.a.x, true), vec2<bool>(arg_0.a.b.a.x, all(vec2<bool>(false, arg_0.a.c.x))), select(select(vec2<bool>(arg_2.a.x, true), vec2<bool>(true, true), arg_0.a.a.x), !arg_2.a, select(vec2<bool>(arg_0.a.c.x, arg_2.a.x), vec2<bool>(true, arg_2.a.x), arg_2.a))), vec2<bool>(arg_0.a.a.x, true)), 1u);
    let var_2 = arg_0.a.a.yxz;
    var var_3 = arg_0.a;
    let var_4 = arg_2.a.x & !(!any(!var_1.a));
    return !arg_0.a.a.zy;
}

fn func_2() -> vec4<i32> {
    global0 = u_input.d;
    global1 = array<vec3<u32>, 3>();
    var var_0 = Struct_2(select(vec4<bool>(!any(vec2<bool>(true, true)), _wgslsmith_mod_u32(u_input.d, 15485u) < 37886u, true, !any(vec2<bool>(true, true))), !vec4<bool>(false, all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, false, true, false)), true), false), Struct_1(!(!func_3(Struct_3(Struct_2(vec4<bool>(true, false, true, true), global3[_wgslsmith_index_u32(4294967295u, 7u)], vec2<bool>(true, false))), vec3<f32>(-358f, -1509f, global2[_wgslsmith_index_u32(37830u, 15u)]), Struct_1(vec2<bool>(false, true), 0u))), u_input.d), !select(!func_3(Struct_3(Struct_2(vec4<bool>(false, true, true, true), global3[_wgslsmith_index_u32(0u, 7u)], vec2<bool>(false, false))), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)]), global3[_wgslsmith_index_u32(u_input.d, 7u)]), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), func_3(Struct_3(Struct_2(vec4<bool>(true, false, false, false), global3[_wgslsmith_index_u32(29620u, 7u)], vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(4279u, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)], 1810f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(69057u, 15u)], 314f), false)), global3[_wgslsmith_index_u32(min(4294967295u, u_input.d), 7u)])));
    var var_1 = _wgslsmith_add_vec3_i32(u_input.c, -(vec3<i32>(32738i, firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, -1i)) & u_input.c));
    var var_2 = Struct_2(!select(var_0.a, select(select(var_0.a, vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, var_0.a.x, false), vec4<bool>(true, var_0.b.a.x, true, true), var_0.b.a.x), !vec4<bool>(false, var_0.a.x, true, true)), select(!vec4<bool>(true, var_0.b.a.x, true, false), !vec4<bool>(var_0.a.x, true, false, var_0.c.x), select(vec4<bool>(true, true, var_0.c.x, false), var_0.a, vec4<bool>(var_0.c.x, var_0.a.x, true, false)))), Struct_1(vec2<bool>(!var_0.a.x, (u_input.a.x | u_input.a.x) != ~1i), ~(~var_0.b.b)), !(!(!var_0.a.xz)));
    return -min(-vec4<i32>(11974i, ~u_input.a.x, firstLeadingBit(u_input.c.x), 2147483647i), countOneBits(-vec4<i32>(var_1.x, var_1.x, var_1.x, 1i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = !vec2<bool>(all(!func_3(Struct_3(Struct_2(vec4<bool>(false, true, true, false), global3[_wgslsmith_index_u32(arg_0.x, 7u)], vec2<bool>(false, false))), vec3<f32>(global2[_wgslsmith_index_u32(14671u, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)]), global3[_wgslsmith_index_u32(arg_2, 7u)])), !(!(arg_2 < 74444u)));
    let var_1 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(arg_0.x, 3u)], vec3<u32>(1u, 4294967295u, 69044u)) >> (arg_0.x % 32u))), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-739f))));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(27891u, ~arg_0.x, u_input.d & arg_0.x, ~u_input.d), max(min(~vec4<u32>(arg_2, 0u, arg_0.x, arg_2), min(vec4<u32>(u_input.d, arg_0.x, 57916u, arg_2), vec4<u32>(21245u, arg_2, arg_0.x, arg_2))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.d, arg_2), vec4<u32>(arg_2, arg_0.x, 1u, arg_0.x)), firstTrailingBit(vec4<u32>(arg_2, 28942u, 1u, arg_0.x)), var_0.x))), arg_0.x >> (~_wgslsmith_sub_u32(4294967295u, arg_2) % 32u));
    let var_3 = 9411u;
    let var_4 = arg_0.x;
    return Struct_2(vec4<bool>(!all(vec3<bool>(true, false, var_0.x)), all(vec2<bool>(true, true)), !var_0.x, var_0.x), Struct_1(vec2<bool>(func_3(Struct_3(Struct_2(vec4<bool>(false, var_0.x, var_0.x, true), global3[_wgslsmith_index_u32(0u, 7u)], vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, global2[_wgslsmith_index_u32(42442u, 15u)], global2[_wgslsmith_index_u32(var_3, 15u)]))), Struct_1(vec2<bool>(var_0.x, var_0.x), 1u)).x, true), var_3), func_3(Struct_3(Struct_2(vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(1u, 7u)], !vec2<bool>(true, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], var_1, var_1), vec3<f32>(var_1, 342f, var_1)))), global3[_wgslsmith_index_u32(var_3, 7u)]));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    global2 = array<f32, 15>();
    let var_0 = Struct_3(func_4(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(39206u, 52313u))), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, u_input.d, 4294967295u ^ u_input.d), ~_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(21478u, 3u)], vec3<u32>(u_input.d, 9745u, 57697u)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(5007u, 15u)]));
    let var_2 = Struct_1(select(vec2<bool>(select(true, any(vec4<bool>(var_0.a.a.x, false, arg_1, var_0.a.c.x)), arg_1), arg_1), select(var_0.a.a.xz, func_3(Struct_3(var_0.a), vec3<f32>(1219f, 636f, arg_0.x), Struct_1(var_0.a.c, u_input.d)), true), vec2<bool>(arg_1 & (arg_1 || false), true)), _wgslsmith_sub_u32(u_input.d, ~(~var_0.a.b.b)));
    let var_3 = Struct_1(var_0.a.c, 1u);
    return func_4(vec2<u32>(var_3.b >> (~(~u_input.d) % 32u), _wgslsmith_sub_u32(12116u, 0u)), vec4<i32>(i32(-1i) * -1i, ~(-1i), -max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x), vec4<i32>(0i, u_input.b, 0i, u_input.b)), _wgslsmith_sub_i32(u_input.c.x, -454i)), _wgslsmith_mod_i32(u_input.b, u_input.c.x)), ~var_2.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    global3 = array<Struct_1, 7>();
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1413f * -2162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -319f))), false);
    var_0 = arg_2;
    let var_1 = true;
    var var_2 = arg_2.a.wyx;
    return vec3<bool>(all(arg_1.a.b.a), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(vec3<u32>(~4605u ^ ~u_input.d, u_input.d, firstLeadingBit(u_input.d)), Struct_3(func_1(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)]), true)), func_4(firstTrailingBit(vec2<u32>(0u, u_input.d)) & _wgslsmith_sub_vec2_u32(vec2<u32>(24956u, u_input.d), vec2<u32>(u_input.d, u_input.d)), vec4<i32>(_wgslsmith_div_i32(u_input.b, 1i), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), -1i, u_input.c.x), ~(~0u))), vec3<bool>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), any(vec2<bool>(true, true))).b.a.x, false, all(vec3<bool>(true, true, true))), all(vec4<bool>(select(false, true, true) && true, false, _wgslsmith_f_op_f32(-965f + -1632f) == _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(360u, 15u)])), false)));
    let var_1 = false;
    var var_2 = 48774i;
    var var_3 = false;
    let var_4 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.d, u_input.d), ~vec2<u32>(34137u, 0u)), vec2<u32>(_wgslsmith_clamp_u32(max(50982u, u_input.d), ~u_input.d, u_input.d), firstLeadingBit(firstLeadingBit(4294967295u))))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1130f, _wgslsmith_f_op_f32(-1000f + -1000f))))), u_input.c, firstTrailingBit(select(~select(vec4<u32>(u_input.d, 10929u, u_input.d, 986u), vec4<u32>(u_input.d, 37610u, u_input.d, 4294967295u), vec4<bool>(var_0.x, false, true, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 44398u, 4294967295u), vec4<u32>(4294967295u, 24114u, u_input.d, u_input.d) >> (vec4<u32>(0u, 1978u, u_input.d, 4294967295u) % vec4<u32>(32u))), any(vec3<bool>(var_0.x, var_1, true)))));
}

