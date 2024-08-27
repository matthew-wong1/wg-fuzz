struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: i32 = -33343i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    global0 = array<vec4<i32>, 12>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, -1243f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(776f, -416f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-702f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(790f, 105f)) + _wgslsmith_f_op_f32(-798f + -1215f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)))));
    global0 = array<vec4<i32>, 12>();
    return arg_2.e;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec4<i32> {
    global1 = arg_1;
    let var_0 = Struct_2(firstTrailingBit(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_1), u_input.a.zx))));
    let var_1 = func_3(arg_0, Struct_2(2147483647i), Struct_1(abs(-1i), select(~u_input.a, ~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), vec3<bool>(arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~0u, ~0u), vec3<u32>(1u, firstLeadingBit(0u), _wgslsmith_clamp_u32(57826u, 9160u, 1u))), 4294967295u, false));
    var var_2 = Struct_1(1i, u_input.a, firstTrailingBit(vec3<u32>(76691u, 1u, ~1u)), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, 13755u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<u32>(5223u, 4294967295u), true), vec2<u32>(1u, 1u)), func_3(select(vec2<bool>(var_1, any(vec4<bool>(arg_0.x, arg_0.x, false, var_1))), arg_0, true), var_0, Struct_1(~(~var_0.a), vec3<i32>(u_input.a.x, min(-57304i, u_input.a.x), -2147483647i), ~vec3<u32>(19825u, 4294967295u, 16903u), 8994u, !(!var_1))));
    let var_3 = var_1;
    return vec4<i32>(2147483647i, _wgslsmith_clamp_i32(22544i, arg_1, -var_0.a << (firstTrailingBit(88700u) % 32u)) >> (~4294967295u % 32u), u_input.a.x, -38384i);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: f32) -> vec4<i32> {
    let var_0 = u_input.a.x;
    let var_1 = vec4<bool>(arg_0.x | all(arg_0.yw), !(!(u_input.a.x > _wgslsmith_mod_i32(6769i, -2147483647i))), -648f < arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f - -1221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1676f, 570f)) * arg_2))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-284f + 1f))));
    let var_2 = 18467u;
    global0 = array<vec4<i32>, 12>();
    var var_3 = -7687i;
    return -(_wgslsmith_div_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(u_input.a.x, var_0, var_0, -1i))), func_2(var_1.zw, var_0)) ^ global0[_wgslsmith_index_u32(1u, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 12u)], select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -18274i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 70791i), true)) & vec4<i32>(u_input.a.x, u_input.a.x, max(-57595i, -2147483647i), u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_i32(-24387i, u_input.a.x, 8590i), ~u_input.a.x), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(24273u, 12u)] >> (vec4<u32>(20593u, 0u, 4294967295u, 12203u) % vec4<u32>(32u)), func_1(vec4<bool>(true, true, false, true), vec2<f32>(1294f, 1624f), 246f)))), !vec3<bool>(_wgslsmith_f_op_f32(sign(799f)) >= -577f, true, func_3(select(vec2<bool>(false, true), vec2<bool>(false, false), false), Struct_2(u_input.a.x), Struct_1(16662i, u_input.a, vec3<u32>(17132u, 25938u, 4294967295u), 27497u, false))), 1i, Struct_2(u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-28414i & u_input.a.x, u_input.a.x << (0u % 32u)), u_input.a.x ^ 0i), ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(11352i, u_input.a.x)))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(144344u), 11930u, ~4294967295u), abs(vec3<u32>(0u, 1u, 0u))) >> (~1u % 32u), 53100u, 56705u);
    var var_2 = Struct_1(-2147483647i, vec3<i32>(reverseBits(2147483647i), 11165i, ~func_1(vec4<bool>(true, true, var_0.b.x, var_0.b.x), vec2<f32>(-1118f, -682f), _wgslsmith_f_op_f32(-1633f + -460f)).x), vec3<u32>(1u, 1u, ~var_1.x), _wgslsmith_div_u32(var_1.x, var_1.x >> ((var_1.x & var_1.x) % 32u)), false);
    var var_3 = 0i;
    let var_4 = -_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, _wgslsmith_add_i32(9850i, var_0.a.x), _wgslsmith_clamp_i32(var_0.a.x, var_2.a, 32464i)), func_2(select(vec2<bool>(true, var_0.b.x), var_0.b.yz, select(var_0.b.xz, var_0.b.yx, var_0.b.xx)), ~abs(-17868i)).yzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, var_2.d, 4294967295u, var_2.c.x))), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_1.x, 0u, var_1.x)), vec4<u32>(37901u, 55744u, var_1.x, var_1.x) << (vec4<u32>(var_1.x, 57050u, 4294967295u, var_2.d) % vec4<u32>(32u))), vec4<u32>(~var_2.c.x, 0u, _wgslsmith_mod_u32(95861u, var_2.d), ~var_2.d)), reverseBits(~(~vec4<u32>(var_1.x, var_1.x, 0u, 0u)))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~15756u, 79018u), countOneBits(1u)), 1u), var_1.x, 1u, 1u);
}

