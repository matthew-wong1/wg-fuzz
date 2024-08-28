struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 29>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1154f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-320f))), 1525f, any(vec3<bool>(true, true, true)))));
    global0 = array<Struct_2, 29>();
    let var_1 = ~63288u;
    global0 = array<Struct_2, 29>();
    return u_input.c.x >> (firstLeadingBit(countOneBits(~0u | max(33991u, u_input.b.x))) % 32u);
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-73181i, u_input.c.x, -15187i, u_input.c.x), vec4<i32>(-2147483647i, 1i, u_input.c.x, 1i)), u_input.c.x << (0u % 32u), func_3(), u_input.c.x), vec4<i32>(-12345i, _wgslsmith_clamp_i32(-1i, 2147483647i, -7905i) | -54644i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-13494i, 10320i), _wgslsmith_add_i32(u_input.c.x, -1i)), ~5473i)));
    let var_1 = ~(((abs(vec2<u32>(21517u, 0u)) ^ vec2<u32>(u_input.b.x, u_input.a)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(20522u, 1u))) & ~u_input.b.xx);
    return vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1121f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(332f, 315f))))), !all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false)), true, true);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    let var_0 = select(func_2(), vec4<bool>(false, _wgslsmith_f_op_f32(sign(arg_1.a.x)) < 781f, true, false), arg_3);
    global0 = array<Struct_2, 29>();
    let var_1 = Struct_1(vec2<f32>(arg_1.a.x, arg_0));
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    return abs(~(~reverseBits(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    global0 = array<Struct_2, 29>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-699f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1415f - 998f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + var_1.x)))));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_1(861f, Struct_1(vec2<f32>(-1100f, 1000f)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b.zz), true) << (4346u % 32u), ~70377u, ~max(u_input.b.x ^ 1u, u_input.a), reverseBits(~104458u)), vec4<u32>(~(~u_input.a), abs(~u_input.a) | u_input.a, reverseBits(u_input.a) >> (u_input.b.x % 32u), ~65843u));
    var_2 = _wgslsmith_f_op_f32(select(1707f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_mult_u32(1u, ~u_input.b.x & 34803u) <= ~1u));
    var var_3 = Struct_5(Struct_1(vec2<f32>(var_1.x, var_1.x)));
    let var_4 = ~abs(~(~_wgslsmith_add_vec4_u32(u_input.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(184992u), min(max(var_4.x, 8652u) | 28534u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.a.x) + 601f))));
}

