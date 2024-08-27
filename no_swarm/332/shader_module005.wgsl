struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<i32>(-1i, i32(-2147483648), -36122i), Struct_1(i32(-2147483648), 731f), -375f, i32(-2147483648)), Struct_2(vec3<i32>(-47728i, -29601i, 1i), Struct_1(-23919i, -981f), 422f, -23873i), Struct_2(vec3<i32>(i32(-2147483648), -34774i, -23439i), Struct_1(-5426i, 139f), -259f, 1i), Struct_2(vec3<i32>(-39316i, 16396i, 0i), Struct_1(1i, -2340f), -369f, -43211i), Struct_2(vec3<i32>(-24635i, 31916i, 11364i), Struct_1(15649i, 1000f), -606f, 0i), Struct_2(vec3<i32>(0i, 15860i, 1i), Struct_1(4836i, 918f), -586f, 0i), Struct_2(vec3<i32>(33162i, 2147483647i, -1i), Struct_1(19390i, -627f), -1344f, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<u32> {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.c), 7u)];
    global1 = array<Struct_2, 7>();
    global0 = Struct_2(firstTrailingBit(vec3<i32>(global0.b.a, -(global0.b.a & 1i), ~19323i)), global0.b, _wgslsmith_f_op_f32(-1000f * global0.b.b), reverseBits(1i));
    var var_0 = ~(~(_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(u_input.b.x, -2147483647i)) >> (reverseBits(~u_input.c) % 32u)));
    global1 = array<Struct_2, 7>();
    return vec3<u32>(0u, abs(max(~countOneBits(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<u32>(65477u, 43518u, u_input.c, 1u)))), ~(~abs(reverseBits(73070u))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = func_3();
    var var_1 = !select(!arg_0, !(!vec3<bool>(arg_0.x, arg_0.x, true)), true);
    let var_2 = -1965f;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(~1u, select(21645u, 98808u, arg_0.x), u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u) | vec3<u32>(11231u, var_0.x, 0u), vec3<u32>(0u, var_0.x, u_input.c), countOneBits(vec3<u32>(var_0.x, 0u, var_0.x)))), ~vec3<u32>(~u_input.c, var_0.x, ~4294967295u)), 7u)];
    let var_4 = abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(13660u, u_input.c, 1u, u_input.c) & abs(min(vec4<u32>(var_0.x, u_input.c, var_0.x, 18591u), vec4<u32>(var_0.x, u_input.c, 0u, u_input.c))), vec4<u32>(~(4294967295u << (u_input.c % 32u)), var_0.x, u_input.c ^ ~var_0.x, var_0.x)));
    return global1[_wgslsmith_index_u32(24399u, 7u)];
}

fn func_1() -> Struct_1 {
    global0 = func_2(select(vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true)), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(true, true, false)), false), any(vec3<bool>(true, false, false))), firstTrailingBit(u_input.a.x) > 1i));
    var var_0 = _wgslsmith_clamp_u32(firstTrailingBit(~u_input.c), 4294967295u, _wgslsmith_div_u32(~(~1u), _wgslsmith_mod_u32(abs(~u_input.c), _wgslsmith_add_u32(u_input.c, 1u) & u_input.c)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(_wgslsmith_div_vec3_u32(vec3<u32>(30535u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u))) | (vec3<u32>(~u_input.c, abs(0u), ~u_input.c) ^ ~countOneBits(vec3<u32>(1u, u_input.c, 34929u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, reverseBits(1u), 4294967295u), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(41705u, 12992u, u_input.c) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(73614u, u_input.c, 51886u)), ~vec3<u32>(0u, u_input.c, u_input.c)))), 7u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + global0.b.b)) + _wgslsmith_f_op_f32(-2074f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b)) + 1003f)));
    global1 = array<Struct_2, 7>();
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b.x, global0.a.x, -1i)) << (vec3<u32>(65658u, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<i32>(global0.d >> (75279u % 32u), global0.b.a, u_input.a.x)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(768f, global0.c))))), 2147483647i);
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(u_input.a.xzx, ~(vec3<i32>(2147483647i, u_input.b.x, var_0.a.x) ^ -vec3<i32>(u_input.a.x, 13822i, 53178i)), abs(abs(var_0.a << (vec3<u32>(4294967295u, 1u, 6095u) % vec3<u32>(32u))))), Struct_1(_wgslsmith_sub_i32(global0.b.a, -2147483647i), 629f), 434f, -var_0.b.a);
    let var_2 = !(!select(vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false))), vec4<bool>(select(false, true, false), true, true, true), vec4<bool>(true, select(true, true, true), true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zz, ~(~global0.d & (var_0.a.x ^ select(12927i, -23131i, var_2.x))), select(abs(~vec3<u32>(1u, 19956u, 31367u)), ~reverseBits(vec3<u32>(u_input.c, u_input.c, 4294967295u)) ^ ~(~vec3<u32>(u_input.c, 15600u, 40052u)), true), 1942f, var_1.a);
}

