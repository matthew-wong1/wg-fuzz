struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(523f);

var<private> global1: array<f32, 24>;

var<private> global2: u32 = 9823u;

var<private> global3: array<Struct_5, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(arg_1.x | countOneBits(~arg_1.x)), 1u)];
    global0 = array<f32, 1>();
    var_0 = -1148f;
    global3 = array<Struct_5, 15>();
    var var_1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, 0i, u_input.b.x) | -u_input.b.yzy, max(select(vec3<i32>(u_input.a.x, 1i, -2147483647i), u_input.a, vec3<bool>(true, true, false)), -vec3<i32>(1i, 1i, 0i))), (i32(-1i) * -21751i) >> (arg_1.x % 32u));
    return 4294967295u;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> vec3<bool> {
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    global0 = array<f32, 1>();
    let var_0 = -21423i | reverseBits(_wgslsmith_mod_i32(arg_2.x >> (~0u % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, 2668i), -vec4<i32>(u_input.a.x, u_input.a.x, arg_2.x, u_input.a.x))));
    let var_1 = global3[_wgslsmith_index_u32(abs(~(~1u)), 15u)];
    return select(vec3<bool>(var_1.b.a, !arg_0, arg_0), select(!select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(var_1.b.c.x, var_1.b.a, var_1.b.c.x), arg_0), vec3<bool>(false, var_1.b.c.x, var_1.b.a), vec3<bool>(false, true, false)), !select(vec3<bool>(false, arg_0, var_1.b.a), select(vec3<bool>(var_1.b.c.x, true, true), vec3<bool>(arg_0, true, true), vec3<bool>(var_1.b.c.x, var_1.b.c.x, true)), vec3<bool>(true, var_1.b.c.x, true)), vec3<bool>(true, var_1.b.c.x, true)), var_1.b.a);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 74564u >> (1u % 32u), func_2(-1642f, vec4<u32>(35044u, 56783u, 4294967295u, 0u))), 24u)]));
    let var_1 = func_3(false, global1[_wgslsmith_index_u32(7353u, 24u)], _wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(select(u_input.a, u_input.a, true), max(u_input.a, vec3<i32>(arg_0, 45255i, 37513i)), vec3<i32>(arg_0, u_input.a.x, arg_0))) << ((vec3<u32>(1u << (0u % 32u), 1u, ~93739u) ^ vec3<u32>(firstTrailingBit(0u), min(32745u, 2980u), 4294967295u >> (1u % 32u))) % vec3<u32>(32u)));
    global1 = array<f32, 24>();
    global2 = _wgslsmith_mod_u32((_wgslsmith_clamp_u32(6343u, ~16479u, firstLeadingBit(28084u)) >> (_wgslsmith_div_u32(~1u, ~13549u) % 32u)) & 1u, 25796u);
    let var_2 = ~(~(~min(468u, ~0u)));
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2, var_2, 70482u), vec4<u32>(var_2, 53466u, 113583u, ~var_2)), var_2), 24u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(35102u, var_2), 1u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(0u, 1u))), 24u)], vec2<f32>(global0[_wgslsmith_index_u32(0u, 1u)], -1804f));
    var var_1 = func_1(u_input.a.x);
    let var_2 = Struct_1(abs(vec4<i32>(u_input.a.x, -43880i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, -21235i), -1i), u_input.b.x)), vec2<bool>(false, true));
    let var_3 = min(u_input.a.x, u_input.a.x & -1i);
    let var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~48004u, ~1u, 1u, ~54030u), vec4<u32>(~(~17566u), 32809u, 4294967295u, ~35173u << (select(4294967295u, 34169u, var_2.b.x) % 32u))), ~(~countOneBits(~21728u)), ~_wgslsmith_clamp_u32(~61732u, 4294967295u, 1u));
    let var_5 = Struct_4(countOneBits(~4294967295u >> (~var_4.x % 32u)), 0i, func_1(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_2.a.xx, u_input.a.yy), -u_input.a.zy))));
    var var_6 = firstLeadingBit(max(-var_5.b, var_3) | 50619i);
    var_1 = var_5.c;
    let var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, 1i, _wgslsmith_div_f32(-819f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] * var_7.c.a)), -226f);
}

