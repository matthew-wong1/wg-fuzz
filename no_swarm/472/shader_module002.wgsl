struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    global0 = 32694i;
    global1 = true;
    let var_0 = firstLeadingBit(-_wgslsmith_div_vec2_i32(arg_0.xz, vec2<i32>(-2147483647i, u_input.a | arg_2.a.b.x)));
    let var_1 = 31367u >> (_wgslsmith_add_u32(~(select(arg_2.b.c, 1u, true) << (_wgslsmith_mult_u32(1u, 58293u) % 32u)), reverseBits(~firstTrailingBit(arg_2.b.c))) % 32u);
    let var_2 = Struct_1(arg_2.b.a, _wgslsmith_mult_vec2_i32(arg_2.a.b | var_0, ~vec2<i32>(~(-8498i), _wgslsmith_sub_i32(2147483647i, var_0.x))), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(~firstLeadingBit(arg_2.a.a), 1u)));
    return vec2<bool>(~var_1 > arg_2.b.a, any(vec4<bool>(all(vec2<bool>(true, true)), false, max(arg_0.x, 1i) <= firstTrailingBit(-2147483647i), !all(vec2<bool>(true, false)))));
}

fn func_2() -> vec4<u32> {
    global0 = i32(-1i) * -17478i;
    global1 = all(select(!(!func_3(vec3<i32>(36062i, u_input.a, u_input.a), 258f, Struct_3(Struct_1(1u, vec2<i32>(u_input.a, -20876i), 24117u), Struct_1(36237u, vec2<i32>(2147483647i, -29667i), 1u)))), vec2<bool>(true, true), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))));
    let var_0 = Struct_2(true, ~(~(-select(-12979i, u_input.a, true))), Struct_1(1u, vec2<i32>(~2147483647i, _wgslsmith_mult_i32(u_input.a, 9571i)) | ~reverseBits(vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_mod_u32(abs(30858u), 1u)));
    var var_1 = Struct_3(Struct_1(~(~(~var_0.c.c)), vec2<i32>(-65137i, _wgslsmith_div_i32(u_input.a ^ var_0.c.b.x, -1i)), var_0.c.c), var_0.c);
    var var_2 = _wgslsmith_f_op_f32(select(-1723f, -1000f, all(select(func_3(~vec3<i32>(u_input.a, u_input.a, var_0.c.b.x), 380f, Struct_3(var_0.c, var_0.c)), vec2<bool>(all(vec4<bool>(true, var_0.a, true, false)), true), var_0.a))));
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(0u, 22919u), var_0.c.a, 0u, var_0.c.a), max(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 1u, 29985u, var_0.c.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.c, 4294967295u, var_0.c.c, 20567u), vec4<u32>(4294967295u, 4294967295u, var_0.c.c, 18072u), vec4<u32>(var_1.a.c, 1u, var_1.a.c, 4294967295u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(38675u, 27727u, var_0.c.c, var_1.a.c), vec4<u32>(var_0.c.a, var_0.c.c, var_0.c.a, var_1.a.c))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1275f - 432f))))))));
    var var_1 = false;
    global0 = 5343i;
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 41106u, 58397u), vec3<u32>(4294967295u, 1u, 0u)), ~vec3<u32>(0u, 61473u, 8161u)), 57254u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 9198u, 5056u, 115284u), func_2()), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(0u, 0u, 0u, 38498u)))), _wgslsmith_add_u32(1u, ~(~0u)));
    global0 = _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_add_i32(arg_0.x, _wgslsmith_div_i32(u_input.a, arg_0.x) | -arg_0.x)), -(1i ^ _wgslsmith_mod_i32(14374i & arg_0.x, firstLeadingBit(arg_0.x))));
    return _wgslsmith_div_u32(0u, ~_wgslsmith_sub_u32(~(~var_2.x), ~var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global1 = true;
    global0 = _wgslsmith_mod_i32(~(firstLeadingBit(i32(-1i) * -2147483647i) << (~func_1(vec4<i32>(u_input.a, 8490i, 2147483647i, 33192i), vec4<bool>(false, false, false, true)) % 32u)), _wgslsmith_dot_vec4_i32(-firstTrailingBit(~vec4<i32>(u_input.a, 0i, 2147483647i, -30157i)), -vec4<i32>(-u_input.a, u_input.a, u_input.a & -42383i, u_input.a)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(275f + -1429f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-159f, 507f, true)))) * _wgslsmith_f_op_f32(ceil(-706f)))), _wgslsmith_f_op_f32(-504f + 617f), _wgslsmith_f_op_f32(-1124f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(820f * -479f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1350f, 1124f)))))));
    global0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(-1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u) >> (1u % 32u), var_0.x, var_0.x, -1i, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(35192u, 1u, 14510u)), func_1(vec4<i32>(2147483647i, -48121i, u_input.a, 1i) | vec4<i32>(-2147483647i, u_input.a, u_input.a, -33679i), vec4<bool>(true, true, true, true))), ~firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
}

