struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_4,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-47620i, -1i), vec2<i32>(5733i, 1i), vec2<i32>(-3113i, -12985i), vec2<i32>(26438i, 1i), vec2<i32>(2248i, 24976i), vec2<i32>(21508i, -1i), vec2<i32>(i32(-2147483648), 3115i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(6215i, -20204i), vec2<i32>(43955i, 1i), vec2<i32>(36759i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(19294i, 2147483647i), vec2<i32>(-1i, 2147483647i));

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_1(true, false), 1i), Struct_4(Struct_1(true, true), -1i), Struct_4(Struct_1(true, true), 1i), Struct_4(Struct_1(true, true), i32(-2147483648)), Struct_4(Struct_1(false, false), -59392i), Struct_4(Struct_1(false, true), 2147483647i), Struct_4(Struct_1(false, false), 1i), Struct_4(Struct_1(true, true), 2147483647i), Struct_4(Struct_1(false, false), 2147483647i), Struct_4(Struct_1(true, true), 2147483647i));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>) -> bool {
    let var_0 = select(!select(select(!vec4<bool>(arg_1.b.b, arg_1.b.a, global2.x, true), !vec4<bool>(arg_1.b.b, arg_0, arg_1.b.a, arg_0), !vec4<bool>(false, global2.x, arg_0, arg_1.b.a)), select(!vec4<bool>(arg_0, false, false, false), !vec4<bool>(true, global2.x, arg_0, false), false), _wgslsmith_f_op_f32(f32(-1f) * -1079f) <= _wgslsmith_f_op_f32(abs(arg_1.e.x))), vec4<bool>(true, false != any(global2.zx), true, global2.x), false);
    let var_1 = -2147483647i;
    var var_2 = Struct_2(Struct_1(false, arg_0), arg_1.b);
    global2 = select(!select(vec4<bool>(true, !var_0.x, true, var_0.x), select(select(var_0, var_0, var_0), vec4<bool>(false, global2.x, arg_0, arg_0), !global2.x), select(select(var_0, vec4<bool>(true, false, var_2.a.b, false), var_0), var_0, !var_0)), vec4<bool>(true, !(!(arg_2.x < arg_2.x)), false, ~(~arg_1.d) < _wgslsmith_add_u32(firstTrailingBit(4294967295u), 4294967295u)), select(select(select(var_0, vec4<bool>(false, var_0.x, false, var_2.a.b), arg_1.b.a && arg_0), select(var_0, !var_0, !arg_0), select(vec4<bool>(false, true, global2.x, var_2.a.a), select(var_0, vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(var_0.x, true, true, true)), true)), var_0, !var_0));
    var var_3 = Struct_5(_wgslsmith_div_i32(-58330i, -u_input.b & ~_wgslsmith_div_i32(46378i, u_input.a.x)), Struct_2(Struct_1(all(vec2<bool>(false, global2.x)), var_0.x), var_2.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(97355u, arg_1.d), vec2<u32>(2369u, ~max(1u, arg_1.d))), 10u)], !select(global2.wyy, select(global2.zwx, !var_0.xxy, select(var_0.wwx, global2.zxy, var_2.a.b)), var_0.yyy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 615f) + _wgslsmith_f_op_f32(round(-2134f))) * _wgslsmith_div_f32(arg_1.e.x, _wgslsmith_f_op_f32(-794f + -1564f)))));
    return -14426i >= ~abs(abs(_wgslsmith_clamp_i32(var_1, arg_1.a.x, 3024i)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    global2 = !arg_0;
    global2 = vec4<bool>(all(vec3<bool>(global2.x, arg_0.x, select(func_3(false, Struct_3(global0[_wgslsmith_index_u32(28043u, 14u)], Struct_1(arg_0.x, arg_0.x), 4294967295u, 4294967295u, vec4<f32>(-573f, -2223f, -519f, -1269f)), vec2<f32>(-1137f, 2265f)), all(vec2<bool>(arg_0.x, arg_0.x)), true))), !any(!(!arg_0)), true, !(!arg_0.x));
    let var_0 = u_input.a;
    global0 = array<vec2<i32>, 14>();
    global2 = arg_0;
    return !vec3<bool>(global2.x, select(arg_0.x || !arg_0.x, arg_0.x & arg_0.x, false), arg_0.x);
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = -abs(select(abs(abs(vec3<i32>(-1i, 0i, u_input.a.x))), ~abs(vec3<i32>(-21835i, 23021i, -1i)), countOneBits(u_input.a.x) > _wgslsmith_mult_i32(u_input.b, -2147483647i)));
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    var var_1 = Struct_1(all(select(select(vec4<bool>(true, false, arg_0, false), !vec4<bool>(global2.x, global2.x, true, true), !vec4<bool>(global2.x, global2.x, false, arg_1)), vec4<bool>(arg_1, !global2.x, arg_1, true), global2.x)), -1063f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1285f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-946f - 395f))));
    var var_2 = ~vec4<i32>(-abs(_wgslsmith_mult_i32(u_input.c, var_0.x)), ~(~u_input.b) & _wgslsmith_add_i32(-2147483647i, 1i), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(27383i, u_input.b, 0i, var_0.x), vec4<i32>(u_input.c, 1i, 21372i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-54782i, 0i, u_input.a.x, 1i) | vec4<i32>(-1i, -1i, var_0.x, 2147483647i), vec4<i32>(-10089i, var_0.x, u_input.c, u_input.a.x))), _wgslsmith_sub_i32(u_input.a.x, -var_0.x));
    return Struct_1(false != (var_0.x != _wgslsmith_add_i32(~(-20418i), -u_input.b)), any(vec2<bool>(!all(global2.zy), any(vec4<bool>(true, true, false, true)))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    let var_0 = Struct_2(func_4(!arg_3, all(func_2(vec4<bool>(false, global2.x, global2.x, false)))), Struct_1(!any(vec3<bool>(arg_0.b.a, global2.x, true)), arg_0.a.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.xx + vec2<f32>(_wgslsmith_f_op_f32(min(-2349f, _wgslsmith_f_op_f32(f32(-1f) * -205f))), 471f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_2.xz, vec2<f32>(220f, -618f), arg_2.x > arg_2.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1409f)), arg_2.x))), global2.yy));
    global2 = vec4<bool>(all(global2.yzy), !var_0.a.b && (true && !var_0.b.a), false, all(!(!global2.xw)));
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(arg_1), 10u)];
    let var_3 = var_0.b;
    return u_input.a.x & -u_input.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> StorageBuffer {
    global2 = vec4<bool>(true, true, any(vec4<bool>(true, !global2.x, !global2.x, func_3(false, Struct_3(arg_0.xx, Struct_1(true, true), 1u, 1u, vec4<f32>(-524f, 911f, -2098f, -1061f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, 376f))))), true);
    global2 = vec4<bool>(true, true, !global2.x, false);
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a, u_input.a);
    let var_1 = ~_wgslsmith_clamp_vec2_i32(arg_0.xx, global0[_wgslsmith_index_u32(46280u, 14u)], vec2<i32>(~(-4675i), _wgslsmith_mult_i32(func_1(Struct_2(Struct_1(global2.x, global2.x), Struct_1(true, global2.x)), 0u, vec4<f32>(541f, -1660f, 735f, -2870f), false), -9004i)));
    var var_2 = Struct_2(Struct_1(global2.x, 1493u < arg_1), Struct_1(all(!select(global2.yx, global2.yy, vec2<bool>(global2.x, false))), func_4(arg_0.x >= -17422i, !global2.x).b));
    return StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(1u << (arg_1 % 32u), abs(arg_1)) ^ firstTrailingBit(firstTrailingBit(vec2<u32>(0u, 11218u))), vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 1u), ~vec2<u32>(arg_1, 1u)))), -1187f, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(2147483647i & var_1.x, min(var_1.x, var_0)), (var_0 ^ u_input.a.x) ^ abs(var_0), -27240i, var_0), -vec4<i32>(_wgslsmith_sub_i32(-7555i, 6734i), _wgslsmith_mult_i32(arg_0.x, arg_0.x), arg_0.x, var_0 ^ -35190i)), ~(-2147483647i), _wgslsmith_mult_vec4_u32(~select(~vec4<u32>(47764u, arg_1, 21621u, arg_1), vec4<u32>(arg_1, arg_1, arg_1, 5971u) & vec4<u32>(10019u, 0u, 751u, arg_1), !vec4<bool>(true, var_2.b.b, false, var_2.a.a)), vec4<u32>(arg_1, max(~arg_1, arg_1 >> (1u % 32u)), 1u, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(func_1(Struct_2(Struct_1(false, false), Struct_1(false, global2.x)), 1u, vec4<f32>(-811f, -612f, -1082f, 292f), true), 1745i & u_input.b, u_input.c & -12757i), -vec3<i32>(-1i, -33409i, u_input.a.x) & max(vec3<i32>(u_input.c, 2147483647i, -1i), vec3<i32>(1i, 0i, u_input.a.x))), firstTrailingBit(vec3<i32>(1710i, _wgslsmith_div_i32(-1i, 17025i), _wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.a.x)))), countOneBits(firstLeadingBit(42523u)));
}

