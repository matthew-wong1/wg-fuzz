struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<Struct_2, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(((0u ^ u_input.b.x) ^ (u_input.b.x | u_input.a.x)) & u_input.b.x, u_input.a.x), ~1u);
    let var_1 = u_input.a.zy;
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 17u)];
    global0 = array<Struct_3, 29>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(546f - -834f), _wgslsmith_f_op_f32(floor(-418f)))))), _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(f32(-1f) * -1511f));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u >> (var_1.x % 32u), ~10206u), 17u)];
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(any(vec4<bool>(true, 33665u <= u_input.a.x, false != !arg_1.a.c, true)), ~arg_1.a.a);
    global1 = array<Struct_2, 17>();
    var_0 = Struct_4(true, 0u);
    let var_1 = u_input.b.x;
    global0 = array<Struct_3, 29>();
    return global0[_wgslsmith_index_u32(4047u >> (arg_1.a.a % 32u), 29u)];
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~(~u_input.c.x);
    var var_1 = func_3(select(_wgslsmith_add_vec3_i32(~(-vec3<i32>(var_0, 16236i, -24023i)), vec3<i32>(u_input.d, u_input.c.x, u_input.d) >> (u_input.a % vec3<u32>(32u))), vec3<i32>(-39485i | u_input.c.x, ~0i, -var_0), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(arg_0.a.c, arg_0.a.c), true)), arg_0.a.c, true)), func_2());
    global1 = array<Struct_2, 17>();
    var var_2 = var_1.a;
    let var_3 = Struct_2(func_2().a);
    return Struct_1(arg_0.a.a, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.a.x), ~var_3.a.a), _wgslsmith_sub_u32(var_3.a.b, var_3.a.a)) | _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a.b, _wgslsmith_sub_u32(u_input.a.x, 0u)), firstLeadingBit(u_input.a.x)), all(!select(vec2<bool>(true, true), !vec2<bool>(arg_0.a.c, true), !vec2<bool>(var_3.a.c, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 17>();
    var var_0 = u_input.c.x;
    var var_1 = false;
    var_0 = u_input.d;
    var var_2 = func_1(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(12991u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 11742u, 28936u), vec4<u32>(24852u, 4294967295u, 35464u, u_input.b.x)), ~u_input.a.x), 17u)]);
    var_2 = Struct_1(~0u, countOneBits(~(_wgslsmith_mult_u32(1u, 33008u) << (_wgslsmith_div_u32(1u, 4294967295u) % 32u))), select(true, func_1(global1[_wgslsmith_index_u32(0u, 17u)]).c, var_2.c));
    var var_3 = func_3(firstLeadingBit(select(vec3<i32>(u_input.d << (u_input.b.x % 32u), u_input.c.x, u_input.c.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.c.x), vec3<i32>(-1i, 66909i, -2183i)), select(select(vec3<bool>(false, var_2.c, false), vec3<bool>(var_2.c, true, false), vec3<bool>(false, var_2.c, var_2.c)), select(vec3<bool>(var_2.c, false, true), vec3<bool>(true, var_2.c, false), vec3<bool>(var_2.c, var_2.c, var_2.c)), true))), Struct_2(func_2().a));
    var_2 = func_1(Struct_2(Struct_1(~reverseBits(57163u), select(74736u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, var_2.b)), var_2.c), true)));
    global0 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 1u, 51039u), firstTrailingBit(vec4<u32>(4294967295u, 0u, 0u, 10837u)))), vec4<u32>(57928u, _wgslsmith_mult_u32(select(var_2.b, 1u, var_2.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_2.b, 1u), vec3<u32>(3510u, var_2.a, 76263u))), u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), vec4<bool>(all(vec3<bool>(false, var_2.c, var_2.c)), var_2.c && !var_2.c, true, var_2.c)), _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(20233i, -16006i), reverseBits(~2147483647i), -16944i, -6867i), select(~_wgslsmith_mod_vec4_i32(var_3.a, var_3.a), select(-var_3.a, ~var_3.a, !vec4<bool>(false, var_2.c, var_2.c, var_2.c)), select(vec4<bool>(var_2.c, var_2.c, true, var_2.c), vec4<bool>(var_2.c, true, false, var_2.c), !vec4<bool>(var_2.c, var_2.c, true, var_2.c)))));
}

