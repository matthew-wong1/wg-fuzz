struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec2<u32> {
    let var_0 = vec2<f32>(-230f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1944f))));
    var var_1 = Struct_1(max(-1i << (u_input.a % 32u), firstTrailingBit(abs(-u_input.b.x))), vec2<bool>(all(vec4<bool>(arg_0.b.b.x, true, arg_0.b.b.x, false)) && true, false), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u ^ arg_0.b.c, firstLeadingBit(u_input.a)), select(_wgslsmith_mod_u32(arg_0.b.c, u_input.a), _wgslsmith_div_u32(arg_0.b.c, u_input.a), !arg_0.b.b.x), 1u), countOneBits(37638u)));
    global0 = array<vec4<f32>, 6>();
    var var_2 = false;
    let var_3 = Struct_1(abs(abs(-10424i | arg_0.a.x)), arg_0.b.b, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 65348u)), vec2<u32>(firstLeadingBit(8875u), ~52540u)));
    return reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u) & ~vec2<u32>(20909u, var_3.c), ~(~vec2<u32>(21438u, 64750u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    let var_0 = Struct_3(arg_3.b, -1253f);
    global0 = array<vec4<f32>, 6>();
    return ~reverseBits(~_wgslsmith_mult_i32(~var_0.a.a, arg_3.a.x));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(906f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(246f * 511f)))))), -1000f);
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))));
    let var_1 = vec4<i32>(12760i, -arg_2.x, arg_2.x & (~u_input.b.x ^ u_input.b.x), u_input.b.x);
    var var_2 = _wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(select(0i, 2147483647i, false) << (abs(u_input.a) % 32u), ~(-27045i))), arg_0);
    var_2 = _wgslsmith_clamp_i32(arg_2.x, 1i, 43007i) & _wgslsmith_div_i32(-1i, firstLeadingBit(-2147483647i));
    return 0u >> (~countOneBits(_wgslsmith_div_u32(~0u, arg_1)) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = (u_input.a == ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 141454u), vec3<u32>(4294967295u, u_input.a, u_input.a)), u_input.a)) | !any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)));
    var_0 = func_5(func_4(func_3(Struct_2(vec4<i32>(66095i, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(u_input.b.x, vec2<bool>(false, false), 29012u), vec4<f32>(557f, 1084f, 354f, 1132f)), vec2<f32>(-106f, -1119f)), 9006u, vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(4294967295u, 26135u, u_input.a, 0u)), reverseBits(u_input.a)), Struct_2(reverseBits(vec4<i32>(-1i, -1i, u_input.b.x, u_input.b.x)), Struct_1(u_input.b.x, vec2<bool>(false, true), u_input.a), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a, 6u)]))), u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(-26798i, u_input.b.x & u_input.b.x, reverseBits(u_input.b.x), u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, ~2147483647i, 8399i >> (u_input.a % 32u)))) >= u_input.a;
    return Struct_2(_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -46589i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 0i)), firstTrailingBit(vec4<i32>(2147483647i, u_input.b.x, -29948i, 0i))) >> ((((vec4<u32>(1u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, 93497u, u_input.a, 24422u) % vec4<u32>(32u))) & vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) ^ (select(vec4<u32>(0u, 0u, u_input.a, 1u), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), true) ^ ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))) % vec4<u32>(32u)), Struct_1(_wgslsmith_dot_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -10803i, u_input.b.x), vec4<i32>(1i, u_input.b.x, -13062i, u_input.b.x), vec4<i32>(37539i, u_input.b.x, u_input.b.x, -46352i)), -vec4<i32>(0i, 2147483647i, -1i, -2147483647i)), vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), -52828i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -2147483647i))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), ~21926u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(0u, 6u)] * global0[_wgslsmith_index_u32(1u, 6u)])) * _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(17811u ^ u_input.a, 6u)])) + global0[_wgslsmith_index_u32(6931u, 6u)]));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<vec4<f32>, 6>();
    let var_1 = _wgslsmith_mult_i32(arg_2.b.a, u_input.b.x);
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~vec3<u32>(51080u, u_input.a, 100505u)) >> (((select(vec3<u32>(4294967295u, 10635u, 22531u), vec3<u32>(4294967295u, 1u, 33558u), false) | ~vec3<u32>(69095u, 1u, u_input.a)) ^ vec3<u32>(u_input.a, 10657u, min(2077u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_div_u32(1u | ~u_input.a, ~1u) & ~(abs(36815u) >> (u_input.a % 32u)), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.b.x), reverseBits(vec4<i32>(1i, u_input.b.x, 1i, u_input.b.x))) & -reverseBits(vec4<i32>(-41999i, u_input.b.x, u_input.b.x, 1i)), Struct_1(u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(0u, 19602u, 4294967295u)) % 32u), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), max(~9203u, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1122f, _wgslsmith_div_f32(1646f, 463f), _wgslsmith_div_f32(486f, 1282f), _wgslsmith_f_op_f32(f32(-1f) * -420f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, -1431f, -1861f, 499f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f * _wgslsmith_f_op_f32(-493f + -760f))));
    let var_1 = var_0.b.x;
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    let var_2 = var_0;
    var var_3 = select(!select(select(!vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x), vec4<bool>(var_1, var_2.b.x, false, true), var_2.b.x), !select(vec4<bool>(var_2.b.x, var_1, true, var_2.b.x), vec4<bool>(var_1, false, true, var_2.b.x), vec4<bool>(var_0.b.x, true, var_2.b.x, var_2.b.x)), vec4<bool>(select(var_1, true, true), false, true, var_1 | var_2.b.x)), !select(select(select(vec4<bool>(false, true, var_0.b.x, true), vec4<bool>(var_2.b.x, var_0.b.x, var_2.b.x, true), vec4<bool>(true, true, var_2.b.x, true)), select(vec4<bool>(var_2.b.x, false, var_0.b.x, true), vec4<bool>(false, false, var_0.b.x, false), vec4<bool>(true, var_2.b.x, true, true)), vec4<bool>(true, var_1, var_1, var_2.b.x)), vec4<bool>(var_2.b.x, true, false, var_2.b.x), false), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

