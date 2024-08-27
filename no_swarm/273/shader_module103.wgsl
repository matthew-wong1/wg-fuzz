struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-41347i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = -firstTrailingBit(~abs(vec2<i32>(19400i, -5199i)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(24452u, u_input.d)), vec2<u32>(41086u, 1u)) % vec2<u32>(32u)));
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(-_wgslsmith_add_i32(-22143i, -33210i), 57289i);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), u_input.d >= ~u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1042f)) + 394f), 1914f), vec2<bool>(all(vec3<bool>(true, true, true)), !(false && any(vec4<bool>(true, false, true, false))))));
    global0 = array<i32, 1>();
    var var_3 = Struct_4(reverseBits(~4294967295u));
    return !vec3<bool>(select(true, false, true), true, ~abs(4294967295u) <= u_input.d);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(u_input.b, vec4<bool>(!all(vec3<bool>(false, true, true)), any(func_3(min(u_input.c.x, 0i), _wgslsmith_div_f32(-1078f, -222f))), any(vec2<bool>(true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), u_input.c.x > u_input.c.x, ~u_input.b, countOneBits(abs(vec3<u32>(u_input.d, u_input.d, u_input.b)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, u_input.a) ^ vec3<u32>(u_input.d, u_input.a, 14629u), firstTrailingBit(vec3<u32>(u_input.b, u_input.a, 17562u)), vec3<u32>(35489u, u_input.d, u_input.b)) % vec3<u32>(32u))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(-1003f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(300f + -939f)), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1773f, -1453f)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, 103f, -940f, -1220f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1457f + -1699f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(637f))), _wgslsmith_f_op_f32(floor(-379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-774f - 3541f))), select(var_0.b.x, var_1.b.x, var_0.c))));
    var var_3 = Struct_3(countOneBits(global0[_wgslsmith_index_u32(~abs(var_0.a), 1u)]) & ~(~(-1i)), 17721i, var_0, vec4<f32>(var_2.x, -1232f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -335f), -682f, true)), var_2.x), var_2.x));
    return u_input.a;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, arg_1.c.d, 4294967295u, arg_1.c.e.x), vec4<u32>(arg_1.c.a, _wgslsmith_div_u32(0u, abs(u_input.d)) | 0u, ~func_2(), ~_wgslsmith_add_u32(select(arg_1.c.a, arg_1.c.e.x, arg_1.c.b.x), 6479u)));
    var var_1 = Struct_2(~vec3<u32>(~(~42149u), _wgslsmith_dot_vec4_u32(~var_0, vec4<u32>(4294967295u, 35023u, u_input.a, arg_1.c.d)), arg_1.c.a >> (4294967295u % 32u)), func_3(-30123i, 845f), var_0);
    let var_2 = Struct_3(firstLeadingBit(24831i), -2147483647i, arg_1.c, vec4<f32>(-260f, arg_1.d.x, _wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(trunc(arg_1.d.x)))), -471f));
    let var_3 = Struct_3(42638i, 15657i, Struct_1(_wgslsmith_clamp_u32(13029u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, 0u), abs(0u)), ~arg_1.c.a), !select(vec4<bool>(false, true, true, arg_1.c.b.x), !arg_1.c.b, var_2.c.b), var_1.b.x && var_1.b.x, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_1.c, vec4<u32>(4294967295u, 0u, 4294967295u, var_2.c.a)), var_0)), ~vec3<u32>(reverseBits(var_0.x), 0u, ~var_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(-2584f, -408f, var_2.d.x, arg_1.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, var_2.d.x, -1000f, 1000f))))));
    global0 = array<i32, 1>();
    return ~(-u_input.c.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var_2 = vec3<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(floor(784f))))), _wgslsmith_f_op_f32(ceil(var_2.x)), 224f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.x, 904f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(var_2.x * var_2.x)))), true)), ~_wgslsmith_div_vec4_u32(vec4<u32>(39254u, _wgslsmith_clamp_u32(47570u, u_input.a, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d, 1u, 77311u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.d)), countOneBits(1846u)), abs(~vec4<u32>(u_input.a, 39251u, u_input.d, u_input.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -253f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_div_i32(-5278i, u_input.c.x), global0[_wgslsmith_index_u32(7726u, 1u)]), vec3<i32>(-u_input.c.x, 1i, global0[_wgslsmith_index_u32(~u_input.a, 1u)])) ^ 16462i, ~func_1(1i, Struct_3(1i, abs(0i), Struct_1(45729u, vec4<bool>(var_1, true, false, var_1), var_1, u_input.b, vec3<u32>(30917u, 36370u, 5066u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) + vec4<f32>(var_2.x, -894f, -534f, var_2.x)))));
}

