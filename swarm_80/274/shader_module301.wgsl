struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<i32>(-12798i, 36583i, 22336i), 0u, vec3<i32>(-34614i, 1i, 1i), 89480u, vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(73457i, -20384i, 1i), 0u, vec3<i32>(31751i, 0i, 1i), 4243u, vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(28209i, 0i, 2147483647i), 50756u, vec3<i32>(i32(-2147483648), 45475i, 1i), 17936u, vec4<bool>(false, false, true, false)), Struct_1(vec3<i32>(24548i, i32(-2147483648), 2147483647i), 21507u, vec3<i32>(-38665i, 36709i, -62997i), 14547u, vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(-9254i, -31177i, 0i), 0u, vec3<i32>(-1i, 70727i, -1i), 42770u, vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(11153i, -48684i, i32(-2147483648)), 80606u, vec3<i32>(-58348i, 9792i, 0i), 62981u, vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(22064i, -1i, i32(-2147483648)), 4294967295u, vec3<i32>(-9948i, 28218i, -1i), 1u, vec4<bool>(false, true, false, true)));

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = vec3<i32>(min(arg_1.x, ~min(-24059i, max(-8462i, arg_2.c.x))), arg_2.c.x, 0i);
    var var_1 = global0[_wgslsmith_index_u32(arg_2.b, 7u)];
    let var_2 = arg_2.b;
    let var_3 = firstTrailingBit(u_input.d.x << (var_1.b % 32u));
    let var_4 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(var_3, var_3), 32229i, -_wgslsmith_div_i32(var_0.x, 1i)), abs((vec3<i32>(-1i, -2147483647i, var_1.c.x) | arg_2.c) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_2, 4294967295u, arg_2.d), vec3<u32>(var_1.d, 4215u, var_1.b)) % vec3<u32>(32u)))), 56891u, firstTrailingBit(var_1.a), 49390u, !arg_2.e);
    return !vec4<bool>(false, var_1.e.x != false, true, true);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-286f + 614f) - -1219f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-845f, -233f))))), 833f);
    global0 = array<Struct_1, 7>();
    global1 = array<Struct_1, 31>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32((7902u ^ u_input.a) ^ arg_0.x, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(9484u, 40518u, u_input.a, 37237u), vec4<u32>(arg_0.x, 22774u, 1u, 4294967295u)) << (~55167u % 32u))), 31u)];
    var_1 = Struct_1(~(~vec3<i32>(var_1.a.x << (u_input.a % 32u), i32(-1i) * -16574i, min(-46313i, 0i))), 13963u, -vec3<i32>(firstTrailingBit(var_1.c.x), _wgslsmith_add_i32(2147483647i, var_1.c.x) | abs(var_1.a.x), var_1.a.x), ~26068u, select(!var_1.e, select(func_3(vec4<i32>(0i, 0i, 2147483647i, u_input.b.x), reverseBits(vec3<i32>(1i, 0i, -2147483647i)), global1[_wgslsmith_index_u32(39466u, 31u)]), vec4<bool>(true, !var_1.e.x, var_1.e.x == var_1.e.x, var_1.e.x == false), var_1.e), !vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x)));
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.a.x, u_input.c, 1088i) >> (max(vec4<u32>(var_1.b, 38298u, 1u, arg_0.x), vec4<u32>(0u, var_1.b, 97959u, 0u)) % vec4<u32>(32u)), vec4<i32>(reverseBits(-1i), u_input.b.x & u_input.d.x, var_1.c.x, _wgslsmith_mod_i32(var_1.c.x, u_input.d.x))) << (~0u % 32u);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> i32 {
    global0 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-645f))));
    var var_1 = global1[_wgslsmith_index_u32(39506u, 31u)];
    var_1 = Struct_1(u_input.d.xyw, ~72394u, -select(vec3<i32>(max(var_1.a.x, u_input.c), _wgslsmith_sub_i32(var_1.a.x, var_1.a.x), func_2(vec3<u32>(40185u, 4294967295u, 0u))), vec3<i32>(var_1.c.x, -25670i, _wgslsmith_add_i32(u_input.d.x, var_1.c.x)), !vec3<bool>(arg_1.x, arg_1.x, false)), u_input.a, func_3(vec4<i32>(i32(-1i) * -36670i, 30277i, func_2(vec3<u32>(16394u, arg_0, var_1.b)), -2147483647i), ~(~vec3<i32>(var_1.c.x, u_input.b.x, u_input.c)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(30604u, u_input.a, u_input.a)), ~abs(vec3<u32>(4294967295u, 1u, var_1.b))), 31u)]));
    let var_2 = select(vec2<bool>(!arg_1.x, all(!arg_1.zx)), select(vec2<bool>(false, arg_1.x), !vec2<bool>(false, !var_1.e.x), vec2<bool>(func_3(vec4<i32>(0i, u_input.d.x, var_1.c.x, u_input.d.x) | u_input.d, var_1.c, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 89957u, u_input.d.wwz, 4294967295u, var_1.e)).x, false)), !all(select(select(var_1.e, vec4<bool>(var_1.e.x, true, var_1.e.x, var_1.e.x), vec4<bool>(false, arg_1.x, arg_1.x, false)), var_1.e, !arg_1.x)));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = array<Struct_1, 31>();
    global0 = array<Struct_1, 7>();
    var var_1 = ~u_input.a;
    global0 = array<Struct_1, 7>();
    var var_2 = func_1(u_input.a, select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zxx, ~_wgslsmith_add_u32(u_input.a, ~0u));
}

