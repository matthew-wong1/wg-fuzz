struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(i32(-2147483648), -1i, -1i, -1i), vec4<i32>(19643i, 1i, 0i, -43025i), vec4<i32>(62748i, 3377i, -6395i, -1756i), vec4<i32>(2147483647i, 55255i, 1i, -25762i), vec4<i32>(0i, -16861i, i32(-2147483648), 0i), vec4<i32>(10684i, 1i, 1i, -1i), vec4<i32>(8711i, 6564i, 23457i, i32(-2147483648)), vec4<i32>(-36730i, -16372i, 70168i, 0i), vec4<i32>(1i, 2147483647i, -19733i, -50129i), vec4<i32>(-55631i, 0i, 68237i, 6739i), vec4<i32>(0i, 1i, -33909i, 4710i), vec4<i32>(1i, -23104i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-28459i, i32(-2147483648), -1i, 0i), vec4<i32>(-5690i, -1i, 0i, 21687i), vec4<i32>(-1i, 26519i, -1i, -6707i), vec4<i32>(-9187i, 2147483647i, -3068i, 1i), vec4<i32>(28868i, -20396i, -45080i, 29395i), vec4<i32>(-6130i, 1i, -43471i, i32(-2147483648)), vec4<i32>(1i, 0i, 20361i, -1i), vec4<i32>(2756i, i32(-2147483648), -10060i, 33320i));

var<private> global3: u32;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = 0i;
    global0 = array<i32, 9>();
    global3 = ~20111u;
    var var_1 = _wgslsmith_add_vec3_u32(firstLeadingBit(min(abs(vec3<u32>(112861u, 1u, u_input.c.x)), min(vec3<u32>(0u, u_input.b, 7198u), vec3<u32>(4294967295u, 4294967295u, u_input.b))) ^ max(reverseBits(vec3<u32>(1u, u_input.b, 7649u)), vec3<u32>(u_input.c.x, 4449u, u_input.c.x))), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(firstLeadingBit(~u_input.b), ~4294967295u), ~abs(~u_input.b)));
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(9344i, global0[_wgslsmith_index_u32(10499u, 9u)], u_input.a.x, u_input.d), reverseBits(global2[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 9u)], u_input.a.x, u_input.d, global0[_wgslsmith_index_u32(var_1.x, 9u)])), ~vec4<i32>(u_input.a.x, -2147483647i, -1i, var_0))), min(select(vec4<i32>(1i, -u_input.a.x, max(var_0, global0[_wgslsmith_index_u32(var_1.x, 9u)]), 1i), global2[_wgslsmith_index_u32(u_input.c.x, 20u)], !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), vec4<i32>(-u_input.d, global0[_wgslsmith_index_u32(var_1.x, 9u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c.x), vec3<u32>(1u, u_input.c.x, var_1.x)), 9u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(23620u, 9u)], 1i, var_0), global2[_wgslsmith_index_u32(u_input.b, 20u)])) << (vec4<u32>(23542u, u_input.c.x, ~u_input.c.x, var_1.x) % vec4<u32>(32u))), select(-(~(~vec4<i32>(-28432i, 0i, global0[_wgslsmith_index_u32(var_1.x, 9u)], u_input.a.x))), global2[_wgslsmith_index_u32(~18579u, 20u)], vec4<bool>(select(false, false, true) | true, _wgslsmith_f_op_f32(377f * arg_0.x) == 1f, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true)));
    return ~var_1.x;
}

fn func_2() -> Struct_1 {
    global3 = _wgslsmith_add_u32(u_input.b, ~(~(~max(u_input.b, 44903u))));
    let var_0 = _wgslsmith_f_op_f32(-1094f * -440f);
    let var_1 = global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(u_input.c.x | u_input.b, 1u))) >> (func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 1248f, var_0), vec3<f32>(var_0, var_0, var_0))))) % 32u), 9u)];
    var var_2 = select(select(select(select(select(vec4<bool>(true, true, var_1.b, false), vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.b), true), select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.b), false), var_1.a.x), vec4<bool>(!var_1.a.x, all(vec3<bool>(var_1.a.x, var_1.b, false)), var_1.a.x && false, var_1.a.x), vec4<bool>(var_1.b, true, var_1.a.x, true)), !vec4<bool>(!var_1.a.x, true, select(true, true, false), false), vec4<bool>(true & all(var_1.a), !all(vec2<bool>(false, false)), !all(vec4<bool>(false, true, var_1.a.x, var_1.a.x)), var_1.a.x || false)), vec4<bool>(var_1.b, 576f <= var_0, true, var_1.b), !vec4<bool>(!var_1.b & (var_1.a.x & true), true, all(select(vec4<bool>(var_1.b, false, true, true), vec4<bool>(var_1.a.x, true, false, false), vec4<bool>(false, var_1.b, true, var_1.b))), var_1.a.x));
    let var_3 = false;
    return global4[_wgslsmith_index_u32(u_input.b, 9u)];
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, ~u_input.b), ~(~(~u_input.b))), ~4294967295u, u_input.c.x);
    var var_1 = Struct_2(func_2(), vec3<i32>(17519i, ~0i, -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) ^ u_input.d), false);
    global2 = array<vec4<i32>, 20>();
    global2 = array<vec4<i32>, 20>();
    let var_2 = 10314i >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(var_1.a.c, var_1.a.c)) % 32u);
    return -1692f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.c.x;
    let var_0 = all(select(vec4<bool>(true, true, true, true || select(true, false, false)), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(1944f)) <= _wgslsmith_f_op_f32(func_1(1381f, true, Struct_5(-670f, vec2<bool>(true, false)))), any(vec4<bool>(false, false, true, false)), true), true));
    global2 = array<vec4<i32>, 20>();
    let var_1 = Struct_3(var_0, Struct_2(func_2(), u_input.a, !all(vec4<bool>(true, var_0, var_0, var_0))));
    global1 = array<vec2<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

