struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(-361f, false, vec2<i32>(-11314i, -1i))), Struct_2(Struct_1(-323f, false, vec2<i32>(58568i, 53796i))), Struct_2(Struct_1(809f, false, vec2<i32>(0i, 50433i))), Struct_2(Struct_1(-932f, true, vec2<i32>(63061i, 0i))), Struct_2(Struct_1(1071f, true, vec2<i32>(-1i, i32(-2147483648)))), Struct_2(Struct_1(-1170f, false, vec2<i32>(-1i, 1i))), Struct_2(Struct_1(-1090f, true, vec2<i32>(0i, 0i))), Struct_2(Struct_1(1444f, true, vec2<i32>(i32(-2147483648), -6126i))), Struct_2(Struct_1(1171f, false, vec2<i32>(103910i, i32(-2147483648)))), Struct_2(Struct_1(-734f, false, vec2<i32>(11795i, i32(-2147483648)))), Struct_2(Struct_1(-570f, false, vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(468f, false, vec2<i32>(-35661i, 1i))), Struct_2(Struct_1(-428f, true, vec2<i32>(-1i, 17902i))), Struct_2(Struct_1(-102f, true, vec2<i32>(1i, 99062i))), Struct_2(Struct_1(-1772f, true, vec2<i32>(2147483647i, 6245i))), Struct_2(Struct_1(1761f, true, vec2<i32>(-32693i, 63520i))), Struct_2(Struct_1(-783f, true, vec2<i32>(6571i, -1i))), Struct_2(Struct_1(169f, false, vec2<i32>(-3960i, -27330i))), Struct_2(Struct_1(-121f, true, vec2<i32>(-8158i, 2147483647i))), Struct_2(Struct_1(-314f, true, vec2<i32>(i32(-2147483648), 56316i))), Struct_2(Struct_1(2024f, false, vec2<i32>(i32(-2147483648), -24972i))), Struct_2(Struct_1(-663f, true, vec2<i32>(1i, -1i))));

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = arg_0.x;
    let var_1 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, 33222u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 21929u, 0u, arg_3.x), vec4<u32>(arg_0.x, 4294967295u, 36401u, 0u)), vec4<u32>(73855u, 1u, arg_3.x, arg_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(17846u, 31722u, arg_2.x, u_input.d.x), vec4<u32>(7776u, arg_3.x, 4294967295u, 1u))), ~(vec4<u32>(u_input.b.x, arg_1, arg_3.x, u_input.d.x) | vec4<u32>(arg_1, 0u, 0u, arg_3.x))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_3.x, 8090u), vec4<u32>(u_input.d.x, 6177u, 80519u, 4294967295u), vec4<u32>(u_input.b.x, arg_2.x, 4717u, arg_1))) ^ ~(~vec4<u32>(arg_3.x, u_input.d.x, 4294967295u, 18781u))));
    let var_2 = 37645u;
    global2 = array<Struct_1, 22>();
    let var_3 = 0u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(592f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1416f, -314f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(668f, _wgslsmith_div_f32(-402f, -465f))))));
}

fn func_3() -> u32 {
    var var_0 = vec4<u32>(1u, 69294u, _wgslsmith_sub_u32(~5936u, select(0u, ~(16835u | u_input.b.x), !(!global1[_wgslsmith_index_u32(u_input.d.x, 12u)]))), u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(-578f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f) * 929f)), 655f));
    let var_2 = u_input.a;
    var var_3 = vec4<i32>(u_input.a, var_2, abs(reverseBits(0i)), min(_wgslsmith_clamp_i32(-4162i, (u_input.a << (0u % 32u)) ^ (u_input.e >> (var_0.x % 32u)), ~(~var_2)), u_input.e));
    return var_0.x;
}

fn func_1(arg_0: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(0u, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 35173u), 0u, u_input.b, vec2<u32>(25796u, u_input.d.x | 0u))))));
    global0 = array<Struct_2, 22>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1370f);
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(select(min(func_3(), u_input.d.x) << (abs(_wgslsmith_mod_u32(u_input.d.x, 20016u)) % 32u), ~min(1u, 1u), true)), 22u)];
    global0 = array<Struct_2, 22>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.d);
    let var_1 = true;
    var_0 = abs(_wgslsmith_add_vec2_u32(reverseBits(func_1(u_input.a)), (~vec2<u32>(var_0.x, u_input.b.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), u_input.d) % vec2<u32>(32u))) ^ abs(select(vec2<u32>(1u, 52583u), vec2<u32>(u_input.b.x, 29423u), false))));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(var_0.x, 21924u), ~(~u_input.b.x), !global1[_wgslsmith_index_u32(var_0.x, 12u)] | any(vec3<bool>(var_1, true, var_1))) << (countOneBits(0u) % 32u), 22u)]);
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), countOneBits(select(vec4<i32>(1i, u_input.a, 0i, u_input.e), select(vec4<i32>(var_2.a.c.x, -2147483647i, var_2.a.c.x, var_2.a.c.x), vec4<i32>(u_input.a, -7284i, var_2.a.c.x, u_input.c), true), var_2.a.b && var_1) >> (~abs(vec4<u32>(u_input.b.x, var_0.x, 0u, 1u)) % vec4<u32>(32u))), vec2<u32>(4294967295u >> (_wgslsmith_mod_u32(var_0.x >> (62535u % 32u), 0u) % 32u), 130868u));
}

