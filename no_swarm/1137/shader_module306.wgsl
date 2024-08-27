struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec4<u32>, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-562f)), _wgslsmith_div_f32(1000f, 1596f))) * 1f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1110f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) * _wgslsmith_f_op_f32(325f + 288f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1001f)), _wgslsmith_f_op_f32(min(1749f, -324f)))), _wgslsmith_f_op_f32(select(852f, 228f, !any(vec3<bool>(false, false, false))))))));
    return ~1u;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(~(~_wgslsmith_sub_u32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(227f * 441f))), _wgslsmith_f_op_f32(step(-830f, _wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(abs(-328f))))))));
    global1 = array<vec4<u32>, 12>();
    var var_1 = ~vec4<u32>(~func_3(~(-2147483647i), Struct_2(Struct_1(1u), global0[_wgslsmith_index_u32(1u, 23u)], vec2<i32>(u_input.d, u_input.d))), ~(0u ^ _wgslsmith_sub_u32(u_input.b, 1u)), var_0.a.a, var_0.a.a);
    var var_2 = vec3<u32>(abs(var_1.x), u_input.e.x ^ ~0u, u_input.e.x);
    var var_3 = -12741i | max(u_input.c | 1i, u_input.d);
    return !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), true);
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<u32>, 12>();
    var var_0 = ~vec4<u32>(0u, 1u, ~u_input.b, ~(~u_input.b)) >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(30986u, u_input.b), 12u)] & ~global1[_wgslsmith_index_u32(24540u, 12u)], abs(~global1[_wgslsmith_index_u32(31411u, 12u)]) ^ ~global1[_wgslsmith_index_u32(~u_input.b, 12u)]), 12u)] % vec4<u32>(32u));
    var var_1 = _wgslsmith_sub_i32(abs(-4408i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-22946i, u_input.d), select(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-976i, 54242i)), u_input.a.xy, func_2())));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1091f)))))) * -589f);
    var_0 = vec4<u32>(~abs(firstTrailingBit(_wgslsmith_div_u32(var_0.x, u_input.b))), ~1u | _wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x), 11757u, ~14106u)), ~u_input.e.x, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), ~(~u_input.e.x)));
    return Struct_1(~27788u);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(Struct_1(reverseBits(0u)), arg_1.x);
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_2.c.x, _wgslsmith_sub_i32(-22588i, u_input.d))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-40539i, u_input.a.x, 50772i, -1i), vec4<i32>(u_input.a.x, 2147483647i, 28540i, -23938i)), abs(2147483647i))));
    var var_2 = true;
    var var_3 = arg_0;
    global1 = array<vec4<u32>, 12>();
    return -20485i;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = max(vec4<u32>(~55741u, ~arg_2.a.a, min(arg_1, 0u), _wgslsmith_mult_u32(10202u, 1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1, 11380u, ~arg_1), _wgslsmith_mod_vec4_u32(vec4<u32>(543u, arg_2.b.a, arg_2.b.a, arg_2.b.a), countOneBits(global1[_wgslsmith_index_u32(u_input.e.x, 12u)]))), ~firstTrailingBit(abs(vec4<u32>(77798u, u_input.e.x, arg_1, 97421u)))));
    global1 = array<vec4<u32>, 12>();
    var var_1 = vec2<u32>(~(~1u), 4294967295u);
    var_1 = u_input.e;
    global1 = array<vec4<u32>, 12>();
    return StorageBuffer(_wgslsmith_dot_vec2_i32(arg_2.c, arg_2.c), _wgslsmith_add_vec4_i32(select(-select(u_input.a, u_input.a, arg_3.x), vec4<i32>(-u_input.c, ~arg_2.c.x, ~u_input.c, _wgslsmith_add_i32(arg_2.c.x, -49218i)), !select(vec4<bool>(arg_3.x, false, true, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), vec4<bool>(true, arg_3.x, arg_3.x, true))), max(vec4<i32>(arg_2.c.x, _wgslsmith_clamp_i32(arg_0, arg_0, arg_0), u_input.d, u_input.a.x & u_input.a.x), vec4<i32>(arg_0 ^ 28391i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.c.x), arg_2.c), -38564i ^ u_input.c, _wgslsmith_add_i32(35688i, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var var_1 = Struct_2(Struct_1(u_input.e.x), global0[_wgslsmith_index_u32(u_input.b, 23u)], var_0.yx);
    global1 = array<vec4<u32>, 12>();
    var var_2 = ~var_1.a.a;
    var var_3 = true;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_add_i32(135i, func_4(Struct_3(func_1(), _wgslsmith_f_op_f32(sign(-1315f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1136f, -303f)), Struct_2(var_1.b, func_1(), -vec2<i32>(54061i, 34643i)))), ~(~(~var_1.a.a) << (~(~102407u) % 32u)), Struct_2(Struct_1(u_input.e.x), var_1.a, var_0.ww << (vec2<u32>(16452u | u_input.b, ~36724u) % vec2<u32>(32u))), vec3<bool>(!any(vec4<bool>(false, false, false, true)), !(firstLeadingBit(1u) != ~var_1.a.a), !func_2().x & false));
}

