struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, false, false, true, false, true, true, true, true, false, true, true, false, true);

var<private> global1: array<vec4<bool>, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(548f * -473f), 319f))))));
    global0 = array<bool, 15>();
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(34758i), _wgslsmith_dot_vec2_i32(select(u_input.d.zy, u_input.d.zx, true), vec2<i32>(u_input.e, u_input.a.x))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 6145i) & _wgslsmith_clamp_vec2_i32(u_input.d.xx, vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.a.x, u_input.c.x)), u_input.a.xy)), -firstTrailingBit(u_input.d.x ^ u_input.d.x), u_input.e, -34324i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2813f)) - 2809f))));
    var var_3 = vec2<i32>(countOneBits(57197i), _wgslsmith_mult_i32(-_wgslsmith_div_i32(var_1.x, _wgslsmith_sub_i32(0i, var_1.x)), var_1.x & -59605i));
    return vec3<u32>(min(4294967295u, ~abs(_wgslsmith_clamp_u32(24325u, 25679u, 14820u))), 1u, ~67793u);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>) -> f32 {
    global0 = array<bool, 15>();
    var var_0 = arg_1.x;
    var var_1 = func_3();
    var var_2 = false;
    let var_3 = reverseBits(-14657i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1656f, _wgslsmith_f_op_f32(step(199f, arg_1.x)))))) * _wgslsmith_f_op_f32(-arg_1.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec2<f32> {
    global0 = array<bool, 15>();
    global1 = array<vec4<bool>, 5>();
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 772f), 1023f);
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-995f - arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(u_input.c.x, u_input.e)), _wgslsmith_f_op_vec2_f32(-arg_0.yy), -vec4<i32>(u_input.d.x, arg_1.x, -9915i, u_input.d.x))), _wgslsmith_f_op_f32(min(arg_0.x, 288f)), global0[_wgslsmith_index_u32(abs(11915u), 15u)] & global0[_wgslsmith_index_u32(~39123u, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1657f)))));
    global1 = array<vec4<bool>, 5>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1286f, var_0.x) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_f32(var_0.x + arg_0.x))) - vec2<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_5(Struct_4(Struct_3(func_3().yy), Struct_3(_wgslsmith_sub_vec2_u32(~vec2<u32>(20728u, 35364u), abs(vec2<u32>(1u, 23775u)))), vec2<i32>(-1i) * -vec2<i32>(u_input.e, u_input.b), u_input.a, Struct_3(~(~vec2<u32>(11786u, 66772u)))), Struct_3(vec2<u32>(~reverseBits(0u), 1u)), Struct_4(Struct_3(vec2<u32>(~1715u, 1u)), Struct_3(vec2<u32>(max(77947u, 36862u), select(21626u, 1u, false))), u_input.c, u_input.a, Struct_3(~reverseBits(vec2<u32>(4294967295u, 4769u)))));
    let var_1 = 112f;
    let var_2 = var_0.c.c.x;
    global1 = array<vec4<bool>, 5>();
    global1 = array<vec4<bool>, 5>();
    return Struct_4(Struct_3(vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, var_0.b.a.x)), abs(55696u))), var_0.a.e, firstLeadingBit(min(var_0.a.d.xy, ~vec2<i32>(-6050i, var_2)) & abs(-var_0.a.c)), ~vec4<i32>(var_2, var_0.a.d.x, ~u_input.b, var_0.a.d.x), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, -1000f, 214f, 2587f)), vec4<i32>(u_input.d.x, 2147483647i, u_input.b, 60973i)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-250f, 706f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1935f, -788f) - vec2<f32>(1085f, 352f)))), vec2<f32>(1f, 1f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(4294967295u, 16875u)), 15u)]))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-772f, -1000f)))));
    let var_2 = var_0.c;
    global1 = array<vec4<bool>, 5>();
    let var_3 = _wgslsmith_div_vec4_i32(-firstTrailingBit(u_input.a), var_1.d);
    global1 = array<vec4<bool>, 5>();
    let var_4 = 74340u;
    global0 = array<bool, 15>();
    global1 = array<vec4<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.x, vec3<i32>(49030i, -2147483647i, _wgslsmith_clamp_i32(firstLeadingBit(2147483647i ^ var_2.x), abs(_wgslsmith_dot_vec3_i32(var_3.yxz, var_3.yyy)), -(~(-41112i)))), _wgslsmith_f_op_f32(abs(1f)), abs(firstLeadingBit(var_0.e.a.x)));
}

