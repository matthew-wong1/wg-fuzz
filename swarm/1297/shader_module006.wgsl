struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<i32> {
    global0 = array<u32, 31>();
    var var_0 = Struct_1(~_wgslsmith_mod_i32(-30403i, -2147483647i) <= (firstTrailingBit(1i) >> (~(~global0[_wgslsmith_index_u32(24161u, 31u)]) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -2506f), ~_wgslsmith_div_u32(4294967295u, abs(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.yy))), _wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, min(1i, 13711i), -2147483647i), max(vec3<i32>(1i, ~52813i, 1i), -(~vec3<i32>(-15268i, -2147483647i, 37759i)))), select(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(26746u, global0[_wgslsmith_index_u32(34117u, 31u)]), 31u)], global0[_wgslsmith_index_u32(~u_input.b, 31u)] >> (_wgslsmith_add_u32(u_input.d, 4294967295u) % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47813u, 31u)], 31u)])), ~(1437u | u_input.c.x)), true));
    var_0 = Struct_1(all(!select(select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(var_0.a, false, var_0.a, var_0.a)), !vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(exp2(var_0.b))), ~(~11414u), select(var_0.d, ~select(vec3<i32>(29595i, 0i, -20704i), vec3<i32>(-2147483647i, var_0.d.x, var_0.d.x), global0[_wgslsmith_index_u32(u_input.a, 31u)] > var_0.c), true), 34311u);
    global0 = array<u32, 31>();
    let var_1 = Struct_1(all(vec2<bool>(var_0.a, select(var_0.a, -1i <= var_0.d.x, false))), -737f, _wgslsmith_clamp_u32(var_0.c, ~u_input.c.x, ~abs(var_0.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, countOneBits(1i), var_0.d.x), firstTrailingBit(var_0.d)), abs(4294967295u));
    return firstTrailingBit(countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-var_0.d, vec3<i32>(var_0.d.x, 16483i, -18213i)), ~var_0.d)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    var var_0 = Struct_1(!(firstTrailingBit(_wgslsmith_clamp_i32(-1i, -31107i, 0i)) <= select(-arg_0, arg_0, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), 591f), u_input.b, -func_3(), 4294967295u);
    global0 = array<u32, 31>();
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(582f, 211f)), ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.c, global0[_wgslsmith_index_u32(var_0.c, 31u)], 7830u), _wgslsmith_mult_vec3_u32(vec3<u32>(80138u, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), u_input.c)), vec3<u32>(~20583u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, var_0.c), vec4<u32>(33881u, 6846u, 1u, u_input.d)), 0u)), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x) << (vec3<u32>(u_input.d, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)]) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, var_0.d.x, arg_0), var_0.d, vec3<i32>(-2147483647i, var_0.d.x, 31576i))), u_input.d);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<u32, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-247f - arg_0)) >= arg_0, _wgslsmith_f_op_f32(-2032f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2952f, _wgslsmith_f_op_f32(select(-780f, arg_0, true))))), abs(select(35518u, 1u, u_input.a >= (u_input.a >> (0u % 32u)))), -(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18210i, 12114i, 2147483647i), vec3<i32>(13861i, -30656i, 10217i), vec3<i32>(-2147483647i, 27545i, 1i)) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(5198u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)]) % vec3<u32>(32u)))), _wgslsmith_add_u32(8148u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b >> (1u % 32u), 31u)], 31u)]));
    global0 = array<u32, 31>();
    var var_1 = 1u;
    var var_2 = -((i32(-1i) * -2147483647i) ^ var_0.d.x);
    return func_2(-(firstTrailingBit(var_0.d.x) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 19051u), _wgslsmith_sub_vec3_u32(u_input.c, u_input.c)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(441f);
    var var_1 = var_0.e;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(8257u, 0u, u_input.d, var_0.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0.e, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], 4294967295u, var_0.e) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 0u, var_0.c, 38256u) % vec4<u32>(32u)), max(vec4<u32>(var_0.c, 10052u, 1u, u_input.c.x), vec4<u32>(4294967295u, u_input.d, 16204u, 0u)))) <= (~countOneBits(global0[_wgslsmith_index_u32(63624u, 31u)]) | 33286u), 487f, ~(~9172u), var_0.d, 39537u & _wgslsmith_div_u32(abs(3619u), abs(global0[_wgslsmith_index_u32(957u, 31u)]) << (u_input.a % 32u)));
    let var_3 = (~(firstLeadingBit(var_0.e) ^ countOneBits(global0[_wgslsmith_index_u32(64776u, 31u)])) <= (_wgslsmith_dot_vec2_u32(u_input.c.yz >> (u_input.c.zz % vec2<u32>(32u)), vec2<u32>(1u, var_2.c)) & var_0.e)) && all(!select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, true), select(vec3<bool>(var_2.a, var_2.a, false), vec3<bool>(false, var_2.a, false), vec3<bool>(false, true, var_0.a))));
    var_1 = abs(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(0u, 106720u), var_2.c, _wgslsmith_sub_u32(select(max(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(var_2.c, 31u)]), u_input.d, !var_3), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~64216u, _wgslsmith_mult_u32(0u, u_input.a)), 31u)]), ~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 1u, var_0.c), u_input.c))));
}

