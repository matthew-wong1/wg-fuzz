struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<u32, 28> = array<u32, 28>(4294967295u, 56098u, 16459u, 72236u, 25272u, 39687u, 0u, 88695u, 0u, 573u, 71784u, 1u, 0u, 61866u, 0u, 15126u, 55150u, 1u, 7062u, 1u, 1u, 87721u, 2063u, 0u, 4294967295u, 48688u, 4294967295u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<bool> {
    var var_0 = any(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(6999u, 17u)], true, true), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), true), arg_0 <= -2147483647i), !vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 17u)], true, global0[_wgslsmith_index_u32(27917u, 17u)])));
    var var_1 = Struct_1(!(1u >= _wgslsmith_mod_u32(abs(u_input.c), 1u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(35379u, abs(2450u), _wgslsmith_mod_u32(16795u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(1014u, global1[_wgslsmith_index_u32(0u, 28u)], 14977u))), vec4<u32>(firstTrailingBit(u_input.c), max(0u, 24462u), u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)]))));
    var var_2 = false;
    global1 = array<u32, 28>();
    var var_3 = Struct_2(Struct_1(select(any(vec2<bool>(var_1.a, false)), var_1.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39421u, 28u)] << (4294967295u % 32u), 17u)]) & (var_1.b.x < 1u), abs(~vec4<u32>(4294967295u, 7867u, 12088u, var_1.b.x))));
    return vec4<bool>(!global0[_wgslsmith_index_u32(~38593u, 17u)], global0[_wgslsmith_index_u32(var_3.a.b.x, 17u)], var_1.a && !select(all(vec4<bool>(true, var_3.a.a, var_3.a.a, true)), var_3.a.a, var_1.a), false);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global1 = array<u32, 28>();
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_0 = u_input.a;
    let var_1 = Struct_1((true & all(select(vec2<bool>(arg_0.a.a, arg_0.a.a), vec2<bool>(arg_0.a.a, false), global0[_wgslsmith_index_u32(85736u, 17u)]))) | any(func_3(u_input.b.x >> (arg_0.a.b.x % 32u), -1492f)), vec4<u32>(~1u ^ _wgslsmith_mod_u32(u_input.c, ~10630u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.a.b, vec4<u32>(u_input.a, 2286u, 1u, 0u)), 28u)]), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_0.a.b, vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.b.x, 28u)], 17557u, u_input.c, 4294967295u)), _wgslsmith_dot_vec2_u32(arg_0.a.b.xx, arg_0.a.b.zw), 4294967295u)), u_input.a, ~(~(global1[_wgslsmith_index_u32(9632u, 28u)] | 0u))));
    return Struct_3(0u, max(var_1.b.x, 1u) != firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29996u, 28u)], 28u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.b.x, 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.x, 28u)], 28u)]), ~var_1.b)), _wgslsmith_f_op_f32(-1f), var_1);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = select(func_3(-1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(176f * -1747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-1495f + arg_1.c)))).yzw, select(vec3<bool>(firstTrailingBit(-1i) <= select(u_input.b.x, u_input.b.x, true), any(func_3(0i, arg_0.x).xxx), true), select(vec3<bool>(false, select(true, global0[_wgslsmith_index_u32(1u, 17u)], arg_1.b), u_input.b.x != u_input.b.x), select(!vec3<bool>(global0[_wgslsmith_index_u32(18330u, 17u)], arg_1.d.a, false), func_3(2147483647i, arg_0.x).xyy, arg_1.b), true), select(select(vec3<bool>(true, arg_1.b, true), vec3<bool>(arg_2.a.a, false, arg_2.a.a), vec3<bool>(arg_2.a.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 17u)], arg_2.a.a)), vec3<bool>(global0[_wgslsmith_index_u32(~24709u, 17u)], true, true != arg_2.a.a), vec3<bool>(u_input.b.x == u_input.b.x, all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a.b.x, 17u)], arg_1.d.a, false, true)), func_2(Struct_2(arg_1.d)).d.a))), true);
    var var_1 = u_input.b.x;
    var var_2 = -u_input.b.x;
    var var_3 = Struct_2(Struct_1(func_2(Struct_2(func_2(Struct_2(Struct_1(false, arg_1.d.b))).d)).d.a, _wgslsmith_div_vec4_u32(arg_2.a.b, vec4<u32>(22011u, 33511u, 39493u, arg_1.a) | arg_2.a.b)));
    let var_4 = Struct_2(Struct_1(any(select(vec4<bool>(true, true, var_3.a.a, true), func_3(u_input.b.x, arg_1.c), vec4<bool>(arg_1.d.a, false, var_0.x, arg_2.a.a))), select(_wgslsmith_mult_vec4_u32(~arg_2.a.b, var_3.a.b | arg_1.d.b), _wgslsmith_mod_vec4_u32(~var_3.a.b, ~vec4<u32>(arg_1.d.b.x, var_3.a.b.x, global1[_wgslsmith_index_u32(32912u, 28u)], 49678u)), !(arg_1.b && false))));
    return firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, ~0u), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34613u, 28u)], 28u)]) | _wgslsmith_dot_vec4_u32(var_4.a.b, var_3.a.b), ~arg_2.a.b.x), _wgslsmith_add_vec3_u32(abs(arg_1.d.b.yzz), vec3<u32>(1u, var_3.a.b.x ^ var_3.a.b.x, u_input.c))));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.b.x;
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    var var_1 = _wgslsmith_dot_vec4_u32(reverseBits(~(~vec4<u32>(arg_1, 1u, arg_0, 72007u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(422u, arg_0), vec2<u32>(global1[_wgslsmith_index_u32(9814u, 28u)], 1u) ^ vec2<u32>(u_input.a, 17158u)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-331f, 942f)), func_2(Struct_2(Struct_1(true, vec4<u32>(u_input.a, 71938u, arg_1, 1u)))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(57939u, 17u)], vec4<u32>(u_input.a, arg_1, arg_0, 1u)))), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.c) << (~arg_0 % 32u), ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.c), 28u)])) << (~arg_1 % 32u);
    let var_2 = ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~u_input.c, 28u)] ^ _wgslsmith_add_u32(8214u, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], arg_0)), ~firstLeadingBit(arg_0) | countOneBits(arg_0 & arg_0));
    return func_2(Struct_2(func_2(Struct_2(Struct_1(true, vec4<u32>(global1[_wgslsmith_index_u32(arg_0, 28u)], 4294967295u, u_input.a, 1u)))).d)).d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = arg_0.a;
    var var_1 = 6078u;
    var_1 = countOneBits(_wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(~(~var_0.b.x), ~abs(global1[_wgslsmith_index_u32(1u, 28u)]), arg_0.a.b.x, ~1u ^ arg_1.b.x)));
    global1 = array<u32, 28>();
    var var_2 = vec2<u32>(~(~82269u), ~min(select(countOneBits(global1[_wgslsmith_index_u32(0u, 28u)]), 1u, true), 45136u));
    return StorageBuffer(~(-1i ^ ~(-u_input.b.x)), _wgslsmith_mult_u32(select(_wgslsmith_clamp_u32(~98581u, u_input.c, var_2.x), firstLeadingBit(~var_2.x), true || any(vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(16347u, 17u)], false))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 17>();
    let x = u_input.a;
    s_output = func_5(Struct_2(func_1(1u, 4294967295u)), Struct_1(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 28u)], 28u)], 4294967295u, 0u) >> ((vec4<u32>(global1[_wgslsmith_index_u32(30843u, 28u)], 4294967295u, u_input.a, 1u) << (vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(81458u, 28u)], 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(12406u, 28u)], 3775u, global1[_wgslsmith_index_u32(u_input.c, 28u)], u_input.c)), vec4<u32>(u_input.c >> (0u % 32u), select(global1[_wgslsmith_index_u32(1u, 28u)], 9358u, global0[_wgslsmith_index_u32(1u, 17u)]), ~4294967295u, global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(u_input.a, 28u)], 4294967295u, true), 28u)]))), vec3<bool>(true, true, true));
}

