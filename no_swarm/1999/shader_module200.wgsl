struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<bool, 9>;

var<private> global2: i32 = 26155i;

var<private> global3: vec4<i32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    let var_0 = vec4<bool>(true, _wgslsmith_div_i32(-arg_0.a | global0[_wgslsmith_index_u32(select(1u, 16257u, true), 1u)], 2147483647i) == _wgslsmith_div_i32(global3.x, 56819i), true, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(449f, -1249f))))));
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(27148u, 3456u), 1u)];
    return Struct_1(~u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1735f, 340f) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(var_1 + var_1)), var_1)), !(global1[_wgslsmith_index_u32(arg_1, 9u)] || all(vec4<bool>(false, global4.x, false, true))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_4(arg_2.c);
    var var_1 = reverseBits(~arg_3.x);
    let var_2 = !(!(!(!(!vec4<bool>(arg_0.c, global4.x, arg_2.c, arg_0.c)))));
    var var_3 = arg_1.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, 865f, -1601f))));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(35882u, arg_2.a), 1u)];
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> Struct_3 {
    global0 = array<i32, 1>();
    global2 = 0i;
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    let var_0 = Struct_3(u_input.c);
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: bool) -> vec2<f32> {
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(92157u, 9u)]);
    var var_1 = 4588u;
    global0 = array<i32, 1>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-2623f, 326f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(814f, -1126f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, 589f))), vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-1928f))), true)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_div_i32(select(0i ^ global0[_wgslsmith_index_u32(u_input.b.x, 1u)], ~global3.x, true), func_3(func_2(Struct_3(global3.x), 4294967295u), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -724f), vec2<f32>(-265f, -269f)), func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.a, 1u)]), 0u), u_input.b)), arg_1), ~vec3<i32>(_wgslsmith_add_i32(u_input.c, 0i), -global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 2147483647i) & global3.xzx, true));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<f32>) -> f32 {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(~(~(~77546u)), 1u)], min(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-74192i, 0i, 1i, global3.x), vec4<i32>(u_input.c, global3.x, global0[_wgslsmith_index_u32(53044u, 1u)], u_input.c)))), global3.zy);
    var var_0 = Struct_5(Struct_4(!(!(global4.x && global4.x))), Struct_3(select(global0[_wgslsmith_index_u32(62137u, 1u)], ~abs(u_input.c), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), vec3<bool>(any(!vec4<bool>(global4.x, false, global1[_wgslsmith_index_u32(1u, 9u)], global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1401f)) * _wgslsmith_f_op_f32(f32(-1f) * -1597f)) <= _wgslsmith_f_op_vec2_f32(func_5(Struct_3(30652i), vec3<i32>(-1i, 0i, 1i), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], false, global1[_wgslsmith_index_u32(44084u, 9u)])))).x, global4.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(f32(-1f) * -114f))), _wgslsmith_div_vec3_f32(vec3<f32>(1622f, _wgslsmith_f_op_f32(1000f - arg_1.x), arg_0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1575f, arg_1.x, arg_0.x)), vec3<f32>(673f, 196f, 192f)))))));
    var_0 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(func_5(Struct_3(11217i), global3.yzx, global1[_wgslsmith_index_u32(39331u, 9u)])).x < 1f), func_4(-2147483647i, !(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 9u)]))), -1086f, vec3<bool>(all(vec4<bool>(any(vec4<bool>(global4.x, true, false, false)), any(vec4<bool>(true, global4.x, global4.x, false)), true, var_0.a.a)), !(!global4.x), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.x, -319f, true)), _wgslsmith_div_f32(180f, var_0.c), -187f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_0.x)), 552f, _wgslsmith_f_op_f32(-arg_0.x)), any(vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global4.x)), false)))));
    var var_1 = vec3<f32>(-659f, arg_1.x, _wgslsmith_f_op_f32(1078f + var_0.c));
    let var_2 = -1420f;
    return 456f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], false), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, 833f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(483f, -558f) * vec2<f32>(-279f, -1000f)))))));
    global1 = array<bool, 9>();
    global3 = ~((~(vec4<i32>(30376i, -21175i, 0i, -60999i) & vec4<i32>(global3.x, 1i, u_input.c, 1i)) & ~firstTrailingBit(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 1u)], -1i, global3.x))) & vec4<i32>(_wgslsmith_mult_i32(global3.x, u_input.c), ~(~u_input.c), 2147483647i, _wgslsmith_sub_i32(global3.x, _wgslsmith_div_i32(-2147483647i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, select(1u, _wgslsmith_sub_u32(u_input.b.x | 0u, _wgslsmith_mult_u32(1u, 0u)), global3.x > countOneBits(u_input.c)), (_wgslsmith_add_u32(0u, 0u) & u_input.a) >> (_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(58056u, 1u)) % 32u), ~(u_input.b.x & ~u_input.a)), _wgslsmith_clamp_u32((_wgslsmith_clamp_u32(34021u, 4294967295u, u_input.b.x) & 31358u) << (7453u % 32u), u_input.d, 0u), -vec4<i32>(-global0[_wgslsmith_index_u32(u_input.d, 1u)], min(-global3.x, -26224i), 26681i, global3.x), ~vec2<u32>(16602u, _wgslsmith_add_u32(u_input.a, 29784u)) ^ ~_wgslsmith_clamp_vec2_u32(u_input.b.zx, reverseBits(u_input.b.ww), vec2<u32>(1u, 1u)));
}

