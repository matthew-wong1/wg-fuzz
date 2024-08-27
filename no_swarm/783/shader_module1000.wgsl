struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 10>();
    let var_0 = arg_1.a;
    let var_1 = arg_1;
    var var_2 = ~14130u;
    global0 = array<Struct_2, 10>();
    return Struct_1(_wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.a * -1291f))), _wgslsmith_f_op_f32(1255f * _wgslsmith_f_op_f32(min(arg_0, var_1.a.a)))))));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 10>();
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(870f)), _wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-751f, -2693f) + _wgslsmith_f_op_f32(-1137f + 822f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - _wgslsmith_f_op_f32(ceil(106f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(2370f))))))));
    var var_2 = !vec2<bool>(~(1u >> (u_input.d % 32u)) < _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 23312u), u_input.b.xx), 1u), var_1.x > _wgslsmith_f_op_f32(f32(-1f) * -381f));
    global0 = array<Struct_2, 10>();
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 971f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -235f) - _wgslsmith_f_op_f32(f32(-1f) * -594f)))), global0[_wgslsmith_index_u32(u_input.d, 10u)]);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<i32> {
    global0 = array<Struct_2, 10>();
    let var_0 = arg_0;
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_1().a)));
    return vec2<i32>(1i, countOneBits(_wgslsmith_mult_i32(u_input.a.x & -24569i, u_input.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.d | u_input.d;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1271f));
    let var_2 = !select(!vec2<bool>(true, arg_2), vec2<bool>(abs(arg_1) != 1u, true), select(!(!vec2<bool>(arg_2, arg_2)), !select(vec2<bool>(true, true), vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2)), false));
    let var_3 = true;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(~21817u), 4294967295u), u_input.b.xy >> (u_input.b.yz % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(-537f * arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().a * 704f)), true)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a + arg_2.a) + func_1().a) + _wgslsmith_f_op_f32(-arg_0.a.a));
    global0 = array<Struct_2, 10>();
    var var_1 = _wgslsmith_mod_u32(u_input.c, _wgslsmith_clamp_u32(max(~9824u, u_input.b.x), abs(u_input.c << (63993u % 32u)), 66727u));
    return func_4(Struct_1(1012f), reverseBits(u_input.d), _wgslsmith_mult_u32(0u, ~abs(0u)) >= ~_wgslsmith_add_u32(52641u, u_input.c), vec2<i32>(u_input.a.x, u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1f)))))));
    var var_1 = func_5(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c, u_input.d, 0u)), 101254u) & u_input.d, 4294967295u, _wgslsmith_mult_u32(u_input.d, 16347u)), 10u)], true, func_4(func_1(), u_input.b.x, true, _wgslsmith_add_vec2_i32(u_input.a.xz, _wgslsmith_div_vec2_i32(func_3(global0[_wgslsmith_index_u32(22208u, 10u)], vec2<i32>(u_input.a.x, 1i), Struct_1(1010f), vec4<u32>(0u, 1u, u_input.c, u_input.d)), min(u_input.a.yx, u_input.a.xz)))));
    let var_2 = var_0.a;
    var_1 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -660f))), true, Struct_1(-122f));
    var var_3 = func_1();
    var_1 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(622f - -229f)))))), Struct_2(Struct_1(var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~_wgslsmith_mod_u32(551u, 48262u)), vec3<u32>(u_input.c, 0u, ~10657u), 4473u, vec4<i32>(-(~countOneBits(64630i)), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 2147483647i, 2848i), vec3<i32>(1i, u_input.e, u_input.e), reverseBits(u_input.a)), vec3<i32>(~u_input.a.x, 1i, u_input.e ^ -1i)), 22829i));
}

