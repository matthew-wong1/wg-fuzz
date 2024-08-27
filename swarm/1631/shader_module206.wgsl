struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: f32 = 994f;

var<private> global3: array<u32, 32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = !select(select(select(vec3<bool>(true, arg_0, arg_0), !vec3<bool>(false, arg_0, true), true), vec3<bool>(arg_0 | arg_0, false, true), vec3<bool>(true, arg_0, false)), !vec3<bool>(true, arg_0, true), !vec3<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, arg_0)), true));
    global0 = array<f32, 30>();
    var var_1 = select(vec3<bool>(var_0.x, abs(u_input.c) <= 17800i, var_0.x), vec3<bool>(all(!var_0), any(select(var_0.zy, vec2<bool>(arg_0, false), var_0.x)), !any(!vec4<bool>(arg_0, arg_0, true, true))), arg_3.b.x >= 1u);
    global1 = array<vec4<f32>, 8>();
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1345f)))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_div_u32(1u, ~437u), u_input.b.x >> (global3[_wgslsmith_index_u32(0u, 32u)] % 32u)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1350f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 32u)], 30u)], -768f) - vec3<f32>(global0[_wgslsmith_index_u32(17656u, 30u)], 293f, -597f)), var_0, Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, 19588u, 25444u), vec3<u32>(var_0.a.x, u_input.b.x, 0u), u_input.a, 10130u, vec3<f32>(global0[_wgslsmith_index_u32(33687u, 30u)], -196f, global0[_wgslsmith_index_u32(4294967295u, 30u)])))), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.a.x, 30u)])))), _wgslsmith_add_vec4_u32(~vec4<u32>(abs(4294967295u), var_0.a.x, 0u, 1u), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(13924u, var_0.a.x, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(59433u, 32u)]), vec4<u32>(var_0.a.x, 4294967295u, global3[_wgslsmith_index_u32(u_input.b.x, 32u)], 1u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], var_0.a.x, u_input.a, var_0.a.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(34748u, var_0.a.x, 6861u, u_input.b.x), vec4<u32>(u_input.a, var_0.a.x, var_0.a.x, global3[_wgslsmith_index_u32(1u, 32u)])))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(3845u, 50526u) ^ ~(~u_input.b), ~abs(_wgslsmith_add_vec2_u32(vec2<u32>(37998u, 24507u), vec2<u32>(u_input.b.x, 0u))), vec2<u32>(1u, _wgslsmith_mod_u32(0u, 31658u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(16399u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))))), u_input.c);
    global0 = array<f32, 30>();
    let var_2 = var_0.a.x;
    global0 = array<f32, 30>();
    return vec2<bool>(any(!vec3<bool>(false, true, any(vec3<bool>(true, false, true)))), (var_0.a.x != 0u) & all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
}

fn func_1() -> vec2<bool> {
    let var_0 = ~_wgslsmith_sub_vec2_i32(countOneBits(abs(vec2<i32>(67984i, 66257i))), vec2<i32>(-max(u_input.c, 24454i), ~(-54452i)));
    let var_1 = vec4<i32>(-(~29857i), 24293i, u_input.c, abs(_wgslsmith_dot_vec4_i32(max(reverseBits(vec4<i32>(var_0.x, u_input.c, var_0.x, var_0.x)), vec4<i32>(u_input.c, 15073i, var_0.x, 1i) >> (vec4<u32>(0u, u_input.a, 2682u, u_input.a) % vec4<u32>(32u))), -select(vec4<i32>(-16102i, 1i, u_input.d, var_0.x), vec4<i32>(14172i, var_0.x, 5010i, 17458i), vec4<bool>(true, true, false, false)))));
    var var_2 = global0[_wgslsmith_index_u32(~(~u_input.a << ((u_input.b.x ^ 17642u) % 32u)), 30u)];
    var var_3 = 0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(10716u, global3[_wgslsmith_index_u32(4294967295u, 32u)]), ~((u_input.b ^ u_input.b) >> ((u_input.b << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)))) % 32u);
    var var_4 = max(-69625i, _wgslsmith_mult_i32(7355i, i32(-1i) * -(var_0.x ^ var_1.x)));
    return select(func_2(), vec2<bool>(false, true), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(-149f, ~(~abs(~vec4<u32>(24413u, global3[_wgslsmith_index_u32(1u, 32u)], 9906u, u_input.b.x))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 32u)] | 13950u, firstTrailingBit(52547u)), _wgslsmith_div_vec2_u32(vec2<u32>(45341u, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(17971u) << (select(u_input.a, global3[_wgslsmith_index_u32(0u, 32u)], var_0.x) % 32u), 48540u), 30u)], 1f), 1i);
    global0 = array<f32, 30>();
    var var_2 = select(vec3<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(global3[_wgslsmith_index_u32(var_1.c.x, 32u)]), _wgslsmith_dot_vec2_u32(var_1.c, ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], var_1.c.x)), 4294967295u >> (select(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.b.x, 32u)], 32u)], false) % 32u)), reverseBits(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 32u)], u_input.a, 0u)) << (u_input.a % 32u), 4294967295u), ~((abs(var_1.b.yyx) ^ var_1.b.www) << ((min(var_1.b.wxw, vec3<u32>(u_input.a, 16634u, 1u)) ^ vec3<u32>(56438u, 4294967295u, 27773u)) % vec3<u32>(32u))), !vec3<bool>(~(-15077i) != u_input.d, false & var_0.x, (u_input.b.x >> (35748u % 32u)) != firstLeadingBit(u_input.a)));
    var var_3 = firstLeadingBit(var_1.e | var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~(~global3[_wgslsmith_index_u32(69057u, 32u)]))), min(abs(~(11799u ^ global3[_wgslsmith_index_u32(303u, 32u)])), 29764u | _wgslsmith_mult_u32(u_input.b.x, ~1u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-10427i, 1i, -2147483647i, -2147483647i) ^ min(vec4<i32>(-20417i, u_input.d, var_1.e, u_input.d), vec4<i32>(1i, var_1.e, u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-18635i, var_1.e, 1i, -2147483647i), vec4<i32>(u_input.c, 33730i, u_input.c, 0i)), -vec4<i32>(u_input.c, var_1.e, 38639i, 15503i))), reverseBits(firstTrailingBit(-u_input.c))));
}

