struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, true, true, true, true, true, true, true, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(reverseBits(arg_2.a | u_input.b.x)), arg_2.a >> (arg_2.b % 32u), _wgslsmith_sub_vec4_i32(arg_2.c, vec4<i32>(-2147483647i, arg_0, arg_0, -2147483647i)) << (select(vec4<u32>(arg_2.a, u_input.d, u_input.b.x, 2925u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, arg_2.a, 4294967295u), vec4<u32>(5695u, 77444u, u_input.b.x, arg_2.a)), true) % vec4<u32>(32u)), true), arg_2.d, arg_2, arg_3, Struct_1(u_input.b.x ^ arg_2.a, max(firstTrailingBit(0u), arg_2.b), vec4<i32>(~max(u_input.c, u_input.c), ~_wgslsmith_dot_vec4_i32(arg_2.c, vec4<i32>(arg_0, -1367i, u_input.c, -2147483647i)), _wgslsmith_sub_i32(1i, u_input.a), u_input.a >> (u_input.d % 32u)), any(select(vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(1u, 10u)], arg_1.x), vec3<bool>(arg_3, true, global0[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(arg_3, false, true))) != any(select(vec4<bool>(false, false, true, arg_3), vec4<bool>(false, true, arg_1.x, false), vec4<bool>(false, false, false, false)))));
    let var_1 = !arg_3;
    global0 = array<bool, 10>();
    var_0 = Struct_2(arg_2, !all(select(select(arg_1, vec2<bool>(true, true), true), arg_1, vec2<bool>(arg_2.d, var_0.e.d))), arg_2, !arg_1.x, var_0.e);
    let var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(64581u, ~1u), u_input.b.x), ~min(u_input.e, select(var_0.a.a, arg_2.b, global0[_wgslsmith_index_u32(var_0.a.b, 10u)])), 102182u | arg_2.a, u_input.b.x));
    return ~reverseBits(vec4<u32>(~102682u, 1u, 29879u, 1u));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(1u, arg_0.x >> (_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 24432u, 41528u), _wgslsmith_add_vec4_u32(vec4<u32>(51810u, 1u, 0u, u_input.e), vec4<u32>(4294967295u, arg_0.x, 4294967295u, u_input.e)))) % 32u), vec4<i32>(2275i & _wgslsmith_div_i32(max(u_input.a, -1i), _wgslsmith_mod_i32(2147483647i, u_input.c)), -2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.a, u_input.c, 2147483647i) >> (func_3(-17474i, vec2<bool>(true, true), Struct_1(24150u, 1u, vec4<i32>(-2406i, u_input.a, u_input.c, -1i), global0[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(arg_0.x, 10u)]) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a, -3291i, u_input.c)), -2147483647i), false);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: vec2<bool>) -> bool {
    var var_0 = vec2<i32>(-41601i, -u_input.c);
    var var_1 = arg_3.x;
    var var_2 = func_2(vec2<u32>(arg_1, reverseBits(arg_1)));
    let var_3 = func_2(firstLeadingBit(max(_wgslsmith_add_vec2_u32(u_input.b, ~arg_0.zx), arg_0.yy)));
    let var_4 = Struct_2(var_3, all(select(arg_3, vec2<bool>(arg_3.x, any(arg_3)), 331f > _wgslsmith_f_op_f32(arg_2 * arg_2))), func_2(vec2<u32>(0u, u_input.d) & _wgslsmith_mult_vec2_u32(arg_0.yz, arg_0.yz ^ vec2<u32>(4294967295u, var_3.b))), !any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, var_3.d), arg_3.x), vec3<bool>(false, true, var_3.d), select(vec3<bool>(true, false, var_3.d), vec3<bool>(true, global0[_wgslsmith_index_u32(var_3.a, 10u)], false), vec3<bool>(var_3.d, false, true)))), var_3);
    return any(!(!select(vec2<bool>(var_2.d, false), arg_3, !vec2<bool>(false, var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(true, true | (global0[_wgslsmith_index_u32(u_input.d, 10u)] == global0[_wgslsmith_index_u32(u_input.d, 10u)]), func_1(~vec3<u32>(u_input.e, 1u, u_input.d), ~u_input.e, _wgslsmith_div_f32(307f, 664f), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(26311u, 10u)]))), select(!vec3<bool>(true || global0[_wgslsmith_index_u32(13146u, 10u)], !global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(~u_input.e, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], !global0[_wgslsmith_index_u32(u_input.d, 10u)] && true), true), global0[_wgslsmith_index_u32(u_input.e, 10u)] && true);
    let var_1 = Struct_1(u_input.e, _wgslsmith_add_u32(countOneBits(11u), u_input.e), vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.c), abs(1i), _wgslsmith_mult_i32(2005i & u_input.c, -u_input.a) | 1i, -min(countOneBits(u_input.c), u_input.a)), !(!(global0[_wgslsmith_index_u32(16225u, 10u)] & var_0.x) && (4294967295u != u_input.b.x)));
    var var_2 = abs(~_wgslsmith_mod_vec4_u32(func_3(i32(-1i) * -1i, select(var_0.zy, var_0.xz, vec2<bool>(false, true)), var_1, var_1.d | true), vec4<u32>(var_1.b, ~u_input.e, ~var_1.b, u_input.e)));
    var var_3 = var_0.x;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(~var_2.x >> (1u % 32u)), 1u, 4294967295u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(47401u, var_1.b, var_1.b), ~u_input.e)), ~(u_input.b.x << (var_1.b % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1450f - -623f) - -1192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1242f)), 1f) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(485f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-309f * -1236f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), 1610f, -2110f))));
}

