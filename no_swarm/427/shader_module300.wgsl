struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
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

var<private> global0: u32;

var<private> global1: array<Struct_3, 3>;

var<private> global2: Struct_3 = Struct_3(147f, true);

var<private> global3: array<Struct_1, 9>;

var<private> global4: Struct_1 = Struct_1(false, -27562i, vec4<bool>(false, false, false, false), 1282u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    let var_0 = reverseBits(~(~(~(~u_input.a))));
    var var_1 = !vec2<bool>(!(false || any(arg_0.xx)), !(!select(global4.a, true, true)));
    return _wgslsmith_add_i32(0i, 30966i);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(arg_1.xwy)), vec3<f32>(553f, -2137f, global2.a)));
    var var_1 = func_3(global4.c.xxw, global2.b, vec3<u32>(u_input.a, ~67038u, reverseBits(78063u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.d, global4.d, u_input.a), u_input.b)), reverseBits(~u_input.b.yy))) == _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-u_input.c, min(u_input.c, u_input.c)) & (u_input.c.x & max(1i, -32261i)), global4.b);
    var var_2 = select(vec2<bool>(global4.c.x, all(vec4<bool>(global4.a, true, global4.c.x || true, any(global4.c.yyx)))), global4.c.yz, global4.a);
    global0 = global4.d;
    var var_3 = vec4<u32>(~7643u, 21498u, _wgslsmith_mod_u32(global4.d, ~u_input.a), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, global4.d, 4294967295u), vec4<u32>(global4.d, 20713u, global4.d, 4294967295u)) << (countOneBits(4294967295u) % 32u)));
    return Struct_2(Struct_1(global2.a < -1082f, func_3(select(vec3<bool>(false, true, true), !vec3<bool>(global2.b, true, false), vec3<bool>(true, true, global4.a)), var_2.x && true, var_3.yww, var_3.x ^ ~var_3.x), global4.c, ~(~reverseBits(var_3.x))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = -(i32(-1i) * -1571i);
    var_0 = firstLeadingBit(countOneBits(-23589i));
    var var_1 = global3[_wgslsmith_index_u32(~(~(u_input.b.x | global4.d)), 9u)];
    global4 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2417f + -1079f))), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0, arg_1)), _wgslsmith_div_f32(arg_1, arg_0))), -552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1210f, 237f))), _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1348f, global2.a, -617f), vec4<f32>(1586f, 524f, 514f, arg_0)), vec4<f32>(arg_0, arg_0, -465f, arg_1))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1062f + _wgslsmith_f_op_f32(-arg_1))))).a;
    let var_2 = arg_2.a.a;
    return StorageBuffer(global4.b);
}

fn func_1() -> StorageBuffer {
    global2 = Struct_3(_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, global2.a, false))))), true && all(vec3<bool>(global4.a, global2.b | true, 0i == global4.b)));
    global0 = 4294967295u;
    var var_0 = firstTrailingBit(u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.a - -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.a, 1000f, global2.a), vec4<f32>(159f, global2.a, 1000f, global2.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, global2.a, -530f, global2.a))))));
    var_0 = u_input.a;
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 816f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(474f * 3582f)))))), var_1.x, func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), 1f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1499f), var_1.x, _wgslsmith_f_op_f32(trunc(global2.a)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(473f, -403f)) - _wgslsmith_div_f32(global2.a, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1024f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(!global4.a, -global4.b, global4.c, reverseBits(u_input.a) << (u_input.b.x % 32u));
    var var_0 = _wgslsmith_clamp_i32(~global4.b, countOneBits(1i), global4.b) << (_wgslsmith_add_u32(~min(max(u_input.a, u_input.b.x), 99934u ^ u_input.b.x), 4294967295u) % 32u);
    var_0 = firstLeadingBit(firstLeadingBit(firstTrailingBit(abs(-1i))));
    var var_1 = global4.c.ww;
    let var_2 = _wgslsmith_f_op_f32(trunc(-2216f));
    global3 = array<Struct_1, 9>();
    var var_3 = !(!select(global4.c.zx, global4.c.xw, global4.a));
    var var_4 = global4.b | -u_input.c.x;
    var var_5 = abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(~(-51462i), 0i), firstLeadingBit(global4.b) ^ _wgslsmith_div_i32(min(global4.b, -1i), u_input.c.x)));
    let x = u_input.a;
    s_output = func_1();
}

