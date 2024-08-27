struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, vec3<bool>(false, false, true), 154f, 290f), Struct_1(-51658i, vec3<bool>(true, true, true), -582f, -1061f), Struct_1(-14672i, vec3<bool>(true, true, true), 1000f, 1149f), Struct_1(-1i, vec3<bool>(false, true, true), -2558f, -1584f));

var<private> global1: Struct_1 = Struct_1(2147483647i, vec3<bool>(true, true, false), 315f, 1506f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global1 = Struct_1(17443i, select(vec3<bool>(global1.b.x, all(!global1.b.xz), global1.b.x), vec3<bool>(false, !all(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true)), any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), !vec3<bool>(any(global1.b.yy), global1.b.x, true)), _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - 218f))))), global1.c);
    global1 = global0[_wgslsmith_index_u32(u_input.d.x, 4u)];
    let var_0 = u_input.c;
    global0 = array<Struct_1, 4>();
    var var_1 = any(!vec4<bool>(true, all(vec2<bool>(global1.b.x, global1.b.x)), global1.b.x, _wgslsmith_clamp_u32(82800u, u_input.d.x, var_0.x) >= 0u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) + _wgslsmith_f_op_f32(abs(global1.c)))))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * 171f)) < global1.d));
}

fn func_2() -> vec3<bool> {
    var var_0 = -580f;
    global1 = global0[_wgslsmith_index_u32(u_input.c.x, 4u)];
    let var_1 = global0[_wgslsmith_index_u32(37647u, 4u)];
    global1 = Struct_1(0i, select(select(vec3<bool>(0u <= u_input.c.x, !global1.b.x, var_1.b.x), vec3<bool>(func_3(), global1.b.x, all(global1.b)), _wgslsmith_add_i32(global1.a, var_1.a) >= global1.a), global1.b, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-340f, -176f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d * 630f), _wgslsmith_f_op_f32(round(598f))), -1863f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.d) + _wgslsmith_f_op_f32(-global1.c)), 730f)))));
    let var_2 = global1.b.x;
    return select(!var_1.b, select(global1.b, vec3<bool>(all(!vec2<bool>(global1.b.x, var_1.b.x)), false, global1.d < _wgslsmith_f_op_f32(floor(var_1.c))), vec3<bool>(!(246f != var_1.c), !all(vec2<bool>(var_1.b.x, global1.b.x)), false)), var_1.b.x);
}

fn func_1() -> StorageBuffer {
    global1 = Struct_1(u_input.e.x, !func_2(), _wgslsmith_f_op_f32(1000f - -785f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-240f))))), _wgslsmith_f_op_f32(select(-751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.d)) * _wgslsmith_f_op_f32(-global1.d)), func_2().x)))));
    global1 = Struct_1(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-9033i, u_input.a, -21138i, u_input.b.x), ~u_input.e), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, global1.a), select(u_input.e.x, 1i, false)))), func_2(), _wgslsmith_f_op_f32(global1.c - 2224f), global1.d);
    global1 = Struct_1(abs(41321i), vec3<bool>(true, global1.b.x, false), _wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(f32(-1f) * -160f)), _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d, _wgslsmith_f_op_f32(step(global1.d, -1032f)))))));
    let var_0 = !(!global1.b.x == (((31768u ^ u_input.d.x) > _wgslsmith_add_u32(u_input.d.x, 30364u)) & !global1.b.x));
    global1 = Struct_1(~reverseBits(-global1.a), func_2(), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(625f, global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f - global1.d))))));
    return StorageBuffer(~_wgslsmith_add_vec2_i32(u_input.b.zx, u_input.e.xy), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(u_input.e, u_input.e)), ~u_input.e << (firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 11631u, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -7789i, 6404i, global1.a)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1277f - -2132f))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.d, global1.c), _wgslsmith_div_f32(global1.c, 445f))), global1.c, global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(0u, 4u)];
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, ~(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, 42195u, 1u, 1u)) << (u_input.c % vec4<u32>(32u)))), vec4<u32>(u_input.d.x, abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, 0u), 22908u)), _wgslsmith_div_u32(47372u, _wgslsmith_mult_u32(u_input.d.x, 4294967295u)) << (~0u % 32u), select(u_input.c.x, u_input.c.x, !(!var_0.b.x))));
    let var_2 = _wgslsmith_f_op_f32(-1383f * _wgslsmith_f_op_f32(159f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-103f, global1.c))));
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = func_1();
}

