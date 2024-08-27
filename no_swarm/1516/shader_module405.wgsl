struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1175f, _wgslsmith_f_op_f32(round(arg_3)), true))) - arg_3)));
    global0 = u_input.b.x;
    global0 = ~u_input.c;
    return !all(vec3<bool>(true, true, any(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_3, arg_3), vec4<u32>(13280u, firstLeadingBit(0u), 0u, arg_2.x & 4294967295u));
    global0 = ~13516u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-640f, -1337f, arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -900f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1063f, -1795f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)))));
    global0 = ~_wgslsmith_div_u32(~5368u, _wgslsmith_mult_u32(u_input.c, u_input.d) << (max(_wgslsmith_mult_u32(u_input.d, 39203u), arg_2.x) % 32u));
    var var_2 = abs(~vec3<i32>(abs(u_input.a), u_input.a, -u_input.a)) & ~(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, 21803i, u_input.a)) << (~u_input.b % vec3<u32>(32u)));
    return !arg_0;
}

fn func_2() -> u32 {
    let var_0 = !func_4(vec4<bool>(!all(vec4<bool>(true, true, false, true)), true, func_3(~u_input.a, true, _wgslsmith_sub_i32(-1282i, u_input.a), 290f), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), all(vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec3_u32(select(u_input.b, vec3<u32>(u_input.d, u_input.b.x, 26629u), vec3<bool>(true, true, true)), select(vec3<u32>(92965u, u_input.d, 59195u), u_input.b, vec3<bool>(false, true, false)) << (u_input.b % vec3<u32>(32u))), reverseBits(~vec4<u32>(u_input.d, u_input.c, 0u, u_input.c) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.c, 4294967295u, 58410u), vec4<u32>(30400u, 12820u, 80212u, u_input.d))));
    var var_1 = Struct_2(max(28896u, ~1u));
    var var_2 = _wgslsmith_f_op_f32(-1416f + 1f);
    var var_3 = Struct_2(u_input.c);
    var var_4 = select(u_input.c, ~var_3.a, true) >= ~_wgslsmith_clamp_u32(~(~4294967295u), var_3.a, _wgslsmith_add_u32(~var_1.a, 29380u));
    return select(_wgslsmith_sub_u32(4294967295u, u_input.d), abs(_wgslsmith_add_u32(~0u, 0u)) << ((~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_3.a, var_1.a), vec4<u32>(1u, u_input.d, u_input.d, 4294967295u)) & countOneBits(var_1.a)) % 32u), var_0.x);
}

fn func_1(arg_0: Struct_2) -> i32 {
    global0 = ~(4294967295u >> ((arg_0.a >> (_wgslsmith_div_u32(u_input.d, 0u) % 32u)) % 32u));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.d), min(u_input.b.x, 9413u)), (1u & arg_0.a) | _wgslsmith_mod_u32(u_input.d, 7509u)), _wgslsmith_mult_vec2_u32(~u_input.b.xz, countOneBits(u_input.b.yy))) & _wgslsmith_dot_vec4_u32(vec4<u32>(~38386u << (arg_0.a % 32u), func_2(), arg_0.a, _wgslsmith_div_u32(select(arg_0.a, arg_0.a, true), ~4294967295u)), firstLeadingBit(~vec4<u32>(u_input.c, 1u, 0u, 4294967295u)));
    global0 = ~(~_wgslsmith_sub_u32(u_input.b.x, func_2() << (u_input.c % 32u)));
    let var_0 = Struct_1(~(-1i), _wgslsmith_mod_vec4_i32(-vec4<i32>(countOneBits(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, -30323i), vec4<i32>(-29506i, -2147483647i, -7037i, -2147483647i))), -vec4<i32>(_wgslsmith_clamp_i32(-7446i, u_input.a, u_input.a), _wgslsmith_sub_i32(-2147483647i, u_input.a), ~(-2147483647i), 2147483647i & u_input.a)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), func_4(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true, u_input.b, vec4<u32>(reverseBits(89189u), min(4294967295u, 0u), u_input.d, 29921u)).wyw, true || !all(vec2<bool>(true, false))));
    let var_1 = ~(~arg_0.a) ^ ~_wgslsmith_div_u32(~86274u, _wgslsmith_add_u32(arg_0.a, 88883u));
    return -(i32(-1i) * -var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~_wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec2_u32(~u_input.b.xx, vec2<u32>(1u, u_input.d))));
    var var_0 = ~(~vec3<u32>(_wgslsmith_mult_u32(4294967295u, 0u), ~0u, _wgslsmith_dot_vec2_u32(~u_input.b.xx, ~u_input.b.yz)));
    global0 = _wgslsmith_add_u32(~u_input.c, 0u);
    global0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f - -1155f))) - 1504f));
    let var_2 = Struct_2(10179u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, ~(~var_0.x), 1u, ~(~var_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(func_1(var_2), 1i)), vec2<i32>(countOneBits(2147483647i), -1i) | -(~vec2<i32>(u_input.a, 0i))), ~(~vec3<u32>(_wgslsmith_div_u32(var_2.a, 0u), min(var_2.a, 1u), var_2.a)));
}

