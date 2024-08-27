struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, -74398i, 0u);

var<private> global1: Struct_1 = Struct_1(53479u, 0i, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    global0 = Struct_1(~(u_input.c.x << (global1.c % 32u)), arg_2, 0u);
    global1 = Struct_1(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(u_input.b, 42790u)) & 4294967295u), ~global0.b >> (~(~(~1u)) % 32u), arg_3.a);
    var var_0 = arg_1;
    global1 = Struct_1(~min(0u, _wgslsmith_clamp_u32(reverseBits(global1.a), u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.c, 22172u, arg_3.a), vec4<u32>(global0.a, 37993u, 1u, 74676u)))), _wgslsmith_clamp_i32(min(~(~arg_2), firstTrailingBit(global0.b << (u_input.b % 32u))), _wgslsmith_mult_i32(i32(-1i) * -arg_2, _wgslsmith_div_i32(~global1.b, -u_input.a.x)), _wgslsmith_mod_i32(global0.b, ~(~1i))), reverseBits(~firstLeadingBit(1u)));
    global1 = arg_3;
    return reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(~4294967295u), u_input.b, global1.a, global1.c), abs(select(~vec4<u32>(u_input.c.x, global0.a, 35721u, 4294967295u), ~vec4<u32>(u_input.c.x, arg_3.a, global1.a, 58996u), false))));
}

fn func_2() -> i32 {
    global1 = Struct_1(_wgslsmith_clamp_u32(max(0u, max(~global1.c, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, u_input.c.x, global1.a, 1807u), vec4<u32>(4233u, global0.a, u_input.b, 1u)), 1u, 422u >> (u_input.b % 32u), 52400u), func_3(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1127f, -1722f)), 2147483647i, Struct_1(global0.c, 412i, 0u))), _wgslsmith_mult_u32(u_input.c.x, max(23476u, reverseBits(u_input.b)))), _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(u_input.d, global1.b, u_input.d, u_input.a.x))), firstLeadingBit(~vec4<i32>(-1i, -30943i, global0.b, -36161i))), u_input.b & 1u);
    return global0.b;
}

fn func_1() -> Struct_1 {
    global1 = Struct_1(countOneBits(~global1.a ^ _wgslsmith_div_u32(~18174u, u_input.c.x)), 11096i & global0.b, reverseBits(_wgslsmith_clamp_u32(1u, ~31643u, _wgslsmith_mod_u32(1u, global0.c))) << (_wgslsmith_div_u32(global1.a, global0.c) % 32u));
    let var_0 = Struct_1(u_input.b, abs(min(global1.b, func_2())), ~0u);
    var var_1 = !select(vec2<bool>(0u >= _wgslsmith_clamp_u32(4294967295u, 55502u, 1u), any(vec4<bool>(true, true, true, true))), !vec2<bool>(false, all(vec2<bool>(false, true))), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_2 = firstTrailingBit(u_input.a) ^ _wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(global0.b, 35622i) << (vec2<u32>(4294967295u, 48911u) % vec2<u32>(32u)), u_input.a), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-14443i, -3525i, -2147483647i), vec3<i32>(global0.b, 0i, global1.b)), global1.b), true), firstLeadingBit(vec2<i32>(var_0.b, -2147483647i) >> (func_3(vec2<bool>(false, true), vec2<f32>(-422f, 438f), 3609i, Struct_1(1u, global1.b, var_0.c)).yw % vec2<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(134f, -478f)));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = arg_0;
    var var_2 = func_1();
    var var_3 = func_1();
    var_3 = Struct_1(37083u, abs(global1.b) & -16026i, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, 137936u, u_input.c.x, arg_1.a), vec4<u32>(19739u, arg_1.a, 0u, 29136u), vec4<u32>(var_2.c, 4294967295u, var_2.c, u_input.c.x)), reverseBits(vec4<u32>(var_2.a, 4294967295u, 0u, 4294967295u)))));
    return select(select(vec2<bool>(1000f < _wgslsmith_f_op_f32(max(var_0, 131f)), true), select(vec2<bool>(arg_1.a < var_3.a, var_0 <= 1126f), select(select(vec2<bool>(false, false), vec2<bool>(true, arg_0), vec2<bool>(false, false)), vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, arg_0)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), false))), any(!select(vec4<bool>(true, true, true, arg_0), vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, true)))), select(select(vec2<bool>(true, arg_0 | arg_0), vec2<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), all(vec4<bool>(true, true, true, true))), vec2<bool>(0u < global0.a, true)), select(select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), !select(vec2<bool>(true, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), !(!vec2<bool>(arg_0, arg_0))), vec2<bool>(countOneBits(36468i) == arg_1.b, any(vec2<bool>(true, true)))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(true, all(vec2<bool>(false, false))));
    var_0 = !select(vec2<bool>(true, var_0.x), !vec2<bool>(false, var_0.x), vec2<bool>(false, true));
    var_0 = !func_4(any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, true, var_0.x, var_0.x), all(vec3<bool>(false, true, false)))), func_1(), -(vec4<i32>(-1i) * -vec4<i32>(u_input.d, -12692i, 12265i, global1.b)));
    let var_1 = func_1();
    var var_2 = !select(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, var_0.x, true, true), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x)), !vec4<bool>(var_0.x, all(vec4<bool>(var_0.x, true, false, false)), true, var_0.x), select(var_0.x, var_0.x, all(vec3<bool>(true, true, true))));
    var var_3 = !var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, select(((vec4<i32>(-2147483647i, u_input.a.x, -1i, u_input.d) ^ vec4<i32>(var_1.b, 32089i, var_1.b, 48301i)) >> ((vec4<u32>(1u, 1u, global1.c, 0u) >> (vec4<u32>(u_input.b, 36557u, var_1.c, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) & (reverseBits(vec4<i32>(u_input.d, u_input.d, var_1.b, global0.b)) | -vec4<i32>(u_input.d, u_input.a.x, 2147483647i, 12987i)), reverseBits(-(vec4<i32>(1i, 0i, 1i, var_1.b) ^ vec4<i32>(var_1.b, -22583i, 0i, 33674i))), !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(trunc(1365f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2380f * _wgslsmith_f_op_f32(-1815f - 139f)), 100f, _wgslsmith_div_f32(889f, _wgslsmith_f_op_f32(-638f + 2560f)), 482f)));
}

